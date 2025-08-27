
#import <Foundation/Foundation.h>

@interface RangeData : NSObject

+ (instancetype)sharedInstance;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *user_dotFormat;

//: group_info_activity_without
@property (nonatomic, copy) NSString *app_beginName;

//: ic_tip_r
@property (nonatomic, copy) NSString *kCollectionFormat;

//: #F6F7FA
@property (nonatomic, copy) NSString *show_singleMessage;

//: #FF483D
@property (nonatomic, copy) NSString *m_showTitle;

//: back_arrow_bl
@property (nonatomic, copy) NSString *app_messageUrl;

//: #999999
@property (nonatomic, copy) NSString *mDateMsg;

//: group_chat_avatar_activity_add_black_success
@property (nonatomic, copy) NSString *kLineIdent;

//: friend_delete_fail
@property (nonatomic, copy) NSString *app_stateBubbleData;

//: #FFF6CF
@property (nonatomic, copy) NSString *dream_blueKey;

//: black_list_activity_black_list_tip
@property (nonatomic, copy) NSString *userContainerKey;

//: black_list_activity_black
@property (nonatomic, copy) NSString *user_shareRemoveValue;

//: ic_none_blockList
@property (nonatomic, copy) NSString *showInfoId;

@end

@implementation RangeData

+ (instancetype)sharedInstance {
    static RangeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RangeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)RangeDataToCache:(Byte *)data {
    int queryedDate = data[0];
    Byte teamName = data[1];
    int need = data[2];
    for (int i = need; i < need + queryedDate; i++) {
        int value = data[i] + teamName;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[need + queryedDate] = 0;
    return data + need;
}

- (NSString *)StringFromRangeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RangeDataToCache:data]];
}

//: #999999
- (NSString *)mDateMsg {
    if (!_mDateMsg) {
		NSArray<NSNumber *> *origin = @[@7, @22, @5, @195, @12, @13, @35, @35, @35, @35, @35, @35, @59];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mDateMsg = [self StringFromRangeData:value];
    }
    return _mDateMsg;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)kLineIdent {
    if (!_kLineIdent) {
		NSArray<NSNumber *> *origin = @[@44, @84, @11, @35, @90, @75, @33, @55, @13, @204, @151, @19, @30, @27, @33, @28, @11, @15, @20, @13, @32, @11, @13, @34, @13, @32, @13, @30, @11, @13, @15, @32, @21, @34, @21, @32, @37, @11, @13, @16, @16, @11, @14, @24, @13, @15, @23, @11, @31, @33, @15, @15, @17, @31, @31, @64];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kLineIdent = [self StringFromRangeData:value];
    }
    return _kLineIdent;
}

//: #FF483D
- (NSString *)m_showTitle {
    if (!_m_showTitle) {
		NSArray<NSNumber *> *origin = @[@7, @96, @9, @194, @64, @84, @255, @207, @224, @195, @230, @230, @212, @216, @211, @228, @113];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_showTitle = [self StringFromRangeData:value];
    }
    return _m_showTitle;
}

//: group_info_activity_op_failed
- (NSString *)user_dotFormat {
    if (!_user_dotFormat) {
		NSArray<NSNumber *> *origin = @[@29, @97, @9, @36, @158, @59, @214, @184, @60, @6, @17, @14, @20, @15, @254, @8, @13, @5, @14, @254, @0, @2, @19, @8, @21, @8, @19, @24, @254, @14, @15, @254, @5, @0, @8, @11, @4, @3, @61];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_dotFormat = [self StringFromRangeData:value];
    }
    return _user_dotFormat;
}

//: ic_none_blockList
- (NSString *)showInfoId {
    if (!_showInfoId) {
		NSArray<NSNumber *> *origin = @[@17, @24, @7, @206, @196, @159, @31, @81, @75, @71, @86, @87, @86, @77, @71, @74, @84, @87, @75, @83, @52, @81, @91, @92, @34];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showInfoId = [self StringFromRangeData:value];
    }
    return _showInfoId;
}

//: black_list_activity_black
- (NSString *)user_shareRemoveValue {
    if (!_user_shareRemoveValue) {
		NSArray<NSNumber *> *origin = @[@25, @72, @10, @20, @231, @119, @16, @68, @207, @60, @26, @36, @25, @27, @35, @23, @36, @33, @43, @44, @23, @25, @27, @44, @33, @46, @33, @44, @49, @23, @26, @36, @25, @27, @35, @241];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_shareRemoveValue = [self StringFromRangeData:value];
    }
    return _user_shareRemoveValue;
}

//: black_list_activity_black_list_tip
- (NSString *)userContainerKey {
    if (!_userContainerKey) {
		NSArray<NSNumber *> *origin = @[@34, @53, @12, @12, @199, @132, @104, @222, @61, @237, @246, @49, @45, @55, @44, @46, @54, @42, @55, @52, @62, @63, @42, @44, @46, @63, @52, @65, @52, @63, @68, @42, @45, @55, @44, @46, @54, @42, @55, @52, @62, @63, @42, @63, @52, @59, @172];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userContainerKey = [self StringFromRangeData:value];
    }
    return _userContainerKey;
}

//: group_info_activity_without
- (NSString *)app_beginName {
    if (!_app_beginName) {
		NSArray<NSNumber *> *origin = @[@27, @48, @7, @90, @52, @1, @67, @55, @66, @63, @69, @64, @47, @57, @62, @54, @63, @47, @49, @51, @68, @57, @70, @57, @68, @73, @47, @71, @57, @68, @56, @63, @69, @68, @54];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_beginName = [self StringFromRangeData:value];
    }
    return _app_beginName;
}

//: #F6F7FA
- (NSString *)show_singleMessage {
    if (!_show_singleMessage) {
		NSArray<NSNumber *> *origin = @[@7, @7, @4, @131, @28, @63, @47, @63, @48, @63, @58, @32];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_singleMessage = [self StringFromRangeData:value];
    }
    return _show_singleMessage;
}

//: friend_delete_fail
- (NSString *)app_stateBubbleData {
    if (!_app_stateBubbleData) {
		NSArray<NSNumber *> *origin = @[@18, @96, @4, @80, @6, @18, @9, @5, @14, @4, @255, @4, @5, @12, @5, @20, @5, @255, @6, @1, @9, @12, @154];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_stateBubbleData = [self StringFromRangeData:value];
    }
    return _app_stateBubbleData;
}

//: #FFF6CF
- (NSString *)dream_blueKey {
    if (!_dream_blueKey) {
		NSArray<NSNumber *> *origin = @[@7, @97, @13, @182, @72, @73, @178, @55, @91, @38, @129, @7, @33, @194, @229, @229, @229, @213, @226, @229, @255];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_blueKey = [self StringFromRangeData:value];
    }
    return _dream_blueKey;
}

//: ic_tip_r
- (NSString *)kCollectionFormat {
    if (!_kCollectionFormat) {
		NSArray<NSNumber *> *origin = @[@8, @73, @10, @3, @150, @254, @222, @177, @157, @247, @32, @26, @22, @43, @32, @39, @22, @41, @94];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kCollectionFormat = [self StringFromRangeData:value];
    }
    return _kCollectionFormat;
}

//: back_arrow_bl
- (NSString *)app_messageUrl {
    if (!_app_messageUrl) {
		NSArray<NSNumber *> *origin = @[@13, @65, @6, @151, @187, @102, @33, @32, @34, @42, @30, @32, @49, @49, @46, @54, @30, @33, @43, @99];
		NSData *data = [RangeData RangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_messageUrl = [self StringFromRangeData:value];
    }
    return _app_messageUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "TextViewCell.h"
//#import "CropBarView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "MenuViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "FFFContactSelectViewController.h"
#import "TingViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "NTESContactDataMember.h"
#import "EmptyOption.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "ToolViewCell.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESUserListCellDelegate>
@interface MenuViewController ()<UITableViewDataSource,UITableViewDelegate,CheckBottom,NameCompartmentMenu>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//@property (nonatomic,strong) CropBarView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation MenuViewController

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
    self.view.backgroundColor = [UIColor recordView:[RangeData sharedInstance].show_singleMessage];
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
    [backButton setImage:[UIImage imageNamed:[RangeData sharedInstance].app_messageUrl] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [MatronymicPath colorStreetwise:[RangeData sharedInstance].user_shareRemoveValue];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTheView];
    [self publicHouseView];
}

//: - (void)loadTheView
- (void)publicHouseView
{
    //: self.data = self.myBlackListUser;
    self.data = self.toUser;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }else{
    }else{
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
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
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ToolViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[ToolViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.section];
    EmptyOption *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell current:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    EmptyOption *member = self.data[indexPath.section];

    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    BarViewController *vc = [[BarViewController alloc] initWithScale:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)replies:(EmptyOption *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[MatronymicPath colorStreetwise:[RangeData sharedInstance].app_stateBubbleData] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)enable:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (EmptyOption *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    BottomBar *config = [[BottomBar alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc frame];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)caned:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[RangeData sharedInstance].kLineIdent] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.toUser;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[RangeData sharedInstance].user_dotFormat] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)withSubviews
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)toUser{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        EmptyOption *member = [[EmptyOption alloc] init];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        ViewInfo *info = [[UserKit totalSend] color:user.userId image:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor recordView:[RangeData sharedInstance].dream_blueKey];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[RangeData sharedInstance].kCollectionFormat];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor recordView:[RangeData sharedInstance].m_showTitle];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [MatronymicPath colorStreetwise:[RangeData sharedInstance].userContainerKey];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[RangeData sharedInstance].showInfoId];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:[RangeData sharedInstance].mDateMsg];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MatronymicPath colorStreetwise:[RangeData sharedInstance].app_beginName];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end