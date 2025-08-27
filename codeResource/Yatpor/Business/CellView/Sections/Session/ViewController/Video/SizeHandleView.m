
#import <Foundation/Foundation.h>

@interface DrawData : NSObject

+ (instancetype)sharedInstance;

//: AVLayerVideoGravityResizeAspect
@property (nonatomic, copy) NSString *appTableText;

@end

@implementation DrawData

+ (instancetype)sharedInstance {
    static DrawData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DrawDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DrawDataToCache:(Byte *)data {
    int incumbrance = data[0];
    Byte messageRefresh = data[1];
    int eigenvalueRelease = data[2];
    for (int i = eigenvalueRelease; i < eigenvalueRelease + incumbrance; i++) {
        int value = data[i] + messageRefresh;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[eigenvalueRelease + incumbrance] = 0;
    return data + eigenvalueRelease;
}

- (NSString *)StringFromDrawData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DrawDataToCache:data]];
}

//: AVLayerVideoGravityResizeAspect
- (NSString *)appTableText {
    if (!_appTableText) {
		NSString *origin = @"1f52070ca1a7d7ef04fa0f271320041712131df5200f24172227001321172813ef211e13112223";
		NSData *data = [DrawData DrawDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appTableText = [self StringFromDrawData:value];
    }
    return _appTableText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeHandleView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVPlayerView.h"
#import "SizeHandleView.h"

//: @implementation NTESAVPlayerView
@implementation SizeHandleView
{
    //: NSString* _videoFillMode;
    NSString* _videoFillMode;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _videoFillMode = @"AVLayerVideoGravityResizeAspect";
        _videoFillMode = [DrawData sharedInstance].appTableText;
        // Initialization code
    }
    //: return self;
    return self;
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [AVPlayerLayer class];
    return [AVPlayerLayer class];
}

//: - (AVPlayer*)player
- (AVPlayer*)player
{
    //: return [(AVPlayerLayer*)[self layer] player];
    return [(AVPlayerLayer*)[self layer] player];
}

//: - (void)setPlayer:(AVPlayer*)player
- (void)setPlayer:(AVPlayer*)player
{
    //: if ([self player] != player) {
    if ([self player] != player) {
        //: [(AVPlayerLayer*)[self layer] setPlayer:player];
        [(AVPlayerLayer*)[self layer] setPlayer:player];
        //: [self setVideoFillMode:_videoFillMode];
        [self setOn:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setOn:(NSString *)fillMode
{
    //: _videoFillMode = fillMode;
    _videoFillMode = fillMode;

    //: AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    //: playerLayer.videoGravity = fillMode;
    playerLayer.videoGravity = fillMode;
}

//: - (void)setContentMode:(UIViewContentMode)contentMode
- (void)setContentMode:(UIViewContentMode)contentMode
{
    //: [super setContentMode:contentMode];
    [super setContentMode:contentMode];

    //: switch (contentMode) {
    switch (contentMode) {
        //: case UIViewContentModeScaleToFill:
        case UIViewContentModeScaleToFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResize];
            [self setOn:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setOn:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setOn:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setOn:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end