import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/chat_message.dart';

class ChatService {
  static const String _messagesKey = 'chat_messages';
  static const String _chatRoomsKey = 'chat_rooms';
  
  static ChatService? _instance;
  static ChatService get instance => _instance ??= ChatService._();
  
  ChatService._();
  
  // 获取聊天室ID
  String _getChatRoomId(String userId1, String userId2) {
    final sortedIds = [userId1, userId2]..sort();
    return '${sortedIds[0]}_${sortedIds[1]}';
  }
  
  // 保存消息到本地存储
  Future<void> _saveMessages(Map<String, List<ChatMessage>> messages) async {
    final prefs = await SharedPreferences.getInstance();
    final messagesMap = <String, List<Map<String, dynamic>>>{};
    
    messages.forEach((chatRoomId, messageList) {
      messagesMap[chatRoomId] = messageList.map((msg) => msg.toJson()).toList();
    });
    
    final messagesJson = json.encode(messagesMap);
    await prefs.setString(_messagesKey, messagesJson);
  }
  
  // 从本地存储加载消息
  Future<Map<String, List<ChatMessage>>> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final messagesJson = prefs.getString(_messagesKey);
    
    if (messagesJson == null) {
      return <String, List<ChatMessage>>{};
    }
    
    try {
      final Map<String, dynamic> messagesMap = json.decode(messagesJson);
      final result = <String, List<ChatMessage>>{};
      
      messagesMap.forEach((chatRoomId, messageList) {
        result[chatRoomId] = (messageList as List)
            .map((msg) => ChatMessage.fromJson(msg))
            .toList();
      });
      
      return result;
    } catch (e) {
      return <String, List<ChatMessage>>{};
    }
  }
  
  // 发送消息
  Future<bool> sendMessage(String senderId, String receiverId, String content) async {
    try {
      final chatRoomId = _getChatRoomId(senderId, receiverId);
      final messages = await _loadMessages();
      
      final newMessage = ChatMessage(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        senderId: senderId,
        receiverId: receiverId,
        content: content,
        timestamp: DateTime.now(),
      );
      
      if (!messages.containsKey(chatRoomId)) {
        messages[chatRoomId] = [];
      }
      
      messages[chatRoomId]!.add(newMessage);
      await _saveMessages(messages);
      
      // 更新聊天室信息
      await _updateChatRoom(senderId, receiverId, content);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 获取聊天消息
  Future<List<ChatMessage>> getMessages(String userId1, String userId2) async {
    final chatRoomId = _getChatRoomId(userId1, userId2);
    final messages = await _loadMessages();
    
    final messageList = messages[chatRoomId] ?? [];
    messageList.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    
    return messageList;
  }
  
  // 更新聊天室信息
  Future<void> _updateChatRoom(String senderId, String receiverId, String lastMessage) async {
    final prefs = await SharedPreferences.getInstance();
    final chatRoomsJson = prefs.getString(_chatRoomsKey);
    
    Map<String, dynamic> chatRooms = {};
    if (chatRoomsJson != null) {
      try {
        chatRooms = json.decode(chatRoomsJson);
      } catch (e) {
        chatRooms = {};
      }
    }
    
    final chatRoomId = _getChatRoomId(senderId, receiverId);
    final otherUserId = senderId == '1' ? receiverId : senderId;
    
    chatRooms[chatRoomId] = {
      'id': chatRoomId,
      'participant1Id': '1', // 当前用户ID
      'participant2Id': otherUserId,
      'lastMessageTime': DateTime.now().toIso8601String(),
      'lastMessage': lastMessage,
      'unreadCount': senderId == '1' ? 0 : 1, // 如果是对方发送的消息，增加未读数
    };
    
    await prefs.setString(_chatRoomsKey, json.encode(chatRooms));
  }
  
  // 获取聊天室列表
  Future<List<ChatRoom>> getChatRooms() async {
    final prefs = await SharedPreferences.getInstance();
    final chatRoomsJson = prefs.getString(_chatRoomsKey);
    
    if (chatRoomsJson == null) {
      return [];
    }
    
    try {
      final Map<String, dynamic> chatRoomsMap = json.decode(chatRoomsJson);
      final chatRooms = <ChatRoom>[];
      
      chatRoomsMap.forEach((chatRoomId, chatRoomData) {
        chatRooms.add(ChatRoom.fromJson(chatRoomData));
      });
      
      // 按最后消息时间排序
      chatRooms.sort((a, b) => b.lastMessageTime.compareTo(a.lastMessageTime));
      
      return chatRooms;
    } catch (e) {
      return [];
    }
  }
  
  // 标记消息为已读
  Future<void> markMessagesAsRead(String userId1, String userId2) async {
    final chatRoomId = _getChatRoomId(userId1, userId2);
    final messages = await _loadMessages();
    
    if (messages.containsKey(chatRoomId)) {
      final updatedMessages = messages[chatRoomId]!.map((msg) {
        if (msg.receiverId == '1' && !msg.isRead) {
          return msg.copyWith(isRead: true);
        }
        return msg;
      }).toList();
      
      messages[chatRoomId] = updatedMessages;
      await _saveMessages(messages);
      
      // 更新聊天室未读数
      await _updateUnreadCount(chatRoomId, 0);
    }
  }
  
  // 更新未读消息数
  Future<void> _updateUnreadCount(String chatRoomId, int unreadCount) async {
    final prefs = await SharedPreferences.getInstance();
    final chatRoomsJson = prefs.getString(_chatRoomsKey);
    
    if (chatRoomsJson != null) {
      try {
        final Map<String, dynamic> chatRooms = json.decode(chatRoomsJson);
        if (chatRooms.containsKey(chatRoomId)) {
          chatRooms[chatRoomId]['unreadCount'] = unreadCount;
          await prefs.setString(_chatRoomsKey, json.encode(chatRooms));
        }
      } catch (e) {
        // 忽略错误
      }
    }
  }
  
  // 获取未读消息数
  Future<int> getUnreadCount(String userId1, String userId2) async {
    final chatRoomId = _getChatRoomId(userId1, userId2);
    final messages = await _loadMessages();
    
    if (!messages.containsKey(chatRoomId)) {
      return 0;
    }
    
    return messages[chatRoomId]!
        .where((msg) => msg.receiverId == '1' && !msg.isRead)
        .length;
  }
  
  // 删除聊天记录
  Future<void> deleteChat(String userId1, String userId2) async {
    final chatRoomId = _getChatRoomId(userId1, userId2);
    final messages = await _loadMessages();
    final prefs = await SharedPreferences.getInstance();
    
    // 删除消息
    messages.remove(chatRoomId);
    await _saveMessages(messages);
    
    // 删除聊天室
    final chatRoomsJson = prefs.getString(_chatRoomsKey);
    if (chatRoomsJson != null) {
      try {
        final Map<String, dynamic> chatRooms = json.decode(chatRoomsJson);
        chatRooms.remove(chatRoomId);
        await prefs.setString(_chatRoomsKey, json.encode(chatRooms));
      } catch (e) {
        // 忽略错误
      }
    }
  }
  
  // 清除所有聊天数据
  Future<void> clearAllChats() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_messagesKey);
    await prefs.remove(_chatRoomsKey);
  }
}
