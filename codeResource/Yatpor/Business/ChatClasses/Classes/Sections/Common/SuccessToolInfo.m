// __DEBUG__
// __CLOSE_PRINT__
//
//  SuccessToolInfo.m
// UserKit
//
//  Created by chris on 2017/11/3.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitKeyboardInfo.h"
#import "SuccessToolInfo.h"

//: NSNotificationName const NIMKitKeyboardWillChangeFrameNotification = @"NIMKitKeyboardWillChangeFrameNotification";
NSNotificationName const appFieldMsg = @"NIMKitKeyboardWillChangeFrameNotification";
//: NSNotificationName const NIMKitKeyboardWillHideNotification = @"NIMKitKeyboardWillHideNotification";
NSNotificationName const noti_rangeIdent = @"NIMKitKeyboardWillHideNotification";

//: @implementation ContentKitKeyboardInfo
@implementation SuccessToolInfo

//: @synthesize keyboardHeight = _keyboardHeight;
@synthesize keyboardHeight = _keyboardHeight;

//: + (instancetype)instance
+ (instancetype)praiseToDisable
{
    //: static ContentKitKeyboardInfo *instance;
    static SuccessToolInfo *instance;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentKitKeyboardInfo alloc] init];
        instance = [[SuccessToolInfo alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:UIKeyboardWillChangeFrameNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(theOption:) name:UIKeyboardWillChangeFrameNotification object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(voices:) name:UIKeyboardWillHideNotification object:nil];
    }
    //: return self;
    return self;
}


//: - (void)keyboardWillChangeFrame:(NSNotification *)notification
- (void)theOption:(NSNotification *)notification
{
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: CGRect endFrame = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect endFrame = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    //: _isVisiable = endFrame.origin.y != [UIApplication sharedApplication].windows.firstObject.frame.size.height;
    _isVisiable = endFrame.origin.y != [UIApplication sharedApplication].windows.firstObject.frame.size.height;
    //: _keyboardHeight = _isVisiable? endFrame.size.height: 0;
    _keyboardHeight = _isVisiable? endFrame.size.height: 0;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:NIMKitKeyboardWillChangeFrameNotification object:nil userInfo:notification.userInfo];
    [[NSNotificationCenter defaultCenter] postNotificationName:appFieldMsg object:nil userInfo:notification.userInfo];
}



//: - (void)keyboardWillHide:(NSNotification *)notification
- (void)voices:(NSNotification *)notification
{
    //: _isVisiable = NO;
    _isVisiable = NO;
    //: _keyboardHeight = 0;
    _keyboardHeight = 0;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:NIMKitKeyboardWillHideNotification object:nil userInfo:notification.userInfo];
    [[NSNotificationCenter defaultCenter] postNotificationName:noti_rangeIdent object:nil userInfo:notification.userInfo];
}




//: @end
@end
