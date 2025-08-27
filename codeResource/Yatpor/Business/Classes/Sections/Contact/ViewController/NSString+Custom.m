
#import <Foundation/Foundation.h>

@interface ButtonData : NSObject

+ (instancetype)sharedInstance;

//: xia
@property (nonatomic, copy) NSString *dreamBackgroundShouldKey;

//: chong
@property (nonatomic, copy) NSString *userNameMessage;

//: shen
@property (nonatomic, copy) NSString *notiModelName;

//: chang
@property (nonatomic, copy) NSString *m_verticalId;

@end

@implementation ButtonData

+ (instancetype)sharedInstance {
    static ButtonData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ButtonDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ButtonDataToCache:(Byte *)data {
    int container = data[0];
    Byte lab = data[1];
    int world = data[2];
    for (int i = world; i < world + container; i++) {
        int value = data[i] - lab;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[world + container] = 0;
    return data + world;
}

- (NSString *)StringFromButtonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ButtonDataToCache:data]];
}

//: xia
- (NSString *)dreamBackgroundShouldKey {
    if (!_dreamBackgroundShouldKey) {
		NSArray<NSNumber *> *origin = @[@3, @49, @7, @190, @245, @77, @213, @169, @154, @146, @226];
		NSData *data = [ButtonData ButtonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamBackgroundShouldKey = [self StringFromButtonData:value];
    }
    return _dreamBackgroundShouldKey;
}

//: chang
- (NSString *)m_verticalId {
    if (!_m_verticalId) {
		NSArray<NSNumber *> *origin = @[@5, @90, @12, @227, @161, @113, @122, @167, @180, @234, @112, @38, @189, @194, @187, @200, @193, @105];
		NSData *data = [ButtonData ButtonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_verticalId = [self StringFromButtonData:value];
    }
    return _m_verticalId;
}

//: chong
- (NSString *)userNameMessage {
    if (!_userNameMessage) {
		NSArray<NSNumber *> *origin = @[@5, @2, @8, @250, @59, @176, @6, @175, @101, @106, @113, @112, @105, @113];
		NSData *data = [ButtonData ButtonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userNameMessage = [self StringFromButtonData:value];
    }
    return _userNameMessage;
}

//: shen
- (NSString *)notiModelName {
    if (!_notiModelName) {
		NSArray<NSNumber *> *origin = @[@4, @61, @3, @176, @165, @162, @171, @195];
		NSData *data = [ButtonData ButtonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiModelName = [self StringFromButtonData:value];
    }
    return _notiModelName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Custom.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+Custom.h"

//: @implementation NSString (LJExtension)
@implementation NSString (Custom)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)latchkey:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)versionSectionContent:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[ButtonData sharedInstance].m_verticalId];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:[ButtonData sharedInstance].notiModelName];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:[ButtonData sharedInstance].dreamBackgroundShouldKey];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[ButtonData sharedInstance].userNameMessage];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end