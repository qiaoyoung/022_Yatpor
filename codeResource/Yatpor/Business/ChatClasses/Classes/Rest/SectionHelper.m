
#import <Foundation/Foundation.h>

@interface EmphasizeData : NSObject

+ (instancetype)sharedInstance;

//: 未知网络
@property (nonatomic, copy) NSString *kSpendingRegionText;

//: responseObject = %@
@property (nonatomic, copy) NSString *userBubbleCustomFormat;

//: image/%@
@property (nonatomic, copy) NSString *kDonationValue;

//: 无网络
@property (nonatomic, copy) NSString *appMorroInfoMsg;

//: jpg
@property (nonatomic, copy) NSString *app_fateMessage;

//: video
@property (nonatomic, copy) NSString *appAccountIdent;

//: image/jpg
@property (nonatomic, copy) NSString *m_importantIdent;

//: error = %@
@property (nonatomic, copy) NSString *m_licenseMessage;

//: image/*
@property (nonatomic, copy) NSString *appImageMsg;

//: Download
@property (nonatomic, copy) NSString *userPhilosophicTitle;

//: 手机自带网络
@property (nonatomic, copy) NSString *mainValueKey;

//: text/plain
@property (nonatomic, copy) NSString *user_strainUrl;

//: yyyyMMddHHmmss
@property (nonatomic, copy) NSString *mainGooMessage;

//: WIFI
@property (nonatomic, copy) NSString *notiNeedEmicIdent;

//: text/html
@property (nonatomic, copy) NSString *m_grayContent;

//: text/xml
@property (nonatomic, copy) NSString *dream_northernValue;

//: text/json
@property (nonatomic, copy) NSString *kTitleRequestUrl;

//: thumb.jpg
@property (nonatomic, copy) NSString *mainDeepData;

//: application/json
@property (nonatomic, copy) NSString *m_taxMsg;

//: text/javascript
@property (nonatomic, copy) NSString *k_keyTitle;

//: thumb
@property (nonatomic, copy) NSString *mainDialFormat;

@end

@implementation EmphasizeData

+ (instancetype)sharedInstance {
    static EmphasizeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)EmphasizeDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)EmphasizeDataToCache:(Byte *)data {
    int dopeOf = data[0];
    Byte grant = data[1];
    int giftedGatorSymptom = data[2];
    for (int i = giftedGatorSymptom; i < giftedGatorSymptom + dopeOf; i++) {
        int value = data[i] - grant;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[giftedGatorSymptom + dopeOf] = 0;
    return data + giftedGatorSymptom;
}

- (NSString *)StringFromEmphasizeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EmphasizeDataToCache:data]];
}

//: text/html
- (NSString *)m_grayContent {
    if (!_m_grayContent) {
		NSArray<NSString *> *origin = @[@"9", @"28", @"10", @"199", @"170", @"2", @"39", @"2", @"198", @"75", @"144", @"129", @"148", @"144", @"75", @"132", @"144", @"137", @"136", @"136"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_grayContent = [self StringFromEmphasizeData:value];
    }
    return _m_grayContent;
}

//: responseObject = %@
- (NSString *)userBubbleCustomFormat {
    if (!_userBubbleCustomFormat) {
		NSArray<NSString *> *origin = @[@"19", @"36", @"4", @"125", @"150", @"137", @"151", @"148", @"147", @"146", @"151", @"137", @"115", @"134", @"142", @"137", @"135", @"152", @"68", @"97", @"68", @"73", @"100", @"85"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userBubbleCustomFormat = [self StringFromEmphasizeData:value];
    }
    return _userBubbleCustomFormat;
}

//: 手机自带网络
- (NSString *)mainValueKey {
    if (!_mainValueKey) {
		NSArray<NSString *> *origin = @[@"18", @"11", @"11", @"144", @"76", @"191", @"168", @"195", @"58", @"188", @"15", @"241", @"148", @"150", @"241", @"167", @"197", @"243", @"146", @"181", @"240", @"195", @"177", @"242", @"200", @"156", @"242", @"198", @"167", @"142"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainValueKey = [self StringFromEmphasizeData:value];
    }
    return _mainValueKey;
}

//: error = %@
- (NSString *)m_licenseMessage {
    if (!_m_licenseMessage) {
		NSArray<NSString *> *origin = @[@"10", @"87", @"4", @"245", @"188", @"201", @"201", @"198", @"201", @"119", @"148", @"119", @"124", @"151", @"34"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_licenseMessage = [self StringFromEmphasizeData:value];
    }
    return _m_licenseMessage;
}

//: application/json
- (NSString *)m_taxMsg {
    if (!_m_taxMsg) {
		NSArray<NSString *> *origin = @[@"16", @"65", @"13", @"76", @"245", @"31", @"53", @"130", @"103", @"209", @"29", @"137", @"31", @"162", @"177", @"177", @"173", @"170", @"164", @"162", @"181", @"170", @"176", @"175", @"112", @"171", @"180", @"176", @"175", @"65"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_taxMsg = [self StringFromEmphasizeData:value];
    }
    return _m_taxMsg;
}

//: Download
- (NSString *)userPhilosophicTitle {
    if (!_userPhilosophicTitle) {
		NSArray<NSString *> *origin = @[@"8", @"30", @"4", @"151", @"98", @"141", @"149", @"140", @"138", @"141", @"127", @"130", @"138"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userPhilosophicTitle = [self StringFromEmphasizeData:value];
    }
    return _userPhilosophicTitle;
}

//: video
- (NSString *)appAccountIdent {
    if (!_appAccountIdent) {
		NSArray<NSString *> *origin = @[@"5", @"52", @"6", @"39", @"136", @"195", @"170", @"157", @"152", @"153", @"163", @"26"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appAccountIdent = [self StringFromEmphasizeData:value];
    }
    return _appAccountIdent;
}

//: 无网络
- (NSString *)appMorroInfoMsg {
    if (!_appMorroInfoMsg) {
		NSArray<NSString *> *origin = @[@"9", @"87", @"13", @"31", @"9", @"156", @"44", @"77", @"63", @"36", @"161", @"49", @"60", @"61", @"238", @"247", @"62", @"20", @"232", @"62", @"18", @"243", @"89"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appMorroInfoMsg = [self StringFromEmphasizeData:value];
    }
    return _appMorroInfoMsg;
}

//: thumb
- (NSString *)mainDialFormat {
    if (!_mainDialFormat) {
		NSArray<NSString *> *origin = @[@"5", @"95", @"12", @"245", @"130", @"189", @"122", @"234", @"43", @"82", @"163", @"104", @"211", @"199", @"212", @"204", @"193", @"68"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainDialFormat = [self StringFromEmphasizeData:value];
    }
    return _mainDialFormat;
}

//: text/javascript
- (NSString *)k_keyTitle {
    if (!_k_keyTitle) {
		NSArray<NSString *> *origin = @[@"15", @"27", @"6", @"218", @"184", @"46", @"143", @"128", @"147", @"143", @"74", @"133", @"124", @"145", @"124", @"142", @"126", @"141", @"132", @"139", @"143", @"245"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_keyTitle = [self StringFromEmphasizeData:value];
    }
    return _k_keyTitle;
}

//: WIFI
- (NSString *)notiNeedEmicIdent {
    if (!_notiNeedEmicIdent) {
		NSArray<NSString *> *origin = @[@"4", @"97", @"13", @"122", @"101", @"165", @"170", @"159", @"102", @"98", @"220", @"185", @"63", @"184", @"170", @"167", @"170", @"208"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiNeedEmicIdent = [self StringFromEmphasizeData:value];
    }
    return _notiNeedEmicIdent;
}

//: 未知网络
- (NSString *)kSpendingRegionText {
    if (!_kSpendingRegionText) {
		NSArray<NSString *> *origin = @[@"12", @"80", @"4", @"245", @"54", @"236", @"250", @"55", @"239", @"245", @"55", @"13", @"225", @"55", @"11", @"236", @"219"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kSpendingRegionText = [self StringFromEmphasizeData:value];
    }
    return _kSpendingRegionText;
}

//: image/jpg
- (NSString *)m_importantIdent {
    if (!_m_importantIdent) {
		NSArray<NSString *> *origin = @[@"9", @"30", @"3", @"135", @"139", @"127", @"133", @"131", @"77", @"136", @"142", @"133", @"234"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_importantIdent = [self StringFromEmphasizeData:value];
    }
    return _m_importantIdent;
}

//: thumb.jpg
- (NSString *)mainDeepData {
    if (!_mainDeepData) {
		NSArray<NSString *> *origin = @[@"9", @"17", @"6", @"244", @"90", @"230", @"133", @"121", @"134", @"126", @"115", @"63", @"123", @"129", @"120", @"102"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainDeepData = [self StringFromEmphasizeData:value];
    }
    return _mainDeepData;
}

//: text/json
- (NSString *)kTitleRequestUrl {
    if (!_kTitleRequestUrl) {
		NSArray<NSString *> *origin = @[@"9", @"52", @"4", @"181", @"168", @"153", @"172", @"168", @"99", @"158", @"167", @"163", @"162", @"163"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleRequestUrl = [self StringFromEmphasizeData:value];
    }
    return _kTitleRequestUrl;
}

//: jpg
- (NSString *)app_fateMessage {
    if (!_app_fateMessage) {
		NSArray<NSString *> *origin = @[@"3", @"75", @"13", @"17", @"181", @"143", @"139", @"90", @"17", @"81", @"246", @"222", @"14", @"181", @"187", @"178", @"244"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_fateMessage = [self StringFromEmphasizeData:value];
    }
    return _app_fateMessage;
}

//: image/*
- (NSString *)appImageMsg {
    if (!_appImageMsg) {
		NSArray<NSString *> *origin = @[@"7", @"66", @"6", @"145", @"246", @"19", @"171", @"175", @"163", @"169", @"167", @"113", @"108", @"140"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appImageMsg = [self StringFromEmphasizeData:value];
    }
    return _appImageMsg;
}

//: text/plain
- (NSString *)user_strainUrl {
    if (!_user_strainUrl) {
		NSArray<NSString *> *origin = @[@"10", @"38", @"5", @"78", @"242", @"154", @"139", @"158", @"154", @"85", @"150", @"146", @"135", @"143", @"148", @"4"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_strainUrl = [self StringFromEmphasizeData:value];
    }
    return _user_strainUrl;
}

//: text/xml
- (NSString *)dream_northernValue {
    if (!_dream_northernValue) {
		NSArray<NSString *> *origin = @[@"8", @"74", @"10", @"234", @"11", @"15", @"31", @"19", @"157", @"73", @"190", @"175", @"194", @"190", @"121", @"194", @"183", @"182", @"157"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_northernValue = [self StringFromEmphasizeData:value];
    }
    return _dream_northernValue;
}

//: image/%@
- (NSString *)kDonationValue {
    if (!_kDonationValue) {
		NSArray<NSString *> *origin = @[@"8", @"94", @"6", @"161", @"234", @"103", @"199", @"203", @"191", @"197", @"195", @"141", @"131", @"158", @"40"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kDonationValue = [self StringFromEmphasizeData:value];
    }
    return _kDonationValue;
}

//: yyyyMMddHHmmss
- (NSString *)mainGooMessage {
    if (!_mainGooMessage) {
		NSArray<NSString *> *origin = @[@"14", @"81", @"5", @"81", @"156", @"202", @"202", @"202", @"202", @"158", @"158", @"181", @"181", @"153", @"153", @"190", @"190", @"196", @"196", @"172"];
		NSData *data = [EmphasizeData EmphasizeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainGooMessage = [self StringFromEmphasizeData:value];
    }
    return _mainGooMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SectionHelper.m
//  SectionHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "SectionHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation SectionHelper

//: static BOOL _isOpenLog; 
static BOOL dreamRangePath; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *main_upPath;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *dream_kitMsg;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)upImageInfo:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (dreamRangePath) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].kSpendingRegionText] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (dreamRangePath) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].appMorroInfoMsg] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (dreamRangePath) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].mainValueKey] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (dreamRangePath) printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].notiNeedEmicIdent] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)image {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)quick {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)all {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)tingSawLog {
    //: _isOpenLog = YES;
    dreamRangePath = YES;
}

//: + (void)closeLog {
+ (void)month {
    //: _isOpenLog = NO;
    dreamRangePath = NO;
}

//: + (void)cancelAllRequest {
+ (void)subScratch {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self my] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self my] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)corner:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self my] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self my] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)max:(NSString *)URL
               //: parameters:(id)parameters
               selected:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  quantityRequestSuccess:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  dismissPer:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self tap:URL asQuickId:parameters at:nil cropFile:success should:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)eventFailure:(NSString *)URL
                //: parameters:(id)parameters
                on:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   disable:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   failure:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self languageOff:URL cell:parameters purview:nil with:success location:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)tap:(NSString *)URL
               //: parameters:(id)parameters
               asQuickId:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            at:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  cropFile:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  should:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setGreenNameSerializer:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [dream_kitMsg GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)languageOff:(NSString *)URL
                //: parameters:(id)parameters
                cell:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             purview:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   with:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   location:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setGreenNameSerializer:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)image:(NSString *)URL
                             //: parameters:(id)parameters
                             smallness:(id)parameters
                                   //: name:(NSString *)name
                                   on:(NSString *)name
                               //: filePath:(NSString *)filePath
                               elementWith:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               streetwise:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                managerFor:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                status:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)exceptWorkflow:(NSString *)URL
                                      //: parameters:(id)parameters
                                      selected:(id)parameters
                                           //: video:(NSString *)videoPath
                                           view:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           adjourn:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        size:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         icon:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         label:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:[EmphasizeData sharedInstance].appAccountIdent error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:[EmphasizeData sharedInstance].mainDialFormat
                                //: fileName:@"thumb.jpg"
                                fileName:[EmphasizeData sharedInstance].mainDeepData
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:[EmphasizeData sharedInstance].m_importantIdent]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)toSave:(NSString *)URL
                                       //: parameters:(id)parameters
                                       enable:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            text:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         picture:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          ting:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          hide:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)greenishPlace:(NSString *)URL add:(id)parameters overColor:(NSString *)name enable:(NSData *)data magnitudeVideo:(NSString *)fileName minimum_strong:(NSString *)imageType searched:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success full:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = [EmphasizeData sharedInstance].mainGooMessage;
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:[EmphasizeData sharedInstance].app_fateMessage];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:[EmphasizeData sharedInstance].app_fateMessage] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:[EmphasizeData sharedInstance].kDonationValue,imageType ?: [EmphasizeData sharedInstance].app_fateMessage]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)selected:(NSString *)URL
                               //: parameters:(id)parameters
                               selection:(id)parameters
                                     //: name:(NSString *)name
                                     filterOptionOutput:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   temp:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                flipCancel:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               index:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                lockage:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 changeFor:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  clear:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  count:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dream_kitMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [EmphasizeData sharedInstance].mainGooMessage;
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[EmphasizeData sharedInstance].app_fateMessage];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[EmphasizeData sharedInstance].app_fateMessage] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:[EmphasizeData sharedInstance].kDonationValue,imageType ?: [EmphasizeData sharedInstance].app_fateMessage]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].userBubbleCustomFormat,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamRangePath) {printf("[%s] %s [第%d行]: %s\n", "11:00:57" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[EmphasizeData sharedInstance].m_licenseMessage,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self my] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self my] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)message:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              click:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             length:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              workflow:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              parameter:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [dream_kitMsg downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [EmphasizeData sharedInstance].userPhilosophicTitle];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];

    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self my] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self my] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)my {
    //: if (!_allSessionTask) {
    if (!main_upPath) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        main_upPath = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return main_upPath;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    dream_kitMsg = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    dream_kitMsg.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    dream_kitMsg.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[EmphasizeData sharedInstance].m_taxMsg, [EmphasizeData sharedInstance].m_grayContent, [EmphasizeData sharedInstance].kTitleRequestUrl, [EmphasizeData sharedInstance].user_strainUrl, [EmphasizeData sharedInstance].k_keyTitle, [EmphasizeData sharedInstance].dream_northernValue, [EmphasizeData sharedInstance].appImageMsg, nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setParadigm:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(dream_kitMsg) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setCan:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    dream_kitMsg.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setGreenNameSerializer:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    dream_kitMsg.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setSub:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    dream_kitMsg.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)content:(NSString *)value enableWith:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [dream_kitMsg.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)voice:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)centralism:(NSString *)cerPath select:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [dream_kitMsg setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end