
#import <Foundation/Foundation.h>

@interface SizeData : NSObject

+ (instancetype)sharedInstance;

//: onTapMenuItemTranslation:
@property (nonatomic, copy) NSString *userNumberLabByStr;

//: onTapMenuItemRevoke:
@property (nonatomic, copy) NSString *app_selectedMsg;

//: menu_revoke
@property (nonatomic, copy) NSString *m_showPath;

//: menu_del
@property (nonatomic, copy) NSString *dreamSingleTitle;

//: menu_praise
@property (nonatomic, copy) NSString *appCommentUrl;

//: menu_report
@property (nonatomic, copy) NSString *userInfoImageCommentData;

//: onTapMenuItemForword:
@property (nonatomic, copy) NSString *main_viewName;

//: menu_translation
@property (nonatomic, copy) NSString *app_removeMsg;

//: friend_circle_adapter_like
@property (nonatomic, copy) NSString *noti_bluePath;

//: menu_forword
@property (nonatomic, copy) NSString *user_endStr;

//: onTapMenuItemCopy:
@property (nonatomic, copy) NSString *k_closeIdent;

//: onTapMenuItemPraise:
@property (nonatomic, copy) NSString *noti_redMessage;

//: report_Content
@property (nonatomic, copy) NSString *mReleaseUserPath;

//: onTapMenuItemReport:
@property (nonatomic, copy) NSString *noti_tingValue;

//: onTapMenuItemDelete:
@property (nonatomic, copy) NSString *showCollectionTitle;

//: menu_copy
@property (nonatomic, copy) NSString *mainKeyName;

@end

@implementation SizeData

+ (instancetype)sharedInstance {
    static SizeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SizeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SizeDataToCache:(Byte *)data {
    int remoteCustom = data[0];
    Byte beginDoingTable = data[1];
    int consuetude = data[2];
    for (int i = consuetude; i < consuetude + remoteCustom; i++) {
        int value = data[i] - beginDoingTable;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[consuetude + remoteCustom] = 0;
    return data + consuetude;
}

- (NSString *)StringFromSizeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SizeDataToCache:data]];
}

//: menu_translation
- (NSString *)app_removeMsg {
    if (!_app_removeMsg) {
		NSArray<NSNumber *> *origin = @[@16, @33, @6, @255, @235, @194, @142, @134, @143, @150, @128, @149, @147, @130, @143, @148, @141, @130, @149, @138, @144, @143, @104];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_removeMsg = [self StringFromSizeData:value];
    }
    return _app_removeMsg;
}

//: menu_del
- (NSString *)dreamSingleTitle {
    if (!_dreamSingleTitle) {
		NSArray<NSNumber *> *origin = @[@8, @59, @5, @185, @151, @168, @160, @169, @176, @154, @159, @160, @167, @246];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamSingleTitle = [self StringFromSizeData:value];
    }
    return _dreamSingleTitle;
}

//: onTapMenuItemTranslation:
- (NSString *)userNumberLabByStr {
    if (!_userNumberLabByStr) {
		NSArray<NSNumber *> *origin = @[@25, @83, @3, @194, @193, @167, @180, @195, @160, @184, @193, @200, @156, @199, @184, @192, @167, @197, @180, @193, @198, @191, @180, @199, @188, @194, @193, @141, @249];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userNumberLabByStr = [self StringFromSizeData:value];
    }
    return _userNumberLabByStr;
}

//: menu_praise
- (NSString *)appCommentUrl {
    if (!_appCommentUrl) {
		NSArray<NSNumber *> *origin = @[@11, @83, @13, @253, @194, @230, @75, @67, @143, @51, @99, @9, @111, @192, @184, @193, @200, @178, @195, @197, @180, @188, @198, @184, @36];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCommentUrl = [self StringFromSizeData:value];
    }
    return _appCommentUrl;
}

//: onTapMenuItemPraise:
- (NSString *)noti_redMessage {
    if (!_noti_redMessage) {
		NSArray<NSNumber *> *origin = @[@20, @44, @3, @155, @154, @128, @141, @156, @121, @145, @154, @161, @117, @160, @145, @153, @124, @158, @141, @149, @159, @145, @102, @167];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_redMessage = [self StringFromSizeData:value];
    }
    return _noti_redMessage;
}

//: onTapMenuItemForword:
- (NSString *)main_viewName {
    if (!_main_viewName) {
		NSArray<NSNumber *> *origin = @[@21, @89, @6, @50, @195, @43, @200, @199, @173, @186, @201, @166, @190, @199, @206, @162, @205, @190, @198, @159, @200, @203, @208, @200, @203, @189, @147, @203];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_viewName = [self StringFromSizeData:value];
    }
    return _main_viewName;
}

//: onTapMenuItemCopy:
- (NSString *)k_closeIdent {
    if (!_k_closeIdent) {
		NSArray<NSNumber *> *origin = @[@18, @66, @4, @111, @177, @176, @150, @163, @178, @143, @167, @176, @183, @139, @182, @167, @175, @133, @177, @178, @187, @124, @163];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_closeIdent = [self StringFromSizeData:value];
    }
    return _k_closeIdent;
}

//: menu_forword
- (NSString *)user_endStr {
    if (!_user_endStr) {
		NSArray<NSNumber *> *origin = @[@12, @49, @13, @160, @230, @170, @80, @245, @248, @180, @115, @40, @106, @158, @150, @159, @166, @144, @151, @160, @163, @168, @160, @163, @149, @5];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_endStr = [self StringFromSizeData:value];
    }
    return _user_endStr;
}

//: onTapMenuItemDelete:
- (NSString *)showCollectionTitle {
    if (!_showCollectionTitle) {
		NSArray<NSNumber *> *origin = @[@20, @26, @6, @154, @209, @137, @137, @136, @110, @123, @138, @103, @127, @136, @143, @99, @142, @127, @135, @94, @127, @134, @127, @142, @127, @84, @248];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showCollectionTitle = [self StringFromSizeData:value];
    }
    return _showCollectionTitle;
}

//: menu_revoke
- (NSString *)m_showPath {
    if (!_m_showPath) {
		NSArray<NSNumber *> *origin = @[@11, @24, @8, @142, @246, @231, @96, @226, @133, @125, @134, @141, @119, @138, @125, @142, @135, @131, @125, @138];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_showPath = [self StringFromSizeData:value];
    }
    return _m_showPath;
}

//: menu_copy
- (NSString *)mainKeyName {
    if (!_mainKeyName) {
		NSArray<NSNumber *> *origin = @[@9, @95, @9, @119, @244, @251, @250, @102, @78, @204, @196, @205, @212, @190, @194, @206, @207, @216, @195];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainKeyName = [self StringFromSizeData:value];
    }
    return _mainKeyName;
}

//: report_Content
- (NSString *)mReleaseUserPath {
    if (!_mReleaseUserPath) {
		NSArray<NSNumber *> *origin = @[@14, @63, @4, @38, @177, @164, @175, @174, @177, @179, @158, @130, @174, @173, @179, @164, @173, @179, @185];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mReleaseUserPath = [self StringFromSizeData:value];
    }
    return _mReleaseUserPath;
}

//: menu_report
- (NSString *)userInfoImageCommentData {
    if (!_userInfoImageCommentData) {
		NSArray<NSNumber *> *origin = @[@11, @29, @5, @121, @178, @138, @130, @139, @146, @124, @143, @130, @141, @140, @143, @145, @14];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userInfoImageCommentData = [self StringFromSizeData:value];
    }
    return _userInfoImageCommentData;
}

//: friend_circle_adapter_like
- (NSString *)noti_bluePath {
    if (!_noti_bluePath) {
		NSArray<NSNumber *> *origin = @[@26, @33, @3, @135, @147, @138, @134, @143, @133, @128, @132, @138, @147, @132, @141, @134, @128, @130, @133, @130, @145, @149, @134, @147, @128, @141, @138, @140, @134, @74];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_bluePath = [self StringFromSizeData:value];
    }
    return _noti_bluePath;
}

//: onTapMenuItemReport:
- (NSString *)noti_tingValue {
    if (!_noti_tingValue) {
		NSArray<NSNumber *> *origin = @[@20, @8, @6, @134, @62, @19, @119, @118, @92, @105, @120, @85, @109, @118, @125, @81, @124, @109, @117, @90, @109, @120, @119, @122, @124, @66, @206];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_tingValue = [self StringFromSizeData:value];
    }
    return _noti_tingValue;
}

//: onTapMenuItemRevoke:
- (NSString *)app_selectedMsg {
    if (!_app_selectedMsg) {
		NSArray<NSNumber *> *origin = @[@20, @7, @5, @137, @198, @118, @117, @91, @104, @119, @84, @108, @117, @124, @80, @123, @108, @116, @89, @108, @125, @118, @114, @108, @65, @120];
		NSData *data = [SizeData SizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_selectedMsg = [self StringFromSizeData:value];
    }
    return _app_selectedMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageBottomConfig.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "LanguageBottomConfig.h"
//: #import "FFFMediaItem.h"
#import "LanguageItem.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "NTESSnapchatAttachment.h"
#import "DisableTo.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "NSString+NTES.h"
#import "NSString+StyleTool.h"
//: #import "FFFSessionConfig.h"
#import "SaloonConfig.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "FFFInputEmoticonManager.h"
#import "CompleteManager.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"

//: @interface NTESSessionConfig()
@interface LanguageBottomConfig()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation NTESSessionConfig
@implementation LanguageBottomConfig

//: - (NSArray *)mediaItems
- (NSArray *)imageDomain
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [UserKit totalSend].config.title;

//    LanguageItem *janKenPon = [LanguageItem item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    LanguageItem *fileTrans = [LanguageItem item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    LanguageItem *tip       = [LanguageItem item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    LanguageItem *audioChat =  [LanguageItem item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    LanguageItem *videoChat =  [LanguageItem item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    LanguageItem *teamMeeting =  [LanguageItem item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    LanguageItem *snapChat =   [LanguageItem item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    LanguageItem *whiteBoard = [LanguageItem item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    LanguageItem *redPacket  = [LanguageItem item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    LanguageItem *teamReceipt  = [LanguageItem item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".ntes_localized];



//    BOOL isMe   = _session.sessionType == NIMSessionTypeP2P
//    && [_session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
//    NSArray *items = nil;

//    if (isMe)
//    {
//        items = @[janKenPon,tip];
//    }
//    else if(_session.sessionType == NIMSessionTypeTeam || _session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        items = @[janKenPon];
//    }
//    else
//    {
//        items = @[janKenPon];
//    }


//    return [defaultMediaItems arrayByAddingObjectsFromArray:items];
    //: return defaultMediaItems;
    return defaultMediaItems;
}


//: - (NSArray<FFFMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<LanguageItem *> *)outdoorsing:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: FFFMediaItem *Praise = [FFFMediaItem item:@"onTapMenuItemPraise:"
    LanguageItem *Praise = [LanguageItem valueColor:[SizeData sharedInstance].noti_redMessage
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].appCommentUrl]
                               //: selectedImage:nil
                               itemTo:nil
                                       //: title:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       domain:[MatronymicPath colorStreetwise:[SizeData sharedInstance].noti_bluePath]];

//    LanguageItem *reply = [LanguageItem item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    LanguageItem *copy = [LanguageItem valueColor:[SizeData sharedInstance].k_closeIdent
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].mainKeyName]
                              //: selectedImage:nil
                              itemTo:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      domain:[MatronymicPath colorStreetwise:@"复制"]];

    //: FFFMediaItem *forword = [FFFMediaItem item:@"onTapMenuItemForword:"
    LanguageItem *forword = [LanguageItem valueColor:[SizeData sharedInstance].main_viewName
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].user_endStr]
                                 //: selectedImage:nil
                                 itemTo:nil
                                         //: title:[FFFLanguageManager getTextWithKey:@"转发"]];
                                         domain:[MatronymicPath colorStreetwise:@"转发"]];

//    LanguageItem *mark = [LanguageItem item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    LanguageItem *pin = [LanguageItem item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: FFFMediaItem *report = [FFFMediaItem item:@"onTapMenuItemReport:"
    LanguageItem *report = [LanguageItem valueColor:[SizeData sharedInstance].noti_tingValue
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].userInfoImageCommentData]
                                //: selectedImage:nil
                                itemTo:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"report_Content"]];
                                        domain:[MatronymicPath colorStreetwise:[SizeData sharedInstance].mReleaseUserPath]];

    //: FFFMediaItem *translation = [FFFMediaItem item:@"onTapMenuItemTranslation:"
    LanguageItem *translation = [LanguageItem valueColor:[SizeData sharedInstance].userNumberLabByStr
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].app_removeMsg]
                                //: selectedImage:nil
                                itemTo:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"翻译"]];
                                        domain:[MatronymicPath colorStreetwise:@"翻译"]];

    //: FFFMediaItem *revoke = [FFFMediaItem item:@"onTapMenuItemRevoke:"
    LanguageItem *revoke = [LanguageItem valueColor:[SizeData sharedInstance].app_selectedMsg
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].m_showPath]
                                //: selectedImage:nil
                                itemTo:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"撤回"]];
                                        domain:[MatronymicPath colorStreetwise:@"撤回"]];

    //: FFFMediaItem *delete = [FFFMediaItem item:@"onTapMenuItemDelete:"
    LanguageItem *delete = [LanguageItem valueColor:[SizeData sharedInstance].showCollectionTitle
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  sleepingPill:[UIImage imageNamed:[SizeData sharedInstance].dreamSingleTitle]
                                //: selectedImage:nil
                                itemTo:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"删除"]];
                                        domain:[MatronymicPath colorStreetwise:@"删除"]];

//    LanguageItem *mutiSelect = [LanguageItem item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([LanguageUtil canMessageBeForwarded:message])
//    {
//        [items addObject:reply];
//    }

    //: BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: if (!isMe)
    if (!isMe)
    {
        //: [items addObject:report];
        [items addObject:report];
    }

    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [items addObject:copy];
        [items addObject:copy];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([LanguageUtil page:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([LanguageUtil canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([LanguageUtil wire:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([LanguageUtil canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        LanguageItem *audio2text = [LanguageItem item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".ntes_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)emotionItems
- (NSArray *)infoOnSize
{
    //NSArray *indexs = @[@(1),@(145),@(12),@(15),@(10),@(18),@(19)];
    //: NSArray *indexs = @[];
    NSArray *indexs = @[];
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: for (NSNumber *index in indexs)
    for (NSNumber *index in indexs)
    {
        //: NSString * ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, [index integerValue]];
        NSString * ID = [NSString stringWithFormat:appShowText, [index integerValue]];
        //: NIMInputEmoticon *item = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
        BackgroundBar *item = [[CompleteManager index] user:ID];
        //: if (item)
        if (item)
        {
            //: [items addObject:item];
            [items addObject:item];
        }
    }

    //: return [items copy];
    return [items copy];
}

//: - (BOOL)shouldHandleReceipt{
- (BOOL)keyTing{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)marginTool{
    //: return @[
    return @[
//        @(FFFInputBarItemTypeMore),
//        @(FFFInputBarItemTypeEmoticon),
//             @(FFFInputBarItemTypeVoice),
             //: @(FFFInputBarItemTypeTextAndRecord),
             @(FFFInputBarItemTypeTextAndRecord),
        //: @(FFFInputBarItemTypeSend),
        @(FFFInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)limitted:(NIMMessage *)message
{
    //文字，语音，图片，视频，文件，地址位置和自定义消息都支持已读回执，其他的不支持
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: if (type == NIMMessageTypeCustom) {
    if (type == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        //: id attachment = object.attachment;
        id attachment = object.attachment;

        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[TitleAttachment class]]) {
            //: return NO;
            return NO;
        }
    }



    //: return type == NIMMessageTypeText ||
    return type == NIMMessageTypeText ||
    //: type == NIMMessageTypeAudio ||
    type == NIMMessageTypeAudio ||
    //: type == NIMMessageTypeImage ||
    type == NIMMessageTypeImage ||
    //: type == NIMMessageTypeVideo ||
    type == NIMMessageTypeVideo ||
    //: type == NIMMessageTypeFile ||
    type == NIMMessageTypeFile ||
    //: type == NIMMessageTypeLocation ||
    type == NIMMessageTypeLocation ||
    //: type == NIMMessageTypeCustom;
    type == NIMMessageTypeCustom;
}

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<SpecialSessionView *> *)withDateCenter
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)nameKey{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[PassageSetting language] nameKey];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)autoWithAttachment {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[PassageSetting language] autoWithAttachment];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)dismissTo
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[PassageSetting language] up] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)sizes:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![LanguageUtil page:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)backgroundMessage
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)laterDoingClearMetallicSentDedication
{
    //: return YES;
    return YES;
}

//: @end
@end