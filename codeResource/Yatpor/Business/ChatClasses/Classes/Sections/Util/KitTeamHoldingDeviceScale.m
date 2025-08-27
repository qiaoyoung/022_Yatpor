// __DEBUG__
// __CLOSE_PRINT__
//
//  KitTeamHoldingDeviceScale.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitTimerHolder.h"
#import "KitTeamHoldingDeviceScale.h"

//: @interface FFFKitTimerHolder ()
@interface KitTeamHoldingDeviceScale ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)fulled: (NSTimer *)timer;
//: @end
@end

//: @implementation FFFKitTimerHolder
@implementation KitTeamHoldingDeviceScale

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self text];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)should: (NSTimeInterval)seconds
          //: delegate: (id<FFFKitTimerHolderDelegate>)delegate
          bubbleTimer: (id<MobileDelegate>)delegate
           //: repeats: (BOOL)repeats
           colouring: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(fulled:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)text
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)fulled: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(kitFired:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate kitFired:self];
    }
}

//: @end
@end