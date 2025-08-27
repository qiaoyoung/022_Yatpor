
#import <Foundation/Foundation.h>

@interface ViewData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ViewData

+ (instancetype)sharedInstance {
    static ViewData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ViewDataToData:(NSString *)value {
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

- (Byte *)ViewDataToCache:(Byte *)data {
    int recover = data[0];
    Byte onCount = data[1];
    int windowLine = data[2];
    for (int i = windowLine; i < windowLine + recover; i++) {
        int value = data[i] - onCount;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[windowLine + recover] = 0;
    return data + windowLine;
}

- (NSString *)StringFromViewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewDataToCache:data]];
}

//: tyl_NTESLoginData
- (NSString *)dream_needInfoName {
    /* static */ NSString *dream_needInfoName = nil;
    if (!dream_needInfoName) {
		NSString *origin = @"11600a647023e0b87248d4d9ccbfaeb4a5b3accfc7c9cea4c1d4c139";
		NSData *data = [ViewData ViewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_needInfoName = [self StringFromViewData:value];
    }
    return dream_needInfoName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorSend.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "AdministratorSend.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"

//: @interface NTESLoginData ()
@interface LengthDate ()

//: @end
@end

//: @implementation NTESLoginData
@implementation LengthDate

//: - (BOOL)isValid {
- (BOOL)withStateYear {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation CCCLoginManager
@implementation AdministratorSend

//: + (instancetype)sharedManager
+ (instancetype)label
{
    //: static CCCLoginManager *instance = nil;
    static AdministratorSend *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[AdministratorSend alloc] init];
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
        //: [self readData];
        [self accumulation];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(LengthDate *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self assemblage];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)accumulation
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:[[ViewData sharedInstance] dream_needInfoName]];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [LengthDate yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)assemblage
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:[[ViewData sharedInstance] dream_needInfoName]];
    }
}


//: @end
@end