
#import <Foundation/Foundation.h>

@interface GraduateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GraduateData

+ (instancetype)sharedInstance {
    static GraduateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GraduateDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)GraduateDataToCache:(Byte *)data {
    int companion = data[0];
    Byte mucocutaneousLymphNodeSyndrome = data[1];
    int plot = data[2];
    for (int i = plot; i < plot + companion; i++) {
        int value = data[i] - mucocutaneousLymphNodeSyndrome;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[plot + companion] = 0;
    return data + plot;
}

- (NSString *)StringFromGraduateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GraduateDataToCache:data]];
}

//: 邀请你加入讨论组
- (NSString *)kReplyIdent {
    /* static */ NSString *kReplyIdent = nil;
    if (!kReplyIdent) {
		NSArray<NSString *> *origin = @[@"24", @"15", @"6", @"43", @"10", @"42", @"248", @"145", @"143", @"247", @"190", @"198", @"243", @"204", @"175", @"244", @"153", @"175", @"244", @"148", @"180", @"247", @"189", @"183", @"247", @"189", @"201", @"246", @"202", @"147", @"140"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kReplyIdent = [self StringFromGraduateData:value];
    }
    return kReplyIdent;
}

//: 扩展消息
- (NSString *)userNowStr {
    /* static */ NSString *userNowStr = nil;
    if (!userNowStr) {
		NSArray<NSString *> *origin = @[@"12", @"34", @"3", @"8", @"171", @"203", @"7", @"211", @"183", @"8", @"216", @"170", @"8", @"163", @"209", @"151"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userNowStr = [self StringFromGraduateData:value];
    }
    return userNowStr;
}

//: 邀请你加入超大群
- (NSString *)showDateIdent {
    /* static */ NSString *showDateIdent = nil;
    if (!showDateIdent) {
		NSArray<NSString *> *origin = @[@"24", @"17", @"13", @"250", @"206", @"183", @"235", @"43", @"64", @"108", @"159", @"135", @"163", @"250", @"147", @"145", @"249", @"192", @"200", @"245", @"206", @"177", @"246", @"155", @"177", @"246", @"150", @"182", @"249", @"199", @"150", @"246", @"181", @"184", @"248", @"207", @"181", @"101"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showDateIdent = [self StringFromGraduateData:value];
    }
    return showDateIdent;
}

//: group_info_activity_update_failed
- (NSString *)dreamGiftedText {
    /* static */ NSString *dreamGiftedText = nil;
    if (!dreamGiftedText) {
		NSArray<NSString *> *origin = @[@"33", @"37", @"9", @"62", @"215", @"78", @"155", @"28", @"43", @"140", @"151", @"148", @"154", @"149", @"132", @"142", @"147", @"139", @"148", @"132", @"134", @"136", @"153", @"142", @"155", @"142", @"153", @"158", @"132", @"154", @"149", @"137", @"134", @"153", @"138", @"132", @"139", @"134", @"142", @"145", @"138", @"137", @"169"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamGiftedText = [self StringFromGraduateData:value];
    }
    return dreamGiftedText;
}

//: 邀请你加入高级群
- (NSString *)m_hiFlameName {
    /* static */ NSString *m_hiFlameName = nil;
    if (!m_hiFlameName) {
		NSArray<NSString *> *origin = @[@"24", @"32", @"9", @"140", @"176", @"235", @"53", @"175", @"99", @"9", @"162", @"160", @"8", @"207", @"215", @"4", @"221", @"192", @"5", @"170", @"192", @"5", @"165", @"197", @"9", @"203", @"184", @"7", @"218", @"199", @"7", @"222", @"196", @"99"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_hiFlameName = [self StringFromGraduateData:value];
    }
    return m_hiFlameName;
}

//: jpg
- (NSString *)user_offName {
    /* static */ NSString *user_offName = nil;
    if (!user_offName) {
		NSArray<NSString *> *origin = @[@"3", @"16", @"5", @"173", @"162", @"122", @"128", @"119", @"235"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_offName = [self StringFromGraduateData:value];
    }
    return user_offName;
}

//: postscript
- (NSString *)appScanFormat {
    /* static */ NSString *appScanFormat = nil;
    if (!appScanFormat) {
		NSArray<NSString *> *origin = @[@"10", @"70", @"8", @"193", @"1", @"80", @"22", @"68", @"182", @"181", @"185", @"186", @"185", @"169", @"184", @"175", @"182", @"186", @"33"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appScanFormat = [self StringFromGraduateData:value];
    }
    return appScanFormat;
}

//: attach
- (NSString *)app_anxiousSumTitle {
    /* static */ NSString *app_anxiousSumTitle = nil;
    if (!app_anxiousSumTitle) {
		NSArray<NSString *> *origin = @[@"6", @"20", @"7", @"226", @"189", @"247", @"138", @"117", @"136", @"136", @"117", @"119", @"124", @"59"];
		NSData *data = [GraduateData GraduateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_anxiousSumTitle = [self StringFromGraduateData:value];
    }
    return app_anxiousSumTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VacantViewController.m
// UserKit
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "VacantViewController.h"
//: #import "FFFKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"

//: @implementation FFFTeamCardOperationViewController
@implementation VacantViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithLanguage:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     addTogether:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption *)option {
                      halogen:(ToSize *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[FFFTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[ManagerEnable alloc] initWithSession:team roving_strong:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(flipStatus:) name:notiTextId object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(circles:) name:user_teamUrl object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    MembersFetchOptionA *option = [[MembersFetchOptionA alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self roundCreateInput:option];
}

//: - (void)reloadData {
- (void)appBeRawDataView {
    //: [self reloadTableHeaderData];
    [self recording];
    //: [self reloadTableViewData];
    [self progress];
    //: [self reloadOtherData];
    [self enable];
}

//: - (void)didFetchTeamMember:(FFFMembersFetchOption *)option {
- (void)roundCreateInput:(MembersFetchOptionA *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager with:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          ting:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself appBeRawDataView];
        }
        //: [wself showToastMsg:msg];
        [wself info:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)backgroundClear:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            perspective:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[GraduateData sharedInstance] app_anxiousSumTitle]] = [[GraduateData sharedInstance] userNowStr];
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[GraduateData sharedInstance] appScanFormat]] = [[GraduateData sharedInstance] kReplyIdent].resign;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[GraduateData sharedInstance] appScanFormat]] = [[GraduateData sharedInstance] m_hiFlameName].resign;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[GraduateData sharedInstance] appScanFormat]] = [[GraduateData sharedInstance] showDateIdent].resign;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager temp:userIds quantity:info monthDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself recording];
        }
        //: [wself showToastMsg:msg];
        [wself info:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)usufructuary:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager item:@[userId] styleDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself recording];
        }
        //: [wself showToastMsg:msg];
        [wself info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)text:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager disable:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              atDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself appBeRawDataView];
        }
        //: [wself showToastMsg:msg];
        [wself info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)nameSystem:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager aTeam:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              need:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)totalernational:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager selectedInCompletion:intro userCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)overManagerVoice:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager atModifyRandom:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              minorLeagueClub:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)messageDisable:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self spectacles:type expanseLength:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf hold:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)lifestyle:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager key:mode quick:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)inputMode:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager arc:mode modifyGroupCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)titleer:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager inheritance:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      name:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)holderMode:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager complete:mode hide:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf appBeRawDataView];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)full:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager ironed:state tamp:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf progress];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)leavePolicy:(NSString *)userId pop:(BOOL)leave {
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager contentBy:userId
                                         //: leave:leave
                                         input:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    complete:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self appBeRawDataView];
        }
        //: [self showToastMsg:msg];
        [self info:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)beginTeam{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager insertOf:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf info:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)with{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager image:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself info:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)flipStatus:(NSNotification *)note {
    //: [self reloadData];
    [self appBeRawDataView];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)circles:(NSNotification *)note {

    //: [self reloadData];
    [self appBeRawDataView];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)pack
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
            //: if (members.count>20) {
            if (members.count>20) {

                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];

            //: }else{
            }else{
//                [self didUpdateNotifiyState:NIMTeamNotifyStateAll];
                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];
            }
            //: [self reloadData];
            [self appBeRawDataView];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)hold:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image messageUpload];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[[GraduateData sharedInstance] user_offName]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [FFFKitProgressHUD show];
        [EmptyEffectView mustBy];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager assemblage:filePath upward:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [FFFKitProgressHUD dismiss];
            [EmptyEffectView tag];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself recording];
            }
            //: [wself showToastMsg:msg];
            [wself info:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself info:[MatronymicPath colorStreetwise:[[GraduateData sharedInstance] dreamGiftedText]]];
    }
}

//: @end
@end

//: @implementation FFFTeamCardViewControllerOption
@implementation ToSize

//: @end
@end