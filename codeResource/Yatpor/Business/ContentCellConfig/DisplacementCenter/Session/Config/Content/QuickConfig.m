
#import <Foundation/Foundation.h>

@interface AdequatenessData : NSObject

+ (instancetype)sharedInstance;

//: message should be audio
@property (nonatomic, copy) NSString *mainViewIdent;

@end

@implementation AdequatenessData

+ (instancetype)sharedInstance {
    static AdequatenessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AdequatenessDataToData:(NSString *)value {
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

- (Byte *)AdequatenessDataToCache:(Byte *)data {
    int sitIn = data[0];
    Byte recallBlock = data[1];
    int relationCover = data[2];
    for (int i = relationCover; i < relationCover + sitIn; i++) {
        int value = data[i] - recallBlock;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[relationCover + sitIn] = 0;
    return data + relationCover;
}

- (NSString *)StringFromAdequatenessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AdequatenessDataToCache:data]];
}

//: message should be audio
- (NSString *)mainViewIdent {
    if (!_mainViewIdent) {
		NSString *origin = @"170809AA84DA2D0995756D7B7B696F6D287B70777D746C286A6D28697D6C717762";
		NSData *data = [AdequatenessData AdequatenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainViewIdent = [self StringFromAdequatenessData:value];
    }
    return _mainViewIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentAudioContentConfig.h"
#import "QuickConfig.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation ContentAudioContentConfig
@implementation QuickConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], [AdequatenessData sharedInstance].mainViewIdent);


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 90;
    NSInteger audioContentMinWidth = 90;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
//    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    //: return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
    return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"ContentSessionAudioContentView";
    return @"DisturbingTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
}

//: @end
@end
