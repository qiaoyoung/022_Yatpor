
#import <Foundation/Foundation.h>

typedef struct {
    Byte totalernHoeIndependent;
    Byte *support;
    unsigned int scenario;
	int zone;
	int lazaret;
	int dehornRegard;
} StructCloseData;

@interface CloseData : NSObject

@end

@implementation CloseData

+ (NSData *)CloseDataToData:(NSString *)value {
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

+ (Byte *)CloseDataToByte:(StructCloseData *)data {
    for (int i = 0; i < data->scenario; i++) {
        data->support[i] ^= data->totalernHoeIndependent;
    }
    data->support[data->scenario] = 0;
	if (data->scenario >= 3) {
		data->zone = data->support[0];
		data->lazaret = data->support[1];
		data->dehornRegard = data->support[2];
	}
    return data->support;
}

+ (NSString *)StringFromCloseData:(StructCloseData *)data {
    return [NSString stringWithUTF8String:(char *)[self CloseDataToByte:data]];
}

//: #24E8B9
+ (NSString *)kToilMsg {
    /* static */ NSString *kToilMsg = nil;
    if (!kToilMsg) {
		NSString *origin = @"4e5f5928552f5449";
		NSData *data = [CloseData CloseDataToData:origin];
        StructCloseData value = (StructCloseData){109, (Byte *)data.bytes, 7, 30, 140, 48};
        kToilMsg = [self StringFromCloseData:&value];
    }
    return kToilMsg;
}

//: scan_scanline_wc
+ (NSString *)user_adequateValue {
    /* static */ NSString *user_adequateValue = nil;
    if (!user_adequateValue) {
		NSString *origin = @"6777757a4b6777757a787d7a714b6377ed";
		NSData *data = [CloseData CloseDataToData:origin];
        StructCloseData value = (StructCloseData){20, (Byte *)data.bytes, 16, 204, 5, 120};
        user_adequateValue = [self StringFromCloseData:&value];
    }
    return user_adequateValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGScanViewConfigure.h"
#import "DisableConfigure.h"

//: @implementation SGScanViewConfigure
@implementation DisableConfigure

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
//        _isShowBorder = NO;
        //: _isShowBorder = YES;
        _isShowBorder = YES;
    }
    //: return self;
    return self;
}

//: + (instancetype)configure {
+ (instancetype)recordOptionConfigure {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return [CloseData user_adequateValue];
    }
    //: return _scanline;
    return _scanline;
}

//: - (CGFloat)scanlineStep {
- (CGFloat)scanlineStep {
    //: if (!_scanlineStep) {
    if (!_scanlineStep) {
        //: return 3.5;
        return 3.5;
    }
    //: return _scanlineStep;
    return _scanlineStep;
}

//: - (UIColor *)color {
- (UIColor *)color {
    //: if (!_color) {
    if (!_color) {
        //: return [[UIColor blackColor] colorWithAlphaComponent:0.5];
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    //: return _color;
    return _color;
}

//: - (UIColor *)borderColor {
- (UIColor *)borderColor {
    //: if (!_borderColor) {
    if (!_borderColor) {
        //: return [UIColor whiteColor];
        return [UIColor whiteColor];
    }
    //: return _borderColor;
    return _borderColor;
}

//: - (CGFloat)borderWidth {
- (CGFloat)borderWidth {
    //: if (!_borderWidth) {
    if (!_borderWidth) {
        //: return 0.2;
        return 0.2;
    }
    //: return _borderWidth;
    return _borderWidth;
}

//: - (SGCornerLoaction)cornerLocation {
- (SGCornerLoaction)cornerLocation {
    //: if (!_cornerLocation) {
    if (!_cornerLocation) {
        //: return SGCornerLoactionDefault;
        return SGCornerLoactionDefault;
    }
    //: return _cornerLocation;
    return _cornerLocation;
}

//: - (UIColor *)cornerColor {
- (UIColor *)cornerColor {
    //: if (!_cornerColor) {
    if (!_cornerColor) {
//        _cornerColor = [UIColor greenColor];
        //: _cornerColor = [UIColor colorWithHexString:@"#24E8B9"];
        _cornerColor = [UIColor recordView:[CloseData kToilMsg]];
    }
    //: return _cornerColor;
    return _cornerColor;
}

//: - (CGFloat)cornerWidth {
- (CGFloat)cornerWidth {
    //: if (!_cornerWidth) {
    if (!_cornerWidth) {
        //: return 2.0;
        return 2.0;
    }
    //: return _cornerWidth;
    return _cornerWidth;
}

//: - (CGFloat)cornerLength {
- (CGFloat)cornerLength {
    //: if (!_cornerLength) {
    if (!_cornerLength) {
//        return 20.0;
        //: return 40.0;
        return 40.0;
    }
    //: return _cornerLength;
    return _cornerLength;
}

//: @end
@end