
#import <Foundation/Foundation.h>

NSString *StringFromAssData(Byte *data);


//: imageTap
Byte notiThematicsValue[] = {22, 8, 91, 9, 137, 108, 190, 80, 60, 196, 200, 188, 194, 192, 175, 188, 203, 215};

//: video_chat_push.mp3
Byte dream_upMsg[] = {66, 19, 19, 4, 137, 124, 119, 120, 130, 114, 118, 123, 116, 135, 114, 131, 136, 134, 123, 65, 128, 131, 70, 95};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableToView.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVNotifier.h"
#import "DisableToView.h"
//: #import "MyGlobalMacro.h"
#import "MyGlobalMacro.h"

//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void hockeyPlayerCompletion(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[NTESAVNotifier class]])
    if([notifier isKindOfClass:[DisableToView class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString(StringFromAssData(notiThematicsValue));
        //: SuppressPerformSelectorLeakWarning([(NTESAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        SuppressPerformSelectorLeakWarning([(DisableToView *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
    }
}

//: @interface NTESAVNotifier ()
@interface DisableToView ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation NTESAVNotifier
@implementation DisableToView
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(valueForeground:)
                                                     //: name:UIApplicationWillEnterForegroundNotification
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)start:(NSString *)text
- (void)queryed:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self accumulation];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self time:text];
    //: [self vibrate];
    [self imageTap];

}

//: - (void)stop
- (void)accumulation
{
    //: if (_currentNotification)
    if (_currentNotification)
    {
        //: [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        //: _currentNotification = nil;
        _currentNotification = nil;
    }
    //: _shouldStopVibrate = YES;
    _shouldStopVibrate = YES;
}

//: - (void)willEnterForeground:(NSNotification *)notification
- (void)valueForeground:(NSNotification *)notification
{
    //: [self stop];
    [self accumulation];
}

//: - (void)vibrate
- (void)imageTap
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, hockeyPlayerCompletion, (__bridge void *)self);

        //: _vibrateCount++;
        _vibrateCount++;
        //: if (_vibrateCount >= 15)
        if (_vibrateCount >= 15)
        {
            //: _shouldStopVibrate = YES;
            _shouldStopVibrate = YES;
        }
    }
}

//: - (void)raiseNotification:(NSString *)text
- (void)time:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = StringFromAssData(dream_upMsg);
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end

Byte * AssDataToCache(Byte *data) {
    int donation = data[0];
    int atWorkAmbit = data[1];
    Byte illNigh = data[2];
    int play = data[3];
    if (!donation) return data + play;
    for (int i = play; i < play + atWorkAmbit; i++) {
        int value = data[i] - illNigh;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[play + atWorkAmbit] = 0;
    return data + play;
}

NSString *StringFromAssData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AssDataToCache(data)];
}
