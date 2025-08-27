// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadingSource.h
// UserKit
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFTeamCardMemberItem.h"
#import "BarImageEmpty.h"
//: #import "FFFMembersFetchOption.h"
#import "MembersFetchOptionA.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FFFTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<BarImageEmpty *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FFFTeamOperation <NSObject>
@protocol ToSessionTing <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)temp:(NSArray *)userIds
            //: info:(NSDictionary *)info
            quantity:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      monthDataBlock:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)item:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       styleDataBlock:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)showMessage:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    cut:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)assemblage:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              upward:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)disable:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            atDataBlock:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)aTeam:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            need:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)selectedInCompletion:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             userCompletion:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)atModifyRandom:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            minorLeagueClub:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)key:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                quick:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)arc:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  modifyGroupCompletion:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)complete:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                hide:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)ironed:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   tamp:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)inheritance:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    name:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)managersItemCompletion:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         path:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)colorTearAway:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            messageCompletion:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)contentBy:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           input:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      complete:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)record:(NSString *)userId
                  //: nick:(NSString *)nick
                  teamBubbleSize:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            indexDataBlock:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)info:(NSString *)userId
                       //: mute:(BOOL)mute
                       orientation:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 stormCenter:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption * _Nullable )option
- (void)with:(MembersFetchOptionA * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        ting:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)user:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)image:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)insertOf:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol FFFTeamMemberListDataSource <FFFTeamOperation>
@protocol HeadingSource <ToSessionTing>

//: - (NIMTeam *)team;
- (NIMTeam *)bringHome;

//: - (NIMSession *)session;
- (NIMSession *)empty;

//: - (NSInteger)memberNumber;
- (NSInteger)scale;

//: - (NSMutableArray <FFFTeamCardMemberItem *> *)members;
- (NSMutableArray <BarImageEmpty *> *)comment;

//: - (FFFTeamCardMemberItem *)myCard;
- (BarImageEmpty *)sub;

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (BarImageEmpty *)endUser:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END