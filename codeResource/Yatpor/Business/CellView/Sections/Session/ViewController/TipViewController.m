
#import <Foundation/Foundation.h>

@interface CommentFlushData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CommentFlushData

+ (instancetype)sharedInstance {
    static CommentFlushData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CommentFlushDataToCache:(Byte *)data {
    int infoSingleButton = data[0];
    Byte usNigh = data[1];
    int stateOperation = data[2];
    for (int i = stateOperation; i < stateOperation + infoSingleButton; i++) {
        int value = data[i] - usNigh;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[stateOperation + infoSingleButton] = 0;
    return data + stateOperation;
}

- (NSString *)StringFromCommentFlushData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CommentFlushDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)k_tingFormat {
    /* static */ NSString *k_tingFormat = nil;
    if (!k_tingFormat) {
        Byte value[] = {13, 67, 8, 45, 87, 171, 119, 137, 165, 164, 166, 174, 162, 164, 181, 181, 178, 186, 162, 165, 175, 5};
        k_tingFormat = [self StringFromCommentFlushData:value];
    }
    return k_tingFormat;
}

//: 已发送
- (NSString *)showBackgroundMsg {
    /* static */ NSString *showBackgroundMsg = nil;
    if (!showBackgroundMsg) {
        Byte value[] = {9, 19, 12, 50, 221, 56, 151, 48, 103, 30, 81, 168, 248, 202, 197, 248, 162, 164, 252, 147, 148, 29};
        showBackgroundMsg = [self StringFromCommentFlushData:value];
    }
    return showBackgroundMsg;
}

//: contact_fragment_friend
- (NSString *)app_showTitle {
    /* static */ NSString *app_showTitle = nil;
    if (!app_showTitle) {
        Byte value[] = {23, 10, 4, 250, 109, 121, 120, 126, 107, 109, 126, 105, 112, 124, 107, 113, 119, 111, 120, 126, 105, 112, 124, 115, 111, 120, 110, 191};
        app_showTitle = [self StringFromCommentFlushData:value];
    }
    return app_showTitle;
}

//: #F6F6F6
- (NSString *)showUpText {
    /* static */ NSString *showUpText = nil;
    if (!showUpText) {
        Byte value[] = {7, 64, 10, 248, 104, 106, 233, 144, 67, 5, 99, 134, 118, 134, 118, 134, 118, 117};
        showUpText = [self StringFromCommentFlushData:value];
    }
    return showUpText;
}

//: #5D5F66
- (NSString *)mTitleMsg {
    /* static */ NSString *mTitleMsg = nil;
    if (!mTitleMsg) {
        Byte value[] = {7, 98, 7, 139, 181, 199, 245, 133, 151, 166, 151, 168, 152, 152, 96};
        mTitleMsg = [self StringFromCommentFlushData:value];
    }
    return mTitleMsg;
}

//: #EEEEEE
- (NSString *)notiFortyStereoUrl {
    /* static */ NSString *notiFortyStereoUrl = nil;
    if (!notiFortyStereoUrl) {
        Byte value[] = {7, 19, 8, 246, 150, 53, 181, 153, 54, 88, 88, 88, 88, 88, 88, 150};
        notiFortyStereoUrl = [self StringFromCommentFlushData:value];
    }
    return notiFortyStereoUrl;
}

//: activity_wallet_zhuan
- (NSString *)dream_contentName {
    /* static */ NSString *dream_contentName = nil;
    if (!dream_contentName) {
        Byte value[] = {21, 37, 10, 108, 176, 250, 133, 213, 131, 10, 134, 136, 153, 142, 155, 142, 153, 158, 132, 156, 134, 145, 145, 138, 153, 132, 159, 141, 154, 134, 147, 68};
        dream_contentName = [self StringFromCommentFlushData:value];
    }
    return dream_contentName;
}

//: group_info_activity_op_failed
- (NSString *)appDismissPath {
    /* static */ NSString *appDismissPath = nil;
    if (!appDismissPath) {
        Byte value[] = {29, 38, 11, 41, 142, 62, 219, 180, 71, 74, 251, 141, 152, 149, 155, 150, 133, 143, 148, 140, 149, 133, 135, 137, 154, 143, 156, 143, 154, 159, 133, 149, 150, 133, 140, 135, 143, 146, 139, 138, 178};
        appDismissPath = [self StringFromCommentFlushData:value];
    }
    return appDismissPath;
}

//: #F7BA00
- (NSString *)dream_guyMsg {
    /* static */ NSString *dream_guyMsg = nil;
    if (!dream_guyMsg) {
        Byte value[] = {7, 72, 4, 8, 107, 142, 127, 138, 137, 120, 120, 66};
        dream_guyMsg = [self StringFromCommentFlushData:value];
    }
    return dream_guyMsg;
}

//: contact_fragment_group
- (NSString *)noti_needCreasedFormat {
    /* static */ NSString *noti_needCreasedFormat = nil;
    if (!noti_needCreasedFormat) {
        Byte value[] = {22, 62, 4, 70, 161, 173, 172, 178, 159, 161, 178, 157, 164, 176, 159, 165, 171, 163, 172, 178, 157, 165, 176, 173, 179, 174, 128};
        noti_needCreasedFormat = [self StringFromCommentFlushData:value];
    }
    return noti_needCreasedFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TipViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "NTESFriendListTableViewCell.h"
#import "TeamView.h"
//: #import "NTESContactDataCell.h"
#import "TingDataCell.h"

//: @interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>
@interface TipViewController ()<UITableViewDataSource,UITableViewDelegate>


//: @property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UITableView *tableView;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;

//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic ,strong) NSArray *friendArray;
@property (nonatomic ,strong) NSArray *friendArray;


//: @end
@end

//: @implementation ZOMNForwardViewController
@implementation TipViewController

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
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight])+64)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown])+64)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[CommentFlushData sharedInstance] k_tingFormat]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [navView addSubview:backButton];
    [navView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"activity_wallet_zhuan"];
    labtitle.text = [MatronymicPath colorStreetwise:[[CommentFlushData sharedInstance] dream_contentName]];
    //: [navView addSubview:labtitle];
    [navView addSubview:labtitle];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor recordView:[[CommentFlushData sharedInstance] showUpText]];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    _btnfriend.backgroundColor = [UIColor recordView:[[CommentFlushData sharedInstance] dream_guyMsg]];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[ContentLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[MatronymicPath colorStreetwise:[[CommentFlushData sharedInstance] app_showTitle]] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(averaged:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor recordView:[[CommentFlushData sharedInstance] mTitleMsg]] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[ContentLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[MatronymicPath colorStreetwise:[[CommentFlushData sharedInstance] noti_needCreasedFormat]] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(averaged:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor recordView:[[CommentFlushData sharedInstance] notiFortyStereoUrl]];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: _sliderIndex = 0;
    _sliderIndex = 0;
    //: [self prepareData];
    [self workOnEnd];
}

//: -(void)sliderButtonClick:(UIButton *)sender
-(void)averaged:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _btnfriend.backgroundColor = [UIColor recordView:[[CommentFlushData sharedInstance] dream_guyMsg]];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor recordView:[[CommentFlushData sharedInstance] mTitleMsg]] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _btngroup.backgroundColor = [UIColor recordView:[[CommentFlushData sharedInstance] dream_guyMsg]];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor recordView:[[CommentFlushData sharedInstance] mTitleMsg]] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }

    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
    //: [_tableView reloadData];
    [_tableView reloadData];

}

//: - (void)prepareData
- (void)workOnEnd
{
    //: self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    //: self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(_sliderIndex <= 0){
    if(_sliderIndex <= 0){
        //: NIMUser *friend = self.friendArray[indexPath.section];
        NIMUser *friend = self.friendArray[indexPath.section];
        //: self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }

    //: NSError *err;
    NSError *err;
    //: if (self.isCard) {
    if (self.isCard) {
        //: [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
    }


    //: if(!err){
    if(!err){
        //: [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:[[CommentFlushData sharedInstance] showBackgroundMsg].resign duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[[CommentFlushData sharedInstance] appDismissPath]] duration:2.0 position:CSToastPositionCenter];
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)bubble:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return self.friendArray.count;
        return self.friendArray.count;
    //: }else{
    }else{
        //: return self.groupArray.count;
        return self.groupArray.count;
    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return 1;
    return 1;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        TeamView *cell = [TeamView cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        TingDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[TingDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }

    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    TeamView *cell = [TeamView cell:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: NIMUser *user = self.friendArray[indexPath.section];
        NIMUser *user = self.friendArray[indexPath.section];
        //: [cell reloadUserItem:user];
        [cell blue:user];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell teamNeed:team];
    }
    //: return cell;
    return cell;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-64) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: @end
@end
