
#import <Foundation/Foundation.h>

@interface UxData : NSObject

+ (instancetype)sharedInstance;

//: nimkit.url.query
@property (nonatomic, copy) NSString *userAttendFortyProcessorPath;

@end

@implementation UxData

+ (instancetype)sharedInstance {
    static UxData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)UxDataToCache:(Byte *)data {
    int retailViewState = data[0];
    Byte streetSmart = data[1];
    int roc = data[2];
    for (int i = roc; i < roc + retailViewState; i++) {
        int value = data[i] - streetSmart;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[roc + retailViewState] = 0;
    return data + roc;
}

- (NSString *)StringFromUxData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self UxDataToCache:data]];
}

//: nimkit.url.query
- (NSString *)userAttendFortyProcessorPath {
    if (!_userAttendFortyProcessorPath) {
        Byte value[] = {16, 90, 13, 141, 233, 55, 66, 96, 147, 44, 110, 225, 185, 200, 195, 199, 197, 195, 206, 136, 207, 204, 198, 136, 203, 207, 191, 204, 211, 183};
        _userAttendFortyProcessorPath = [self StringFromUxData:value];
    }
    return _userAttendFortyProcessorPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeCrop.m
// UserKit
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitUrlManager.h"
#import "RangeCrop.h"
//: #import "FFFKitTimerHolder.h"
#import "KitTeamHoldingDeviceScale.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NSString *const kNIMKitUrlDataKey = @"kNIMKitUrlDataKey";
NSString *const userKitUrl = @"kNIMKitUrlDataKey";

//: @interface FFFKitUrlManager ()<FFFKitTimerHolderDelegate>
@interface RangeCrop ()<MobileDelegate>

//: @property (nonatomic, strong) NSMutableDictionary *dic;
@property (nonatomic, strong) NSMutableDictionary *dic;

//: @property (nonatomic, strong) FFFKitTimerHolder *timer;
@property (nonatomic, strong) KitTeamHoldingDeviceScale *timer;

//: @property (nonatomic, assign) BOOL needSync;
@property (nonatomic, assign) BOOL needSync;

//: @end
@end

//: @implementation FFFKitUrlManager
@implementation RangeCrop

//: + (instancetype)shareManager {
+ (instancetype)allotment {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static id instance = nil;
    static id instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFKitUrlManager alloc] init];
        instance = [[RangeCrop alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _dic = [self loadLocalFile];
        _dic = [self message];
        //: if (!_dic) {
        if (!_dic) {
            //: _dic = [NSMutableDictionary dictionary];
            _dic = [NSMutableDictionary dictionary];
        }
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[KitTeamHoldingDeviceScale alloc] init];
        //: [_timer startTimer:5.0f delegate:self repeats:YES];
        [_timer should:5.0f bubbleTimer:self colouring:YES];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onEnterBackground:)
                                                 selector:@selector(arrayImage:)
                                                     //: name:UIApplicationDidEnterBackgroundNotification
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onTerminate:)
                                                 selector:@selector(buttonAlong:)
                                                     //: name:UIApplicationWillTerminateNotification
                                                     name:UIApplicationWillTerminateNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)commentOn:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion {
                          name:(NIMKitUrlCompletion)completion {
    //: NSError *error = nil;
    NSError *error = nil;
    //: if (!shortUrl) {
    if (!shortUrl) {
        //: error = [NSError errorWithDomain:@"nimkit.url.query" code:0x1000 userInfo:nil];
        error = [NSError errorWithDomain:[UxData sharedInstance].userAttendFortyProcessorPath code:0x1000 userInfo:nil];
        //: if (completion) {
        if (completion) {
            //: completion(nil, error);
            completion(nil, error);
        }
        //: return;
        return;
    }

    //: NSString *ret = _dic[shortUrl];
    NSString *ret = _dic[shortUrl];
    //: if (ret.length != 0) {
    if (ret.length != 0) {
        //: if (completion) {
        if (completion) {
            //: completion(ret, nil);
            completion(ret, nil);
        }
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
    [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
                                                //: completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
                                                completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
        //: if (!error && urlString) {
        if (!error && urlString) {
            //: [weakSelf storeShortUrl:shortUrl originalUrl:urlString];
            [weakSelf keyWithUrl:shortUrl activity:urlString];
        }
        //: if (completion) {
        if (completion) {
            //: completion(urlString, error);
            completion(urlString, error);
        }
    //: }];
    }];

}

//: - (void)storeShortUrl:(NSString *)shortUrl originalUrl:(NSString *)originalUrl {
- (void)keyWithUrl:(NSString *)shortUrl activity:(NSString *)originalUrl {
    //: if (!shortUrl || !originalUrl) {
    if (!shortUrl || !originalUrl) {
        //: return;
        return;
    }
    //: if ([shortUrl isEqualToString:originalUrl]) {
    if ([shortUrl isEqualToString:originalUrl]) {
        //: return;
        return;
    }
    //: if (!_dic[shortUrl]) {
    if (!_dic[shortUrl]) {
        //: _dic[shortUrl] = [originalUrl copy];
        _dic[shortUrl] = [originalUrl copy];
        //: _needSync = YES;
        _needSync = YES;
    }
}

//: - (NSString *)originalUrlWithShortUrl:(NSString *)shortUrl {
- (NSString *)remote:(NSString *)shortUrl {
    //: return _dic[shortUrl];
    return _dic[shortUrl];
}

//: - (NSMutableDictionary *)loadLocalFile {
- (NSMutableDictionary *)message {
    //: NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kNIMKitUrlDataKey];
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:userKitUrl];
    //: return [NSMutableDictionary dictionaryWithDictionary:dic];
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

//: - (void)syncToLocal {
- (void)display {
    //: if (_needSync) {
    if (_needSync) {
        //: [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kNIMKitUrlDataKey];
        [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:userKitUrl];
        //: _needSync = NO;
        _needSync = NO;
    }
}

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder {
- (void)kitFired:(KitTeamHoldingDeviceScale *)holder {
    //: if (holder != _timer) {
    if (holder != _timer) {
        //: return;
        return;
    }
    //: [self syncToLocal];
    [self display];
}

//: - (void)onEnterBackground:(NSNotification *)note {
- (void)arrayImage:(NSNotification *)note {
    //: [self syncToLocal];
    [self display];
}

//: - (void)onTerminate:(NSNotification *)note {
- (void)buttonAlong:(NSNotification *)note {
    //: [self syncToLocal];
    [self display];
}

//: @end
@end