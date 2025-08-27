// __DEBUG__
// __CLOSE_PRINT__
//
//  SuccessViewController.h
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SpeiceAvaterBackBlock) (UIImage *groupAvater);
typedef void(^SpeiceAvaterBackBlock) (UIImage *groupAvater);

//: @interface ContentGroupAvatarViewController : UIViewController
@interface SuccessViewController : UIViewController

//: @property (nonatomic, copy) SpeiceAvaterBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceAvaterBackBlock speiceBackBlock;
//群组管理
//: @property (nonatomic,strong) ContentTeamListDataManager *teamListManager;
@property (nonatomic,strong) ManagerEnable *teamListManager;
//: @property (nonatomic,strong) NSString *groupName;
@property (nonatomic,strong) NSString *groupName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
