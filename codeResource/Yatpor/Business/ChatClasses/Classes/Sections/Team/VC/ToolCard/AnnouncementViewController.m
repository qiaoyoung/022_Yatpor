
#import <Foundation/Foundation.h>

@interface NeedData : NSObject

+ (instancetype)sharedInstance;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *notiLabName;

//: Clean_success
@property (nonatomic, copy) NSString *m_theologicalViewStr;

//: #FF483D
@property (nonatomic, copy) NSString *k_chapterText;

//: No_group_announcement
@property (nonatomic, copy) NSString *notiMorroFormat;

//: #F7BA00
@property (nonatomic, copy) NSString *m_licenseTitle;

//: add_noticess
@property (nonatomic, copy) NSString *mUserAsideTitle;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *dreamAccountStr;

//: ic_none_announcement
@property (nonatomic, copy) NSString *app_textName;

//: #F6F7FA
@property (nonatomic, copy) NSString *showDignityPath;

//: back_arrow_bl
@property (nonatomic, copy) NSString *showManyMessage;

//: team_create_helper_create_success
@property (nonatomic, copy) NSString *userValueData;

//: creator
@property (nonatomic, copy) NSString *dream_managerChingData;

//: user_profile_avtivity_edit
@property (nonatomic, copy) NSString *user_removeMsg;

//: Create_group_announcement
@property (nonatomic, copy) NSString *k_imageKey;

//: time
@property (nonatomic, copy) NSString *k_recoveryMessage;

//: sure_to_clear
@property (nonatomic, copy) NSString *dreamRetRecallName;

//: delete
@property (nonatomic, copy) NSString *noti_bubbleTitle;

//: title
@property (nonatomic, copy) NSString *userInfoValue;

//: content
@property (nonatomic, copy) NSString *show_nighText;

//: clear_notice
@property (nonatomic, copy) NSString *dreamPainfulData;

//: #999999
@property (nonatomic, copy) NSString *kRetchMessage;

//: icon_add_w
@property (nonatomic, copy) NSString *dreamShareMsg;

@end

@implementation NeedData

+ (instancetype)sharedInstance {
    static NeedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NeedDataToData:(NSString *)value {
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

- (Byte *)NeedDataToCache:(Byte *)data {
    int symptomSophisticate = data[0];
    Byte contractThick = data[1];
    int witchHunt = data[2];
    for (int i = witchHunt; i < witchHunt + symptomSophisticate; i++) {
        int value = data[i] + contractThick;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[witchHunt + symptomSophisticate] = 0;
    return data + witchHunt;
}

- (NSString *)StringFromNeedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NeedDataToCache:data]];
}

//: ic_none_announcement
- (NSString *)app_textName {
    if (!_app_textName) {
		NSString *origin = @"1401065DBDD168625E6D6E6D645E606D6D6E746D62646C646D7357";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_textName = [self StringFromNeedData:value];
    }
    return _app_textName;
}

//: Clean_success
- (NSString *)m_theologicalViewStr {
    if (!_m_theologicalViewStr) {
		NSString *origin = @"0D120993BF9530583E315A534F5C4D61635151536161D5";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_theologicalViewStr = [self StringFromNeedData:value];
    }
    return _m_theologicalViewStr;
}

//: #999999
- (NSString *)kRetchMessage {
    if (!_kRetchMessage) {
		NSString *origin = @"075905F9AACAE0E0E0E0E0E0C8";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kRetchMessage = [self StringFromNeedData:value];
    }
    return _kRetchMessage;
}

//: icon_add_w
- (NSString *)dreamShareMsg {
    if (!_dreamShareMsg) {
		NSString *origin = @"0A3809AFEC12F42695312B373627292C2C273F0B";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamShareMsg = [self StringFromNeedData:value];
    }
    return _dreamShareMsg;
}

//: Create_group_announcement
- (NSString *)k_imageKey {
    if (!_k_imageKey) {
		NSString *origin = @"19100B08913B9ED6A59D563362555164554F57625F65604F515E5E5F655E53555D555E640F";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_imageKey = [self StringFromNeedData:value];
    }
    return _k_imageKey;
}

//: clear_notice
- (NSString *)dreamPainfulData {
    if (!_dreamPainfulData) {
		NSString *origin = @"0C35061CC2A72E37302C3D2A393A3F342E3043";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamPainfulData = [self StringFromNeedData:value];
    }
    return _dreamPainfulData;
}

//: user_profile_avtivity_edit
- (NSString *)user_removeMsg {
    if (!_user_removeMsg) {
		NSString *origin = @"1A4C0C7E8EE11E5B7EBBB34429271926132426231A1D201913152A281D2A1D282D1319181D2869";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_removeMsg = [self StringFromNeedData:value];
    }
    return _user_removeMsg;
}

//: title
- (NSString *)userInfoValue {
    if (!_userInfoValue) {
		NSString *origin = @"05260D38CF1F71FE3D3D758CBE4E434E463F26";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userInfoValue = [self StringFromNeedData:value];
    }
    return _userInfoValue;
}

//: activity_group_info_group_toast
- (NSString *)notiLabName {
    if (!_notiLabName) {
		NSString *origin = @"1F3F09DD9DBA3C6FA42224352A372A353A202833303631202A2F273020283330363120353022343577";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiLabName = [self StringFromNeedData:value];
    }
    return _notiLabName;
}

//: No_group_announcement
- (NSString *)notiMorroFormat {
    if (!_notiMorroFormat) {
		NSString *origin = @"154D0CE25FC76C49B3C181E30122121A25222823121421212228211618201821271B";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiMorroFormat = [self StringFromNeedData:value];
    }
    return _notiMorroFormat;
}

//: team_create_helper_create_failed
- (NSString *)dreamAccountStr {
    if (!_dreamAccountStr) {
		NSString *origin = @"20210560655344404C3E4251444053443E47444B4F44513E4251444053443E4540484B444357";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamAccountStr = [self StringFromNeedData:value];
    }
    return _dreamAccountStr;
}

//: delete
- (NSString *)noti_bubbleTitle {
    if (!_noti_bubbleTitle) {
		NSString *origin = @"065607802C40E90E0F160F1E0F77";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_bubbleTitle = [self StringFromNeedData:value];
    }
    return _noti_bubbleTitle;
}

//: #F7BA00
- (NSString *)m_licenseTitle {
    if (!_m_licenseTitle) {
		NSString *origin = @"071D092599B30E0FF406291A25241313B5";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_licenseTitle = [self StringFromNeedData:value];
    }
    return _m_licenseTitle;
}

//: add_noticess
- (NSString *)mUserAsideTitle {
    if (!_mUserAsideTitle) {
		NSString *origin = @"0C5308CA08CE6B450E11110C1B1C211610122020B1";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mUserAsideTitle = [self StringFromNeedData:value];
    }
    return _mUserAsideTitle;
}

//: #FF483D
- (NSString *)k_chapterText {
    if (!_k_chapterText) {
		NSString *origin = @"070807FBA2C9111B3E3E2C302B3C31";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_chapterText = [self StringFromNeedData:value];
    }
    return _k_chapterText;
}

//: sure_to_clear
- (NSString *)dreamRetRecallName {
    if (!_dreamRetRecallName) {
		NSString *origin = @"0D150A4E8E3103442C9B5E605D504A5F5A4A4E57504C5DD7";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamRetRecallName = [self StringFromNeedData:value];
    }
    return _dreamRetRecallName;
}

//: back_arrow_bl
- (NSString *)showManyMessage {
    if (!_showManyMessage) {
		NSString *origin = @"0D280B1D0BDC0F1EC6B6033A393B4337394A4A474F373A44C6";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showManyMessage = [self StringFromNeedData:value];
    }
    return _showManyMessage;
}

//: creator
- (NSString *)dream_managerChingData {
    if (!_dream_managerChingData) {
		NSString *origin = @"075E0D0E9053DEA3A4829B9E9305140703161114B9";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_managerChingData = [self StringFromNeedData:value];
    }
    return _dream_managerChingData;
}

//: time
- (NSString *)k_recoveryMessage {
    if (!_k_recoveryMessage) {
		NSString *origin = @"043C09587772FCD78D382D31291F";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_recoveryMessage = [self StringFromNeedData:value];
    }
    return _k_recoveryMessage;
}

//: #F6F7FA
- (NSString *)showDignityPath {
    if (!_showDignityPath) {
		NSString *origin = @"07360628A72FED10001001100BF7";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showDignityPath = [self StringFromNeedData:value];
    }
    return _showDignityPath;
}

//: content
- (NSString *)show_nighText {
    if (!_show_nighText) {
		NSString *origin = @"0704047A5F6B6A70616A7090";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_nighText = [self StringFromNeedData:value];
    }
    return _show_nighText;
}

//: team_create_helper_create_success
- (NSString *)userValueData {
    if (!_userValueData) {
		NSString *origin = @"21320342332F3B2D3140332F42332D36333A3E33402D3140332F42332D414331313341417A";
		NSData *data = [NeedData NeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userValueData = [self StringFromNeedData:value];
    }
    return _userValueData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamAnnouncementListViewController.h"
#import "AnnouncementViewController.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCreateTeamAnnouncement.h"
#import "TutorialViewController.h"
//: #import "FFFTeamAnnouncementListCell.h"
#import "SizeNameView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "LEEAlert.h"
#import "TeamModeAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "TitleView.h"

//: @interface FFFTeamAnnouncementListViewController () <UITableViewDelegate,
@interface AnnouncementViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: NTESCreateTeamAnnouncementDelegate>
                                                     MobileGround>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) ArrayAsset *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) TitleView *groupAlartView;

//: @end
@end

//: @implementation FFFTeamAnnouncementListViewController
@implementation AnnouncementViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWithDisplayCenter:(ArrayAsset *)option {
    //: if (self = [super initWithNibName:nil bundle:nil]) {
    if (self = [super initWithNibName:nil bundle:nil]) {
        //: self.option = option;
        self.option = option;
    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[NeedData sharedInstance].showDignityPath];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[NeedData sharedInstance].showManyMessage] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [MatronymicPath colorStreetwise:[NeedData sharedInstance].notiLabName];//群公告
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);
    self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}

//: - (void)setOption:(NIMTeamAnnouncementListOption *)option {
- (void)setOption:(ArrayAsset *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self nearView:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)nearView:(NSString *)content {
    //: if (content) {
    if (content) {
        //: NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        //: _announcements = [NSMutableArray arrayWithArray:datas];
        _announcements = [NSMutableArray arrayWithArray:datas];
    //: } else {
    } else {
        //: _announcements = nil;
        _announcements = nil;
    }
    //: if(_announcements == nil){
    if(_announcements == nil){
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.box.hidden = YES;
        self.box.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: self.box.hidden = NO;
            self.box.hidden = NO;
        }
    }
}

//: - (void)onCreateAnnouncement:(id)sender {
- (void)maxes:(id)sender {
    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    TutorialViewController *vc = [[TutorialViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)alongOffProclamation:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    TutorialViewController *vc = [[TutorialViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:[NeedData sharedInstance].userInfoValue] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:[NeedData sharedInstance].show_nighText] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)questions:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView viewFor:[MatronymicPath colorStreetwise:[NeedData sharedInstance].dreamRetRecallName]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView item];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            // 删除点击事件Block
            //: [self cleanTeamAnnouncement];
            [self assemblage];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationEnableClose];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [TeamModeAlert alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(DisableMessage *action) {
//            
//            action.type = LEEActionTypeCancel;
//            action.title = LangKey(@"contact_tag_fragment_cancel");//@"取消"
//            action.titleColor = [UIColor grayColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                
//                // 取消点击事件Block
//            };
//        })
//        .LeeAddAction(^(DisableMessage *action) {
//            
//            action.type = LEEActionTypeDefault;
//            action.title = LangKey(@"contact_tag_fragment_sure"); //@"确定";
//            action.titleColor = [UIColor redColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                // 删除点击事件Block
//                [wself cleanTeamAnnouncement];
//            };
//        })
//        .LeeHeaderColor([UIColor whiteColor])
//        .LeeShow();
}

//: - (void)cleanTeamAnnouncement
- (void)assemblage
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[MatronymicPath colorStreetwise:[NeedData sharedInstance].m_theologicalViewStr]];// @"清理成功"
            //: wself.announcements = nil;
            wself.announcements = nil;
//            [wself.tableView reloadData];

            //: self.tableView.hidden = YES;
            self.tableView.hidden = YES;
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
            //: self.box.hidden = YES;
            self.box.hidden = YES;
        }
    //: }];
    }];
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _announcements.lastObject ? 1 : 0;
    return _announcements.lastObject ? 1 : 0;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: NSString *content = [announcement objectForKey:@"content"];
    NSString *content = [announcement objectForKey:[NeedData sharedInstance].show_nighText];

    //: return [FFFTeamAnnouncementListCell cellHeight:content];
    return [SizeNameView haphazard:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: FFFTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FFFTeamAnnouncementListCell"];
    SizeNameView *cell = [tableView dequeueReusableCellWithIdentifier:@"SizeNameView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"FFFTeamAnnouncementListCell"];
        cell = [[SizeNameView alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"SizeNameView"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell full:announcement upgrade:_option.nick];
//
//    SizeNameView *cell = [tableView dequeueReusableCellWithIdentifier:@"SizeNameView"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)mustTitle:(NSString *)title timeConstant:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{[NeedData sharedInstance].userInfoValue: title ?: @"",
                                   //: @"content": content ?: @"",
                                   [NeedData sharedInstance].show_nighText: content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [NeedData sharedInstance].dream_managerChingData: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [NeedData sharedInstance].k_recoveryMessage: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(enable:key:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate enable:ret key:^(NSError *error) {
            //: [FFFKitProgressHUD dismiss];
            [EmptyEffectView tag];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[NeedData sharedInstance].userValueData]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself nearView:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[NeedData sharedInstance].dreamAccountStr]];
            }
        //: }];
        }];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.rowHeight = SCREEN_HEIGHT;
        //: [_tableView setTableFooterView:[UIView new]];
        [_tableView setTableFooterView:[UIView new]];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
    }
    //: return _tableView;
    return _tableView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[NeedData sharedInstance].app_textName];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:[NeedData sharedInstance].kRetchMessage];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [MatronymicPath colorStreetwise:[NeedData sharedInstance].notiMorroFormat];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[MatronymicPath colorStreetwise:[NeedData sharedInstance].k_imageKey] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[NeedData sharedInstance].dreamShareMsg] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(maxes:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
            emptyButton.backgroundColor = [UIColor recordView:[NeedData sharedInstance].m_licenseTitle];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton backgroundSpace:(MKButtonEdgeInsetsStyleLeft) at:10];
        }

    }
    //: return _defView;
    return _defView;
}

//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]init];
        _box = [[UIView alloc]init];
//        _box.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
////        [self.view addSubview:_box];
//        _box.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
//        _box.layer.shadowOffset = CGSizeMake(0,0);
//        _box.layer.shadowOpacity = 1;
//        _box.layer.shadowRadius = 12;
        //: _box.hidden = YES;
        _box.hidden = YES;

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 10, width, 44);
        closeBtn.frame = CGRectMake(15, 10, width, 44);
        //: [closeBtn addTarget:self action:@selector(onEditAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(alongOffProclamation:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[NeedData sharedInstance].mUserAsideTitle] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        closeBtn.backgroundColor = [UIColor recordView:[NeedData sharedInstance].m_licenseTitle];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[MatronymicPath colorStreetwise:[NeedData sharedInstance].user_removeMsg] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn backgroundSpace:(MKButtonEdgeInsetsStyleLeft) at:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(questions:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[NeedData sharedInstance].dreamPainfulData] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor recordView:[NeedData sharedInstance].k_chapterText];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[MatronymicPath colorStreetwise:[NeedData sharedInstance].noti_bubbleTitle] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn backgroundSpace:(MKButtonEdgeInsetsStyleLeft) at:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (TitleView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[TitleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation ArrayAsset
//: @end
@end