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
//: #import "AdministratorSendProtocol.h"
#import "AdministratorSendProtocol.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <ContentKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <ContentKitSelectCardData> item);

//: @interface ContentTeamCardSelectedViewController : UIViewController
@interface AdvantageViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)noMenuSub:(NSString *)title
                            //: items:(NSMutableArray <id <ContentKitSelectCardData>> *)items
                            deform:(NSMutableArray <id <ContentKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           recording:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
