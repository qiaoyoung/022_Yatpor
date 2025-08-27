
#import <Foundation/Foundation.h>

@interface TraditionalData : NSObject

+ (instancetype)sharedInstance;

//: NTESMessageRefusedTag
@property (nonatomic, copy) NSString *m_wheatActUrl;

//: chatroom_role_manager
@property (nonatomic, copy) NSString *appMiniIdent;

//: chatroom_role_master
@property (nonatomic, copy) NSString *main_internIndependentData;

//: type
@property (nonatomic, copy) NSString *showContainerUrl;

@end

@implementation TraditionalData

+ (instancetype)sharedInstance {
    static TraditionalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TraditionalDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)TraditionalDataToCache:(Byte *)data {
    int relationDignity = data[0];
    Byte legislation = data[1];
    int mare = data[2];
    for (int i = mare; i < mare + relationDignity; i++) {
        int value = data[i] - legislation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[mare + relationDignity] = 0;
    return data + mare;
}

- (NSString *)StringFromTraditionalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TraditionalDataToCache:data]];
}

//: chatroom_role_master
- (NSString *)main_internIndependentData {
    if (!_main_internIndependentData) {
		NSString *origin = @"143003939891a4a29f9f9d8fa29f9c958f9d91a3a495a272";
		NSData *data = [TraditionalData TraditionalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_internIndependentData = [self StringFromTraditionalData:value];
    }
    return _main_internIndependentData;
}

//: type
- (NSString *)showContainerUrl {
    if (!_showContainerUrl) {
		NSString *origin = @"045c08b5bed70e23d0d5ccc197";
		NSData *data = [TraditionalData TraditionalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showContainerUrl = [self StringFromTraditionalData:value];
    }
    return _showContainerUrl;
}

//: chatroom_role_manager
- (NSString *)appMiniIdent {
    if (!_appMiniIdent) {
		NSString *origin = @"154b0747efd08faeb3acbfbdbabab8aabdbab7b0aab8acb9acb2b0bdda";
		NSData *data = [TraditionalData TraditionalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appMiniIdent = [self StringFromTraditionalData:value];
    }
    return _appMiniIdent;
}

//: NTESMessageRefusedTag
- (NSString *)m_wheatActUrl {
    if (!_m_wheatActUrl) {
		NSString *origin = @"1515049963695a68627a8888767c7a677a7b8a887a7969767c1f";
		NSData *data = [TraditionalData TraditionalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_wheatActUrl = [self StringFromTraditionalData:value];
    }
    return _m_wheatActUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "IconLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "BarConfig.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "AllowStyle.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "PermitMenu.h"

//: @interface NTESCellLayoutConfig ()
@interface IconLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) BarConfig *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) AllowStyle *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation IconLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"StyleBubble",
                   //: @"NTESSnapchatAttachment",
                   @"DisableTo",
                   //: @"NTESWhiteboardAttachment",
                   @"TitleAttachment",
                   //: @"NTESRedPacketAttachment",
                   @"BarName",
                   //: @"NTESRedPacketTipAttachment",
                   @"PermitMenu",
                   //: @"NTESMultiRetweetAttachment",
                   @"NameSessionSuccess",
                   //: @"NTESShareCardAttachment"
                   @"LengthAttachment"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[BarConfig alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[AllowStyle alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - ContentCellLayoutConfig
#pragma mark - MenuConfig
//: - (CGSize)contentSize:(ContentMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)text:(PossibilityMessageStyle *)model recent:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self successName:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig voice:width add:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self item:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig voice:width add:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super text:model
                    //: cellWidth:width];
                    recent:width];

}

//: - (NSString *)cellContent:(ContentMessageModel *)model{
- (NSString *)doTeamImage:(PossibilityMessageStyle *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self successName:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig compartment:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self item:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig compartment:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super doTeamImage:model];
}

//: - (UIEdgeInsets)contentViewInsets:(ContentMessageModel *)model
- (UIEdgeInsets)inputInsets:(PossibilityMessageStyle *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self successName:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig viewDoing:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self item:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig viewDoing:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super inputInsets:model];
}

//: - (UIEdgeInsets)cellInsets:(ContentMessageModel *)model
- (UIEdgeInsets)message:(PossibilityMessageStyle *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super message:model];
}




//: - (BOOL)shouldShowAvatar:(ContentMessageModel *)model
- (BOOL)red:(PossibilityMessageStyle *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self label:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self select:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self target:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super red:model];
}

//: - (BOOL)shouldShowLeft:(ContentMessageModel *)model{
- (BOOL)bottom:(PossibilityMessageStyle *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self label:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super bottom:model];
}


//: - (BOOL)shouldShowNickName:(ContentMessageModel *)model{
- (BOOL)team:(PossibilityMessageStyle *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self label:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self target:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super team:model];
}

//: - (CGPoint)nickNameMargin:(ContentMessageModel *)model{
- (CGPoint)nameMargin:(PossibilityMessageStyle *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self label:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[TraditionalData sharedInstance].showContainerUrl] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super nameMargin:model];
}

//: - (NSArray *)customViews:(ContentMessageModel *)model
- (NSArray *)memberBy:(PossibilityMessageStyle *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self label:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[TraditionalData sharedInstance].showContainerUrl] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = [TraditionalData sharedInstance].appMiniIdent;
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = [TraditionalData sharedInstance].main_internIndependentData;
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super memberBy:model];
}


//: - (BOOL)disableRetryButton:(ContentMessageModel *)model
- (BOOL)headerButton:(PossibilityMessageStyle *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:[TraditionalData sharedInstance].m_wheatActUrl])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:[TraditionalData sharedInstance].m_wheatActUrl] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super headerButton:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)successName:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)label:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self successName:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)item:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)select:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[TitleAttachment class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(TitleAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)target:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[PermitMenu class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(ContentMessageModel *)model
- (BOOL)chronicleBackground:(PossibilityMessageStyle *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self successName:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig nameBy:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(nameBy:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig nameBy:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super chronicleBackground:model];
}
//: @end
@end
