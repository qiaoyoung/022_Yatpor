
#import <Foundation/Foundation.h>

NSString *StringFromBudgeData(Byte *data);


//: Clear_color_image
Byte k_sizeValue[] = {93, 17, 29, 5, 117, 96, 137, 130, 126, 143, 124, 128, 140, 137, 140, 143, 124, 134, 138, 126, 132, 130, 87};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+Origin.h"

//: @interface UIColorCache : NSObject
@interface EmptyCache : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation EmptyCache
//: + (instancetype)sharedCache
+ (instancetype)mutual
{
    //: static UIColorCache *instance = nil;
    static EmptyCache *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[EmptyCache alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)elite:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)rangeView:(UIImage *)image
        //: forColor:(UIColor *)color
        find:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Origin)

//: + (UIImage *)clearColorImage {
+ (UIImage *)progress {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:StringFromBudgeData(k_sizeValue)];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)container:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[EmptyCache mutual] elite:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[EmptyCache mutual] rangeView:image
                                    //: forColor:color];
                                    find:color];
    }
    //: return image;
    return image;
}


//: @end
@end

Byte * BudgeDataToCache(Byte *data) {
    int rangeSelected = data[0];
    int toiletImage = data[1];
    Byte modify = data[2];
    int usOrange = data[3];
    if (!rangeSelected) return data + usOrange;
    for (int i = usOrange; i < usOrange + toiletImage; i++) {
        int value = data[i] - modify;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[usOrange + toiletImage] = 0;
    return data + usOrange;
}

NSString *StringFromBudgeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BudgeDataToCache(data)];
}
