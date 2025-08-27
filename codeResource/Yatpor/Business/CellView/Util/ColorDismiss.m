// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorDismiss.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimerHolder.h"
#import "ColorDismiss.h"

//: @interface NTESTimerHolder ()
@interface ColorDismiss ()
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

//: @implementation NTESTimerHolder
@implementation ColorDismiss

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self timeStall];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)demonstrate: (NSTimeInterval)seconds
          //: delegate: (id<NTESTimerHolderDelegate>)delegate
          cut: (id<DoingBottom>)delegate
           //: repeats: (BOOL)repeats
           countEnable: (BOOL)repeats
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
- (void)timeStall
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
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNTESTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(backgrounded:)])
    {
        //: [_timerDelegate onNTESTimerFired:self];
        [_timerDelegate backgrounded:self];
    }
}

//: @end
@end