// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleImageHelper.h
// UserKit
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "UserKit.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol ContentKitSelectCardData;
@protocol ContentKitSelectCardData;

//: @interface ContentTeamHelper : NSObject
@interface HandleImageHelper : NSObject

//验证方式
//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode;
+ (NSString *)die:(NIMTeamJoinMode)mode;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)item:(NIMTeamJoinMode)mode;

//邀请模式
//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode;
+ (NSString *)find:(NIMTeamInviteMode)mode;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)distance:(NIMTeamInviteMode)mode;

//被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes;
+ (NSArray<NSDictionary *> *)view;

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode;
+ (NSString *)cell:(NIMTeamBeInviteMode)mode;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)quickSeleced:(NIMTeamBeInviteMode)mode;

//信息修改权限
//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode;
+ (NSString *)topShould:(NIMTeamUpdateInfoMode)mode;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)off:(NIMTeamUpdateInfoMode)mode;

//消息接受状态
//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state;
+ (NSString *)language:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)pull:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)state:(NIMTeamNotifyState)state;

//成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type;
+ (NSString *)message:(NIMTeamMemberType)type;

//: + (nullable UIImage *)imageWithMemberType:(NIMTeamMemberType)type;
+ (nullable UIImage *)image:(NIMTeamMemberType)type;

//群禁言
//: + (NSString *)teamMuteText:(BOOL)isMute;
+ (NSString *)title:(BOOL)isMute;

//: + (NSMutableArray<id <ContentKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute;
+ (NSMutableArray<id <ContentKitSelectCardData>> *)stateObject:(BOOL)isMute;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
