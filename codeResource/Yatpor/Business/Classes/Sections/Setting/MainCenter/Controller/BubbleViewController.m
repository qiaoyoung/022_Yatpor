
#import <Foundation/Foundation.h>

@interface IgnoreData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation IgnoreData

+ (instancetype)sharedInstance {
    static IgnoreData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)IgnoreDataToCache:(Byte *)data {
    int soapBubble = data[0];
    int keyName = data[1];
    for (int i = 0; i < soapBubble / 2; i++) {
        int begin = keyName + i;
        int end = keyName + soapBubble - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[keyName + soapBubble] = 0;
    return data + keyName;
}

- (NSString *)StringFromIgnoreData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self IgnoreDataToCache:data]];
}  

//: black_list_activity_black
- (NSString *)k_normalMessage {
    /* static */ NSString *k_normalMessage = nil;
    if (!k_normalMessage) {
        Byte value[] = {25, 5, 194, 97, 181, 107, 99, 97, 108, 98, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 58};
        k_normalMessage = [self StringFromIgnoreData:value];
    }
    return k_normalMessage;
}

//: safe_changepsd
- (NSString *)dream_imageId {
    /* static */ NSString *dream_imageId = nil;
    if (!dream_imageId) {
        Byte value[] = {14, 10, 112, 25, 162, 126, 47, 217, 79, 105, 100, 115, 112, 101, 103, 110, 97, 104, 99, 95, 101, 102, 97, 115, 110};
        dream_imageId = [self StringFromIgnoreData:value];
    }
    return dream_imageId;
}

//: hant
- (NSString *)m_showId {
    /* static */ NSString *m_showId = nil;
    if (!m_showId) {
        Byte value[] = {4, 9, 132, 43, 13, 96, 212, 29, 114, 116, 110, 97, 104, 2};
        m_showId = [self StringFromIgnoreData:value];
    }
    return m_showId;
}

//: AccountDeletion_hant.html
- (NSString *)noti_backgroundStr {
    /* static */ NSString *noti_backgroundStr = nil;
    if (!noti_backgroundStr) {
        Byte value[] = {25, 10, 80, 230, 213, 199, 27, 108, 200, 10, 108, 109, 116, 104, 46, 116, 110, 97, 104, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 166};
        noti_backgroundStr = [self StringFromIgnoreData:value];
    }
    return noti_backgroundStr;
}

//: safe_blacklist
- (NSString *)mWindowValue {
    /* static */ NSString *mWindowValue = nil;
    if (!mWindowValue) {
        Byte value[] = {14, 3, 46, 116, 115, 105, 108, 107, 99, 97, 108, 98, 95, 101, 102, 97, 115, 7};
        mWindowValue = [self StringFromIgnoreData:value];
    }
    return mWindowValue;
}

//: #F6F7FA
- (NSString *)userWindowStr {
    /* static */ NSString *userWindowStr = nil;
    if (!userWindowStr) {
        Byte value[] = {7, 2, 65, 70, 55, 70, 54, 70, 35, 235};
        userWindowStr = [self StringFromIgnoreData:value];
    }
    return userWindowStr;
}

//: safe_accountdelete
- (NSString *)app_containerData {
    /* static */ NSString *app_containerData = nil;
    if (!app_containerData) {
        Byte value[] = {18, 4, 197, 218, 101, 116, 101, 108, 101, 100, 116, 110, 117, 111, 99, 99, 97, 95, 101, 102, 97, 115, 1};
        app_containerData = [self StringFromIgnoreData:value];
    }
    return app_containerData;
}

//: AccountDeletion_ko.html
- (NSString *)show_searchMsg {
    /* static */ NSString *show_searchMsg = nil;
    if (!show_searchMsg) {
        Byte value[] = {23, 6, 71, 246, 82, 114, 108, 109, 116, 104, 46, 111, 107, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 44};
        show_searchMsg = [self StringFromIgnoreData:value];
    }
    return show_searchMsg;
}

//: PrivacyPolicy.html
- (NSString *)mainDismissStr {
    /* static */ NSString *mainDismissStr = nil;
    if (!mainDismissStr) {
        Byte value[] = {18, 3, 130, 108, 109, 116, 104, 46, 121, 99, 105, 108, 111, 80, 121, 99, 97, 118, 105, 114, 80, 90};
        mainDismissStr = [self StringFromIgnoreData:value];
    }
    return mainDismissStr;
}

//: activity_comment_setting_cancel_account
- (NSString *)kFrameViewFormat {
    /* static */ NSString *kFrameViewFormat = nil;
    if (!kFrameViewFormat) {
        Byte value[] = {39, 6, 77, 242, 130, 54, 116, 110, 117, 111, 99, 99, 97, 95, 108, 101, 99, 110, 97, 99, 95, 103, 110, 105, 116, 116, 101, 115, 95, 116, 110, 101, 109, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 197};
        kFrameViewFormat = [self StringFromIgnoreData:value];
    }
    return kFrameViewFormat;
}

//: AccountDeletion_ja.html
- (NSString *)user_collectionValue {
    /* static */ NSString *user_collectionValue = nil;
    if (!user_collectionValue) {
        Byte value[] = {23, 9, 33, 164, 57, 65, 156, 118, 7, 108, 109, 116, 104, 46, 97, 106, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 58};
        user_collectionValue = [self StringFromIgnoreData:value];
    }
    return user_collectionValue;
}

//: AccountDeletion_en.html
- (NSString *)notiKitMsg {
    /* static */ NSString *notiKitMsg = nil;
    if (!notiKitMsg) {
        Byte value[] = {23, 7, 22, 134, 73, 252, 199, 108, 109, 116, 104, 46, 110, 101, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 16};
        notiKitMsg = [self StringFromIgnoreData:value];
    }
    return notiKitMsg;
}

//: deactivate_account
- (NSString *)k_accountLineName {
    /* static */ NSString *k_accountLineName = nil;
    if (!k_accountLineName) {
        Byte value[] = {18, 3, 59, 116, 110, 117, 111, 99, 99, 97, 95, 101, 116, 97, 118, 105, 116, 99, 97, 101, 100, 144};
        k_accountLineName = [self StringFromIgnoreData:value];
    }
    return k_accountLineName;
}

//: modify_activity_title
- (NSString *)user_backgroundName {
    /* static */ NSString *user_backgroundName = nil;
    if (!user_backgroundName) {
        Byte value[] = {21, 4, 225, 181, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 107};
        user_backgroundName = [self StringFromIgnoreData:value];
    }
    return user_backgroundName;
}

//: safe_setting_activity_title
- (NSString *)k_teamBackText {
    /* static */ NSString *k_teamBackText = nil;
    if (!k_teamBackText) {
        Byte value[] = {27, 8, 214, 128, 119, 23, 206, 9, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 110, 105, 116, 116, 101, 115, 95, 101, 102, 97, 115, 230};
        k_teamBackText = [self StringFromIgnoreData:value];
    }
    return k_teamBackText;
}

//: NotificationLogout
- (NSString *)kFlushBackIdent {
    /* static */ NSString *kFlushBackIdent = nil;
    if (!kFlushBackIdent) {
        Byte value[] = {18, 9, 193, 87, 31, 247, 119, 38, 187, 116, 117, 111, 103, 111, 76, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 233};
        kFlushBackIdent = [self StringFromIgnoreData:value];
    }
    return kFlushBackIdent;
}

//: back_arrow_bl
- (NSString *)kViewUserData {
    /* static */ NSString *kViewUserData = nil;
    if (!kViewUserData) {
        Byte value[] = {13, 7, 239, 224, 190, 141, 250, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 134};
        kViewUserData = [self StringFromIgnoreData:value];
    }
    return kViewUserData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "BubbleViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "ArrayView.h"
//: #import "NTESChangePasswordController.h"
#import "SizeViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "ContentViewCell.h"
//: #import "LEEAlert.h"
#import "TeamModeAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "MenuViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "QuickDismissView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "ToBiographyView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "TeamNameView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "SightView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "SuccessView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "BrushAsideViewController.h"
//: #import "DeleteAccountTipView.h"
#import "BeakView.h"
//: #import "SSZipArchiveManager.h"
#import "EqualArchiveManager.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface BubbleViewController ()<UITableViewDataSource,UITableViewDelegate,DateTool,AccountTeam,SightTipdelegate>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) QuickDismissView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) ToBiographyView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) TeamNameView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) SightView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) SuccessView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) BeakView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation BubbleViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
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
    self.view.backgroundColor = [UIColor recordView:[[IgnoreData sharedInstance] userWindowStr]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[IgnoreData sharedInstance] kViewUserData]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] k_teamBackText]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initOrigin];
}

//: - (void)initTableView{
- (void)initOrigin{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;


}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 16.f;
    return 16.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSafetyTableViewCell *cell = [NTESSafetyTableViewCell cellWithTableView:tableView];
    ContentViewCell *cell = [ContentViewCell name:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:[[IgnoreData sharedInstance] mWindowValue]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] k_normalMessage]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:[[IgnoreData sharedInstance] dream_imageId]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] user_backgroundName]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 2){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_accountDeactivate"];
//        cell.titleLabel.text = LangKey(@"deactivate_account");
//        cell.labSubtitle.hidden = YES;
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_accountdelete"];
        cell.iconImageView.image = [UIImage imageNamed:[[IgnoreData sharedInstance] app_containerData]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] kFrameViewFormat]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 4){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_email"];
//        cell.titleLabel.text = LangKey(@"user_profile_avtivity_email");
//        cell.labSubtitle.hidden = NO;
//        cell.labSubtitle.text = self.bindEmail;
//    }

    //: return cell;
    return cell;


}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self survival];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self mode];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self numericalQuantity];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)completeManager
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView smart:[MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] k_accountLineName]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView disableNameShow];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
//        [self.deactivateNextView animationClose];
//        [self.view addSubview:self.deactivateSuccessView];
//        [self.deactivateSuccessView reloadWithNickname:LangKey(@"deactivated_success")];
//        [self.deactivateSuccessView animationShow];

    //: };
    };
}

//: - (void)didTouchDeleteSureButton
- (void)untilMedia
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView smart:[MatronymicPath colorStreetwise:[[IgnoreData sharedInstance] kFrameViewFormat]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView disableNameShow];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView animationEnableClose];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [TroublingName sign:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:[[IgnoreData sharedInstance] kFlushBackIdent] object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)fullImage
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    BrushAsideViewController *vc = [[BrushAsideViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[EqualArchiveManager message] key] stringByAppendingPathComponent:[NSString stringWithFormat:[[IgnoreData sharedInstance] mainDismissStr]]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)brushCellShirtButton
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView message];
}
//: - (void)didTouchDeleteProtocolButton
- (void)asName
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    BrushAsideViewController *vc = [[BrushAsideViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = leftEvent([NameDefaults argument].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = [[IgnoreData sharedInstance] notiKitMsg];
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = [[IgnoreData sharedInstance] user_collectionValue];
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = [[IgnoreData sharedInstance] show_searchMsg];
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:[[IgnoreData sharedInstance] m_showId]]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = [[IgnoreData sharedInstance] noti_backgroundStr];
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = [[IgnoreData sharedInstance] notiKitMsg];
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[EqualArchiveManager message] key] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)blacklist {
- (void)survival {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    MenuViewController *vc = [[MenuViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)mode {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    SizeViewController *vc = [[SizeViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)bindPhoneVC {
//    KEKEBindPhoneViewController *vc = [[KEKEBindPhoneViewController alloc] init];
//    vc.bindPhone = self.bindPhone;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)bindEmailVC {
//    KEKEBindEmailViewController *vc = [[KEKEBindEmailViewController alloc] init];
//    vc.bindEmail = self.bindEmail;
//    [self.navigationController pushViewController:vc animated:YES];
//}

//: - (void)deactivateAccount {
- (void)dateImage {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView can];

}


//: - (void)cancelaccount {
- (void)numericalQuantity {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView containerMax];

}


//-(void)changePassWord{
//    SizeViewController *vc = [[SizeViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    NTESChangeQuestionViewController *vc = [[NTESChangeQuestionViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//-(void)findPayPassWord{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"contact_customer_service") preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:LangKey(@"got_it") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alert addAction:alertA];
//    [self.navigationController presentViewController:alert animated:YES completion:nil];
//}
//
//-(void)changePayPassword{
//
//    NTESVerifyPayPasswordController *vc = [[NTESVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        NTESChangePayPasswordController *vc = [[NTESChangePayPasswordController alloc] initWithType:NTESPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (QuickDismissView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[QuickDismissView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (ToBiographyView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[ToBiographyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (SightView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[SightView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (SuccessView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[SuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (TeamNameView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[TeamNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (BeakView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[BeakView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}

//: @end
@end