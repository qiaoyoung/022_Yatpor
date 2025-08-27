
#import <Foundation/Foundation.h>

@interface EtherYieldData : NSObject

@end

@implementation EtherYieldData

+ (NSData *)EtherYieldDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)EtherYieldDataToCache:(Byte *)data {
    int plod = data[0];
    Byte seeminglyOn = data[1];
    int endTable = data[2];
    for (int i = endTable; i < endTable + plod; i++) {
        int value = data[i] + seeminglyOn;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[endTable + plod] = 0;
    return data + endTable;
}

+ (NSString *)StringFromEtherYieldData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EtherYieldDataToCache:data]];
}

//: ic_all
+ (NSString *)user_barPath {
    /* static */ NSString *user_barPath = nil;
    if (!user_barPath) {
		NSArray<NSString *> *origin = @[@"6", @"86", @"12", @"88", @"84", @"195", @"11", @"4", @"113", @"225", @"42", @"131", @"19", @"13", @"9", @"11", @"22", @"22", @"219"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_barPath = [self StringFromEtherYieldData:value];
    }
    return user_barPath;
}

//: ic_reminde_all_no
+ (NSString *)showEmendPath {
    /* static */ NSString *showEmendPath = nil;
    if (!showEmendPath) {
		NSArray<NSString *> *origin = @[@"17", @"79", @"4", @"38", @"26", @"20", @"16", @"35", @"22", @"30", @"26", @"31", @"21", @"22", @"16", @"18", @"29", @"29", @"16", @"31", @"32", @"28"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEmendPath = [self StringFromEtherYieldData:value];
    }
    return showEmendPath;
}

//: group_member_info_activity_team_creator
+ (NSString *)m_sharePath {
    /* static */ NSString *m_sharePath = nil;
    if (!m_sharePath) {
		NSArray<NSString *> *origin = @[@"39", @"25", @"6", @"14", @"164", @"22", @"78", @"89", @"86", @"92", @"87", @"70", @"84", @"76", @"84", @"73", @"76", @"89", @"70", @"80", @"85", @"77", @"86", @"70", @"72", @"74", @"91", @"80", @"93", @"80", @"91", @"96", @"70", @"91", @"76", @"72", @"84", @"70", @"74", @"89", @"76", @"72", @"91", @"86", @"89", @"147"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_sharePath = [self StringFromEtherYieldData:value];
    }
    return m_sharePath;
}

//: group_info_activity_team_member
+ (NSString *)main_constantlyPath {
    /* static */ NSString *main_constantlyPath = nil;
    if (!main_constantlyPath) {
		NSArray<NSString *> *origin = @[@"31", @"97", @"7", @"218", @"5", @"73", @"138", @"6", @"17", @"14", @"20", @"15", @"254", @"8", @"13", @"5", @"14", @"254", @"0", @"2", @"19", @"8", @"21", @"8", @"19", @"24", @"254", @"19", @"4", @"0", @"12", @"254", @"12", @"4", @"12", @"1", @"4", @"17", @"115"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_constantlyPath = [self StringFromEtherYieldData:value];
    }
    return main_constantlyPath;
}

//: group_info_activity_team_notify_all
+ (NSString *)user_dateId {
    /* static */ NSString *user_dateId = nil;
    if (!user_dateId) {
		NSArray<NSString *> *origin = @[@"35", @"73", @"10", @"50", @"93", @"128", @"40", @"163", @"18", @"83", @"30", @"41", @"38", @"44", @"39", @"22", @"32", @"37", @"29", @"38", @"22", @"24", @"26", @"43", @"32", @"45", @"32", @"43", @"48", @"22", @"43", @"28", @"24", @"36", @"22", @"37", @"38", @"43", @"32", @"29", @"48", @"22", @"24", @"35", @"35", @"52"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_dateId = [self StringFromEtherYieldData:value];
    }
    return user_dateId;
}

//: Allow_anyone
+ (NSString *)k_symptomKey {
    /* static */ NSString *k_symptomKey = nil;
    if (!k_symptomKey) {
		NSArray<NSString *> *origin = @[@"12", @"29", @"6", @"76", @"102", @"202", @"36", @"79", @"79", @"82", @"90", @"66", @"68", @"81", @"92", @"82", @"81", @"72", @"35"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_symptomKey = [self StringFromEtherYieldData:value];
    }
    return k_symptomKey;
}

//: ic_guanliyuan
+ (NSString *)mainArtisticFormat {
    /* static */ NSString *mainArtisticFormat = nil;
    if (!mainArtisticFormat) {
		NSArray<NSString *> *origin = @[@"13", @"84", @"4", @"51", @"21", @"15", @"11", @"19", @"33", @"13", @"26", @"24", @"21", @"37", @"33", @"13", @"26", @"12"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainArtisticFormat = [self StringFromEtherYieldData:value];
    }
    return mainArtisticFormat;
}

//: Need_verification
+ (NSString *)show_bagMessage {
    /* static */ NSString *show_bagMessage = nil;
    if (!show_bagMessage) {
		NSArray<NSString *> *origin = @[@"17", @"29", @"11", @"134", @"73", @"73", @"196", @"234", @"161", @"117", @"57", @"49", @"72", @"72", @"71", @"66", @"89", @"72", @"85", @"76", @"73", @"76", @"70", @"68", @"87", @"76", @"82", @"81", @"171"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_bagMessage = [self StringFromEtherYieldData:value];
    }
    return show_bagMessage;
}

//: ic_yanzheng_no
+ (NSString *)kLicenseText {
    /* static */ NSString *kLicenseText = nil;
    if (!kLicenseText) {
		NSArray<NSString *> *origin = @[@"14", @"5", @"5", @"211", @"190", @"100", @"94", @"90", @"116", @"92", @"105", @"117", @"99", @"96", @"105", @"98", @"90", @"105", @"106", @"173"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kLicenseText = [self StringFromEtherYieldData:value];
    }
    return kLicenseText;
}

//: ic_yanzheng_yes
+ (NSString *)k_artisticMessage {
    /* static */ NSString *k_artisticMessage = nil;
    if (!k_artisticMessage) {
		NSArray<NSString *> *origin = @[@"15", @"60", @"8", @"251", @"111", @"17", @"137", @"175", @"45", @"39", @"35", @"61", @"37", @"50", @"62", @"44", @"41", @"50", @"43", @"35", @"61", @"41", @"55", @"36"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_artisticMessage = [self StringFromEtherYieldData:value];
    }
    return k_artisticMessage;
}

//: ic_all_no
+ (NSString *)m_viewerText {
    /* static */ NSString *m_viewerText = nil;
    if (!m_viewerText) {
		NSArray<NSString *> *origin = @[@"9", @"95", @"4", @"70", @"10", @"4", @"0", @"2", @"13", @"13", @"0", @"15", @"16", @"73"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_viewerText = [self StringFromEtherYieldData:value];
    }
    return m_viewerText;
}

//: ic_all_yes
+ (NSString *)main_retailNeedValueStr {
    /* static */ NSString *main_retailNeedValueStr = nil;
    if (!main_retailNeedValueStr) {
		NSArray<NSString *> *origin = @[@"10", @"58", @"7", @"252", @"3", @"210", @"95", @"47", @"41", @"37", @"39", @"50", @"50", @"37", @"63", @"43", @"57", @"237"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_retailNeedValueStr = [self StringFromEtherYieldData:value];
    }
    return main_retailNeedValueStr;
}

//: Group_Everyone
+ (NSString *)m_surfaceQuicklyTitle {
    /* static */ NSString *m_surfaceQuicklyTitle = nil;
    if (!m_surfaceQuicklyTitle) {
		NSArray<NSString *> *origin = @[@"14", @"97", @"12", @"112", @"223", @"113", @"183", @"48", @"228", @"30", @"211", @"213", @"230", @"17", @"14", @"20", @"15", @"254", @"228", @"21", @"4", @"17", @"24", @"14", @"13", @"4", @"238"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_surfaceQuicklyTitle = [self StringFromEtherYieldData:value];
    }
    return m_surfaceQuicklyTitle;
}

//: ic_reminde_manager
+ (NSString *)k_ureaName {
    /* static */ NSString *k_ureaName = nil;
    if (!k_ureaName) {
		NSArray<NSString *> *origin = @[@"18", @"55", @"8", @"228", @"117", @"32", @"131", @"19", @"50", @"44", @"40", @"59", @"46", @"54", @"50", @"55", @"45", @"46", @"40", @"54", @"42", @"55", @"42", @"48", @"46", @"59", @"52"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_ureaName = [self StringFromEtherYieldData:value];
    }
    return k_ureaName;
}

//: icon_team_manager
+ (NSString *)app_minimizeFormat {
    /* static */ NSString *app_minimizeFormat = nil;
    if (!app_minimizeFormat) {
		NSArray<NSString *> *origin = @[@"17", @"89", @"9", @"243", @"179", @"14", @"184", @"231", @"10", @"16", @"10", @"22", @"21", @"6", @"27", @"12", @"8", @"20", @"6", @"20", @"8", @"21", @"8", @"14", @"12", @"25", @"226"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_minimizeFormat = [self StringFromEtherYieldData:value];
    }
    return app_minimizeFormat;
}

//: Reject_anyone
+ (NSString *)app_contractSmokeMessage {
    /* static */ NSString *app_contractSmokeMessage = nil;
    if (!app_contractSmokeMessage) {
		NSArray<NSString *> *origin = @[@"13", @"86", @"11", @"52", @"129", @"152", @"172", @"79", @"39", @"39", @"203", @"252", @"15", @"20", @"15", @"13", @"30", @"9", @"11", @"24", @"35", @"25", @"24", @"15", @"158"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_contractSmokeMessage = [self StringFromEtherYieldData:value];
    }
    return app_contractSmokeMessage;
}

//: group_info_activity_close
+ (NSString *)app_remoteMsg {
    /* static */ NSString *app_remoteMsg = nil;
    if (!app_remoteMsg) {
		NSArray<NSString *> *origin = @[@"25", @"28", @"13", @"171", @"14", @"58", @"124", @"242", @"55", @"102", @"113", @"231", @"239", @"75", @"86", @"83", @"89", @"84", @"67", @"77", @"82", @"74", @"83", @"67", @"69", @"71", @"88", @"77", @"90", @"77", @"88", @"93", @"67", @"71", @"80", @"83", @"87", @"73", @"162"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_remoteMsg = [self StringFromEtherYieldData:value];
    }
    return app_remoteMsg;
}

//: icon_team_creator
+ (NSString *)noti_flameColaTitle {
    /* static */ NSString *noti_flameColaTitle = nil;
    if (!noti_flameColaTitle) {
		NSArray<NSString *> *origin = @[@"17", @"61", @"13", @"79", @"196", @"15", @"37", @"126", @"74", @"99", @"143", @"144", @"209", @"44", @"38", @"50", @"49", @"34", @"55", @"40", @"36", @"48", @"34", @"38", @"53", @"40", @"36", @"55", @"50", @"53", @"151"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_flameColaTitle = [self StringFromEtherYieldData:value];
    }
    return noti_flameColaTitle;
}

//: group_info_activity_team_notify_manager
+ (NSString *)app_fortyFormat {
    /* static */ NSString *app_fortyFormat = nil;
    if (!app_fortyFormat) {
		NSArray<NSString *> *origin = @[@"39", @"91", @"11", @"10", @"59", @"239", @"116", @"182", @"21", @"239", @"36", @"12", @"23", @"20", @"26", @"21", @"4", @"14", @"19", @"11", @"20", @"4", @"6", @"8", @"25", @"14", @"27", @"14", @"25", @"30", @"4", @"25", @"10", @"6", @"18", @"4", @"19", @"20", @"25", @"14", @"11", @"30", @"4", @"18", @"6", @"19", @"6", @"12", @"10", @"23", @"251"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_fortyFormat = [self StringFromEtherYieldData:value];
    }
    return app_fortyFormat;
}

//: No_Need_verification
+ (NSString *)main_teamTitle {
    /* static */ NSString *main_teamTitle = nil;
    if (!main_teamTitle) {
		NSArray<NSString *> *origin = @[@"20", @"66", @"12", @"94", @"37", @"3", @"164", @"220", @"35", @"211", @"109", @"144", @"12", @"45", @"29", @"12", @"35", @"35", @"34", @"29", @"52", @"35", @"48", @"39", @"36", @"39", @"33", @"31", @"50", @"39", @"45", @"44", @"73"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_teamTitle = [self StringFromEtherYieldData:value];
    }
    return main_teamTitle;
}

//: online_state_event_manager_unknown
+ (NSString *)user_managerStr {
    /* static */ NSString *user_managerStr = nil;
    if (!user_managerStr) {
		NSArray<NSString *> *origin = @[@"34", @"66", @"10", @"178", @"119", @"146", @"23", @"62", @"255", @"121", @"45", @"44", @"42", @"39", @"44", @"35", @"29", @"49", @"50", @"31", @"50", @"35", @"29", @"35", @"52", @"35", @"44", @"50", @"29", @"43", @"31", @"44", @"31", @"37", @"35", @"48", @"29", @"51", @"44", @"41", @"44", @"45", @"53", @"44", @"196"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_managerStr = [self StringFromEtherYieldData:value];
    }
    return user_managerStr;
}

//: group_info_activity_team_notify_mute
+ (NSString *)k_ownershipKey {
    /* static */ NSString *k_ownershipKey = nil;
    if (!k_ownershipKey) {
		NSArray<NSString *> *origin = @[@"36", @"30", @"11", @"83", @"13", @"221", @"251", @"140", @"117", @"155", @"150", @"73", @"84", @"81", @"87", @"82", @"65", @"75", @"80", @"72", @"81", @"65", @"67", @"69", @"86", @"75", @"88", @"75", @"86", @"91", @"65", @"86", @"71", @"67", @"79", @"65", @"80", @"81", @"86", @"75", @"72", @"91", @"65", @"79", @"87", @"86", @"71", @"252"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_ownershipKey = [self StringFromEtherYieldData:value];
    }
    return k_ownershipKey;
}

//: group_info_activity_open
+ (NSString *)mainMushroomMsg {
    /* static */ NSString *mainMushroomMsg = nil;
    if (!mainMushroomMsg) {
		NSArray<NSString *> *origin = @[@"24", @"34", @"12", @"216", @"121", @"99", @"201", @"41", @"58", @"247", @"5", @"253", @"69", @"80", @"77", @"83", @"78", @"61", @"71", @"76", @"68", @"77", @"61", @"63", @"65", @"82", @"71", @"84", @"71", @"82", @"87", @"61", @"77", @"78", @"67", @"76", @"98"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMushroomMsg = [self StringFromEtherYieldData:value];
    }
    return mainMushroomMsg;
}

//: group_member_info_activity_team_admin
+ (NSString *)main_toilUrl {
    /* static */ NSString *main_toilUrl = nil;
    if (!main_toilUrl) {
		NSArray<NSString *> *origin = @[@"37", @"11", @"7", @"176", @"47", @"91", @"70", @"92", @"103", @"100", @"106", @"101", @"84", @"98", @"90", @"98", @"87", @"90", @"103", @"84", @"94", @"99", @"91", @"100", @"84", @"86", @"88", @"105", @"94", @"107", @"94", @"105", @"110", @"84", @"105", @"90", @"86", @"98", @"84", @"86", @"89", @"98", @"94", @"99", @"115"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_toilUrl = [self StringFromEtherYieldData:value];
    }
    return main_toilUrl;
}

//: ic_reminde_all
+ (NSString *)noti_recallAluminumKey {
    /* static */ NSString *noti_recallAluminumKey = nil;
    if (!noti_recallAluminumKey) {
		NSArray<NSString *> *origin = @[@"14", @"18", @"3", @"87", @"81", @"77", @"96", @"83", @"91", @"87", @"92", @"82", @"83", @"77", @"79", @"90", @"90", @"87"];
		NSData *data = [EtherYieldData EtherYieldDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_recallAluminumKey = [self StringFromEtherYieldData:value];
    }
    return noti_recallAluminumKey;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleImageHelper.m
// UserKit
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTeamHelper.h"
#import "HandleImageHelper.h"
//: #import "ContentTeamCardRowItem.h"
#import "SuccessItem.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"

//: static NSString *const kTeamHelperText = @"kTeamHelperText";
static NSString *const notiFailureTitle = @"kTeamHelperText";
//: static NSString *const kTeamHelperValue = @"kTeamHelperValue";
static NSString *const noti_toKey = @"kTeamHelperValue";
//: static NSString *const kTeamHelperImg = @"kTeamHelperImg";
static NSString *const userTempIdent = @"kTeamHelperImg";

//: @implementation ContentTeamHelper
@implementation HandleImageHelper

//: #pragma mark - 验证方式
#pragma mark - 验证方式
//: + (NSArray<NSDictionary *> *)allJoinModes {
+ (NSArray<NSDictionary *> *)circle {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNoAuth),
                         noti_toKey : @(NIMTeamJoinModeNoAuth),
                         //: kTeamHelperText : [ContentTeamHelper jonModeText:NIMTeamJoinModeNoAuth],
                         notiFailureTitle : [HandleImageHelper die:NIMTeamJoinModeNoAuth],
                         //: kTeamHelperImg: @"ic_all_yes",
                         userTempIdent: [EtherYieldData main_retailNeedValueStr],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNeedAuth),
                         noti_toKey : @(NIMTeamJoinModeNeedAuth),
                         //: kTeamHelperText : [ContentTeamHelper jonModeText:NIMTeamJoinModeNeedAuth],
                         notiFailureTitle : [HandleImageHelper die:NIMTeamJoinModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         userTempIdent: [EtherYieldData k_artisticMessage],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeRejectAll),
                         noti_toKey : @(NIMTeamJoinModeRejectAll),
                         //: kTeamHelperText : [ContentTeamHelper jonModeText:NIMTeamJoinModeRejectAll],
                         notiFailureTitle : [HandleImageHelper die:NIMTeamJoinModeRejectAll],
                         //: kTeamHelperImg: @"ic_all_no",
                         userTempIdent: [EtherYieldData m_viewerText],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode {
+ (NSString *)die:(NIMTeamJoinMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamJoinModeNoAuth:
        case NIMTeamJoinModeNoAuth:
            //: return [ContentLanguageManager getTextWithKey:@"Allow_anyone"];
            return [MatronymicPath colorStreetwise:[EtherYieldData k_symptomKey]];//@"允许任何人".;
        //: case NIMTeamJoinModeNeedAuth:
        case NIMTeamJoinModeNeedAuth:
            //: return [ContentLanguageManager getTextWithKey:@"Need_verification"];
            return [MatronymicPath colorStreetwise:[EtherYieldData show_bagMessage]];//@"需要验证".;
        //: case NIMTeamJoinModeRejectAll:
        case NIMTeamJoinModeRejectAll:
            //: return [ContentLanguageManager getTextWithKey:@"Reject_anyone"];
            return [MatronymicPath colorStreetwise:[EtherYieldData app_contractSmokeMessage]];//@"拒绝任何人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)item:(NIMTeamJoinMode)mode {
    //: return [self itemsWithListDic:[self allJoinModes] selectValue:mode];
    return [self hide:[self circle] list:mode];
}

//: #pragma mark - 邀请模式
#pragma mark - 邀请模式
//: + (NSArray<NSDictionary *> *)allInviteModes {
+ (NSArray<NSDictionary *> *)erase {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeManager),
                         noti_toKey : @(NIMTeamInviteModeManager),
                         //: kTeamHelperText : [ContentTeamHelper InviteModeText:NIMTeamInviteModeManager],
                         notiFailureTitle : [HandleImageHelper find:NIMTeamInviteModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         userTempIdent: [EtherYieldData mainArtisticFormat],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeAll),
                         noti_toKey : @(NIMTeamInviteModeAll),
                         //: kTeamHelperText : [ContentTeamHelper InviteModeText:NIMTeamInviteModeAll],
                         notiFailureTitle : [HandleImageHelper find:NIMTeamInviteModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         userTempIdent: [EtherYieldData user_barPath],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode {
+ (NSString *)find:(NIMTeamInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamInviteModeManager:
        case NIMTeamInviteModeManager:
            //: return [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MatronymicPath colorStreetwise:[EtherYieldData main_toilUrl]];//@"管理员".;
        //: case NIMTeamInviteModeAll:
        case NIMTeamInviteModeAll:
            //: return [ContentLanguageManager getTextWithKey:@"Group_Everyone"];
            return [MatronymicPath colorStreetwise:[EtherYieldData m_surfaceQuicklyTitle]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)distance:(NIMTeamInviteMode)mode {
    //: return [self itemsWithListDic:[self allInviteModes] selectValue:mode];
    return [self hide:[self erase] list:mode];
}

//: #pragma mark - 被邀请模式
#pragma mark - 被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes {
+ (NSArray<NSDictionary *> *)view {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNeedAuth),
                         noti_toKey : @(NIMTeamBeInviteModeNeedAuth),
                         //: kTeamHelperText : [ContentTeamHelper beInviteModeText:NIMTeamBeInviteModeNeedAuth],
                         notiFailureTitle : [HandleImageHelper cell:NIMTeamBeInviteModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         userTempIdent: [EtherYieldData k_artisticMessage],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNoAuth),
                         noti_toKey : @(NIMTeamBeInviteModeNoAuth),
                         //: kTeamHelperText : [ContentTeamHelper beInviteModeText:NIMTeamBeInviteModeNoAuth],
                         notiFailureTitle : [HandleImageHelper cell:NIMTeamBeInviteModeNoAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_no",
                         userTempIdent: [EtherYieldData kLicenseText],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode {
+ (NSString *)cell:(NIMTeamBeInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamBeInviteModeNeedAuth:
        case NIMTeamBeInviteModeNeedAuth:
            //: return [ContentLanguageManager getTextWithKey:@"Need_verification"];
            return [MatronymicPath colorStreetwise:[EtherYieldData show_bagMessage]];//@"需要验证".;
        //: case NIMTeamBeInviteModeNoAuth:
        case NIMTeamBeInviteModeNoAuth:
            //: return [ContentLanguageManager getTextWithKey:@"No_Need_verification"];
            return [MatronymicPath colorStreetwise:[EtherYieldData main_teamTitle]];//@"不需要验证".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)quickSeleced:(NIMTeamBeInviteMode)mode {
    //: return [self itemsWithListDic:[self allBeInviteModes] selectValue:mode];
    return [self hide:[self view] list:mode];
}

//: #pragma mark - 信息修改权限
#pragma mark - 信息修改权限
//: + (NSArray<NSDictionary *> *)allUpdateInfoModes {
+ (NSArray<NSDictionary *> *)every {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeManager),
                         noti_toKey : @(NIMTeamUpdateInfoModeManager),
                         //: kTeamHelperText : [ContentTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeManager],
                         notiFailureTitle : [HandleImageHelper topShould:NIMTeamUpdateInfoModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         userTempIdent: [EtherYieldData mainArtisticFormat],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeAll),
                         noti_toKey : @(NIMTeamUpdateInfoModeAll),
                         //: kTeamHelperText : [ContentTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeAll],
                         notiFailureTitle : [HandleImageHelper topShould:NIMTeamUpdateInfoModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         userTempIdent: [EtherYieldData user_barPath],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode {
+ (NSString *)topShould:(NIMTeamUpdateInfoMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamUpdateInfoModeManager:
        case NIMTeamUpdateInfoModeManager:
            //: return [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MatronymicPath colorStreetwise:[EtherYieldData main_toilUrl]];//@"管理员".;
        //: case NIMTeamUpdateInfoModeAll:
        case NIMTeamUpdateInfoModeAll:
            //: return [ContentLanguageManager getTextWithKey:@"Group_Everyone"];
            return [MatronymicPath colorStreetwise:[EtherYieldData m_surfaceQuicklyTitle]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)off:(NIMTeamUpdateInfoMode)mode {
    //: return [self itemsWithListDic:[self allUpdateInfoModes] selectValue:mode];
    return [self hide:[self every] list:mode];
}

//: #pragma mark - 消息接受状态
#pragma mark - 消息接受状态
//: + (NSArray<NSDictionary *> *)allNotifyStates {
+ (NSArray<NSDictionary *> *)liquidEcstasy {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         noti_toKey : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [ContentTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         notiFailureTitle : [HandleImageHelper language:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         userTempIdent: [EtherYieldData noti_recallAluminumKey],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         noti_toKey : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [ContentTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         notiFailureTitle : [HandleImageHelper language:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         userTempIdent: [EtherYieldData showEmendPath],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateOnlyManager),
                         noti_toKey : @(NIMTeamNotifyStateOnlyManager),
                         //: kTeamHelperText : [ContentTeamHelper notifyStateText:NIMTeamNotifyStateOnlyManager],
                         notiFailureTitle : [HandleImageHelper language:NIMTeamNotifyStateOnlyManager],
                         //: kTeamHelperImg: @"ic_reminde_manager",
                         userTempIdent: [EtherYieldData k_ureaName],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSArray<NSDictionary *> *)allSuperNotifyStates {
+ (NSArray<NSDictionary *> *)viewStates {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         noti_toKey : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [ContentTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         notiFailureTitle : [HandleImageHelper language:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         userTempIdent: [EtherYieldData noti_recallAluminumKey],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         noti_toKey : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [ContentTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         notiFailureTitle : [HandleImageHelper language:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         userTempIdent: [EtherYieldData showEmendPath],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state {
+ (NSString *)language:(NIMTeamNotifyState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMTeamNotifyStateAll:
        case NIMTeamNotifyStateAll:
            //: return [ContentLanguageManager getTextWithKey:@"group_info_activity_team_notify_all"];
            return [MatronymicPath colorStreetwise:[EtherYieldData user_dateId]];//@"提醒所有消息".;
        //: case NIMTeamNotifyStateNone:
        case NIMTeamNotifyStateNone:
            //: return [ContentLanguageManager getTextWithKey:@"group_info_activity_team_notify_mute"];
            return [MatronymicPath colorStreetwise:[EtherYieldData k_ownershipKey]];//@"不提醒任何消息".;
        //: case NIMTeamNotifyStateOnlyManager:
        case NIMTeamNotifyStateOnlyManager:
            //: return [ContentLanguageManager getTextWithKey:@"group_info_activity_team_notify_manager"];
            return [MatronymicPath colorStreetwise:[EtherYieldData app_fortyFormat]];//@"只提醒管理员消息".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)pull:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allNotifyStates] selectValue:state];
    return [self hide:[self liquidEcstasy] list:state];
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)state:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allSuperNotifyStates] selectValue:state];
    return [self hide:[self viewStates] list:state];
}

//: #pragma mark - 群禁言
#pragma mark - 群禁言
//: + (NSArray<NSDictionary *> *)allTeamMuteState {
+ (NSArray<NSDictionary *> *)downwards {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(YES),
                         noti_toKey : @(YES),
                         //: kTeamHelperText : [ContentTeamHelper teamMuteText:YES]
                         notiFailureTitle : [HandleImageHelper title:YES]
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NO),
                         noti_toKey : @(NO),
                         //: kTeamHelperText : [ContentTeamHelper teamMuteText:NO]
                         notiFailureTitle : [HandleImageHelper title:NO]
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}
//: + (NSString *)teamMuteText:(BOOL)isMute {
+ (NSString *)title:(BOOL)isMute {
    //: return isMute ? [ContentLanguageManager getTextWithKey:@"group_info_activity_open"] : [ContentLanguageManager getTextWithKey:@"group_info_activity_close"];
    return isMute ? [MatronymicPath colorStreetwise:[EtherYieldData mainMushroomMsg]] : [MatronymicPath colorStreetwise:[EtherYieldData app_remoteMsg]];
}

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute {
+ (NSMutableArray<id <ContentKitSelectCardData>> *)stateObject:(BOOL)isMute {
    //: return [self itemsWithListDic:[self allTeamMuteState] selectValue:isMute];
    return [self hide:[self downwards] list:isMute];
}

//: #pragma mark - 成员类型
#pragma mark - 成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type {
+ (NSString *)message:(NIMTeamMemberType)type {
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeNormal:
        case NIMTeamMemberTypeNormal:
            //: return [ContentLanguageManager getTextWithKey:@"group_info_activity_team_member"];
            return [MatronymicPath colorStreetwise:[EtherYieldData main_constantlyPath]];//@"普通成员".;
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: return [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
            return [MatronymicPath colorStreetwise:[EtherYieldData m_sharePath]];//@"群主".;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: return [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MatronymicPath colorStreetwise:[EtherYieldData main_toilUrl]];//@"管理员".;
        //: default:
        default:
            //: return [ContentLanguageManager getTextWithKey:@"online_state_event_manager_unknown"];
            return [MatronymicPath colorStreetwise:[EtherYieldData user_managerStr]];//@"未知".;
    }
}

//: + (UIImage *)imageWithMemberType:(NIMTeamMemberType)type {
+ (UIImage *)image:(NIMTeamMemberType)type {
    //: UIImage *ret = nil;
    UIImage *ret = nil;
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: ret = [UIImage imageNamed:@"icon_team_creator"];
            ret = [UIImage imageNamed:[EtherYieldData noti_flameColaTitle]];
            //: break;
            break;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: ret = [UIImage imageNamed:@"icon_team_manager"];
            ret = [UIImage imageNamed:[EtherYieldData app_minimizeFormat]];
            //: break;
            break;
        //: default:
        default:
            //: ret = nil;
            ret = nil;
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Tool
#pragma mark - Tool
//: + (NSMutableArray *)itemsWithListDic:(NSArray <NSDictionary *> *)listDic
+ (NSMutableArray *)hide:(NSArray <NSDictionary *> *)listDic
                         //: selectValue:(NSInteger)selectValue {
                         list:(NSInteger)selectValue {
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dic in listDic) {
    for (NSDictionary *dic in listDic) {
        //: ContentTeamCardRowItem *item = [[ContentTeamCardRowItem alloc] init];
        SuccessItem *item = [[SuccessItem alloc] init];
        //: item.value = dic[kTeamHelperValue];
        item.value = dic[noti_toKey];
        //: item.title = dic[kTeamHelperText];
        item.title = dic[notiFailureTitle];
        //: item.img = dic[kTeamHelperImg];
        item.img = dic[userTempIdent];
        //: item.selected = (selectValue == [dic[kTeamHelperValue] integerValue]);
        item.selected = (selectValue == [dic[noti_toKey] integerValue]);
        //: [items addObject:item];
        [items addObject:item];
    }
    //: return items;
    return items;
}

//: @end
@end
