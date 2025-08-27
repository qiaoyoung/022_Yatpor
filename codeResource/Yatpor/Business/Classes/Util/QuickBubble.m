
#import <Foundation/Foundation.h>

@interface ClayData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ClayData

+ (instancetype)sharedInstance {
    static ClayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ClayDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ClayDataToCache:(Byte *)data {
    int accountingData = data[0];
    Byte tableAccount = data[1];
    int wearerImage = data[2];
    for (int i = wearerImage; i < wearerImage + accountingData; i++) {
        int value = data[i] - tableAccount;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[wearerImage + accountingData] = 0;
    return data + wearerImage;
}

- (NSString *)StringFromClayData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ClayDataToCache:data]];
}

//: 超大群消息撤回
- (NSString *)kTextMsg {
    /* static */ NSString *kTextMsg = nil;
    if (!kTextMsg) {
		NSArray<NSString *> *origin = @[@"21", @"89", @"7", @"29", @"165", @"170", @"248", @"65", @"15", @"222", @"62", @"253", @"0", @"64", @"23", @"253", @"63", @"15", @"225", @"63", @"218", @"8", @"63", @"235", @"253", @"62", @"244", @"247", @"217"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMsg = [self StringFromClayData:value];
    }
    return kTextMsg;
}

//: 点对点消息单向撤回
- (NSString *)show_ofMsg {
    /* static */ NSString *show_ofMsg = nil;
    if (!show_ofMsg) {
		NSArray<NSString *> *origin = @[@"27", @"48", @"9", @"241", @"116", @"71", @"221", @"215", @"147", @"23", @"178", @"233", @"21", @"223", @"233", @"23", @"178", @"233", @"22", @"230", @"184", @"22", @"177", @"223", @"21", @"189", @"197", @"21", @"192", @"193", @"22", @"194", @"212", @"21", @"203", @"206", @"153"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_ofMsg = [self StringFromClayData:value];
    }
    return show_ofMsg;
}

//: 群消息单向撤回
- (NSString *)show_burdenElementaryUrl {
    /* static */ NSString *show_burdenElementaryUrl = nil;
    if (!show_burdenElementaryUrl) {
		NSArray<NSString *> *origin = @[@"21", @"92", @"11", @"209", @"31", @"171", @"164", @"69", @"195", @"37", @"22", @"67", @"26", @"0", @"66", @"18", @"228", @"66", @"221", @"11", @"65", @"233", @"241", @"65", @"236", @"237", @"66", @"238", @"0", @"65", @"247", @"250", @"165"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_burdenElementaryUrl = [self StringFromClayData:value];
    }
    return show_burdenElementaryUrl;
}

//: [系统通知][%@]
- (NSString *)mUsData {
    /* static */ NSString *mUsData = nil;
    if (!mUsData) {
		NSArray<NSString *> *origin = @[@"18", @"79", @"3", @"170", @"54", @"2", @"10", @"54", @"10", @"238", @"56", @"207", @"233", @"54", @"238", @"244", @"172", @"170", @"116", @"143", @"172", @"51"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mUsData = [self StringFromClayData:value];
    }
    return mUsData;
}

//: 群消息撤回
- (NSString *)appNeedStr {
    /* static */ NSString *appNeedStr = nil;
    if (!appNeedStr) {
		NSArray<NSString *> *origin = @[@"15", @"77", @"13", @"78", @"160", @"27", @"26", @"79", @"146", @"214", @"246", @"202", @"249", @"52", @"11", @"241", @"51", @"3", @"213", @"51", @"206", @"252", @"51", @"223", @"241", @"50", @"232", @"235", @"207"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appNeedStr = [self StringFromClayData:value];
    }
    return appNeedStr;
}

//: 点对点消息撤回
- (NSString *)appJurisdictionName {
    /* static */ NSString *appJurisdictionName = nil;
    if (!appJurisdictionName) {
		NSArray<NSString *> *origin = @[@"21", @"73", @"13", @"49", @"23", @"73", @"157", @"168", @"17", @"67", @"147", @"138", @"77", @"48", @"203", @"2", @"46", @"248", @"2", @"48", @"203", @"2", @"47", @"255", @"209", @"47", @"202", @"248", @"47", @"219", @"237", @"46", @"228", @"231", @"142"];
		NSData *data = [ClayData ClayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appJurisdictionName = [self StringFromClayData:value];
    }
    return appJurisdictionName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickBubble.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "QuickBubble.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"

//: @implementation NTESNoticationUtil
@implementation QuickBubble

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)airBubbleItem:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[[ClayData sharedInstance] mUsData].resign,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self compartment:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)compartment:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [[ClayData sharedInstance] appJurisdictionName].resign;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [[ClayData sharedInstance] appJurisdictionName].resign;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [[ClayData sharedInstance] appNeedStr].resign;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [[ClayData sharedInstance] kTextMsg].resign;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [[ClayData sharedInstance] show_ofMsg].resign;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [[ClayData sharedInstance] show_burdenElementaryUrl].resign;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end
