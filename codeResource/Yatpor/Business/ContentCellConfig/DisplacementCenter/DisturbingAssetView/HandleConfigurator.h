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
//: #import "ContentSessionViewController.h"
#import "NameViewController.h"
//: #import "ContentSessionConfigurateProtocol.h"
#import "ContentSessionConfigurateProtocol.h"

//: @class ContentSessionViewController;
@class NameViewController;

//: @interface ContentSessionConfigurator : NSObject
@interface HandleConfigurator : NSObject

//: - (void)setup:(ContentSessionViewController *)vc;
- (void)colorSetup:(NameViewController *)vc;

//: @end
@end
