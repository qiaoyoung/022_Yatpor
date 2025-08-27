// __DEBUG__
// __CLOSE_PRINT__
//
//  AViewController.h
// UserKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentTeamMemberListDataSource.h"
#import "HeadingSource.h"
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ContentTeamMuteMemberListViewController : UIViewController
@interface AViewController : UIViewController

//: @property (nonatomic,strong) ContentTeamListDataManager *teamListManager;
@property (nonatomic,strong) ManagerEnable *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
