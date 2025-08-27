// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "AdministratorSendProtocol.h"
#import "AdministratorSendProtocol.h"

//: @interface NIMCardMemberItem : NSObject<ContentKitCardHeaderData>
@interface QuickItem : NSObject<ContentKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface ContentTeamCardMemberItem : NSObject<ContentKitCardHeaderData>
@interface BarImageEmpty : NSObject<ContentKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithTodayEnableence:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      lengthCan:(NIMTeamType)teamType;

//: @end
@end
