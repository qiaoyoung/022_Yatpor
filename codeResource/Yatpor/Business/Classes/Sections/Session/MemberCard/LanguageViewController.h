// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentTeamCardMemberItem.h"
#import "BarImageEmpty.h"
//: #import "ContentTeamMemberListDataSource.h"
#import "HeadingSource.h"
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol TeamA <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(ContentTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)add:(BarImageEmpty *)member marginEnable:(BOOL)mute;
//: - (void)onTeamMemberKicked:(ContentTeamCardMemberItem *)member;
- (void)to:(BarImageEmpty *)member;

//: @end
@end

//: @interface ContentTeamMemberCardViewController : UIViewController
@interface LanguageViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<TeamA> delegate;

//: @property (nonatomic, strong) ContentTeamListDataManager *teamListManager;
@property (nonatomic, strong) ManagerEnable *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end
