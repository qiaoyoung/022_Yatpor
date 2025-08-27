// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvantageViewController.h
// UserKit
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);

//: @interface FFFTeamCardSelectedViewController : UIViewController
@interface AdvantageViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)noMenuSub:(NSString *)title
                            //: items:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                            deform:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           recording:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END