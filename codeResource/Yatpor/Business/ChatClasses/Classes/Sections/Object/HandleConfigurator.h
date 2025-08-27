// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionViewConfigurator.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionViewController.h"
#import "NameViewController.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @class FFFSessionViewController;
@class NameViewController;

//: @interface FFFSessionConfigurator : NSObject
@interface HandleConfigurator : NSObject

//: - (void)setup:(FFFSessionViewController *)vc;
- (void)colorSetup:(NameViewController *)vc;

//: @end
@end