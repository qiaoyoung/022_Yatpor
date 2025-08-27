
#import <Foundation/Foundation.h>

@interface TurnData : NSObject

@end

@implementation TurnData

+ (NSData *)TurnDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TurnDataToCache:(Byte *)data {
    int glucagon = data[0];
    Byte underly = data[1];
    int employer = data[2];
    for (int i = employer; i < employer + glucagon; i++) {
        int value = data[i] + underly;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[employer + glucagon] = 0;
    return data + employer;
}

+ (NSString *)StringFromTurnData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TurnDataToCache:data]];
}

//: Menlo
+ (NSString *)dream_titleKey {
    /* static */ NSString *dream_titleKey = nil;
    if (!dream_titleKey) {
		NSArray<NSNumber *> *origin = @[@5, @31, @8, @51, @114, @8, @154, @145, @46, @70, @79, @77, @80, @137];
		NSData *data = [TurnData TurnDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_titleKey = [self StringFromTurnData:value];
    }
    return dream_titleKey;
}

//: %d FPS
+ (NSString *)kUpMsg {
    /* static */ NSString *kUpMsg = nil;
    if (!kUpMsg) {
		NSArray<NSNumber *> *origin = @[@6, @27, @5, @90, @53, @10, @73, @5, @43, @53, @56, @111];
		NSData *data = [TurnData TurnDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kUpMsg = [self StringFromTurnData:value];
    }
    return kUpMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  StyleView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "StyleView.h"

//: @implementation NTESFPSLabel{
@implementation StyleView{
    //: CADisplayLink *_link;
    CADisplayLink *_link;
    //: NSUInteger _count;
    NSUInteger _count;
    //: NSTimeInterval _lastTime;
    NSTimeInterval _lastTime;
    //: UIFont *_font;
    UIFont *_font;
}


//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (frame.size.width == 0 && frame.size.height == 0) {
    if (frame.size.width == 0 && frame.size.height == 0) {
        //: frame.size = CGSizeMake(70, 20);
        frame.size = CGSizeMake(70, 20);
    }
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: self.textAlignment = NSTextAlignmentCenter;
    self.textAlignment = NSTextAlignmentCenter;
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: _font = [UIFont fontWithName:@"Menlo" size:13];
    _font = [UIFont fontWithName:[TurnData dream_titleKey] size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(quicked:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)showBy
{
    //: [_link invalidate];
    [_link invalidate];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(70, 20);;
    return CGSizeMake(70, 20);;
}

//: - (void)tick:(CADisplayLink *)link {
- (void)quicked:(CADisplayLink *)link {
    //: if (_lastTime == 0) {
    if (_lastTime == 0) {
        //: _lastTime = link.timestamp;
        _lastTime = link.timestamp;
        //: return;
        return;
    }

    //: _count++;
    _count++;
    //: NSTimeInterval delta = link.timestamp - _lastTime;
    NSTimeInterval delta = link.timestamp - _lastTime;
    //: if (delta < 1) return;
    if (delta < 1) return;
    //: _lastTime = link.timestamp;
    _lastTime = link.timestamp;
    //: float fps = _count / delta;
    float fps = _count / delta;
    //: _count = 0;
    _count = 0;


    //: self.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.text = [NSString stringWithFormat:[TurnData kUpMsg],(int)round(fps)];
}

//: @end
@end