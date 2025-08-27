
#import <Foundation/Foundation.h>

@interface WheatEtherData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WheatEtherData

+ (instancetype)sharedInstance {
    static WheatEtherData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WheatEtherDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)WheatEtherDataToCache:(Byte *)data {
    int happen = data[0];
    Byte scrunchOperation = data[1];
    int assElaborate = data[2];
    for (int i = assElaborate; i < assElaborate + happen; i++) {
        int value = data[i] + scrunchOperation;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[assElaborate + happen] = 0;
    return data + assElaborate;
}

- (NSString *)StringFromWheatEtherData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WheatEtherDataToCache:data]];
}

//: teamgonggao_
- (NSString *)showEfficiencyKey {
    /* static */ NSString *showEfficiencyKey = nil;
    if (!showEfficiencyKey) {
		NSArray<NSString *> *origin = @[@"12", @"33", @"4", @"25", @"83", @"68", @"64", @"76", @"70", @"78", @"77", @"70", @"70", @"64", @"78", @"62", @"138"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEfficiencyKey = [self StringFromWheatEtherData:value];
    }
    return showEfficiencyKey;
}

//: Group_information_update
- (NSString *)userSpendingFortyToilMessage {
    /* static */ NSString *userSpendingFortyToilMessage = nil;
    if (!userSpendingFortyToilMessage) {
		NSArray<NSString *> *origin = @[@"24", @"21", @"13", @"43", @"124", @"111", @"153", @"6", @"174", @"2", @"12", @"224", @"204", @"50", @"93", @"90", @"96", @"91", @"74", @"84", @"89", @"81", @"90", @"93", @"88", @"76", @"95", @"84", @"90", @"89", @"74", @"96", @"91", @"79", @"76", @"95", @"80", @"23"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSpendingFortyToilMessage = [self StringFromWheatEtherData:value];
    }
    return userSpendingFortyToilMessage;
}

//: Image
- (NSString *)noti_dateIdent {
    /* static */ NSString *noti_dateIdent = nil;
    if (!noti_dateIdent) {
		NSArray<NSString *> *origin = @[@"5", @"34", @"13", @"79", @"147", @"108", @"144", @"160", @"247", @"72", @"65", @"194", @"164", @"39", @"75", @"63", @"69", @"67", @"248"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_dateIdent = [self StringFromWheatEtherData:value];
    }
    return noti_dateIdent;
}

//: title
- (NSString *)dream_donData {
    /* static */ NSString *dream_donData = nil;
    if (!dream_donData) {
		NSArray<NSString *> *origin = @[@"5", @"92", @"8", @"183", @"14", @"93", @"77", @"176", @"24", @"13", @"24", @"16", @"9", @"229"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_donData = [self StringFromWheatEtherData:value];
    }
    return dream_donData;
}

//: Super_Group_Information_Update
- (NSString *)notiNecessityName {
    /* static */ NSString *notiNecessityName = nil;
    if (!notiNecessityName) {
		NSArray<NSString *> *origin = @[@"30", @"47", @"5", @"1", @"187", @"36", @"70", @"65", @"54", @"67", @"48", @"24", @"67", @"64", @"70", @"65", @"48", @"26", @"63", @"55", @"64", @"67", @"62", @"50", @"69", @"58", @"64", @"63", @"48", @"38", @"65", @"53", @"50", @"69", @"54", @"187"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiNecessityName = [self StringFromWheatEtherData:value];
    }
    return notiNecessityName;
}

//: content
- (NSString *)dreamDebateText {
    /* static */ NSString *dreamDebateText = nil;
    if (!dreamDebateText) {
		NSArray<NSString *> *origin = @[@"7", @"14", @"3", @"85", @"97", @"96", @"102", @"87", @"96", @"102", @"65"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDebateText = [self StringFromWheatEtherData:value];
    }
    return dreamDebateText;
}

//: Video
- (NSString *)notiDataText {
    /* static */ NSString *notiDataText = nil;
    if (!notiDataText) {
		NSArray<NSString *> *origin = @[@"5", @"10", @"8", @"69", @"108", @"5", @"171", @"38", @"76", @"95", @"90", @"91", @"101", @"63"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiDataText = [self StringFromWheatEtherData:value];
    }
    return notiDataText;
}

//: Internet_call
- (NSString *)m_scaleToiletUrl {
    /* static */ NSString *m_scaleToiletUrl = nil;
    if (!m_scaleToiletUrl) {
		NSArray<NSString *> *origin = @[@"13", @"42", @"6", @"127", @"146", @"142", @"31", @"68", @"74", @"59", @"72", @"68", @"59", @"74", @"53", @"57", @"55", @"66", @"66", @"233"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_scaleToiletUrl = [self StringFromWheatEtherData:value];
    }
    return m_scaleToiletUrl;
}

//: Video_chat
- (NSString *)userManufacturerData {
    /* static */ NSString *userManufacturerData = nil;
    if (!userManufacturerData) {
		NSArray<NSString *> *origin = @[@"10", @"38", @"6", @"112", @"240", @"211", @"48", @"67", @"62", @"63", @"73", @"57", @"61", @"66", @"59", @"78", @"201"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userManufacturerData = [self StringFromWheatEtherData:value];
    }
    return userManufacturerData;
}

//: Audio
- (NSString *)user_halfwayResortData {
    /* static */ NSString *user_halfwayResortData = nil;
    if (!user_halfwayResortData) {
		NSArray<NSString *> *origin = @[@"5", @"71", @"5", @"255", @"29", @"250", @"46", @"29", @"34", @"40", @"4"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_halfwayResortData = [self StringFromWheatEtherData:value];
    }
    return user_halfwayResortData;
}

//: teamgonggao_record_
- (NSString *)show_literData {
    /* static */ NSString *show_literData = nil;
    if (!show_literData) {
		NSArray<NSString *> *origin = @[@"19", @"3", @"9", @"26", @"166", @"240", @"117", @"141", @"47", @"113", @"98", @"94", @"106", @"100", @"108", @"107", @"100", @"100", @"94", @"108", @"92", @"111", @"98", @"96", @"108", @"111", @"97", @"92", @"68"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_literData = [self StringFromWheatEtherData:value];
    }
    return show_literData;
}

//: teamgonggao_title_
- (NSString *)user_closeStr {
    /* static */ NSString *user_closeStr = nil;
    if (!user_closeStr) {
		NSArray<NSString *> *origin = @[@"18", @"99", @"10", @"140", @"240", @"253", @"209", @"234", @"231", @"124", @"17", @"2", @"254", @"10", @"4", @"12", @"11", @"4", @"4", @"254", @"12", @"252", @"17", @"6", @"17", @"9", @"2", @"252", @"193"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_closeStr = [self StringFromWheatEtherData:value];
    }
    return user_closeStr;
}

//: File
- (NSString *)m_shouldStr {
    /* static */ NSString *m_shouldStr = nil;
    if (!m_shouldStr) {
		NSArray<NSString *> *origin = @[@"4", @"54", @"5", @"165", @"177", @"16", @"51", @"54", @"47", @"93"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_shouldStr = [self StringFromWheatEtherData:value];
    }
    return m_shouldStr;
}

//: Group_chat_information_update
- (NSString *)kTingKey {
    /* static */ NSString *kTingKey = nil;
    if (!kTingKey) {
		NSArray<NSString *> *origin = @[@"29", @"47", @"10", @"132", @"72", @"102", @"149", @"101", @"235", @"50", @"24", @"67", @"64", @"70", @"65", @"48", @"52", @"57", @"50", @"69", @"48", @"58", @"63", @"55", @"64", @"67", @"62", @"50", @"69", @"58", @"64", @"63", @"48", @"70", @"65", @"53", @"50", @"69", @"54", @"28"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTingKey = [self StringFromWheatEtherData:value];
    }
    return kTingKey;
}

//: Location
- (NSString *)dreamGrayKey {
    /* static */ NSString *dreamGrayKey = nil;
    if (!dreamGrayKey) {
		NSArray<NSString *> *origin = @[@"8", @"49", @"5", @"79", @"142", @"27", @"62", @"50", @"48", @"67", @"56", @"62", @"61", @"71"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamGrayKey = [self StringFromWheatEtherData:value];
    }
    return dreamGrayKey;
}

//: teamgonggao_content_
- (NSString *)noti_touchValueData {
    /* static */ NSString *noti_touchValueData = nil;
    if (!noti_touchValueData) {
		NSArray<NSString *> *origin = @[@"20", @"42", @"4", @"154", @"74", @"59", @"55", @"67", @"61", @"69", @"68", @"61", @"61", @"55", @"69", @"53", @"57", @"69", @"68", @"74", @"59", @"68", @"74", @"53", @"144"];
		NSData *data = [WheatEtherData WheatEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_touchValueData = [self StringFromWheatEtherData:value];
    }
    return noti_touchValueData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongTeam.m
// UserKit
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentMessageUtil.h"
#import "AlongTeam.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+UserKit.h"

//: @implementation ContentMessageUtil
@implementation AlongTeam

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)pinMessage:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [ContentLanguageManager getTextWithKey:@"Audio"]; 
            text = [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] user_halfwayResortData]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [ContentLanguageManager getTextWithKey:@"Image"];
            text = [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] noti_dateIdent]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [ContentLanguageManager getTextWithKey:@"Video"];
            text = [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] notiDataText]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [ContentLanguageManager getTextWithKey:@"Location"];
            text = [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] dreamGrayKey]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self back:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [ContentLanguageManager getTextWithKey:@"File"];
            text = [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] m_shouldStr]];//@"[文件]".;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [ContentLanguageManager getTextWithKey:@"Internet_call"] : [ContentLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] m_scaleToiletUrl]] : [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] userManufacturerData]]);
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)back:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [ContentLanguageManager getTextWithKey:@"Internet_call"];
            return [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] m_scaleToiletUrl]];//@"[网络通话]".;
        }
        //: return [ContentLanguageManager getTextWithKey:@"Video_chat"];
        return [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] userManufacturerData]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [ContentLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] kTingKey]];//@"[讨论组信息更新]".;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][[[WheatEtherData sharedInstance] dream_donData]];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][[[WheatEtherData sharedInstance] dreamDebateText]];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[WheatEtherData sharedInstance] show_literData],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[WheatEtherData sharedInstance] show_literData],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[WheatEtherData sharedInstance] showEfficiencyKey],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[[WheatEtherData sharedInstance] user_closeStr],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[[WheatEtherData sharedInstance] noti_touchValueData],message.session.sessionId]];
                                        }

                                    }
                                        //: break;
                                        break;

                                    //: default:
                                    default:
                                        //: break;
                                        break;
                                }
                            }
                        }

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [ContentLanguageManager getTextWithKey:@"Group_information_update"];
            return [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] userSpendingFortyToilMessage]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [ContentLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [MatronymicPath colorStreetwise:[[WheatEtherData sharedInstance] notiNecessityName]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end
