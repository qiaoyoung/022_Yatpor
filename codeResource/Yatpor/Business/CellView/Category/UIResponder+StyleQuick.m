// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+StyleQuick.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+StyleQuick.h"

//: static __weak id currentFirstResponder;
static __weak id mainButtonUrl;
//: static __weak id currentSecodResponder;
static __weak id user_contextValue;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (StyleQuick)

//: + (instancetype)currentFirstResponder {
+ (instancetype)item {
    //: currentFirstResponder = nil;
    mainButtonUrl = nil;
    //: currentSecodResponder = nil;
    user_contextValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(titleLabel:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return mainButtonUrl;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)recount{
    //: currentFirstResponder = nil;
    mainButtonUrl = nil;
    //: currentSecodResponder = nil;
    user_contextValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(titleLabel:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return user_contextValue;
}

//: - (void)findFirstResponder:(id)sender {
- (void)titleLabel:(id)sender {
    //: currentFirstResponder = self;
    mainButtonUrl = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder barCan:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)barCan:(id)sender{
    //: currentSecodResponder = self;
    user_contextValue = self;
}

//: @end
@end