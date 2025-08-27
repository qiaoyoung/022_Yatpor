// __DEBUG__
// __CLOSE_PRINT__
//
//  KitTeamHoldingDeviceScale.h
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//
//M80TimerHolder，管理某个Timer，功能为
//1.隐藏NSTimer,使得NSTimer只能retain M80TimerHolder
//2.对于非repeats的Timer,执行一次后自动释放Timer
//3.对于repeats的Timer,需要持有M80TimerHolder的对象在析构时调用[M80TimerHolder stopTimer]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class ContentKitTimerHolder;
@class KitTeamHoldingDeviceScale;

//: @protocol ContentKitTimerHolderDelegate <NSObject>
@protocol MobileDelegate <NSObject>
//: - (void)onNIMKitTimerFired:(ContentKitTimerHolder *)holder;
- (void)kitFired:(KitTeamHoldingDeviceScale *)holder;
//: @end
@end

//: @interface ContentKitTimerHolder : NSObject
@interface KitTeamHoldingDeviceScale : NSObject
//: @property (nonatomic,weak) id<ContentKitTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<MobileDelegate> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)should:(NSTimeInterval)seconds
          //: delegate:(id<ContentKitTimerHolderDelegate>)delegate
          bubbleTimer:(id<MobileDelegate>)delegate
           //: repeats:(BOOL)repeats;
           colouring:(BOOL)repeats;

//: - (void)stopTimer;
- (void)text;
//: @end
@end
