// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentContactDefines.h"
#import "ContentContactDefines.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface GroundUser:NSObject<AlterDate>

//: @property (nonatomic,readonly) ContentKitInfo *info;
@property (nonatomic,readonly) ViewInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithBubble:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface DbaWith:NSObject<AlterDate>

//: @property (nonatomic,readonly) ContentKitInfo *info;
@property (nonatomic,readonly) ViewInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithMissive:(NSString *)userId
                       //: session:(NIMSession *)session;
                       button:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface LanguageMenu:NSObject<AlterDate>

//: @property (nonatomic,readonly) ContentKitInfo *info;
@property (nonatomic,readonly) ViewInfo *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithNumbereract:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      message:(NIMKitTeamType)teamType;

//: @end
@end
