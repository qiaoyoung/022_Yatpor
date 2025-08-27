
#import <Foundation/Foundation.h>

@interface ThirtyData : NSObject

+ (instancetype)sharedInstance;

//: CFBundleShortVersionString
@property (nonatomic, copy) NSString *appDataTitle;

@end

@implementation ThirtyData

+ (instancetype)sharedInstance {
    static ThirtyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ThirtyDataToData:(NSString *)value {
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

- (Byte *)ThirtyDataToCache:(Byte *)data {
    int resourceState = data[0];
    Byte showComfortable = data[1];
    int wheat = data[2];
    for (int i = wheat; i < wheat + resourceState; i++) {
        int value = data[i] + showComfortable;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[wheat + resourceState] = 0;
    return data + wheat;
}

- (NSString *)StringFromThirtyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ThirtyDataToCache:data]];
}

//: CFBundleShortVersionString
- (NSString *)appDataTitle {
    if (!_appDataTitle) {
		NSString *origin = @"1a5d070cb50c44e6e9e51811070f08f60b121517f90815160c1211f617150c110a3e";
		NSData *data = [ThirtyData ThirtyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appDataTitle = [self StringFromThirtyData:value];
    }
    return _appDataTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameTo.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "NameTo.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Occurrent.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const kMessageStr = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const main_nameTitle = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const mainDotData = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const notiTeamPath = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const userTextId = @"message_count";

//: @implementation NTESMigrateHeader
@implementation NameTo


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithShould {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    NameTo *ret = [[NameTo alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:[ThirtyData sharedInstance].appDataTitle];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithGroupDiscussion:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    NameTo *info = [[NameTo alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict occurrent:kMessageStr];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict occurrent:main_nameTitle];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict translate:mainDotData];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict translate:notiTeamPath];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict occurrent:userTextId];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)container {

    //: if ([self invalid]) {
    if ([self message]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[kMessageStr] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[main_nameTitle] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[mainDotData] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[notiTeamPath] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[userTextId] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)message {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end