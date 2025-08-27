// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerEnable.h
// UserKit
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ContentTeamMemberListDataSource.h"
#import "HeadingSource.h"

//: extern NSString * _Nonnull const kNIMTeamListDataTeamInfoUpdate;
extern NSString * _Nonnull const notiTextId;
//: extern NSString * _Nonnull const kNIMTeamListDataTeamMembersChanged;
extern NSString * _Nonnull const user_teamUrl;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ContentTeamListDataManager : NSObject<ContentTeamMemberListDataSource>
@interface ManagerEnable : NSObject<HeadingSource>

//当前群
//: @property (nonatomic, readonly) NIMTeam *team;
@property (nonatomic, readonly) NIMTeam *team;

//自己的帐号
//: @property (nonatomic, readonly) NSString *myAccount;
@property (nonatomic, readonly) NSString *myAccount;

//自己的群成员信息
//: @property (nonatomic, readonly) NIMTeamMember *myTeamInfo;
@property (nonatomic, readonly) NIMTeamMember *myTeamInfo;

//所有群成员的id
//: @property (nonatomic, readonly) NSMutableArray <NSString *>*memberIds;
@property (nonatomic, readonly) NSMutableArray <NSString *>*memberIds;

//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session;
- (instancetype)initWithSession:(NIMTeam *)team roving_strong:(NIMSession *)session;

//更新个人群组信息
//: - (void)reloadMyTeamInfo;
- (void)suffer;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
