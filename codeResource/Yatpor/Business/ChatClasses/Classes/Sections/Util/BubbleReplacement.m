// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleReplacement.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitDevice.h"
#import "BubbleReplacement.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"

//: @interface ContentKitDevice ()
@interface BubbleReplacement ()

//: @end
@end

//: @implementation ContentKitDevice
@implementation BubbleReplacement

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {

    }
    //: return self;
    return self;
}


//: + (ContentKitDevice *)currentDevice{
+ (BubbleReplacement *)message{
    //: static ContentKitDevice *instance = nil;
    static BubbleReplacement *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentKitDevice alloc] init];
        instance = [[BubbleReplacement alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)rangeBar {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)viewImaginationImage{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)goop{
    //: return 0.5;
    return 0.5;
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)dignity{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice bearDown];
}


//: @end
@end
