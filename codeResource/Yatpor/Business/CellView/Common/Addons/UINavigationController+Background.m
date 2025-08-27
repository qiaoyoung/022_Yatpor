// __DEBUG__
// __CLOSE_PRINT__
//
//  UINavigationController+Background.m
//  NIM
//
//  Created by chris on 15/10/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UINavigationController+Swizzling.h"
#import "UINavigationController+Background.h"
//: #import "SwizzlingDefine.h"
#import "SwizzlingDefine.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: @implementation UINavigationController (Swizzling)
@implementation UINavigationController (Background)

//: + (void)load{
+ (void)load{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: swizzling_exchangeMethod([UINavigationController class] ,@selector(supportedInterfaceOrientations), @selector(swizzling_supportedInterfaceOrientations));
        swizzling_exchangeMethod([UINavigationController class] ,@selector(supportedInterfaceOrientations), @selector(valueRecordFuturism));
        //: swizzling_exchangeMethod([UINavigationController class] ,@selector(shouldAutorotate), @selector(swizzling_shouldAutorotate));
        swizzling_exchangeMethod([UINavigationController class] ,@selector(shouldAutorotate), @selector(presentView));
    //: });
    });
}

//: #pragma mark - ShouldAutorotate
#pragma mark - ShouldAutorotate
//: - (BOOL)swizzling_shouldAutorotate
- (BOOL)presentView
{
    //: return [self.topViewController shouldAutorotate];
    return [self.topViewController shouldAutorotate];
}


//: #pragma mark - SupportedInterfaceOrientations
#pragma mark - SupportedInterfaceOrientations
//: - (UIInterfaceOrientationMask)swizzling_supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)valueRecordFuturism{
    //: return [self.topViewController supportedInterfaceOrientations];
    return [self.topViewController supportedInterfaceOrientations];
}




//: @end
@end