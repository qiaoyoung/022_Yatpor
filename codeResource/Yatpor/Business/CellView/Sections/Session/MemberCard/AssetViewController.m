
#import <Foundation/Foundation.h>

@interface WorldwideData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WorldwideData

+ (instancetype)sharedInstance {
    static WorldwideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WorldwideDataToCache:(Byte *)data {
    int infoContent = data[0];
    Byte commentOn = data[1];
    int needDrop = data[2];
    for (int i = needDrop; i < needDrop + infoContent; i++) {
        int value = data[i] - commentOn;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[needDrop + infoContent] = 0;
    return data + needDrop;
}

- (NSString *)StringFromWorldwideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WorldwideDataToCache:data]];
}

//: 扩展消息
- (NSString *)app_backLabText {
    /* static */ NSString *app_backLabText = nil;
    if (!app_backLabText) {
        Byte value[] = {12, 53, 6, 229, 129, 71, 27, 190, 222, 26, 230, 202, 27, 235, 189, 27, 182, 228, 39};
        app_backLabText = [self StringFromWorldwideData:value];
    }
    return app_backLabText;
}

//: back_arrow_bl
- (NSString *)mTeamStr {
    /* static */ NSString *mTeamStr = nil;
    if (!mTeamStr) {
        Byte value[] = {13, 71, 6, 62, 91, 173, 169, 168, 170, 178, 166, 168, 185, 185, 182, 190, 166, 169, 179, 229};
        mTeamStr = [self StringFromWorldwideData:value];
    }
    return mTeamStr;
}

//: modify_activity_modify_success
- (NSString *)mainMessageLineData {
    /* static */ NSString *mainMessageLineData = nil;
    if (!mainMessageLineData) {
        Byte value[] = {30, 68, 4, 121, 177, 179, 168, 173, 170, 189, 163, 165, 167, 184, 173, 186, 173, 184, 189, 163, 177, 179, 168, 173, 170, 189, 163, 183, 185, 167, 167, 169, 183, 183, 41};
        mainMessageLineData = [self StringFromWorldwideData:value];
    }
    return mainMessageLineData;
}

//: #F7BA00
- (NSString *)dreamOperationKey {
    /* static */ NSString *dreamOperationKey = nil;
    if (!dreamOperationKey) {
        Byte value[] = {7, 4, 5, 18, 143, 39, 74, 59, 70, 69, 52, 52, 234};
        dreamOperationKey = [self StringFromWorldwideData:value];
    }
    return dreamOperationKey;
}

//: /team/getTeamSetting
- (NSString *)kContainerPath {
    /* static */ NSString *kContainerPath = nil;
    if (!kContainerPath) {
        Byte value[] = {20, 30, 6, 130, 246, 45, 77, 146, 131, 127, 139, 77, 133, 131, 146, 114, 131, 127, 139, 113, 131, 146, 146, 135, 140, 133, 71};
        kContainerPath = [self StringFromWorldwideData:value];
    }
    return kContainerPath;
}

//: data
- (NSString *)kTagPath {
    /* static */ NSString *kTagPath = nil;
    if (!kTagPath) {
        Byte value[] = {4, 69, 6, 185, 111, 207, 169, 166, 185, 166, 167};
        kTagPath = [self StringFromWorldwideData:value];
    }
    return kTagPath;
}

//: group_info_activity_op_failed
- (NSString *)noti_containerStr {
    /* static */ NSString *noti_containerStr = nil;
    if (!noti_containerStr) {
        Byte value[] = {29, 1, 8, 145, 222, 26, 247, 111, 104, 115, 112, 118, 113, 96, 106, 111, 103, 112, 96, 98, 100, 117, 106, 119, 106, 117, 122, 96, 112, 113, 96, 103, 98, 106, 109, 102, 101, 28};
        noti_containerStr = [self StringFromWorldwideData:value];
    }
    return noti_containerStr;
}

//: canAddFriend
- (NSString *)m_imageInfoPath {
    /* static */ NSString *m_imageInfoPath = nil;
    if (!m_imageInfoPath) {
        Byte value[] = {12, 37, 6, 64, 203, 52, 136, 134, 147, 102, 137, 137, 107, 151, 142, 138, 147, 137, 174};
        m_imageInfoPath = [self StringFromWorldwideData:value];
    }
    return m_imageInfoPath;
}

//: postscript
- (NSString *)main_dateFormat {
    /* static */ NSString *main_dateFormat = nil;
    if (!main_dateFormat) {
        Byte value[] = {10, 17, 6, 240, 156, 4, 129, 128, 132, 133, 132, 116, 131, 122, 129, 133, 151};
        main_dateFormat = [self StringFromWorldwideData:value];
    }
    return main_dateFormat;
}

//: ic_group_addmember
- (NSString *)showTouchData {
    /* static */ NSString *showTouchData = nil;
    if (!showTouchData) {
        Byte value[] = {18, 51, 5, 92, 196, 156, 150, 146, 154, 165, 162, 168, 163, 146, 148, 151, 151, 160, 152, 160, 149, 152, 165, 80};
        showTouchData = [self StringFromWorldwideData:value];
    }
    return showTouchData;
}

//: group_member_info_activity_team_creator
- (NSString *)show_sizeTableContent {
    /* static */ NSString *show_sizeTableContent = nil;
    if (!show_sizeTableContent) {
        Byte value[] = {39, 42, 3, 145, 156, 153, 159, 154, 137, 151, 143, 151, 140, 143, 156, 137, 147, 152, 144, 153, 137, 139, 141, 158, 147, 160, 147, 158, 163, 137, 158, 143, 139, 151, 137, 141, 156, 143, 139, 158, 153, 156, 172};
        show_sizeTableContent = [self StringFromWorldwideData:value];
    }
    return show_sizeTableContent;
}

//: 邀请你加入超大群
- (NSString *)main_backgroundKey {
    /* static */ NSString *main_backgroundKey = nil;
    if (!main_backgroundKey) {
        Byte value[] = {24, 64, 9, 150, 12, 128, 82, 9, 230, 41, 194, 192, 40, 239, 247, 36, 253, 224, 37, 202, 224, 37, 197, 229, 40, 246, 197, 37, 228, 231, 39, 254, 228, 229};
        main_backgroundKey = [self StringFromWorldwideData:value];
    }
    return main_backgroundKey;
}

//: group_info_activity_team_member
- (NSString *)noti_modelStr {
    /* static */ NSString *noti_modelStr = nil;
    if (!noti_modelStr) {
        Byte value[] = {31, 46, 11, 121, 135, 25, 173, 209, 65, 194, 130, 149, 160, 157, 163, 158, 141, 151, 156, 148, 157, 141, 143, 145, 162, 151, 164, 151, 162, 167, 141, 162, 147, 143, 155, 141, 155, 147, 155, 144, 147, 160, 224};
        noti_modelStr = [self StringFromWorldwideData:value];
    }
    return noti_modelStr;
}

//: attach
- (NSString *)showModelName {
    /* static */ NSString *showModelName = nil;
    if (!showModelName) {
        Byte value[] = {6, 71, 10, 156, 113, 247, 247, 166, 221, 210, 168, 187, 187, 168, 170, 175, 18};
        showModelName = [self StringFromWorldwideData:value];
    }
    return showModelName;
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)mContentIdent {
    /* static */ NSString *mContentIdent = nil;
    if (!mContentIdent) {
        Byte value[] = {34, 36, 4, 148, 143, 114, 109, 113, 120, 137, 133, 145, 112, 141, 151, 152, 104, 133, 152, 133, 120, 137, 133, 145, 113, 137, 145, 134, 137, 150, 151, 103, 140, 133, 146, 139, 137, 136, 228};
        mContentIdent = [self StringFromWorldwideData:value];
    }
    return mContentIdent;
}

//: 邀请你加入高级群
- (NSString *)app_stateId {
    /* static */ NSString *app_stateId = nil;
    if (!app_stateId) {
        Byte value[] = {24, 38, 8, 63, 183, 235, 204, 114, 15, 168, 166, 14, 213, 221, 10, 227, 198, 11, 176, 198, 11, 171, 203, 15, 209, 190, 13, 224, 205, 13, 228, 202, 113};
        app_stateId = [self StringFromWorldwideData:value];
    }
    return app_stateId;
}

//: code
- (NSString *)noti_imageValue {
    /* static */ NSString *noti_imageValue = nil;
    if (!noti_imageValue) {
        Byte value[] = {4, 85, 6, 123, 204, 17, 184, 196, 185, 186, 238};
        noti_imageValue = [self StringFromWorldwideData:value];
    }
    return noti_imageValue;
}

//: 邀请你加入讨论组
- (NSString *)mainStartMessage {
    /* static */ NSString *mainStartMessage = nil;
    if (!mainStartMessage) {
        Byte value[] = {24, 61, 13, 175, 244, 237, 145, 143, 58, 174, 241, 173, 108, 38, 191, 189, 37, 236, 244, 33, 250, 221, 34, 199, 221, 34, 194, 226, 37, 235, 229, 37, 235, 247, 36, 248, 193, 104};
        mainStartMessage = [self StringFromWorldwideData:value];
    }
    return mainStartMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCTeamMemberListViewController.h"
#import "AssetViewController.h"
//: #import "ContentCardHeaderCell.h"
#import "ModeOriginView.h"
//: #import "ContentTeamCardMemberItem.h"
#import "BarImageEmpty.h"
//: #import "ContentTeamMemberCardViewController.h"
#import "LanguageViewController.h"
//: #import "ContentKitDependency.h"
#import "ContentKitDependency.h"
//: #import "ContentKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "NTESContactDataCell.h"
#import "TingDataCell.h"
//: #import "ContentGroupMemberTableViewCell.h"
#import "BarView.h"
//: #import "ContentContactSelectViewController.h"
#import "TingViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface AssetViewController ()<UITableViewDataSource,UITableViewDelegate,CheckBottom,TeamDelegate>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <HeadingSource> dataSource;
//: @property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
//: @property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, assign) NSInteger totalPageCount;
//: @property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *nextBtn;
//: @property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) UIButton *lastBtn;
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;

//: @property (nonatomic ,copy) NSArray *muteArray;
@property (nonatomic ,copy) NSArray *muteArray;

//: @end
@end

//: @implementation CCCTeamMemberListViewController
@implementation AssetViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (instancetype)initWithDataSource:(ContentTeamListDataManager *)dataSource {
- (instancetype)initWithBubble:(ManagerEnable *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
        //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        NSString *kNIMTeamListDataTeamMembersChanged = [[WorldwideData sharedInstance] mContentIdent];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(circles:) name:kNIMTeamListDataTeamMembersChanged object:nil];
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

//: - (void)rightNavButtonClick{
- (void)searchionWithClick{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        BottomBar *config = [[BottomBar alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
        TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc frame];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self my];
    //: [self loadMuteListData];
    [self storage];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[WorldwideData sharedInstance] kContainerPath]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[WorldwideData sharedInstance] noti_imageValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[WorldwideData sharedInstance] kTagPath]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
    //: }];
    }];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];

//    [_collectionView reloadData];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: - (void)setupUI {
- (void)my {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[WorldwideData sharedInstance] mTeamStr]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [MatronymicPath colorStreetwise:[[WorldwideData sharedInstance] noti_modelStr]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice bearDown]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    submitButton.backgroundColor = [UIColor recordView:[[WorldwideData sharedInstance] dreamOperationKey]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[[WorldwideData sharedInstance] showTouchData]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(searchionWithClick) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

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

//    [self.view addSubview:self.collectionView];

}

//: - (void)loadMuteListData {
- (void)storage {

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    }
}

//更新群成员禁言
//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
- (void)table:(NSString *)uid comment:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];

    //: BOOL ismute = YES;
    BOOL ismute = YES;
    //: for (NIMTeamMember *member in self.muteArray) {
    for (NIMTeamMember *member in self.muteArray) {
        //: if([member.userId isEqualToString:uid]){
        if([member.userId isEqualToString:uid]){
            //: ismute = NO;
            ismute = NO;
        //: }else{
        }else{
            //: ismute = YES;
            ismute = YES;
        }
    }

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (uid) {
        if (uid) {
            //: [users addObject:uid];
            [users addObject:uid];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [self loadMuteListData];
            [self storage];

        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 //: userId:uid
                                                 userId:uid
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [ContentLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [MatronymicPath colorStreetwise:[[WorldwideData sharedInstance] mainMessageLineData]];
            //: }else{
            }else{
                //: msg = [ContentLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [MatronymicPath colorStreetwise:[[WorldwideData sharedInstance] noti_containerStr]];
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self storage];
         //: }];
         }];
    }
}
//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)utmosted:(NSString *)uid
{
    //: [ContentKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager item:@[uid] styleDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ContentKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return _teamListManager.memberIds.count;
    return _teamListManager.memberIds.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: ContentGroupMemberTableViewCell *cell = [ContentGroupMemberTableViewCell cellWithTableView:tableView];
    BarView *cell = [BarView line:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.section];
    NSString *uId = _teamListManager.memberIds[indexPath.section];
    //: ContentKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];
    ViewInfo *usrInfo = [[UserKit totalSend] color:uId image:nil];

    //: [cell reloadWithUserId:uId];
    [cell noticeLanguage:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
    //: cell.subtitleLabel.text = [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    cell.subtitleLabel.text = [MatronymicPath colorStreetwise:[[WorldwideData sharedInstance] show_sizeTableContent]];

    //: BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    //: if(isown){
    if(isown){
        //: cell.subtitleLabel.hidden = NO;
        cell.subtitleLabel.hidden = NO;
    //: }else{
    }else{
        //: cell.subtitleLabel.hidden = YES;
        cell.subtitleLabel.hidden = YES;
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: cell.muteBtn.hidden = NO;
        cell.muteBtn.hidden = NO;
        //: cell.removeBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        //: cell.muteBtn.selected = NO;
        cell.muteBtn.selected = NO;
        //: for (NIMTeamMember *member in self.muteArray) {
        for (NIMTeamMember *member in self.muteArray) {
            //: if([member.userId isEqualToString:uId] && member.isMuted){
            if([member.userId isEqualToString:uId] && member.isMuted){
                //: cell.muteBtn.selected = YES;
                cell.muteBtn.selected = YES;
            }
        }
    //: }else{
    }else{
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if(isown){
    if(isown){
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig to:[[WorldwideData sharedInstance] m_imageInfoPath]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.section];
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    LanguageViewController *vc = [[LanguageViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        BarViewController *vc = [[BarViewController alloc] initWithScale:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)caned:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self towardTeam:selectedContacts stigmatize:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)towardTeam:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            stigmatize:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[WorldwideData sharedInstance] showModelName]] = [[WorldwideData sharedInstance] app_backLabText];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[WorldwideData sharedInstance] main_dateFormat]] = [[WorldwideData sharedInstance] mainStartMessage].resign;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[WorldwideData sharedInstance] main_dateFormat]] = [[WorldwideData sharedInstance] app_stateId].resign;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[WorldwideData sharedInstance] main_dateFormat]] = [[WorldwideData sharedInstance] main_backgroundKey].resign;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [EmptyEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager temp:userIds quantity:info monthDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [EmptyEffectView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)circles:(NSNotification *)note {

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: @end
@end
