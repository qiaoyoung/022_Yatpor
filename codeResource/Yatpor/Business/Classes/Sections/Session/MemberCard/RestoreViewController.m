
#import <Foundation/Foundation.h>

@interface WireData : NSObject

+ (instancetype)sharedInstance;

//: postscript
@property (nonatomic, copy) NSString *mainEnableData;

//: ic_group_addmember
@property (nonatomic, copy) NSString *userImageStateShareText;

//: 扩展消息
@property (nonatomic, copy) NSString *notiSingleName;

//: canAddFriend
@property (nonatomic, copy) NSString *showRemoteStr;

//: code
@property (nonatomic, copy) NSString *main_dotEnableMessage;

//: 5D5F66
@property (nonatomic, copy) NSString *noti_beginOnKey;

//: #F7BA00
@property (nonatomic, copy) NSString *mainKitTitle;

//: group_info_activity_team_member
@property (nonatomic, copy) NSString *m_textValue;

//: #F6F6F6
@property (nonatomic, copy) NSString *app_lineStr;

//: 邀请你加入高级群
@property (nonatomic, copy) NSString *noti_contentIdent;

//: /team/getTeamSetting
@property (nonatomic, copy) NSString *mEndRedMessage;

//: #000000
@property (nonatomic, copy) NSString *mTeamTitle;

//: back_arrow_bl
@property (nonatomic, copy) NSString *k_barMessage;

//: head_default
@property (nonatomic, copy) NSString *userWithData;

//: 邀请你加入讨论组
@property (nonatomic, copy) NSString *dream_startName;

//: 邀请你加入超大群
@property (nonatomic, copy) NSString *m_blueKey;

//: kNIMTeamListDataTeamMembersChanged
@property (nonatomic, copy) NSString *k_operationMessage;

//: group_member_info_activity_team_creator
@property (nonatomic, copy) NSString *mTextIdent;

//: attach
@property (nonatomic, copy) NSString *mKeyIdent;

//: data
@property (nonatomic, copy) NSString *app_ofText;

@end

@implementation WireData

+ (instancetype)sharedInstance {
    static WireData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WireDataToCache:(Byte *)data {
    int imageWindow = data[0];
    Byte singleContent = data[1];
    int ofDismissDoing = data[2];
    for (int i = ofDismissDoing; i < ofDismissDoing + imageWindow; i++) {
        int value = data[i] - singleContent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ofDismissDoing + imageWindow] = 0;
    return data + ofDismissDoing;
}

- (NSString *)StringFromWireData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WireDataToCache:data]];
}

//: group_member_info_activity_team_creator
- (NSString *)mTextIdent {
    if (!_mTextIdent) {
        Byte value[] = {39, 94, 9, 147, 6, 30, 63, 40, 103, 197, 208, 205, 211, 206, 189, 203, 195, 203, 192, 195, 208, 189, 199, 204, 196, 205, 189, 191, 193, 210, 199, 212, 199, 210, 215, 189, 210, 195, 191, 203, 189, 193, 208, 195, 191, 210, 205, 208, 237};
        _mTextIdent = [self StringFromWireData:value];
    }
    return _mTextIdent;
}

//: canAddFriend
- (NSString *)showRemoteStr {
    if (!_showRemoteStr) {
        Byte value[] = {12, 46, 8, 212, 56, 231, 250, 38, 145, 143, 156, 111, 146, 146, 116, 160, 151, 147, 156, 146, 80};
        _showRemoteStr = [self StringFromWireData:value];
    }
    return _showRemoteStr;
}

//: attach
- (NSString *)mKeyIdent {
    if (!_mKeyIdent) {
        Byte value[] = {6, 19, 5, 22, 129, 116, 135, 135, 116, 118, 123, 60};
        _mKeyIdent = [self StringFromWireData:value];
    }
    return _mKeyIdent;
}

//: ic_group_addmember
- (NSString *)userImageStateShareText {
    if (!_userImageStateShareText) {
        Byte value[] = {18, 29, 9, 187, 118, 203, 64, 131, 98, 134, 128, 124, 132, 143, 140, 146, 141, 124, 126, 129, 129, 138, 130, 138, 127, 130, 143, 78};
        _userImageStateShareText = [self StringFromWireData:value];
    }
    return _userImageStateShareText;
}

//: 邀请你加入高级群
- (NSString *)noti_contentIdent {
    if (!_noti_contentIdent) {
        Byte value[] = {24, 54, 3, 31, 184, 182, 30, 229, 237, 26, 243, 214, 27, 192, 214, 27, 187, 219, 31, 225, 206, 29, 240, 221, 29, 244, 218, 15};
        _noti_contentIdent = [self StringFromWireData:value];
    }
    return _noti_contentIdent;
}

//: 邀请你加入讨论组
- (NSString *)dream_startName {
    if (!_dream_startName) {
        Byte value[] = {24, 68, 4, 82, 45, 198, 196, 44, 243, 251, 40, 1, 228, 41, 206, 228, 41, 201, 233, 44, 242, 236, 44, 242, 254, 43, 255, 200, 56};
        _dream_startName = [self StringFromWireData:value];
    }
    return _dream_startName;
}

//: #000000
- (NSString *)mTeamTitle {
    if (!_mTeamTitle) {
        Byte value[] = {7, 70, 8, 181, 12, 55, 241, 86, 105, 118, 118, 118, 118, 118, 118, 244};
        _mTeamTitle = [self StringFromWireData:value];
    }
    return _mTeamTitle;
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)k_operationMessage {
    if (!_k_operationMessage) {
        Byte value[] = {34, 12, 5, 93, 183, 119, 90, 85, 89, 96, 113, 109, 121, 88, 117, 127, 128, 80, 109, 128, 109, 96, 113, 109, 121, 89, 113, 121, 110, 113, 126, 127, 79, 116, 109, 122, 115, 113, 112, 200};
        _k_operationMessage = [self StringFromWireData:value];
    }
    return _k_operationMessage;
}

//: 5D5F66
- (NSString *)noti_beginOnKey {
    if (!_noti_beginOnKey) {
        Byte value[] = {6, 86, 9, 45, 210, 234, 12, 130, 232, 139, 154, 139, 156, 140, 140, 213};
        _noti_beginOnKey = [self StringFromWireData:value];
    }
    return _noti_beginOnKey;
}

//: #F7BA00
- (NSString *)mainKitTitle {
    if (!_mainKitTitle) {
        Byte value[] = {7, 49, 4, 56, 84, 119, 104, 115, 114, 97, 97, 20};
        _mainKitTitle = [self StringFromWireData:value];
    }
    return _mainKitTitle;
}

//: back_arrow_bl
- (NSString *)k_barMessage {
    if (!_k_barMessage) {
        Byte value[] = {13, 27, 9, 67, 128, 17, 124, 50, 180, 125, 124, 126, 134, 122, 124, 141, 141, 138, 146, 122, 125, 135, 243};
        _k_barMessage = [self StringFromWireData:value];
    }
    return _k_barMessage;
}

//: postscript
- (NSString *)mainEnableData {
    if (!_mainEnableData) {
        Byte value[] = {10, 46, 6, 147, 48, 106, 158, 157, 161, 162, 161, 145, 160, 151, 158, 162, 169};
        _mainEnableData = [self StringFromWireData:value];
    }
    return _mainEnableData;
}

//: 邀请你加入超大群
- (NSString *)m_blueKey {
    if (!_m_blueKey) {
        Byte value[] = {24, 49, 11, 155, 117, 225, 193, 149, 171, 176, 99, 26, 179, 177, 25, 224, 232, 21, 238, 209, 22, 187, 209, 22, 182, 214, 25, 231, 182, 22, 213, 216, 24, 239, 213, 1};
        _m_blueKey = [self StringFromWireData:value];
    }
    return _m_blueKey;
}

//: group_info_activity_team_member
- (NSString *)m_textValue {
    if (!_m_textValue) {
        Byte value[] = {31, 31, 3, 134, 145, 142, 148, 143, 126, 136, 141, 133, 142, 126, 128, 130, 147, 136, 149, 136, 147, 152, 126, 147, 132, 128, 140, 126, 140, 132, 140, 129, 132, 145, 47};
        _m_textValue = [self StringFromWireData:value];
    }
    return _m_textValue;
}

//: code
- (NSString *)main_dotEnableMessage {
    if (!_main_dotEnableMessage) {
        Byte value[] = {4, 22, 9, 200, 228, 174, 93, 16, 255, 121, 133, 122, 123, 167};
        _main_dotEnableMessage = [self StringFromWireData:value];
    }
    return _main_dotEnableMessage;
}

//: data
- (NSString *)app_ofText {
    if (!_app_ofText) {
        Byte value[] = {4, 14, 3, 114, 111, 130, 111, 161};
        _app_ofText = [self StringFromWireData:value];
    }
    return _app_ofText;
}

//: /team/getTeamSetting
- (NSString *)mEndRedMessage {
    if (!_mEndRedMessage) {
        Byte value[] = {20, 24, 6, 35, 81, 71, 71, 140, 125, 121, 133, 71, 127, 125, 140, 108, 125, 121, 133, 107, 125, 140, 140, 129, 134, 127, 59};
        _mEndRedMessage = [self StringFromWireData:value];
    }
    return _mEndRedMessage;
}

//: #F6F6F6
- (NSString *)app_lineStr {
    if (!_app_lineStr) {
        Byte value[] = {7, 74, 3, 109, 144, 128, 144, 128, 144, 128, 158};
        _app_lineStr = [self StringFromWireData:value];
    }
    return _app_lineStr;
}

//: 扩展消息
- (NSString *)notiSingleName {
    if (!_notiSingleName) {
        Byte value[] = {12, 15, 3, 245, 152, 184, 244, 192, 164, 245, 197, 151, 245, 144, 190, 227};
        _notiSingleName = [self StringFromWireData:value];
    }
    return _notiSingleName;
}

//: head_default
- (NSString *)userWithData {
    if (!_userWithData) {
        Byte value[] = {12, 83, 4, 91, 187, 184, 180, 183, 178, 183, 184, 185, 180, 200, 191, 199, 48};
        _userWithData = [self StringFromWireData:value];
    }
    return _userWithData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RestoreViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalViewController.h"
#import "RestoreViewController.h"
//: #import "ContentContactSelectViewController.h"
#import "TingViewController.h"
//: #import "ContentCardHeaderCell.h"
#import "ModeOriginView.h"
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "SessionViewCell.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "ContentTeamMemberCardViewController.h"
#import "LanguageViewController.h"

//: @interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>
@interface RestoreViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,CheckBottom>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NSMutableArray *memberList;
//: @property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic, strong) NIMTeamMember *owerInfo;
//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @end
@end

//: @implementation TeamMemberNormalViewController
@implementation RestoreViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self info];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self forward];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[WireData sharedInstance].mEndRedMessage] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[WireData sharedInstance].main_dotEnableMessage];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[WireData sharedInstance].app_ofText];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
    //: }];
    }];


    //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    NSString *kNIMTeamListDataTeamMembersChanged = [WireData sharedInstance].k_operationMessage;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(circles:) name:kNIMTeamListDataTeamMembersChanged object:nil];
}
//: - (void)setupUI {
- (void)forward {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[WireData sharedInstance].k_barMessage] forState:(UIControlStateNormal)];
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
    labtitle.text = [MatronymicPath colorStreetwise:[WireData sharedInstance].m_textValue];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice bearDown]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    submitButton.backgroundColor = [UIColor recordView:[WireData sharedInstance].mainKitTitle];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[WireData sharedInstance].userImageStateShareText] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(searchionWithClick) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: owerView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    owerView.backgroundColor = [UIColor recordView:[WireData sharedInstance].app_lineStr];
    //: owerView.layer.masksToBounds = YES;
    owerView.layer.masksToBounds = YES;
    //: owerView.layer.cornerRadius = 16;
    owerView.layer.cornerRadius = 16;
    //: [self.view addSubview:owerView];
    [self.view addSubview:owerView];
    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [owerView addSubview:_roleImageView];
    [owerView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor recordView:[WireData sharedInstance].mTeamTitle];
    //: [owerView addSubview:_titleLabel];
    [owerView addSubview:_titleLabel];

    //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    subtitleLabel.textColor = [UIColor recordView:[WireData sharedInstance].noti_beginOnKey];
    //: subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: subtitleLabel.text = [ContentLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    subtitleLabel.text = [MatronymicPath colorStreetwise:[WireData sharedInstance].mTextIdent];
    //: [owerView addSubview:subtitleLabel];
    [owerView addSubview:subtitleLabel];

    // 设置 UICollectionView 的布局
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.itemSize = CGSizeMake(width, 70); 
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    //: layout.minimumInteritemSpacing = 0; 
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    //: layout.minimumLineSpacing = 5; 
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    //: layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); 
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距

    // 初始化 UICollectionView 并设置布局
    //: self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-90) collectionViewLayout:layout];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-90) collectionViewLayout:layout];
    //: self.collectionView.delegate = self; 
    self.collectionView.delegate = self; // 设置代理
    //: self.collectionView.dataSource = self; 
    self.collectionView.dataSource = self; // 设置数据源
    //: self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    //: self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //: [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    [self.collectionView registerClass:[SessionViewCell class] forCellWithReuseIdentifier:@"SessionViewCell"];
    //: self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];

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

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)caned:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self saveMessage:selectedContacts sizeBlockT:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)saveMessage:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            sizeBlockT:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[WireData sharedInstance].mKeyIdent] = [WireData sharedInstance].notiSingleName;
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[WireData sharedInstance].mainEnableData] = [WireData sharedInstance].dream_startName.resign;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[WireData sharedInstance].mainEnableData] = [WireData sharedInstance].noti_contentIdent.resign;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[WireData sharedInstance].mainEnableData] = [WireData sharedInstance].m_blueKey.resign;
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


//: - (void)teamMemberUpdate:(NSNotification *)note
- (void)circles:(NSNotification *)note
{
    //: [self loadTeamManageList];
    [self info];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)loadTeamManageList
- (void)info
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: for (NIMTeamMember *member in members) {
            for (NIMTeamMember *member in members) {
                //: if (member.type == NIMTeamMemberTypeNormal) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    //: [self.memberList addObject:member];
                    [self.memberList addObject:member];

                //: }else if (member.type == NIMTeamMemberTypeOwner){
                }else if (member.type == NIMTeamMemberTypeOwner){
                    //: self.owerInfo = member;
                    self.owerInfo = member;

                    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    ViewInfo *info = [[UserKit totalSend] color:member.userId image:nil];
                    //: self.titleLabel.text = info.showName;
                    self.titleLabel.text = info.showName;
                    //: [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[WireData sharedInstance].userWithData]];
                }
            }
            //: [self.collectionView reloadData];
            [self.collectionView reloadData];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}
//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}

// 返回每个 section 中的 item 数量
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.memberList.count;
    return self.memberList.count;
}

// 配置每个 item 的 cell
//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    SessionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SessionViewCell" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#fffContent");

    //: NIMTeamMember *member = self.memberList[indexPath.row];
    NIMTeamMember *member = self.memberList[indexPath.row];
    //: [cell refreshWithModel:member];
    [cell tingRecord:member];


    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: NSLog(@"Item at index %ld selected", indexPath.row);

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig to:[WireData sharedInstance].showRemoteStr];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {

        //: NIMTeamMember *member = self.memberList[indexPath.row];
        NIMTeamMember *member = self.memberList[indexPath.row];
//        LanguageViewController *vc = [[LanguageViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.userId];
        BarViewController *vc = [[BarViewController alloc] initWithScale:member.userId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



//: @end
@end
