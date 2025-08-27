// __DEBUG__
// __CLOSE_PRINT__
//
//  BarViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface NTESPersonalCardViewController : UIViewController
@interface BarViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithScale:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)alias:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)labelTo:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)checked:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)childbirthPreparationClassFullMoonBenignity:(id)sender;

//: - (void)chat;
- (void)sinceEvent;
//: - (void)deleteFriend;
- (void)doMessage;
//: -(void)addFriend;
-(void)centerTitle;
//: @end
@end