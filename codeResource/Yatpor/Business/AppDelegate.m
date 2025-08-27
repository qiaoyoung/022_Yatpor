
#import <Foundation/Foundation.h>

@interface GiftedData : NSObject

@end

@implementation GiftedData

+ (Byte *)GiftedDataToCache:(Byte *)data {
    int lowerDeckRet = data[0];
    int critical = data[1];
    for (int i = 0; i < lowerDeckRet / 2; i++) {
        int begin = critical + i;
        int end = critical + lowerDeckRet - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[critical + lowerDeckRet] = 0;
    return data + critical;
}

+ (NSString *)StringFromGiftedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GiftedDataToCache:data]];
}  

//: act
+ (NSString *)k_capMsg {
    /* static */ NSString *k_capMsg = nil;
    if (!k_capMsg) {
        Byte value[] = {3, 8, 173, 128, 234, 242, 30, 132, 116, 99, 97, 82};
        k_capMsg = [self StringFromGiftedData:value];
    }
    return k_capMsg;
}

//: NotificationLogout
+ (NSString *)appWithStr {
    /* static */ NSString *appWithStr = nil;
    if (!appWithStr) {
        Byte value[] = {18, 8, 69, 140, 86, 31, 202, 36, 116, 117, 111, 103, 111, 76, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 121};
        appWithStr = [self StringFromGiftedData:value];
    }
    return appWithStr;
}

//: line://
+ (NSString *)showDotName {
    /* static */ NSString *showDotName = nil;
    if (!showDotName) {
        Byte value[] = {7, 8, 1, 28, 109, 128, 118, 59, 47, 47, 58, 101, 110, 105, 108, 5};
        showDotName = [self StringFromGiftedData:value];
    }
    return showDotName;
}

//: /other/setClearStatus
+ (NSString *)m_solarStr {
    /* static */ NSString *m_solarStr = nil;
    if (!m_solarStr) {
        Byte value[] = {21, 4, 189, 241, 115, 117, 116, 97, 116, 83, 114, 97, 101, 108, 67, 116, 101, 115, 47, 114, 101, 104, 116, 111, 47, 125};
        m_solarStr = [self StringFromGiftedData:value];
    }
    return m_solarStr;
}

//: ini
+ (NSString *)k_parishForkName {
    /* static */ NSString *k_parishForkName = nil;
    if (!k_parishForkName) {
        Byte value[] = {3, 3, 185, 105, 110, 105, 22};
        k_parishForkName = [self StringFromGiftedData:value];
    }
    return k_parishForkName;
}

//: data
+ (NSString *)mSinglePath {
    /* static */ NSString *mSinglePath = nil;
    if (!mSinglePath) {
        Byte value[] = {4, 10, 218, 227, 79, 132, 220, 107, 122, 76, 97, 116, 97, 100, 195};
        mSinglePath = [self StringFromGiftedData:value];
    }
    return mSinglePath;
}

//: contact_tag_fragment_sure
+ (NSString *)mainTableText {
    /* static */ NSString *mainTableText = nil;
    if (!mainTableText) {
        Byte value[] = {25, 4, 56, 116, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 108};
        mainTableText = [self StringFromGiftedData:value];
    }
    return mainTableText;
}

//: msg
+ (NSString *)showMechanicPath {
    /* static */ NSString *showMechanicPath = nil;
    if (!showMechanicPath) {
        Byte value[] = {3, 6, 133, 213, 65, 241, 103, 115, 109, 6};
        showMechanicPath = [self StringFromGiftedData:value];
    }
    return showMechanicPath;
}

//: tiktok://
+ (NSString *)notiLayerKey {
    /* static */ NSString *notiLayerKey = nil;
    if (!notiLayerKey) {
        Byte value[] = {9, 12, 112, 246, 7, 218, 17, 215, 78, 127, 150, 230, 47, 47, 58, 107, 111, 116, 107, 105, 116, 183};
        notiLayerKey = [self StringFromGiftedData:value];
    }
    return notiLayerKey;
}

//: hant
+ (NSString *)appToilSprayId {
    /* static */ NSString *appToilSprayId = nil;
    if (!appToilSprayId) {
        Byte value[] = {4, 2, 116, 110, 97, 104, 169};
        appToilSprayId = [self StringFromGiftedData:value];
    }
    return appToilSprayId;
}

//: app
+ (NSString *)notiValueId {
    /* static */ NSString *notiValueId = nil;
    if (!notiValueId) {
        Byte value[] = {3, 10, 167, 168, 74, 43, 137, 70, 224, 137, 112, 112, 97, 37};
        notiValueId = [self StringFromGiftedData:value];
    }
    return notiValueId;
}

//: langType : %@
+ (NSString *)app_fedId {
    /* static */ NSString *app_fedId = nil;
    if (!app_fedId) {
        Byte value[] = {13, 6, 61, 210, 232, 120, 64, 37, 32, 58, 32, 101, 112, 121, 84, 103, 110, 97, 108, 156};
        app_fedId = [self StringFromGiftedData:value];
    }
    return app_fedId;
}

//: spa
+ (NSString *)appManyWindowData {
    /* static */ NSString *appManyWindowData = nil;
    if (!appManyWindowData) {
        Byte value[] = {3, 5, 198, 103, 164, 97, 112, 115, 35};
        appManyWindowData = [self StringFromGiftedData:value];
    }
    return appManyWindowData;
}

//: whatsapp://
+ (NSString *)m_emphasizeOrangePath {
    /* static */ NSString *m_emphasizeOrangePath = nil;
    if (!m_emphasizeOrangePath) {
        Byte value[] = {11, 11, 114, 147, 7, 244, 192, 89, 90, 254, 216, 47, 47, 58, 112, 112, 97, 115, 116, 97, 104, 119, 233};
        m_emphasizeOrangePath = [self StringFromGiftedData:value];
    }
    return m_emphasizeOrangePath;
}

//: 1748152800
+ (NSString *)k_backStr {
    /* static */ NSString *k_backStr = nil;
    if (!k_backStr) {
        Byte value[] = {10, 2, 48, 48, 56, 50, 53, 49, 56, 52, 55, 49, 9};
        k_backStr = [self StringFromGiftedData:value];
    }
    return k_backStr;
}

//: link-sg.netease.im:7000
+ (NSString *)kHalfwayStr {
    /* static */ NSString *kHalfwayStr = nil;
    if (!kHalfwayStr) {
        Byte value[] = {23, 5, 176, 183, 22, 48, 48, 48, 55, 58, 109, 105, 46, 101, 115, 97, 101, 116, 101, 110, 46, 103, 115, 45, 107, 110, 105, 108, 92};
        kHalfwayStr = [self StringFromGiftedData:value];
    }
    return kHalfwayStr;
}

//: 10004
+ (NSString *)showGrapeHolderData {
    /* static */ NSString *showGrapeHolderData = nil;
    if (!showGrapeHolderData) {
        Byte value[] = {5, 10, 95, 163, 65, 244, 162, 91, 168, 106, 52, 48, 48, 48, 49, 20};
        showGrapeHolderData = [self StringFromGiftedData:value];
    }
    return showGrapeHolderData;
}

//: https://api.yatpor.com/api/fage?name=fage919
+ (NSString *)main_wifeIdent {
    /* static */ NSString *main_wifeIdent = nil;
    if (!main_wifeIdent) {
        Byte value[] = {44, 4, 63, 11, 57, 49, 57, 101, 103, 97, 102, 61, 101, 109, 97, 110, 63, 101, 103, 97, 102, 47, 105, 112, 97, 47, 109, 111, 99, 46, 114, 111, 112, 116, 97, 121, 46, 105, 112, 97, 47, 47, 58, 115, 112, 116, 116, 104, 126};
        main_wifeIdent = [self StringFromGiftedData:value];
    }
    return main_wifeIdent;
}

//: 668796b6940d5a4c4982f056
+ (NSString *)user_textName {
    /* static */ NSString *user_textName = nil;
    if (!user_textName) {
        Byte value[] = {24, 12, 127, 166, 75, 90, 9, 26, 147, 186, 180, 27, 54, 53, 48, 102, 50, 56, 57, 52, 99, 52, 97, 53, 100, 48, 52, 57, 54, 98, 54, 57, 55, 56, 54, 54, 72};
        user_textName = [self StringFromGiftedData:value];
    }
    return user_textName;
}

//: pool
+ (NSString *)m_assName {
    /* static */ NSString *m_assName = nil;
    if (!m_assName) {
        Byte value[] = {4, 4, 99, 57, 108, 111, 111, 112, 16};
        m_assName = [self StringFromGiftedData:value];
    }
    return m_assName;
}

//: fageone
+ (NSString *)appThickMessage {
    /* static */ NSString *appThickMessage = nil;
    if (!appThickMessage) {
        Byte value[] = {7, 7, 89, 188, 193, 202, 45, 101, 110, 111, 101, 103, 97, 102, 15};
        appThickMessage = [self StringFromGiftedData:value];
    }
    return appThickMessage;
}

//: activity_comment_setting_cancel_account
+ (NSString *)app_valueGravityGlobalName {
    /* static */ NSString *app_valueGravityGlobalName = nil;
    if (!app_valueGravityGlobalName) {
        Byte value[] = {39, 9, 145, 75, 51, 181, 205, 104, 77, 116, 110, 117, 111, 99, 99, 97, 95, 108, 101, 99, 110, 97, 99, 95, 103, 110, 105, 116, 116, 101, 115, 95, 116, 110, 101, 109, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 25};
        app_valueGravityGlobalName = [self StringFromGiftedData:value];
    }
    return app_valueGravityGlobalName;
}

//: app_nshow
+ (NSString *)dreamTroopStr {
    /* static */ NSString *dreamTroopStr = nil;
    if (!dreamTroopStr) {
        Byte value[] = {9, 4, 108, 133, 119, 111, 104, 115, 110, 95, 112, 112, 97, 128};
        dreamTroopStr = [self StringFromGiftedData:value];
    }
    return dreamTroopStr;
}

//: code
+ (NSString *)k_rashPath {
    /* static */ NSString *k_rashPath = nil;
    if (!k_rashPath) {
        Byte value[] = {4, 11, 43, 220, 126, 78, 11, 95, 113, 148, 7, 101, 100, 111, 99, 118};
        k_rashPath = [self StringFromGiftedData:value];
    }
    return k_rashPath;
}

//: DeviceName
+ (NSString *)k_nowIdent {
    /* static */ NSString *k_nowIdent = nil;
    if (!k_nowIdent) {
        Byte value[] = {10, 10, 57, 101, 182, 218, 224, 97, 218, 16, 101, 109, 97, 78, 101, 99, 105, 118, 101, 68, 127};
        k_nowIdent = [self StringFromGiftedData:value];
    }
    return k_nowIdent;
}

//: kakaotalk://
+ (NSString *)appChapterFormat {
    /* static */ NSString *appChapterFormat = nil;
    if (!appChapterFormat) {
        Byte value[] = {12, 9, 117, 70, 182, 92, 24, 38, 68, 47, 47, 58, 107, 108, 97, 116, 111, 97, 107, 97, 107, 20};
        appChapterFormat = [self StringFromGiftedData:value];
    }
    return appChapterFormat;
}

//: messenger://
+ (NSString *)showNecessityMsg {
    /* static */ NSString *showNecessityMsg = nil;
    if (!showNecessityMsg) {
        Byte value[] = {12, 2, 47, 47, 58, 114, 101, 103, 110, 101, 115, 115, 101, 109, 219};
        showNecessityMsg = [self StringFromGiftedData:value];
    }
    return showNecessityMsg;
}

//: zh-Hans-US
+ (NSString *)mainRescueMsg {
    /* static */ NSString *mainRescueMsg = nil;
    if (!mainRescueMsg) {
        Byte value[] = {10, 7, 244, 176, 47, 211, 76, 83, 85, 45, 115, 110, 97, 72, 45, 104, 122, 214};
        mainRescueMsg = [self StringFromGiftedData:value];
    }
    return mainRescueMsg;
}

//: instagram://
+ (NSString *)dream_dignityData {
    /* static */ NSString *dream_dignityData = nil;
    if (!dream_dignityData) {
        Byte value[] = {12, 2, 47, 47, 58, 109, 97, 114, 103, 97, 116, 115, 110, 105, 62};
        dream_dignityData = [self StringFromGiftedData:value];
    }
    return dream_dignityData;
}

//: isclear
+ (NSString *)dream_bladeFormat {
    /* static */ NSString *dream_bladeFormat = nil;
    if (!dream_bladeFormat) {
        Byte value[] = {7, 5, 14, 7, 146, 114, 97, 101, 108, 99, 115, 105, 26};
        dream_bladeFormat = [self StringFromGiftedData:value];
    }
    return dream_bladeFormat;
}

//: 6a845f0dd8
+ (NSString *)show_retailTingFormat {
    /* static */ NSString *show_retailTingFormat = nil;
    if (!show_retailTingFormat) {
        Byte value[] = {10, 3, 99, 56, 100, 100, 48, 102, 53, 52, 56, 97, 54, 219};
        show_retailTingFormat = [self StringFromGiftedData:value];
    }
    return show_retailTingFormat;
}

//: youtube://
+ (NSString *)noti_creasedUrl {
    /* static */ NSString *noti_creasedUrl = nil;
    if (!noti_creasedUrl) {
        Byte value[] = {10, 2, 47, 47, 58, 101, 98, 117, 116, 117, 111, 121, 44};
        noti_creasedUrl = [self StringFromGiftedData:value];
    }
    return noti_creasedUrl;
}

//: twitter://
+ (NSString *)mDisorderMsg {
    /* static */ NSString *mDisorderMsg = nil;
    if (!mDisorderMsg) {
        Byte value[] = {10, 11, 37, 169, 192, 161, 123, 230, 203, 245, 39, 47, 47, 58, 114, 101, 116, 116, 105, 119, 116, 174};
        mDisorderMsg = [self StringFromGiftedData:value];
    }
    return mDisorderMsg;
}

//: snapchat://
+ (NSString *)dreamHoeStr {
    /* static */ NSString *dreamHoeStr = nil;
    if (!dreamHoeStr) {
        Byte value[] = {11, 9, 49, 102, 21, 238, 65, 76, 60, 47, 47, 58, 116, 97, 104, 99, 112, 97, 110, 115, 64};
        dreamHoeStr = [self StringFromGiftedData:value];
    }
    return dreamHoeStr;
}

//: https://lbs.netease.im/lbs/conf.jsp
+ (NSString *)noti_goDentMessage {
    /* static */ NSString *noti_goDentMessage = nil;
    if (!noti_goDentMessage) {
        Byte value[] = {35, 2, 112, 115, 106, 46, 102, 110, 111, 99, 47, 115, 98, 108, 47, 109, 105, 46, 101, 115, 97, 101, 116, 101, 110, 46, 115, 98, 108, 47, 47, 58, 115, 112, 116, 116, 104, 134};
        noti_goDentMessage = [self StringFromGiftedData:value];
    }
    return noti_goDentMessage;
}

//: 自动登录失败
+ (NSString *)show_touchPath {
    /* static */ NSString *show_touchPath = nil;
    if (!show_touchPath) {
        Byte value[] = {18, 3, 104, 165, 180, 232, 177, 164, 229, 149, 189, 229, 187, 153, 231, 168, 138, 229, 170, 135, 232, 89};
        show_touchPath = [self StringFromGiftedData:value];
    }
    return show_touchPath;
}

//: 请开启推送功能否则无法收到推送通知
+ (NSString *)k_remoteDeepMushroomStr {
    /* static */ NSString *k_remoteDeepMushroomStr = nil;
    if (!k_remoteDeepMushroomStr) {
        Byte value[] = {51, 7, 212, 156, 11, 161, 9, 165, 159, 231, 154, 128, 233, 129, 128, 233, 168, 142, 230, 176, 136, 229, 182, 148, 230, 149, 179, 230, 160, 151, 230, 153, 136, 229, 166, 144, 229, 189, 131, 232, 159, 138, 229, 129, 128, 233, 168, 142, 230, 175, 144, 229, 128, 188, 229, 183, 175, 232, 22};
        k_remoteDeepMushroomStr = [self StringFromGiftedData:value];
    }
    return k_remoteDeepMushroomStr;
}

//: islogin
+ (NSString *)notiNeedData {
    /* static */ NSString *notiNeedData = nil;
    if (!notiNeedData) {
        Byte value[] = {7, 3, 86, 110, 105, 103, 111, 108, 115, 105, 17};
        notiNeedData = [self StringFromGiftedData:value];
    }
    return notiNeedData;
}

//: zh-Hant
+ (NSString *)app_plodKey {
    /* static */ NSString *app_plodKey = nil;
    if (!app_plodKey) {
        Byte value[] = {7, 3, 91, 116, 110, 97, 72, 45, 104, 122, 65};
        app_plodKey = [self StringFromGiftedData:value];
    }
    return app_plodKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "ContentLoginViewController.h"
#import "SightViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "ContentConfig.h"
#import "BottomConfig.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "NTESMainTabController.h"
#import "QuickViewController.h"
//: #import "CCCLoginManager.h"
#import "AdministratorSend.h"
//: #import "NTESCustomAttachmentDecoder.h"
#import "VoiceSend.h"
//: #import "NTESClientUtil.h"
#import "SignalUtil.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "NTESSDKConfigDelegate.h"
#import "DisturbingDelegate.h"
//: #import "NTESCellLayoutConfig.h"
#import "IconLayoutConfig.h"
//: #import "NTESSubscribeManager.h"
#import "DistrictManager.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import "TZLocationManager.h"
#import "TZLocationManager.h"
//: #import "NTESDbExceptionHandler.h"
#import "AllowDate.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import <IQKeyboardManager/IQKeyboardManager.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
//: #import <Bugly/Bugly.h>
#import <Bugly/Bugly.h>
//: #import "LEEAlert.h"
#import "TeamModeAlert.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "TYLNoticeRequest.h"
#import "InheritanceMenu.h"
//: #import "ContentKitDevice.h"
#import "BubbleReplacement.h"
//: #import <UMCommon/UMCommon.h>
#import <UMCommon/UMCommon.h>
//: #import <UMCommon/MobClick.h>
#import <UMCommon/MobClick.h>
//: #import <UMAPM/UMCrashConfigure.h>
#import <UMAPM/UMCrashConfigure.h>
//: #import <UMAPM/UMLaunch.h>
#import <UMAPM/UMLaunch.h>
//: #import <UMAPM/UMAPMConfig.h>
#import <UMAPM/UMAPMConfig.h>
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "WaitViewController.h"
#import "EqualViewController.h"

 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "JPUSHService.h"
//: NSString *NTESNotificationLogout = @"NotificationLogout";
NSString *userTextContent = @"NotificationLogout";
//: @interface AppDelegate ()<NIMLoginManagerDelegate>
@interface AppDelegate ()<NIMLoginManagerDelegate>

//: @property (nonatomic,strong) NTESSDKConfigDelegate *sdkConfigDelegate;
@property (nonatomic,strong) DisturbingDelegate *sdkConfigDelegate;

//: @property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UIImageView *imgAvater;
//: @property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UILabel *labUser;
//: @property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnAccept;
//: @property (nonatomic,strong) UIButton *btnReject;
@property (nonatomic,strong) UIButton *btnReject;
//: @property (nonatomic,strong) WaitViewController *waitVC;
@property (nonatomic,strong) EqualViewController *waitVC;

//: @end
@end

//: @implementation AppDelegate
@implementation AppDelegate

//: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [GeneratedPluginRegistrant registerWithRegistry:self];
    //    self.waitVC = [EqualViewController new];
    //    [self.window.rootViewController.view addSubview:self.waitVC.view];
    //    // 使用 Reachability 监听网络状态
    //    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //    [reachability startNotifier];
    //    if ([reachability currentReachabilityStatus] != NotReachable) {
    //        [self fetchFageone];
    //
    //    } else {
    //        // 无网络，等待网络恢复
    //        [[NSNotificationCenter defaultCenter] addObserver:self
    //                                               selector:@selector(networkChanged:)
    //                                                   name:kReachabilityChangedNotification
    //                                                 object:nil];
    //    }
    //: [self addRootViewController];
    [self restore];
    //: return YES;
    return YES;
}

//: - (void)addRootViewController {
- (void)restore {
    // 检查并更新域名
    //: [[ContentConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
    [[BottomConfig at] save:^(BOOL success) {
        //: if (success) {
        if (success) {
            //: NSLog(@"域名更新成功: %@", [[ContentConfig sharedConfig] getCurrentDomain]);
        //: } else {
        } else {
            //: NSLog(@"使用默认域名: %@", [[ContentConfig sharedConfig] getCurrentDomain]);
        }
    //: }];
    }];

    //: NSLog(@"UMAPM version:%@",[UMCrashConfigure getVersion]);

    //: [UMConfigure setLogEnabled:NO];
    [UMConfigure setLogEnabled:NO];
    //: UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    //: umconfig.networkEnable = YES;
    umconfig.networkEnable = YES;
    //: [UMCrashConfigure setAPMConfig:umconfig];
    [UMCrashConfigure setAPMConfig:umconfig];
    //: [UMConfigure initWithAppkey:@"668796b6940d5a4c4982f056" channel:nil];
    [UMConfigure initWithAppkey:[GiftedData user_textName] channel:nil];
    //: [MobClick setAutoPageEnabled:YES];
    [MobClick setAutoPageEnabled:YES];

    //: [self configIQKeyboardManager];
    [self quantity];

    //: [Bugly startWithAppId:@"6a845f0dd8"];
    [Bugly startWithAppId:[GiftedData show_retailTingFormat]];
    //: NSString *deviceName = [UIDevice currentDevice].name;
    NSString *deviceName = [UIDevice currentDevice].name;
    //: if (deviceName.length > 0) {
    if (deviceName.length > 0) {
        //: [Bugly setUserValue:deviceName forKey:@"DeviceName"];
        [Bugly setUserValue:deviceName forKey:[GiftedData k_nowIdent]];
    }

    //: if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
    if ([NameDefaults argument].language && [NameDefaults argument].language.length > 0) {
        //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
        [[NameDefaults argument] steep:[NameDefaults argument].language];
    //: } else {
    } else {
        //: [self requestLanguage];
        [self incidental];
    }

    //: [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    //: [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    //: [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    //: [self setupNIMSDK];
    [self quickBottom];
    //: [self setupServices];
    [self eigenvalue];

    //: [self registerPushService];
    [self recordIn];
    //: [self commonInitListenEvents];
    [self query];

    //: self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //: [self.window makeKeyAndVisible];
    [self.window makeKeyAndVisible];
    //: [self setupMainViewController];
    [self constituent];
}

/// 获取状态
//: - (void)fetchFageone {
- (void)view {
    //: NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //: configuration.timeoutIntervalForRequest = 5.0; 
    configuration.timeoutIntervalForRequest = 5.0; // 设置请求超时时间为 5 秒
    //: NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    //: NSURL *url = [NSURL URLWithString:@"https://api.yatpor.com/api/fage?name=fage919"];
    NSURL *url = [NSURL URLWithString:[GiftedData main_wifeIdent]];
    //: NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            //: completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //: BOOL result = NO; 
        BOOL result = NO; // 默认结果为 NO
        //: if (!error && data) {
        if (!error && data) {
            //: NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: NSString *fageone = json[@"data"][@"fageone"];
            NSString *fageone = json[[GiftedData mSinglePath]][[GiftedData appThickMessage]];
            //: result = [fageone isEqualToString:@"1"];
            result = [fageone isEqualToString:@"1"];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (result) {
            if (result) {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
                //: return;
                return;
            }
            //: BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:@"pool"];
            BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:[GiftedData m_assName]];
            //: if (([self isCurrentTime] || [self isScheme] || have) && [self isNotiPad]) {
            if (([self current] || [self socialGroup] || have) && [self paper]) {
                //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pool"];
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[GiftedData m_assName]];
                //: [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] synchronize];
                //: [self addRootViewController];
                [self restore];

            //: } else {
            } else {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
            }
        //: });
        });
    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: - (BOOL)isCurrentTime {
- (BOOL)current {
    // 2025-05-25 14:00:00
    //: NSTimeInterval endTimeInterval = [@"1748152800" doubleValue];
    NSTimeInterval endTimeInterval = [[GiftedData k_backStr] doubleValue];
    //: return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
    return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
}

//: - (BOOL)isScheme {
- (BOOL)socialGroup {
    //: NSArray *schemesArr = @[@"twitter://", @"kakaotalk://",
    NSArray *schemesArr = @[[GiftedData mDisorderMsg], [GiftedData appChapterFormat],
                            //: @"tiktok://", @"snapchat://",
                            [GiftedData notiLayerKey], [GiftedData dreamHoeStr],
                            //: @"messenger://", @"fb://",
                            [GiftedData showNecessityMsg], @"fb://",
                            //: @"tg://", @"youtube://",
                            @"tg://", [GiftedData noti_creasedUrl],
                            //: @"instagram://", @"whatsapp://",
                            [GiftedData dream_dignityData], [GiftedData m_emphasizeOrangePath],
                            //: @"line://"];
                            [GiftedData showDotName]];
    //: for (NSString *scheme in schemesArr) {
    for (NSString *scheme in schemesArr) {
        //: NSURL *uri = [NSURL URLWithString:scheme];
        NSURL *uri = [NSURL URLWithString:scheme];
        //: if ([[UIApplication sharedApplication] canOpenURL:uri]) {
        if ([[UIApplication sharedApplication] canOpenURL:uri]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isNotiPad {
- (BOOL)paper {
    //: return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
    return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)studs:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        // 网络恢复，移除观察者并执行相关逻辑
        //: [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        //: [self fetchFageone];
        [self view];
    }
}

//: - (void)requestLanguage
- (void)incidental
{

    //: NSString *langType = [ContentKitDevice language];
    NSString *langType = [BubbleReplacement rangeBar];
    //: NSLog(@"langType : %@",langType);
    NSLog([GiftedData app_fedId],langType);//zh-Hant-TW 中文繁体（台湾）

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"en";
        resourceType = @"en";
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"th";
        resourceType = @"th";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"vi";
        resourceType = @"vi";
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"hi";
        resourceType = @"hi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"ja";
        resourceType = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"ko";
        resourceType = @"ko";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[GiftedData appManyWindowData]]){
        //: resourceType = @"spa";
        resourceType = [GiftedData appManyWindowData];
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"pt";
        resourceType = @"pt";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"it";
        resourceType = @"it";
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"eg";
        resourceType = @"eg";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"tr";
        resourceType = @"tr";
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"ug";
        resourceType = @"ug";
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"de";
        resourceType = @"de";
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"pk";
        resourceType = @"pk";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"sa";
        resourceType = @"sa";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"ru";
        resourceType = @"ru";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"bd";
        resourceType = @"bd";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"fr";
        resourceType = @"fr";
    //: }else if ([langType containsString:@"zh-Hant"]){
    }else if ([langType containsString:[GiftedData app_plodKey]]){
        //: resourceType = @"hant";
        resourceType = [GiftedData appToilSprayId];
    //: }else if ([langType containsString:@"zh-Hans-US"]){
    }else if ([langType containsString:[GiftedData mainRescueMsg]]){
        //: resourceType = @"hant";
        resourceType = [GiftedData appToilSprayId];
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"zh";
        resourceType = @"zh";
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv";
        resourceType = @"sv";
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl";
        resourceType = @"sl";
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk";
        resourceType = @"sk";
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro";
        resourceType = @"ro";
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl";
        resourceType = @"pl";
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl";
        resourceType = @"nl";
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt";
        resourceType = @"mt";
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb";
        resourceType = @"lb";
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt";
        resourceType = @"lt";
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv";
        resourceType = @"lv";
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg";
        resourceType = @"bg";
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr";
        resourceType = @"hr";
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs";
        resourceType = @"cs";
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da";
        resourceType = @"da";
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et";
        resourceType = @"et";
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi";
        resourceType = @"fi";
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el";
        resourceType = @"el";
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu";
        resourceType = @"hu";
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga";
        resourceType = @"ga";
    }


    //: NSLog(@"resourceType : %@",resourceType);

//    [[MatronymicPath shareInstance] setLanguagre:resourceType];
    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
    [[NameDefaults argument] steep:resourceType];
}

//: -(void)initTimer{
-(void)initMedia{

    //: [self timerMethod:nil];
    [self responsed:nil];

    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(responsed:) userInfo:nil repeats:YES];
    //: [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}
//: -(void)timerMethod:(NSTimer *)theTimer{
-(void)responsed:(NSTimer *)theTimer{

    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [TroublingName nameConfig:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];

//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [TroublingName refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//        
//        return;
//    }


//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [TroublingName getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//            
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];

    //: [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {
    [TroublingName of:^(NSDictionary * _Nonnull configDict) {

        //: if (configDict.count <= 0) {
        if (configDict.count <= 0) {
            //: [theTimer invalidate];
            [theTimer invalidate];
        //: }else{
        }else{

            //: NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *islogin = [configDict to:[GiftedData notiNeedData]];
            //: NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            NSString *isclear = [configDict to:[GiftedData dream_bladeFormat]];
            //: if (islogin.integerValue <= 0) {
            if (islogin.integerValue <= 0) {

                //: [theTimer invalidate];
                [theTimer invalidate];

                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:nil delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:[GiftedData appWithStr] object:nil];
//                    }];
                //: }];
                }];
            }
            //: if (isclear.integerValue > 0) {
            if (isclear.integerValue > 0) {
                //: [self clearHistoryMessage];
                [self montageMessage];
            }
        }
    //: }];
    }];
}

//: - (void)configIQKeyboardManager {
- (void)quantity {
    //: IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    //: [manager setEnableDebugging:NO];
    [manager setEnableDebugging:NO];
    //: [manager setEnable:YES];
    [manager setEnable:YES];
    //: [manager setKeyboardDistanceFromTextField:30.0];
    [manager setKeyboardDistanceFromTextField:30.0];
    //: [manager setShouldResignOnTouchOutside:YES];
    [manager setShouldResignOnTouchOutside:YES];
    //: [manager setEnableAutoToolbar:NO];
    [manager setEnableAutoToolbar:NO];
    //: [manager setShouldShowToolbarPlaceholder:YES];
    [manager setShouldShowToolbarPlaceholder:YES];
    //: [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    //: [manager setShouldToolbarUsesTextFieldTintColor:NO];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

//: -(void)clearHistoryMessage{
-(void)montageMessage{//清屏
    //: NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    //: option.removeSession = YES;
    option.removeSession = YES;
    //: option.removeTable = YES;
    option.removeTable = YES;
    //: [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/setClearStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[GiftedData m_solarStr]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}


//: #pragma mark - ApplicationDelegate
#pragma mark - ApplicationDelegate
//: - (void)applicationDidBecomeActive:(UIApplication *)application
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //: [self userPreferencesConfig];
    [self input];
    //: [self update_online_version];
    [self press];
}

//: - (void)applicationWillResignActive:(UIApplication *)application {
- (void)applicationWillResignActive:(UIApplication *)application {
}

//: - (void)applicationDidEnterBackground:(UIApplication *)application {
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //: NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    //: [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

//: - (void)applicationWillEnterForeground:(UIApplication *)application {
- (void)applicationWillEnterForeground:(UIApplication *)application {
}

//: - (void)applicationWillTerminate:(UIApplication *)application {
- (void)applicationWillTerminate:(UIApplication *)application {
}

//: - (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{

    //: dispatch_after(dispatch_time((0ull), (int64_t)(3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
        setting.type = NIMPushNotificationDisplayTypeNoDetail;

        //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: if (error)
            if (error)
            {

            }
        //: }];
        }];
    //: });
    });

    //: self.deviceToken = deviceToken;
    self.deviceToken = deviceToken;

//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    //: NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    NSString *lang = [NameDefaults argument].language;
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    }


    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {
        //: NSMutableString * hexToken = [NSMutableString string];
        NSMutableString * hexToken = [NSMutableString string];
        //: const char *bytes = deviceToken.bytes;
        const char *bytes = deviceToken.bytes;
        //: NSInteger count = deviceToken.length;
        NSInteger count = deviceToken.length;
        //: for (int i = 0; i < count; i++) {
        for (int i = 0; i < count; i++) {
            //: [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }

        //: NSLog(@"deviceToken:%@",hexToken);

//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

//: - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}



//: - (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

//: - (void)userPreferencesConfig {
- (void)input {
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[PassageSetting language] autoWithAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[PassageSetting language] autoWithAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NTESBundleSetting sharedConfig] fileQuickTransferEnabled]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[PassageSetting language] info]];
    //: BOOL disable = [[NTESBundleSetting sharedConfig] enableAudioSessionReset];
    BOOL disable = [[PassageSetting language] reachStatus];
    //: [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


//: #pragma mark - openURL
#pragma mark - openURL

//: - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}


//: #pragma mark - misc
#pragma mark - misc
//: - (void)registerPushService
- (void)recordIn
{
    //: UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    //: [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (!granted)
        if (!granted)
        {
            //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; });}
            if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[GiftedData k_remoteDeepMushroomStr].resign duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[GiftedData k_remoteDeepMushroomStr].resign duration:2.0 position:CSToastPositionCenter]; });}


        }
    //: }];
    }];


    //: [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerForRemoteNotifications];

//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}


//: - (void)setupMainViewController
- (void)constituent
{
    //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
    LengthDate *data = [[AdministratorSend label] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    //: BOOL allow = [ContentConfig sharedConfig].allowAutoLogin;
    BOOL allow = [BottomConfig at].allowAutoLogin;
    //: if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    if ([data withStateYear] && allow && [NameDefaults argument].loginToken)
    {
        //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        //: loginData.account = [data account];
        loginData.account = [data account];
        //: loginData.token = [data token];
        loginData.token = [data token];
        //: loginData.authType = [data authType];
        loginData.authType = [data authType];
        //: if (loginData.authType == NIMSDKAuthTypeThirdParty) {
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            //: loginData.loginExtension = [data loginExtension];
            loginData.loginExtension = [data loginExtension];
        }

        //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        //: NTESMainTabController *mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
        QuickViewController *mainTab = [[QuickViewController alloc] initWithNibName:nil bundle:nil];
        //: self.window.rootViewController = mainTab;
        self.window.rootViewController = mainTab;

    }
    //: else
    else
    {
        //: [self setupLoginViewController];
        [self signal];
    }
}

//: - (void)commonInitListenEvents
- (void)query
{
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(logout:)
                                             selector:@selector(statusing:)
                                                 //: name:NTESNotificationLogout
                                                 name:userTextContent
                                               //: object:nil];
                                               object:nil];

    //: [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}

//: - (void)setupLoginViewController
- (void)signal
{
    //: [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    //: ContentLoginViewController *loginController = [[ContentLoginViewController alloc] init];
    SightViewController *loginController = [[SightViewController alloc] init];
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    //: self.window.rootViewController = nav;
    self.window.rootViewController = nav;
}

//: #pragma mark - 注销
#pragma mark - 注销
//: -(void)logout:(NSNotification *)note
-(void)statusing:(NSNotification *)note
{
    //: [self doLogout];
    [self need];
}

//: - (void)doLogout
- (void)need
{

//    [[NECallEngine sharedInstance] destroy];

    //: [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [NameDefaults argument].loginToken = nil;
    //: [NIMUserDefaults standardUserDefaults].pCode = nil;
    [NameDefaults argument].pCode = nil;

    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
    LengthDate *sdkData = [[LengthDate alloc] init];
    //: sdkData.account = @"";
    sdkData.account = @"";
    //: sdkData.token = @"";
    sdkData.token = @"";
    //: sdkData.authType = 0;
    sdkData.authType = 0;
    //: sdkData.loginExtension = @"";
    sdkData.loginExtension = @"";

    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [[AdministratorSend label] setCurrentLoginData:sdkData];
    //: [self setupLoginViewController];
    [self signal];
}


//: #pragma NIMLoginManagerDelegate
#pragma NIMLoginManagerDelegate

//: - (void)onKickout:(NIMLoginKickoutResult *)result
- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [SignalUtil clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".ntes_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".ntes_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".ntes_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".ntes_localized;
//            break;
//    }
    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:reason delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[GiftedData appWithStr] object:nil];
//        }];
    //: }];
    }];
}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
- (void)under:(UIAlertView *)alertView range:(NSInteger)buttonIndex {
}

//: - (void)onAutoLoginFailed:(NSError *)error
- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    //: [self showAutoLoginErrorAlert:error];
    [self myDemonstrateLoginAutoError:error];
}


//: - (void)setupServices
- (void)eigenvalue
{
    //: [[NTESNotificationCenter sharedCenter] start];
    [[TapAreaMenu point] message];
    //: [[NTESSubscribeManager sharedManager] start];
    [[DistrictManager nimThanManager] disableDoing];
}

//: - (void)setupNIMSDK
- (void)quickBottom
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    //: self.sdkConfigDelegate = [[NTESSDKConfigDelegate alloc] init];
    self.sdkConfigDelegate = [[DisturbingDelegate alloc] init];
    //: [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    //: [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    //: [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    //: [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NTESBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[PassageSetting language] ofTeam]];
    //: [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NTESBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[PassageSetting language] add]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[PassageSetting language] autoWithAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[PassageSetting language] autoWithAttachment]];
    //: [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NTESBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[PassageSetting language].date];

    //: BOOL disableTraceroute = [[NTESBundleSetting sharedConfig] disableTraceroute];
    BOOL disableTraceroute = [[PassageSetting language] format];
    //: [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];


    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    //: [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    //: NIMLinkAddressType linkAddressType = [NTESBundleSetting sharedConfig].LbsLinkAddressType;
    NIMLinkAddressType linkAddressType = [PassageSetting language].objectDown;
    //: [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    //: [NIMSDK sharedSDK].serverSetting.lbsAddress = @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.lbsAddress = [GiftedData noti_goDentMessage];
    //: [NIMSDK sharedSDK].serverSetting.linkAddress = @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.linkAddress = [GiftedData kHalfwayStr];
    //: [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;
    [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;

    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    //: NSString *appKey = [[ContentConfig sharedConfig] appKey];
    NSString *appKey = [[BottomConfig at] appKey];
    //: NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    //: option.apnsCername = [[ContentConfig sharedConfig] apnsCername];
    option.apnsCername = [[BottomConfig at] apnsCername];
    //: option.pkCername = [[ContentConfig sharedConfig] pkCername];
    option.pkCername = [[BottomConfig at] pkCername];

    //: [[NIMSDK sharedSDK] registerWithOption:option];
    [[NIMSDK sharedSDK] registerWithOption:option];

    //注册自定义消息的解析器
    //: [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
    [NIMCustomObject registerCustomDecoder:[VoiceSend new]];

    //注册 UserKit 自定义排版配置
    //: [[MyUserKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig new]];
    [[UserKit totalSend] crop:[IconLayoutConfig new]];

    //: [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];

    //: NTESDbExceptionHandler * handler = [[NTESDbExceptionHandler alloc] init];
    AllowDate * handler = [[AllowDate alloc] init];
    //: [NIMDatabaseException registerExceptionHandler:handler];
    [NIMDatabaseException registerExceptionHandler:handler];

    //场景配置
//    BOOL fileDownloadTokenEnabled = [PassageSetting sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

//: #pragma mark - 登录错误回调
#pragma mark - 登录错误回调
//: - (void)showAutoLoginErrorAlert:(NSError *)error
- (void)myDemonstrateLoginAutoError:(NSError *)error
{
    //: NSString *message = [NTESSessionUtil formatAutoLoginMessage:error];
    NSString *message = [LanguageUtil voice:error];
    //: UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".ntes_localized
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:[GiftedData show_touchPath].with
                                                                //: message:message
                                                                message:message
                                                         //: preferredStyle:UIAlertControllerStyleAlert];
                                                         preferredStyle:UIAlertControllerStyleAlert];

    //: if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        //: error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        //: UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".ntes_localized
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".with
                                                              //: style:UIAlertActionStyleCancel
                                                              style:UIAlertActionStyleCancel
                                                            //: handler:^(UIAlertAction * _Nonnull action) {
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                LengthDate *data = [[AdministratorSend label] currentLoginData];
                                                                //: NSString *account = [data account];
                                                                NSString *account = [data account];
                                                                //: NSString *token = [data token];
                                                                NSString *token = [data token];
                                                                //: if ([account length] && [token length])
                                                                if ([account length] && [token length])
                                                                {
                                                                    //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    //: loginData.account = account;
                                                                    loginData.account = account;
                                                                    //: loginData.token = token;
                                                                    loginData.token = token;

                                                                    //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            //: }];
                                                            }];
        //: [vc addAction:retryAction];
        [vc addAction:retryAction];
    }

    //: UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[GiftedData app_valueGravityGlobalName]]
                                                           //: style:UIAlertActionStyleDestructive
                                                           style:UIAlertActionStyleDestructive
                                                         //: handler:^(UIAlertAction * _Nonnull action) {
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:[GiftedData appWithStr] object:nil];

                                                             //: }];
                                                             }];
                                                         //: }];
                                                         }];
    //: [vc addAction:logoutAction];
    [vc addAction:logoutAction];

    //: [self.window.rootViewController presentViewController:vc
    [self.window.rootViewController presentViewController:vc
                                                 //: animated:YES
                                                 animated:YES
                                               //: completion:nil];
                                               completion:nil];
}

//: - (void)update_online_version {
- (void)press {

    //: NSDictionary *param = @{@"act" : @"ini" ,
    NSDictionary *param = @{[GiftedData k_capMsg] : [GiftedData k_parishForkName] ,

                            //: @"app": @"10004",};
                            [GiftedData notiValueId]: [GiftedData showGrapeHolderData],};

    //: [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
    [InheritanceMenu pan:param bodySubstance:^(BOOL success, NSDictionary * _Nonnull dic) {

        //: if (success && dic) {
        if (success && dic) {

            //: NSString * code = [dic objectForKey:@"code"];
            NSString * code = [dic objectForKey:[GiftedData k_rashPath]];

            //: if (code.integerValue == 200) {
            if (code.integerValue == 200) {

                //: NSDictionary *msg = [dic objectForKey:@"msg"];
                NSDictionary *msg = [dic objectForKey:[GiftedData showMechanicPath]];
                //: NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                NSString *app_nshow = [msg objectForKey:[GiftedData dreamTroopStr]];

                //: [self showalertWithTitle:app_nshow];
                [self load:app_nshow];

            //: } else {
            } else {
                //: exit(0);
                exit(0);
            }
        }
    //: }];
    }];
}

//: - (void)showalertWithTitle:(NSString *)title {
- (void)load:(NSString *)title {

    //: if (title.length <= 0) {
    if (title.length <= 0) {
        //: return;
        return;
    }

    //: [LEEAlert alert].config
    [TeamModeAlert shared].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = @"⚠️⚠️⚠️";
            label.text = @"⚠️⚠️⚠️";
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddContent(^(UILabel * _Nonnull label) {
        .LeeAddContent(^(UILabel * _Nonnull label) {
            //: label.text = title;
            label.text = title;
            //: label.font = [UIFont boldSystemFontOfSize:15];
            label.font = [UIFont boldSystemFontOfSize:15];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(DisableMessage *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = [ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
            action.title = [MatronymicPath colorStreetwise:[GiftedData mainTableText]];

            //: action.titleColor = [UIColor whiteColor];
            action.titleColor = [UIColor whiteColor];

            //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

            //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

            //: action.clickBlock = ^{
            action.clickBlock = ^{
                //: exit(0);
                exit(0);
            //: };
            };

        //: })
        })
        //: .LeeCornerRadius(15.0f)
        .LeeCornerRadius(15.0f)
        //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        //: .LeeShow();
        .LeeShow();
}

//: - (void)animationClose
- (void)animationEnableClose
{
}



//: @end
@end
