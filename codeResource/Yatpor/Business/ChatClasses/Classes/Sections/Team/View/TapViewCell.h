// __DEBUG__
// __CLOSE_PRINT__
//
//  TapViewCell.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "UserKit.h"

//: extern NSString *const kTeamMember;
extern NSString *const main_originMsg;
//: extern NSString *const kTeamMemberInfo;
extern NSString *const m_commentFormat;

//: @protocol FFFTeamMemberListCellActionDelegate <NSObject>
@protocol DelegateMenu <NSObject>

//: - (void)didSelectAddOpeartor;
- (void)sendName;

//: @end
@end


//: @interface FFFTeamMemberListCell : UITableViewCell
@interface TapViewCell : UITableViewCell


//: @property(nonatomic, assign) BOOL disableInvite;
@property(nonatomic, assign) BOOL disableInvite;

//: @property(nonatomic, assign) NSInteger maxShowMemberCount;
@property(nonatomic, assign) NSInteger maxShowMemberCount;

//: @property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;
@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

//: @property(nonatomic, weak) id<FFFTeamMemberListCellActionDelegate>delegate;
@property(nonatomic, weak) id<DelegateMenu>delegate;

//: @end
@end