
#import <Foundation/Foundation.h>

@interface HeaderData : NSObject

+ (instancetype)sharedInstance;

//: home_fragment_liao
@property (nonatomic, copy) NSString *dream_grayMessage;

//: home_fragment_bai
@property (nonatomic, copy) NSString *mainResourceBlueStr;

//: group_card
@property (nonatomic, copy) NSString *show_sizeMsg;

//: message_guess
@property (nonatomic, copy) NSString *showCommentJurisdictionMsg;

//: message_red_packet
@property (nonatomic, copy) NSString *show_armyValue;

//: person_card
@property (nonatomic, copy) NSString *dreamTableStr;

//: home_fragment_yue
@property (nonatomic, copy) NSString *dreamReplyMsg;

@end

@implementation HeaderData

+ (instancetype)sharedInstance {
    static HeaderData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HeaderDataToData:(NSString *)value {
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

- (Byte *)HeaderDataToCache:(Byte *)data {
    int accumulation = data[0];
    Byte clayBegin = data[1];
    int redOf = data[2];
    for (int i = redOf; i < redOf + accumulation; i++) {
        int value = data[i] - clayBegin;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[redOf + accumulation] = 0;
    return data + redOf;
}

- (NSString *)StringFromHeaderData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HeaderDataToCache:data]];
}

//: group_card
- (NSString *)show_sizeMsg {
    if (!_show_sizeMsg) {
		NSString *origin = @"0a220a2715cb22f1a1fd899491979281858394868c";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_sizeMsg = [self StringFromHeaderData:value];
    }
    return _show_sizeMsg;
}

//: home_fragment_bai
- (NSString *)mainResourceBlueStr {
    if (!_mainResourceBlueStr) {
		NSString *origin = @"115d0698039ec5cccac2bcc3cfbec4cac2cbd1bcbfbec623";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainResourceBlueStr = [self StringFromHeaderData:value];
    }
    return _mainResourceBlueStr;
}

//: message_guess
- (NSString *)showCommentJurisdictionMsg {
    if (!_showCommentJurisdictionMsg) {
		NSString *origin = @"0d440d721c428be8593bfdc6fcb1a9b7b7a5aba9a3abb9a9b7b708";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showCommentJurisdictionMsg = [self StringFromHeaderData:value];
    }
    return _showCommentJurisdictionMsg;
}

//: home_fragment_yue
- (NSString *)dreamReplyMsg {
    if (!_dreamReplyMsg) {
		NSString *origin = @"1104036c737169636a76656b71697278637d7969bb";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamReplyMsg = [self StringFromHeaderData:value];
    }
    return _dreamReplyMsg;
}

//: message_red_packet
- (NSString *)show_armyValue {
    if (!_show_armyValue) {
		NSString *origin = @"125e088a9dfbbabccbc3d1d1bfc5c3bdd0c3c2bdcebfc1c9c3d2de";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_armyValue = [self StringFromHeaderData:value];
    }
    return _show_armyValue;
}

//: home_fragment_liao
- (NSString *)dream_grayMessage {
    if (!_dream_grayMessage) {
		NSString *origin = @"1233039ba2a0989299a5949aa098a1a7929f9c94a2bf";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_grayMessage = [self StringFromHeaderData:value];
    }
    return _dream_grayMessage;
}

//: person_card
- (NSString *)dreamTableStr {
    if (!_dreamTableStr) {
		NSString *origin = @"0b1b082cb616cddb8b808d8e8a897a7e7c8d7fae";
		NSData *data = [HeaderData HeaderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTableStr = [self StringFromHeaderData:value];
    }
    return _dreamTableStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NatalDayComplete.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "NatalDayComplete.h"
//: #import "FFFMessageUtil.h"
#import "AlongTeam.h"
//: #import "NTESShareCardAttachment.h"
#import "LengthAttachment.h"

//: @implementation NTESMessageUtil
@implementation NatalDayComplete

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)text:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self data:message];
    //: } else {
    } else {
        //: text = [FFFMessageUtil messageContent:message];
        text = [AlongTeam pinMessage:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)data:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[DisableTo class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].dreamReplyMsg];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[StyleBubble class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_guess"];
        text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].showCommentJurisdictionMsg];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[TitleAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].mainResourceBlueStr];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[BarName class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_red_packet"];
        text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].show_armyValue];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[PermitMenu class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        PermitMenu *attach = (PermitMenu *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.colorAction;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[NameSessionSuccess class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].dream_grayMessage];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[LengthAttachment class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        LengthAttachment *cardAtt = (LengthAttachment *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [FFFLanguageManager getTextWithKey:@"group_card"];
            text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].show_sizeMsg];
        //: } else {
        } else {
            //: text = [FFFLanguageManager getTextWithKey:@"person_card"];
            text = [MatronymicPath colorStreetwise:[HeaderData sharedInstance].dreamTableStr];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end