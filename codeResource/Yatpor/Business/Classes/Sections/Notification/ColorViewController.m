
#import <Foundation/Foundation.h>

@interface CopernicanSystemData : NSObject

+ (instancetype)sharedInstance;

//: message_helper_already_ok
@property (nonatomic, copy) NSString *main_resourceMessage;

//: 接受成功
@property (nonatomic, copy) NSString *kSizeUrl;

//: /user/addFriend
@property (nonatomic, copy) NSString *app_operationName;

//: message_helper_already_no
@property (nonatomic, copy) NSString *noti_sizeMsg;

//: group_info_activity_team_not_exist
@property (nonatomic, copy) NSString *showGlobalPath;

//: 载入更多
@property (nonatomic, copy) NSString *dream_needRedName;

//: notification
@property (nonatomic, copy) NSString *dream_enableContent;

//: successful_authentication
@property (nonatomic, copy) NSString *dream_backData;

//: fail_authentication
@property (nonatomic, copy) NSString *notiTableId;

//: fuid
@property (nonatomic, copy) NSString *mainLayerValueName;

//: back_arrow_bl
@property (nonatomic, copy) NSString *user_valueIdent;

//: user_profile_avtivity_user_info_update_failed
@property (nonatomic, copy) NSString *showUpKey;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *showVerticalGrayMsg;

@end

@implementation CopernicanSystemData

+ (instancetype)sharedInstance {
    static CopernicanSystemData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CopernicanSystemDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CopernicanSystemDataToCache:(Byte *)data {
    int boxDot = data[0];
    Byte upRelease = data[1];
    int ply = data[2];
    for (int i = ply; i < ply + boxDot; i++) {
        int value = data[i] + upRelease;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[ply + boxDot] = 0;
    return data + ply;
}

- (NSString *)StringFromCopernicanSystemData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CopernicanSystemDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)user_valueIdent {
    if (!_user_valueIdent) {
		NSArray<NSNumber *> *origin = @[@13, @32, @13, @181, @103, @185, @21, @64, @77, @70, @168, @56, @73, @66, @65, @67, @75, @63, @65, @82, @82, @79, @87, @63, @66, @76, @73];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_valueIdent = [self StringFromCopernicanSystemData:value];
    }
    return _user_valueIdent;
}

//: 接受成功
- (NSString *)kSizeUrl {
    if (!_kSizeUrl) {
		NSArray<NSNumber *> *origin = @[@12, @3, @12, @119, @194, @43, @37, @20, @201, @154, @116, @225, @227, @139, @162, @226, @140, @148, @227, @133, @141, @226, @135, @156, @82];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kSizeUrl = [self StringFromCopernicanSystemData:value];
    }
    return _kSizeUrl;
}

//: group_info_activity_team_not_exist
- (NSString *)showGlobalPath {
    if (!_showGlobalPath) {
		NSArray<NSNumber *> *origin = @[@34, @91, @10, @215, @76, @252, @51, @236, @60, @139, @12, @23, @20, @26, @21, @4, @14, @19, @11, @20, @4, @6, @8, @25, @14, @27, @14, @25, @30, @4, @25, @10, @6, @18, @4, @19, @20, @25, @4, @10, @29, @14, @24, @25, @144];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showGlobalPath = [self StringFromCopernicanSystemData:value];
    }
    return _showGlobalPath;
}

//: fail_authentication
- (NSString *)notiTableId {
    if (!_notiTableId) {
		NSArray<NSNumber *> *origin = @[@19, @77, @13, @136, @161, @91, @128, @103, @62, @203, @53, @255, @47, @25, @20, @28, @31, @18, @20, @40, @39, @27, @24, @33, @39, @28, @22, @20, @39, @28, @34, @33, @26];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiTableId = [self StringFromCopernicanSystemData:value];
    }
    return _notiTableId;
}

//: fuid
- (NSString *)mainLayerValueName {
    if (!_mainLayerValueName) {
		NSArray<NSNumber *> *origin = @[@4, @52, @3, @50, @65, @53, @48, @166];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainLayerValueName = [self StringFromCopernicanSystemData:value];
    }
    return _mainLayerValueName;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)showUpKey {
    if (!_showUpKey) {
		NSArray<NSNumber *> *origin = @[@45, @16, @8, @20, @114, @98, @87, @239, @101, @99, @85, @98, @79, @96, @98, @95, @86, @89, @92, @85, @79, @81, @102, @100, @89, @102, @89, @100, @105, @79, @101, @99, @85, @98, @79, @89, @94, @86, @95, @79, @101, @96, @84, @81, @100, @85, @79, @86, @81, @89, @92, @85, @84, @132];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showUpKey = [self StringFromCopernicanSystemData:value];
    }
    return _showUpKey;
}

//: /user/addFriend
- (NSString *)app_operationName {
    if (!_app_operationName) {
		NSArray<NSNumber *> *origin = @[@15, @43, @4, @102, @4, @74, @72, @58, @71, @4, @54, @57, @57, @27, @71, @62, @58, @67, @57, @121];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_operationName = [self StringFromCopernicanSystemData:value];
    }
    return _app_operationName;
}

//: message_helper_already_no
- (NSString *)noti_sizeMsg {
    if (!_noti_sizeMsg) {
		NSArray<NSNumber *> *origin = @[@25, @99, @4, @37, @10, @2, @16, @16, @254, @4, @2, @252, @5, @2, @9, @13, @2, @15, @252, @254, @9, @15, @2, @254, @1, @22, @252, @11, @12, @217];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_sizeMsg = [self StringFromCopernicanSystemData:value];
    }
    return _noti_sizeMsg;
}

//: 载入更多
- (NSString *)dream_needRedName {
    if (!_dream_needRedName) {
		NSArray<NSNumber *> *origin = @[@12, @78, @7, @134, @91, @231, @155, @154, @111, @111, @151, @55, @87, @152, @77, @102, @151, @86, @76, @190];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_needRedName = [self StringFromCopernicanSystemData:value];
    }
    return _dream_needRedName;
}

//: friend_verify_avtivity_net_error
- (NSString *)showVerticalGrayMsg {
    if (!_showVerticalGrayMsg) {
		NSArray<NSNumber *> *origin = @[@32, @71, @7, @222, @240, @99, @22, @31, @43, @34, @30, @39, @29, @24, @47, @30, @43, @34, @31, @50, @24, @26, @47, @45, @34, @47, @34, @45, @50, @24, @39, @30, @45, @24, @30, @43, @43, @40, @43, @88];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showVerticalGrayMsg = [self StringFromCopernicanSystemData:value];
    }
    return _showVerticalGrayMsg;
}

//: notification
- (NSString *)dream_enableContent {
    if (!_dream_enableContent) {
		NSArray<NSNumber *> *origin = @[@12, @5, @6, @213, @172, @129, @105, @106, @111, @100, @97, @100, @94, @92, @111, @100, @106, @105, @127];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_enableContent = [self StringFromCopernicanSystemData:value];
    }
    return _dream_enableContent;
}

//: message_helper_already_ok
- (NSString *)main_resourceMessage {
    if (!_main_resourceMessage) {
		NSArray<NSNumber *> *origin = @[@25, @94, @10, @31, @13, @127, @130, @11, @163, @15, @15, @7, @21, @21, @3, @9, @7, @1, @10, @7, @14, @18, @7, @20, @1, @3, @14, @20, @7, @3, @6, @27, @1, @17, @13, @37];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_resourceMessage = [self StringFromCopernicanSystemData:value];
    }
    return _main_resourceMessage;
}

//: successful_authentication
- (NSString *)dream_backData {
    if (!_dream_backData) {
		NSArray<NSNumber *> *origin = @[@25, @40, @7, @126, @107, @1, @43, @75, @77, @59, @59, @61, @75, @75, @62, @77, @68, @55, @57, @77, @76, @64, @61, @70, @76, @65, @59, @57, @76, @65, @71, @70, @104];
		NSData *data = [CopernicanSystemData CopernicanSystemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_backData = [self StringFromCopernicanSystemData:value];
    }
    return _dream_backData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SystemNotificationViewController.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationViewController.h"
#import "ColorViewController.h"
//: #import "NTESSystemNotificationCell.h"
#import "DisableViewCell.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"

//: static const NSInteger MaxNotificationCount = 20;
static const NSInteger mCommentIdent = 20;
//: static NSString *reuseIdentifier = @"reuseIdentifier";
static NSString *appResultKey = @"reuseIdentifier";

//: @interface NTESSystemNotificationViewController ()<NIMSystemNotificationManagerDelegate,NIMSystemNotificationCellDelegate,NIMTeamManagerDelegate,UITableViewDelegate,UITableViewDataSource>
@interface ColorViewController ()<NIMSystemNotificationManagerDelegate,LengthTingInput,NIMTeamManagerDelegate,UITableViewDelegate,UITableViewDataSource>
//: @property (nonatomic,strong) NSMutableArray *notifications;
@property (nonatomic,strong) NSMutableArray *notifications;
//: @property (nonatomic,assign) BOOL shouldMarkAsRead;
@property (nonatomic,assign) BOOL shouldMarkAsRead;
//: @end
@end

//: @implementation NTESSystemNotificationViewController
@implementation ColorViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {
        //: self.edgesForExtendedLayout = UIRectEdgeAll;
        self.edgesForExtendedLayout = UIRectEdgeAll;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: if (_shouldMarkAsRead)
    if (_shouldMarkAsRead)
    {
        //: [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
        [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
    }
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;

}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
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


    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[CopernicanSystemData sharedInstance].user_valueIdent] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"notification"];
    labtitle.text = [MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].dream_enableContent];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"ic_del"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(clearAll:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];

    //: _notifications = [NSMutableArray array];
    _notifications = [NSMutableArray array];

    //: id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
    id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
    //: [systemNotificationManager addDelegate:self];
    [systemNotificationManager addDelegate:self];

    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: if ([self.filterType isEqualToString:@"1"]) {
    if ([self.filterType isEqualToString:@"1"]) {
        //: filter.notificationTypes = @[@(5)];
        filter.notificationTypes = @[@(5)];
    //: }else if ([self.filterType isEqualToString:@"2"]){
    }else if ([self.filterType isEqualToString:@"2"]){
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    //: }else{
    }else{
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
    }

    //: NSArray *notifications = [systemNotificationManager fetchSystemNotifications:nil
    NSArray *notifications = [systemNotificationManager fetchSystemNotifications:nil
                                                         //: limit:MaxNotificationCount filter:filter];
                                                         limit:mCommentIdent filter:filter];

    //: if ([notifications count])
    if ([notifications count])
    {
        //: [_notifications addObjectsFromArray:notifications];
        [_notifications addObjectsFromArray:notifications];
        //: if (![[notifications firstObject] read])
        if (![[notifications firstObject] read])
        {
            //: _shouldMarkAsRead = YES;
            _shouldMarkAsRead = YES;

        }
    }
    //: if (notifications.count >= MaxNotificationCount) {
    if (notifications.count >= mCommentIdent) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        //: [button setFrame:CGRectMake(0, 0, 320, 40)];
        [button setFrame:CGRectMake(0, 0, 320, 40)];
        //: [button addTarget:self
        [button addTarget:self
                   //: action:@selector(loadMore:)
                   action:@selector(sources:)
         //: forControlEvents:UIControlEventTouchUpInside];
         forControlEvents:UIControlEventTouchUpInside];
        //: [button setTitle:@"载入更多".ntes_localized forState:UIControlStateNormal];
        [button setTitle:[CopernicanSystemData sharedInstance].dream_needRedName.with forState:UIControlStateNormal];
        //: self.tableView.tableFooterView = button;
        self.tableView.tableFooterView = button;
    //: }else{
    }else{
        //: self.tableView.tableFooterView = [[UIView alloc] init];
        self.tableView.tableFooterView = [[UIView alloc] init];
    }

//    UIBarButtonItem *cleanItem = [[UIBarButtonItem alloc] initWithTitle:LangKey(@"empty_message")//@"清空".ntes_localized
//                                                                              style:UIBarButtonItemStylePlain
//                                                                             target:self
//                                                                             action:@selector(clearAll:)];
//    cleanItem.tintColor = [UIColor whiteColor];
//    self.navigationItem.rightBarButtonItem = cleanItem;
}




//: - (void)loadMore:(id)sender
- (void)sources:(id)sender
{
    //: NSArray *notifications = [[[NIMSDK sharedSDK] systemNotificationManager] fetchSystemNotifications:[_notifications lastObject]
    NSArray *notifications = [[[NIMSDK sharedSDK] systemNotificationManager] fetchSystemNotifications:[_notifications lastObject]
                                                                                                //: limit:MaxNotificationCount];
                                                                                                limit:mCommentIdent];
    //: if ([notifications count])
    if ([notifications count])
    {
        //: [_notifications addObjectsFromArray:notifications];
        [_notifications addObjectsFromArray:notifications];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (void)clearAll:(id)sender
- (void)maxAll:(id)sender
{
    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteAllNotifications];
    [[[NIMSDK sharedSDK] systemNotificationManager] deleteAllNotifications];
    //: [_notifications removeAllObjects];
    [_notifications removeAllObjects];
    //: [self.tableView reloadData];
    [self.tableView reloadData];

}

//: - (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
- (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
{
    //: [_notifications insertObject:notification atIndex:0];
    [_notifications insertObject:notification atIndex:0];
    //: _shouldMarkAsRead = YES;
    _shouldMarkAsRead = YES;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: return [_notifications count];
    return [_notifications count];
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}


//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    DisableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
//    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
//    [cell update:notification];
//    cell.actionDelegate = self;
//    return cell;
    //: NTESSystemNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NTESSystemNotificationCell"];
    DisableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DisableViewCell"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESSystemNotificationCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"NTESSystemNotificationCell"];
        cell = [[DisableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DisableViewCell"];
    }
    //: cell.actionDelegate = self;
    cell.actionDelegate = self;

    //: NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath section]];
    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath section]];
    //: [cell update:notification];
    [cell gray:notification];

    //: return cell;
    return cell;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 86;
    return 86;
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

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}

//: - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //: if (editingStyle == UITableViewCellEditingStyleDelete) {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //: NSInteger index = [indexPath row];
        NSInteger index = [indexPath row];
        //: NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        //: [_notifications removeObjectAtIndex:index];
        [_notifications removeObjectAtIndex:index];
        //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        //: [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

//: #pragma mark - SystemNotificationCell
#pragma mark - SystemNotificationCell
//: - (void)onAccept:(NIMSystemNotification *)notification
- (void)canStyle:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].main_resourceMessage]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].main_resourceMessage]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:@"接受成功".ntes_localized
                    [wself.navigationController.view makeToast:[CopernicanSystemData sharedInstance].kSizeUrl.with
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showGlobalPath]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:@"接受成功".ntes_localized
                    [wself.navigationController.view makeToast:[CopernicanSystemData sharedInstance].kSizeUrl.with
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showGlobalPath]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationVerify;
            request.operation = NIMUserOperationVerify;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"successful_authentication"]//@"验证成功".ntes_localized
                                                         [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].dream_backData]//@"验证成功".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeOk;
                                                         notification.handleStatus = NotificationHandleTypeOk;


                                                         //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/addFriend"] params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
                                                         [TroublingName pressed:[NSString stringWithFormat:[CopernicanSystemData sharedInstance].app_operationName] disable:@{[CopernicanSystemData sharedInstance].mainLayerValueName:notification.sourceID?:@""} messageExtra:NO closeFortFailed:^(id responseObject) {

                                                         //: } failed:^(id responseObject, NSError *error) {
                                                         } name:^(id responseObject, NSError *error) {
                                                         //: }];
                                                         }];


//                                                         //拿到对方用户信息
//                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
//                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
//
//                                                         // 构造出具体会话：P2P单聊，对方账号为user
//                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
//                                                         // 构造出具体消息
////                                                         NIMMessage *message = [TingEmptyBubble msgWithTip:[NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")]];
//                                                         NIMMessage *message = [[NIMMessage alloc] init];
//                                                         message.text        = [NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")];
//                                                         // 错误反馈对象
//                                                         NSError *error = nil;
//                                                         // 发送消息
//                                                         [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"fail_authentication"]//@"验证失败,请重试".ntes_localized
                                                         [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].notiTableId]//@"验证失败,请重试".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];





        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (void)onRefuse:(NIMSystemNotification *)notification
- (void)cells:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].noti_sizeMsg]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
           //: break;
           break;
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].noti_sizeMsg]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].noti_sizeMsg]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showGlobalPath]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:{
        case NIMSystemNotificationTypeSuperTeamInvite:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].noti_sizeMsg]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showVerticalGrayMsg]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showGlobalPath]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationReject;
            request.operation = NIMUserOperationReject;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                                                         [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].noti_sizeMsg]
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeNo;
                                                         notification.handleStatus = NotificationHandleTypeNo;
                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
                                                         [wself.navigationController.view makeToast:[MatronymicPath colorStreetwise:[CopernicanSystemData sharedInstance].showUpKey]
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//: @end
@end