// __DEBUG__
// __CLOSE_PRINT__
//
//  VacantViewController.h
// UserKit
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "FFFTeamCardViewController.h"
#import "CardViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface FFFTeamCardViewControllerOption : NSObject
@interface ToSize : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface FFFTeamCardOperationViewController : FFFTeamCardViewController
@interface VacantViewController : CardViewController

//外部配置
//: @property (nonatomic,strong) FFFTeamCardViewControllerOption *option;
@property (nonatomic,strong) ToSize *option;

//群组管理
//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) ManagerEnable *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithLanguage:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     addTogether:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption * _Nullable)option;
                      halogen:(ToSize * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable FFFMembersFetchOption *)option;
- (void)roundCreateInput:(nullable MembersFetchOptionA *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)backgroundClear:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            perspective:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)usufructuary:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)text:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)nameSystem:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)totalernational:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)overManagerVoice:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)messageDisable:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)lifestyle:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)inputMode:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)titleer:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)holderMode:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)full:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)leavePolicy:(NSString *)userId pop:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)with;

//解散群组
//: - (void)didDismissTeam;
- (void)beginTeam;

//: - (void)reloadData;
- (void)appBeRawDataView;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END