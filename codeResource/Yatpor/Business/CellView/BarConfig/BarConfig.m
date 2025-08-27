
#import <Foundation/Foundation.h>

@interface ManufacturerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ManufacturerData

+ (instancetype)sharedInstance {
    static ManufacturerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ManufacturerDataToData:(NSString *)value {
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

- (Byte *)ManufacturerDataToCache:(Byte *)data {
    int matureButton = data[0];
    Byte customer = data[1];
    int layerDrunk = data[2];
    for (int i = layerDrunk; i < layerDrunk + matureButton; i++) {
        int value = data[i] - customer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[layerDrunk + matureButton] = 0;
    return data + layerDrunk;
}

- (NSString *)StringFromManufacturerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ManufacturerDataToCache:data]];
}

//: message must be custom
- (NSString *)k_artisticTitle {
    /* static */ NSString *k_artisticTitle = nil;
    if (!k_artisticTitle) {
		NSString *origin = @"1603045870687676646A68237078767723656823667876777270AF";
		NSData *data = [ManufacturerData ManufacturerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_artisticTitle = [self StringFromManufacturerData:value];
    }
    return k_artisticTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarConfig.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "BarConfig.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface BarConfig()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation BarConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[ManufacturerData sharedInstance] k_artisticTitle]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> info = (id<ViewStyle>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info small:message pageWidth:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[ManufacturerData sharedInstance] k_artisticTitle]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> info = (id<ViewStyle>)object.attachment;
    //: return [info cellContent:message];
    return [info tap:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[ManufacturerData sharedInstance] k_artisticTitle]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> info = (id<ViewStyle>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info contentMode:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)nameBy:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[ManufacturerData sharedInstance] k_artisticTitle]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> info = (id<ViewStyle>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(bringForthTing:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info bringForthTing:message];
}


//: @end
@end