
#import <Foundation/Foundation.h>

@interface PerformanceData : NSObject

@end

@implementation PerformanceData

+ (Byte *)PerformanceDataToCache:(Byte *)data {
    int bagBar = data[0];
    Byte braveForty = data[1];
    int nighBallot = data[2];
    for (int i = nighBallot; i < nighBallot + bagBar; i++) {
        int value = data[i] + braveForty;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[nighBallot + bagBar] = 0;
    return data + nighBallot;
}

+ (NSString *)StringFromPerformanceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PerformanceDataToCache:data]];
}

//: reply
+ (NSString *)user_drawMsg {
    /* static */ NSString *user_drawMsg = nil;
    if (!user_drawMsg) {
        Byte value[] = {5, 64, 7, 54, 103, 215, 128, 50, 37, 48, 44, 57, 152};
        user_drawMsg = [self StringFromPerformanceData:value];
    }
    return user_drawMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  PossibilityMessageStyle.m
// UserKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "ContentKitQuickCommentUtil.h"
#import "TapOption.h"

//: @interface ContentMessageModel()
@interface PossibilityMessageStyle()

//: @property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
//: @property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;

//: @end
@end

//: @implementation ContentMessageModel
@implementation PossibilityMessageStyle

//: @synthesize contentViewInsets = _contentViewInsets;
@synthesize contentViewInsets = _contentViewInsets;
//: @synthesize bubbleViewInsets = _bubbleViewInsets;
@synthesize bubbleViewInsets = _bubbleViewInsets;
//: @synthesize replyContentViewInsets = _replyContentViewInsets;
@synthesize replyContentViewInsets = _replyContentViewInsets;
//: @synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
@synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
//: @synthesize shouldShowAvatar = _shouldShowAvatar;
@synthesize shouldShowAvatar = _shouldShowAvatar;
//: @synthesize shouldShowNickName = _shouldShowNickName;
@synthesize shouldShowNickName = _shouldShowNickName;
//: @synthesize shouldShowLeft = _shouldShowLeft;
@synthesize shouldShowLeft = _shouldShowLeft;
//: @synthesize avatarMargin = _avatarMargin;
@synthesize avatarMargin = _avatarMargin;
//: @synthesize nickNameMargin = _nickNameMargin;
@synthesize nickNameMargin = _nickNameMargin;
//: @synthesize avatarSize = _avatarSize;
@synthesize avatarSize = _avatarSize;
//: @synthesize repliedMessage = _repliedMessage;
@synthesize repliedMessage = _repliedMessage;
//: @synthesize parentMessage = _parentMessage;
@synthesize parentMessage = _parentMessage;

//: - (instancetype)initWithMessage:(NIMMessage*)message
- (instancetype)initWithIconRefresh:(NIMMessage*)message
{
    //: if (self = [self init])
    if (self = [self init])
    {
        //: _message = message;
        _message = message;
        //: _messageTime = message.timestamp;
        _messageTime = message.timestamp;
        //: _contentSizeInfo = [[NSMutableDictionary alloc] init];
        _contentSizeInfo = [[NSMutableDictionary alloc] init];
        //: _replyContentSizeInfo = [NSMutableDictionary dictionary];
        _replyContentSizeInfo = [NSMutableDictionary dictionary];
        //: _enableRepliedContent = YES;
        _enableRepliedContent = YES;
        //: _enableQuickComments = YES;
        _enableQuickComments = YES;
        //: _shouldShowPinContent = YES;
        _shouldShowPinContent = YES;
        //: _enableSubMessages = YES;
        _enableSubMessages = YES;
    }
    //: return self;
    return self;
}

//: - (void)cleanCache
- (void)systemBubble
{
    //: [_contentSizeInfo removeAllObjects];
    [_contentSizeInfo removeAllObjects];
    //: _contentViewInsets = UIEdgeInsetsZero;
    _contentViewInsets = UIEdgeInsetsZero;
    //: _bubbleViewInsets = UIEdgeInsetsZero;
    _bubbleViewInsets = UIEdgeInsetsZero;
    //: _replyContentViewInsets = UIEdgeInsetsZero;
    _replyContentViewInsets = UIEdgeInsetsZero;
    //: _replyBubbleViewInsets = UIEdgeInsetsZero;
    _replyBubbleViewInsets = UIEdgeInsetsZero;
}

//: - (NSString*)description{
- (NSString*)description{
    //: return self.message.text;
    return self.message.text;
}

//: - (BOOL)isEqual:(id)object
- (BOOL)isEqual:(id)object
{
    //: if (![object isKindOfClass:[ContentMessageModel class]])
    if (![object isKindOfClass:[PossibilityMessageStyle class]])
    {
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: ContentMessageModel *model = object;
        PossibilityMessageStyle *model = object;
        //: return [self.message isEqual:model.message];
        return [self.message isEqual:model.message];
    }
}

//: - (CGSize)contentSize:(CGFloat)width
- (CGSize)onSize:(CGFloat)width
{
    //: CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    //: if (__CGSizeEqualToSize(size, CGSizeZero))
    if (__CGSizeEqualToSize(size, CGSizeZero))
    {
        //: [self updateLayoutConfig];
        [self be];
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: size = [layoutConfig contentSize:self cellWidth:width];
        size = [layoutConfig text:self recent:width];
        //: [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
        [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
    }
    //: return size;
    return size;
}


//: - (UIEdgeInsets)contentViewInsets{
- (UIEdgeInsets)contentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: _contentViewInsets = [layoutConfig contentViewInsets:self];
        _contentViewInsets = [layoutConfig inputInsets:self];
    }
    //: return _contentViewInsets;
    return _contentViewInsets;
}

//: - (UIEdgeInsets)bubbleViewInsets{
- (UIEdgeInsets)bubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: _bubbleViewInsets = [layoutConfig cellInsets:self];
        _bubbleViewInsets = [layoutConfig message:self];
    }
    //: return _bubbleViewInsets;
    return _bubbleViewInsets;
}

//: - (CGSize)replyContentSize:(CGFloat)width
- (CGSize)path:(CGFloat)width
{
    //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
    //: CGSize size = [layoutConfig replyContentSize:self cellWidth:width];
    CGSize size = [layoutConfig stateTable:self perimeter:width];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)replyContentViewInsets{
- (UIEdgeInsets)replyContentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: _replyContentViewInsets = [layoutConfig replyContentViewInsets:self];
        _replyContentViewInsets = [layoutConfig date:self];
    }
    //: return _replyContentViewInsets;
    return _replyContentViewInsets;
}

//: - (UIEdgeInsets)replyBubbleViewInsets{
- (UIEdgeInsets)replyBubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: _replyBubbleViewInsets = [layoutConfig replyCellInsets:self];
        _replyBubbleViewInsets = [layoutConfig with:self];
    }
    //: return _replyBubbleViewInsets;
    return _replyBubbleViewInsets;
}


//: - (void)updateLayoutConfig
- (void)be
{
    //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];

    //: _shouldShowAvatar = [layoutConfig shouldShowAvatar:self];
    _shouldShowAvatar = [layoutConfig red:self];
    //: _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig shouldShowNickName:self];
    _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig team:self];
    //: _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig shouldShowLeft:self];
    _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig bottom:self];
    //: _avatarMargin = [layoutConfig avatarMargin:self];
    _avatarMargin = [layoutConfig contentKeyMargin:self];
    //: _nickNameMargin = [layoutConfig nickNameMargin:self];
    _nickNameMargin = [layoutConfig nameMargin:self];
    //: _avatarSize = [layoutConfig avatarSize:self];
    _avatarSize = [layoutConfig viewOf:self];
}


//: - (BOOL)shouldShowReadLabel
- (BOOL)shouldShowReadLabel
{
    //: if (self.message.session.sessionType == NIMSessionTypeP2P)
    if (self.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: return _shouldShowReadLabel && self.message.isRemoteRead;
        return _shouldShowReadLabel && self.message.isRemoteRead;
    }
    //: else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { 
    else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { //超大群这个功能还没做
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: return _shouldShowReadLabel;
        return _shouldShowReadLabel;
    }

}

//: - (BOOL)needShowReplyCountContent
- (BOOL)clean
{
    //: return self.enableSubMessages;
    return self.enableSubMessages;
}

//: - (BOOL)needShowRepliedContent
- (BOOL)range
{
//    BOOL should = self.message.messageType == NIMMessageTypeTip;
//    return !should && self.enableRepliedContent &&
//    self.message.repliedMessageId.length > 0;

    //: return [self.message.remoteExt.allKeys containsObject:@"reply"];
    return [self.message.remoteExt.allKeys containsObject:[PerformanceData user_drawMsg]];
}

//: - (BOOL)needShowEmoticonsView
- (BOOL)version
{
    //: return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
    return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
}

//: - (void)quickComments:(NIMMessage *)message
- (void)cell:(NIMMessage *)message
           //: completion:(void(^)(NSMapTable *))completion
           push:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: _emoticonsContainerSize = [ContentKitQuickCommentUtil containerSizeWithComments:result];
                _emoticonsContainerSize = [TapOption black:result];
            }
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: @end
@end
