// __DEBUG__
// __CLOSE_PRINT__
//
//  MyGlobalMacro.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #pragma mark - UIColor宏定义
#pragma mark - UIColor宏定义
 
#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

#ifndef IsiPhoneX
#define IsiPhoneX ({\
    BOOL isPhoneX = NO;\
    if (@available(iOS 11.0, *)) {\
        isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
    }\
    isPhoneX;\
})
#endif
