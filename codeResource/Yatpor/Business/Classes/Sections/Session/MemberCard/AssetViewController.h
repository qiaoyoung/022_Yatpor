// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
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
//: #import "ContentTeamMemberListDataSource.h"
#import "HeadingSource.h"
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface AssetViewController : UIViewController

//: @property (nonatomic,strong) ContentTeamListDataManager *teamListManager;
@property (nonatomic,strong) ManagerEnable *teamListManager;

//: - (instancetype)initWithDataSource:(ContentTeamListDataManager *)dataSource;
- (instancetype)initWithBubble:(ManagerEnable *)dataSource;

//: @end
@end
