// __DEBUG__
// __CLOSE_PRINT__
//
//  BrushAsideConverter.m
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESPinyinConverter.h"
#import "BrushAsideConverter.h"

//: @implementation NTESPinyinConverter
@implementation BrushAsideConverter
//: + (NTESPinyinConverter *)sharedInstance
+ (BrushAsideConverter *)jointInstance
{
    //: static NTESPinyinConverter *instance = nil;
    static BrushAsideConverter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESPinyinConverter alloc] init];
        instance = [[BrushAsideConverter alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (NSString *)toPinyin: (NSString *)source
- (NSString *)image: (NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NSMutableString *piyin = [NSMutableString stringWithString:source];
    NSMutableString *piyin = [NSMutableString stringWithString:source];
    //: CFStringTransform((__bridge CFMutableStringRef)piyin, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((__bridge CFMutableStringRef)piyin, NULL, kCFStringTransformToLatin, false);

    //: NSString *py = [piyin stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    NSString *py = [piyin stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    //: return [py stringByReplacingOccurrencesOfString:@"'" withString:@""];
    return [py stringByReplacingOccurrencesOfString:@"'" withString:@""];
}



//: @end
@end