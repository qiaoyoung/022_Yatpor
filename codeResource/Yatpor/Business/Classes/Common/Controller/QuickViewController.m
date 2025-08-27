
#import <Foundation/Foundation.h>

@interface RankData : NSObject

+ (instancetype)sharedInstance;

//: #A3A3A3
@property (nonatomic, copy) NSString *k_hiPath;

//: #A148FF
@property (nonatomic, copy) NSString *show_windowMsg;

//: icon_message_normal
@property (nonatomic, copy) NSString *main_blueId;

//: main_tab_my
@property (nonatomic, copy) NSString *appFortyTitle;

//: badgeValue
@property (nonatomic, copy) NSString *mainValueMsg;

//: icon_contact_normal
@property (nonatomic, copy) NSString *mLikelyUrl;

//: activity_user_profile_chat
@property (nonatomic, copy) NSString *notiBagUrl;

//: contacts_list_title
@property (nonatomic, copy) NSString *showClaimContent;

//: #612CF9
@property (nonatomic, copy) NSString *userEmployerName;

//: KEKENotificationLanguageChanged
@property (nonatomic, copy) NSString *notiGrainOffMessage;

//: icon_setting_pressed
@property (nonatomic, copy) NSString *m_modelPath;

//: icon_contact_pressed
@property (nonatomic, copy) NSString *kTacticTitle;

//: icon_discovery_normal
@property (nonatomic, copy) NSString *showIsleIdent;

//: discovery
@property (nonatomic, copy) NSString *mainGoMessage;

//: icon_message_pressed
@property (nonatomic, copy) NSString *dreamSmokeGuyData;

//: image
@property (nonatomic, copy) NSString *main_assData;

//: selectedImage
@property (nonatomic, copy) NSString *main_enableStr;

//: title
@property (nonatomic, copy) NSString *show_titleName;

//: icon_discovery_pressed
@property (nonatomic, copy) NSString *mainIndependentData;

//: icon_setting_normal
@property (nonatomic, copy) NSString *userCoverEntryIdent;

//: #875FFA
@property (nonatomic, copy) NSString *user_accountFlameName;

//: #F7BA00
@property (nonatomic, copy) NSString *mainProMsg;

@end

@implementation RankData

+ (instancetype)sharedInstance {
    static RankData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RankDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)RankDataToCache:(Byte *)data {
    int smokeStart = data[0];
    int needDial = data[1];
    for (int i = 0; i < smokeStart / 2; i++) {
        int begin = needDial + i;
        int end = needDial + smokeStart - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[needDial + smokeStart] = 0;
    return data + needDial;
}

- (NSString *)StringFromRankData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RankDataToCache:data]];
}  

//: title
- (NSString *)show_titleName {
    if (!_show_titleName) {
		NSArray<NSString *> *origin = @[@"5", @"5", @"254", @"57", @"20", @"101", @"108", @"116", @"105", @"116", @"39"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_titleName = [self StringFromRankData:value];
    }
    return _show_titleName;
}

//: icon_setting_pressed
- (NSString *)m_modelPath {
    if (!_m_modelPath) {
		NSArray<NSString *> *origin = @[@"20", @"12", @"221", @"206", @"191", @"124", @"57", @"153", @"76", @"189", @"161", @"211", @"100", @"101", @"115", @"115", @"101", @"114", @"112", @"95", @"103", @"110", @"105", @"116", @"116", @"101", @"115", @"95", @"110", @"111", @"99", @"105", @"174"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_modelPath = [self StringFromRankData:value];
    }
    return _m_modelPath;
}

//: #A148FF
- (NSString *)show_windowMsg {
    if (!_show_windowMsg) {
		NSArray<NSString *> *origin = @[@"7", @"12", @"163", @"250", @"92", @"132", @"87", @"100", @"215", @"210", @"250", @"118", @"70", @"70", @"56", @"52", @"49", @"65", @"35", @"224"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_windowMsg = [self StringFromRankData:value];
    }
    return _show_windowMsg;
}

//: contacts_list_title
- (NSString *)showClaimContent {
    if (!_showClaimContent) {
		NSArray<NSString *> *origin = @[@"19", @"9", @"105", @"63", @"52", @"211", @"142", @"253", @"184", @"101", @"108", @"116", @"105", @"116", @"95", @"116", @"115", @"105", @"108", @"95", @"115", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"186"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showClaimContent = [self StringFromRankData:value];
    }
    return _showClaimContent;
}

//: activity_user_profile_chat
- (NSString *)notiBagUrl {
    if (!_notiBagUrl) {
		NSArray<NSString *> *origin = @[@"26", @"2", @"116", @"97", @"104", @"99", @"95", @"101", @"108", @"105", @"102", @"111", @"114", @"112", @"95", @"114", @"101", @"115", @"117", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"46"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiBagUrl = [self StringFromRankData:value];
    }
    return _notiBagUrl;
}

//: selectedImage
- (NSString *)main_enableStr {
    if (!_main_enableStr) {
		NSArray<NSString *> *origin = @[@"13", @"9", @"198", @"58", @"217", @"72", @"78", @"216", @"55", @"101", @"103", @"97", @"109", @"73", @"100", @"101", @"116", @"99", @"101", @"108", @"101", @"115", @"166"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_enableStr = [self StringFromRankData:value];
    }
    return _main_enableStr;
}

//: badgeValue
- (NSString *)mainValueMsg {
    if (!_mainValueMsg) {
		NSArray<NSString *> *origin = @[@"10", @"8", @"110", @"199", @"22", @"158", @"203", @"98", @"101", @"117", @"108", @"97", @"86", @"101", @"103", @"100", @"97", @"98", @"21"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainValueMsg = [self StringFromRankData:value];
    }
    return _mainValueMsg;
}

//: #875FFA
- (NSString *)user_accountFlameName {
    if (!_user_accountFlameName) {
		NSArray<NSString *> *origin = @[@"7", @"6", @"246", @"64", @"126", @"70", @"65", @"70", @"70", @"53", @"55", @"56", @"35", @"209"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_accountFlameName = [self StringFromRankData:value];
    }
    return _user_accountFlameName;
}

//: discovery
- (NSString *)mainGoMessage {
    if (!_mainGoMessage) {
		NSArray<NSString *> *origin = @[@"9", @"6", @"87", @"155", @"104", @"146", @"121", @"114", @"101", @"118", @"111", @"99", @"115", @"105", @"100", @"95"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainGoMessage = [self StringFromRankData:value];
    }
    return _mainGoMessage;
}

//: icon_setting_normal
- (NSString *)userCoverEntryIdent {
    if (!_userCoverEntryIdent) {
		NSArray<NSString *> *origin = @[@"19", @"4", @"91", @"30", @"108", @"97", @"109", @"114", @"111", @"110", @"95", @"103", @"110", @"105", @"116", @"116", @"101", @"115", @"95", @"110", @"111", @"99", @"105", @"138"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userCoverEntryIdent = [self StringFromRankData:value];
    }
    return _userCoverEntryIdent;
}

//: #F7BA00
- (NSString *)mainProMsg {
    if (!_mainProMsg) {
		NSArray<NSString *> *origin = @[@"7", @"8", @"171", @"212", @"93", @"149", @"113", @"23", @"48", @"48", @"65", @"66", @"55", @"70", @"35", @"205"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainProMsg = [self StringFromRankData:value];
    }
    return _mainProMsg;
}

//: icon_discovery_pressed
- (NSString *)mainIndependentData {
    if (!_mainIndependentData) {
		NSArray<NSString *> *origin = @[@"22", @"5", @"93", @"88", @"102", @"100", @"101", @"115", @"115", @"101", @"114", @"112", @"95", @"121", @"114", @"101", @"118", @"111", @"99", @"115", @"105", @"100", @"95", @"110", @"111", @"99", @"105", @"68"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainIndependentData = [self StringFromRankData:value];
    }
    return _mainIndependentData;
}

//: KEKENotificationLanguageChanged
- (NSString *)notiGrainOffMessage {
    if (!_notiGrainOffMessage) {
		NSArray<NSString *> *origin = @[@"31", @"8", @"149", @"216", @"217", @"175", @"141", @"55", @"100", @"101", @"103", @"110", @"97", @"104", @"67", @"101", @"103", @"97", @"117", @"103", @"110", @"97", @"76", @"110", @"111", @"105", @"116", @"97", @"99", @"105", @"102", @"105", @"116", @"111", @"78", @"69", @"75", @"69", @"75", @"191"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiGrainOffMessage = [self StringFromRankData:value];
    }
    return _notiGrainOffMessage;
}

//: image
- (NSString *)main_assData {
    if (!_main_assData) {
		NSArray<NSString *> *origin = @[@"5", @"11", @"236", @"193", @"6", @"185", @"37", @"133", @"120", @"204", @"64", @"101", @"103", @"97", @"109", @"105", @"26"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_assData = [self StringFromRankData:value];
    }
    return _main_assData;
}

//: icon_message_normal
- (NSString *)main_blueId {
    if (!_main_blueId) {
		NSArray<NSString *> *origin = @[@"19", @"2", @"108", @"97", @"109", @"114", @"111", @"110", @"95", @"101", @"103", @"97", @"115", @"115", @"101", @"109", @"95", @"110", @"111", @"99", @"105", @"237"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_blueId = [self StringFromRankData:value];
    }
    return _main_blueId;
}

//: icon_discovery_normal
- (NSString *)showIsleIdent {
    if (!_showIsleIdent) {
		NSArray<NSString *> *origin = @[@"21", @"9", @"33", @"126", @"160", @"187", @"165", @"48", @"194", @"108", @"97", @"109", @"114", @"111", @"110", @"95", @"121", @"114", @"101", @"118", @"111", @"99", @"115", @"105", @"100", @"95", @"110", @"111", @"99", @"105", @"137"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showIsleIdent = [self StringFromRankData:value];
    }
    return _showIsleIdent;
}

//: #A3A3A3
- (NSString *)k_hiPath {
    if (!_k_hiPath) {
		NSArray<NSString *> *origin = @[@"7", @"2", @"51", @"65", @"51", @"65", @"51", @"65", @"35", @"243"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_hiPath = [self StringFromRankData:value];
    }
    return _k_hiPath;
}

//: #612CF9
- (NSString *)userEmployerName {
    if (!_userEmployerName) {
		NSArray<NSString *> *origin = @[@"7", @"3", @"81", @"57", @"70", @"67", @"50", @"49", @"54", @"35", @"224"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userEmployerName = [self StringFromRankData:value];
    }
    return _userEmployerName;
}

//: icon_contact_pressed
- (NSString *)kTacticTitle {
    if (!_kTacticTitle) {
		NSArray<NSString *> *origin = @[@"20", @"10", @"255", @"107", @"137", @"200", @"59", @"242", @"5", @"95", @"100", @"101", @"115", @"115", @"101", @"114", @"112", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"95", @"110", @"111", @"99", @"105", @"255"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTacticTitle = [self StringFromRankData:value];
    }
    return _kTacticTitle;
}

//: icon_message_pressed
- (NSString *)dreamSmokeGuyData {
    if (!_dreamSmokeGuyData) {
		NSArray<NSString *> *origin = @[@"20", @"11", @"7", @"32", @"209", @"105", @"255", @"92", @"173", @"206", @"45", @"100", @"101", @"115", @"115", @"101", @"114", @"112", @"95", @"101", @"103", @"97", @"115", @"115", @"101", @"109", @"95", @"110", @"111", @"99", @"105", @"189"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamSmokeGuyData = [self StringFromRankData:value];
    }
    return _dreamSmokeGuyData;
}

//: icon_contact_normal
- (NSString *)mLikelyUrl {
    if (!_mLikelyUrl) {
		NSArray<NSString *> *origin = @[@"19", @"6", @"84", @"61", @"198", @"189", @"108", @"97", @"109", @"114", @"111", @"110", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"95", @"110", @"111", @"99", @"105", @"8"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mLikelyUrl = [self StringFromRankData:value];
    }
    return _mLikelyUrl;
}

//: main_tab_my
- (NSString *)appFortyTitle {
    if (!_appFortyTitle) {
		NSArray<NSString *> *origin = @[@"11", @"9", @"103", @"19", @"196", @"10", @"7", @"195", @"121", @"121", @"109", @"95", @"98", @"97", @"116", @"95", @"110", @"105", @"97", @"109", @"68"];
		NSData *data = [RankData RankDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appFortyTitle = [self StringFromRankData:value];
    }
    return _appFortyTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainTabController.h"
#import "QuickViewController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "ListMessageViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Origin.h"
//: #import "NTESCustomNotificationDB.h"
#import "TextDb.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "NTESNavigationHandler.h"
#import "BarObject.h"
//: #import "NTESNavigationAnimator.h"
#import "SizeAnimator.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "CCCContactsViewController.h"
#import "BankViewController.h"
//: #import "NTESMainCenterViewController.h"
#import "HandleBottomViewController.h"
//: #import "DisCorveyViewController.h"
#import "SessionViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"

//: typedef NS_ENUM(NSInteger,NTESMainTabType) {
typedef NS_ENUM(NSInteger,NTESMainTabType) {
    //: NTESMainTabTypeMessageList, 
    NTESMainTabTypeMessageList, //聊天
    //: NTESMainTabTypeChatroomList, 
    NTESMainTabTypeChatroomList, //聊天室
    //: NTESMainTabTypeContact, 
    NTESMainTabTypeContact, //通讯录
    //: NTESMainTabTypeSetting, 
    NTESMainTabTypeSetting, //设置
//: };
};



//: @interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>
@interface QuickViewController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) SizeAnimator *animator;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation NTESMainTabController
@implementation QuickViewController

//: + (instancetype)instance{
+ (instancetype)on{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[QuickViewController class]]) {
        //: return (NTESMainTabController *)vc;
        return (QuickViewController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self center];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *NTESCustomNotificationCountChanged;
    extern NSString *NTESCustomNotificationCountChanged;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:NTESCustomNotificationCountChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(removeChanged:) name:NTESCustomNotificationCountChanged object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:[RankData sharedInstance].notiGrainOffMessage object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor recordView:[RankData sharedInstance].k_hiPath]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#F7BA00"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor recordView:[RankData sharedInstance].mainProMsg]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self with];
}

//: - (void)setupNetworkObserver {
- (void)with {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(studs:)
                                                 //: name:kReachabilityChangedNotification
                                                 name:kReachabilityChangedNotification
                                               //: object:nil];
                                               object:nil];
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: [reachability startNotifier];
    [reachability startNotifier];
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)studs:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[BottomConfig at] save:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            }
        //: }]; 
        }]; // 网络恢复时更新域名
    }
}

//: - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}
//: - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor recordView:[RankData sharedInstance].k_hiPath]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#F7BA00"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor recordView:[RankData sharedInstance].mainProMsg]} forState:UIControlStateSelected];


}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    //: self.view.frame = [UIScreen mainScreen].bounds;
    self.view.frame = [UIScreen mainScreen].bounds;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSArray*)tabbars{
- (NSArray*)littleness{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];

    //: [items addObject:@(0)];
    [items addObject:@(0)];
    //: [items addObject:@(1)];
    [items addObject:@(1)];
    //: [items addObject:@(2)];
    [items addObject:@(2)];
    //: [items addObject:@(3)];
    [items addObject:@(3)];
    //: return items;
    return items;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)languageChanged:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self center];


}


//: - (void)setUpSubNav{
- (void)center{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.littleness enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self input:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [MatronymicPath colorStreetwise:[RankData sharedInstance].notiBagUrl];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [FFFLanguageManager getTextWithKey:@"discovery"];
            title = [MatronymicPath colorStreetwise:[RankData sharedInstance].mainGoMessage];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [FFFLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [MatronymicPath colorStreetwise:[RankData sharedInstance].showClaimContent];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [FFFLanguageManager getTextWithKey:@"main_tab_my"];
            title = [MatronymicPath colorStreetwise:[RankData sharedInstance].appFortyTitle];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[[RankData sharedInstance].main_assData];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[RankData sharedInstance].main_enableStr];
        //: Class clazz = NSClassFromString(vcName);
        Class clazz = NSClassFromString(vcName);
        //: UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        //: vc.hidesBottomBarWhenPushed = NO;
        vc.hidesBottomBarWhenPushed = NO;
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

        //: UIImage *normalImage = [UIImage imageNamed:imageName];
        UIImage *normalImage = [UIImage imageNamed:imageName];
        //: normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: UIImage *selectImage = [UIImage imageNamed:imageSelected];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        //: selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        //: nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       //: image:normalImage
                                                       image:normalImage
                                               //: selectedImage:selectImage];
                                               selectedImage:selectImage];
        //: nav.tabBarItem.tag = idx;
        nav.tabBarItem.tag = idx;
        //: NSInteger badge = [item[@"badgeValue"] integerValue];
        NSInteger badge = [item[[RankData sharedInstance].mainValueMsg] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        BarObject *handler = [[BarObject alloc] initWithRangeController:nav];
        //: nav.delegate = handler;
        nav.delegate = handler;

        //: if (@available(iOS 15.0, *)) {
        if (@available(iOS 15.0, *)) {

            //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  //: NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};

            //: UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            //: barApp.backgroundColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.backgroundColor = [UIColor recordView:[RankData sharedInstance].show_windowMsg];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor recordView:[RankData sharedInstance].show_windowMsg];
            //: barApp.titleTextAttributes = dic;
            barApp.titleTextAttributes = dic;

            //: nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.scrollEdgeAppearance = barApp;
            //: nav.navigationBar.standardAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }

        //: [vcArray addObject:nav];
        [vcArray addObject:nav];
        //: [handleArray addObject:handler];
        [handleArray addObject:handler];
    //: }];
    }];
    //: self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    //: self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];


    //: UINavigationBar *navBar = [UINavigationBar appearance];
    UINavigationBar *navBar = [UINavigationBar appearance];

    //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          //: NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};

    //: navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionVertical]];
    navBar.barTintColor = [UIColor colorWithPatternImage:[GradientHelper inheritSureSingular:[UIColor recordView:[RankData sharedInstance].user_accountFlameName] front:[UIColor recordView:[RankData sharedInstance].userEmployerName] should:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[GradientHelper inheritSureSingular:[UIColor recordView:[RankData sharedInstance].user_accountFlameName] front:[UIColor recordView:[RankData sharedInstance].userEmployerName] should:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[GradientHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    //: self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    //: self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    //: self.tabBar.backgroundImage = [UIImage new];
    self.tabBar.backgroundImage = [UIImage new];
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.layer.cornerRadius = (49/2);
    //: self.tabBar.translucent = YES;
    self.tabBar.translucent = YES;
    //: self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    //: self.tabBar.layer.shadowOpacity = 0.05; 
    self.tabBar.layer.shadowOpacity = 0.05; // 透明度 5%
    //: self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    //: self.tabBar.layer.shadowRadius = 5;
    self.tabBar.layer.shadowRadius = 5;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //防止UITabbar上跳，这里重置一下
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.frame = CGRectMake(20, UIScreenHeight - UITabbarHeight, UIScreenWidth-40, 49);
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self show];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    //: NSLog(@"%@",unreadCountDic);
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    //: self.sessionUnreadCount = unreadCount;
    self.sessionUnreadCount = unreadCount;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self show];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self show];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self barFor];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)removeChanged:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    TextDb *db = [TextDb valuePress];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self message];
}

//: - (void)refreshSessionBadge{
- (void)show{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: - (void)refreshContactBadge{
- (void)barFor{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)message{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    //: NSInteger badge = self.customSystemUnreadCount;
    NSInteger badge = self.customSystemUnreadCount;
    //: nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}


//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
}


//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [PassageSetting language].maxOffPin;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [PassageSetting language].maxOffPin;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)input:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"ListMessageViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             [RankData sharedInstance].show_titleName : [MatronymicPath colorStreetwise:[RankData sharedInstance].notiBagUrl],
                             //: @"image" : @"icon_message_normal",
                             [RankData sharedInstance].main_assData : [RankData sharedInstance].main_blueId,
                             //: @"selectedImage": @"icon_message_pressed",
                             [RankData sharedInstance].main_enableStr: [RankData sharedInstance].dreamSmokeGuyData,
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [RankData sharedInstance].mainValueMsg: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"SessionViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"discovery"],
                             [RankData sharedInstance].show_titleName : [MatronymicPath colorStreetwise:[RankData sharedInstance].mainGoMessage],
                             //: @"image" : @"icon_discovery_normal",
                             [RankData sharedInstance].main_assData : [RankData sharedInstance].showIsleIdent,
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [RankData sharedInstance].main_enableStr: [RankData sharedInstance].mainIndependentData,
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"BankViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"contacts_list_title"],
                             [RankData sharedInstance].show_titleName : [MatronymicPath colorStreetwise:[RankData sharedInstance].showClaimContent],
                             //: @"image" : @"icon_contact_normal",
                             [RankData sharedInstance].main_assData : [RankData sharedInstance].mLikelyUrl,
                             //: @"selectedImage": @"icon_contact_pressed",
                             [RankData sharedInstance].main_enableStr: [RankData sharedInstance].kTacticTitle,
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"NTESMainCenterViewController",
                             @"vc" : @"HandleBottomViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"main_tab_my"],
                             [RankData sharedInstance].show_titleName : [MatronymicPath colorStreetwise:[RankData sharedInstance].appFortyTitle],
                             //: @"image" : @"icon_setting_normal",
                             [RankData sharedInstance].main_assData : [RankData sharedInstance].userCoverEntryIdent,
                             //: @"selectedImage": @"icon_setting_pressed",
                             [RankData sharedInstance].main_enableStr: [RankData sharedInstance].m_modelPath,
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}



//: @end
@end