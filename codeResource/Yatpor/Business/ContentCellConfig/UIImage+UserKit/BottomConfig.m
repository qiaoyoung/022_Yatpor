
#import <Foundation/Foundation.h>

typedef struct {
    Byte elementaryLabEntry;
    Byte *validGifted;
    unsigned int laundryForty;
	int loseKiller;
	int titleRent;
} StructAttractionData;

@interface AttractionData : NSObject

@end

@implementation AttractionData

+ (Byte *)AttractionDataToByte:(StructAttractionData *)data {
    for (int i = 0; i < data->laundryForty; i++) {
        data->validGifted[i] ^= data->elementaryLabEntry;
    }
    data->validGifted[data->laundryForty] = 0;
	if (data->laundryForty >= 2) {
		data->loseKiller = data->validGifted[0];
		data->titleRent = data->validGifted[1];
	}
    return data->validGifted;
}

+ (NSString *)StringFromAttractionData:(StructAttractionData *)data {
    return [NSString stringWithUTF8String:(char *)[self AttractionDataToByte:data]];
}

//: https://yatpor.s3.ap-northeast-1.amazonaws.com/por.txt
+ (NSString *)dream_smokePlotText {
    /* static */ NSString *dream_smokePlotText = nil;
    if (!dream_smokePlotText) {
        StructAttractionData value = (StructAttractionData){125, (Byte []){21, 9, 9, 13, 14, 71, 82, 82, 4, 28, 9, 13, 18, 15, 83, 14, 78, 83, 28, 13, 80, 19, 18, 15, 9, 21, 24, 28, 14, 9, 80, 76, 83, 28, 16, 28, 7, 18, 19, 28, 10, 14, 83, 30, 18, 16, 82, 13, 18, 15, 83, 9, 5, 9, 224}, 54, 128, 233};
        dream_smokePlotText = [self StringFromAttractionData:&value];
    }
    return dream_smokePlotText;
}

//: api
+ (NSString *)m_yeTransitPath {
    /* static */ NSString *m_yeTransitPath = nil;
    if (!m_yeTransitPath) {
        StructAttractionData value = (StructAttractionData){57, (Byte []){88, 73, 80, 166}, 3, 206, 96};
        m_yeTransitPath = [self StringFromAttractionData:&value];
    }
    return m_yeTransitPath;
}

//: https://yatpor.blob.core.windows.net/yat/por.txt
+ (NSString *)mainScreamUrl {
    /* static */ NSString *mainScreamUrl = nil;
    if (!mainScreamUrl) {
        StructAttractionData value = (StructAttractionData){150, (Byte []){254, 226, 226, 230, 229, 172, 185, 185, 239, 247, 226, 230, 249, 228, 184, 244, 250, 249, 244, 184, 245, 249, 228, 243, 184, 225, 255, 248, 242, 249, 225, 229, 184, 248, 243, 226, 185, 239, 247, 226, 185, 230, 249, 228, 184, 226, 238, 226, 48}, 48, 238, 36};
        mainScreamUrl = [self StringFromAttractionData:&value];
    }
    return mainScreamUrl;
}

//: http
+ (NSString *)userButtonData {
    /* static */ NSString *userButtonData = nil;
    if (!userButtonData) {
        StructAttractionData value = (StructAttractionData){48, (Byte []){88, 68, 68, 64, 85}, 4, 194, 91};
        userButtonData = [self StringFromAttractionData:&value];
    }
    return userButtonData;
}

//: pushDev
+ (NSString *)userGiftedGrainData {
    /* static */ NSString *userGiftedGrainData = nil;
    if (!userGiftedGrainData) {
        StructAttractionData value = (StructAttractionData){22, (Byte []){102, 99, 101, 126, 82, 115, 96, 251}, 7, 247, 7};
        userGiftedGrainData = [self StringFromAttractionData:&value];
    }
    return userGiftedGrainData;
}

//: bb423e522c32002210fe5623f81a89ea
+ (NSString *)notiEndValue {
    /* static */ NSString *notiEndValue = nil;
    if (!notiEndValue) {
        StructAttractionData value = (StructAttractionData){222, (Byte []){188, 188, 234, 236, 237, 187, 235, 236, 236, 189, 237, 236, 238, 238, 236, 236, 239, 238, 184, 187, 235, 232, 236, 237, 184, 230, 239, 191, 230, 231, 187, 191, 149}, 32, 15, 52};
        notiEndValue = [self StringFromAttractionData:&value];
    }
    return notiEndValue;
}

//: /api
+ (NSString *)m_adequateMsg {
    /* static */ NSString *m_adequateMsg = nil;
    if (!m_adequateMsg) {
        StructAttractionData value = (StructAttractionData){4, (Byte []){43, 101, 116, 109, 169}, 4, 2, 226};
        m_adequateMsg = [self StringFromAttractionData:&value];
    }
    return m_adequateMsg;
}

//: pushkit_voice_test
+ (NSString *)appFlameContent {
    /* static */ NSString *appFlameContent = nil;
    if (!appFlameContent) {
        StructAttractionData value = (StructAttractionData){118, (Byte []){6, 3, 5, 30, 29, 31, 2, 41, 0, 25, 31, 21, 19, 41, 2, 19, 5, 2, 158}, 18, 155, 154};
        appFlameContent = [self StringFromAttractionData:&value];
    }
    return appFlameContent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentConfig.h"
#import "BottomConfig.h"
//: #import "RestUtil.h"
#import "TitlePath.h"

//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const mImageFormat = @"SavedDomainKey";

//: @interface ContentConfig ()
@interface BottomConfig ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation ContentConfig
@implementation BottomConfig

//: + (instancetype)sharedConfig
+ (instancetype)at
{
    //: static ContentConfig *instance = nil;
    static BottomConfig *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentConfig alloc] init];
        instance = [[BottomConfig alloc] init];
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
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = [AttractionData notiEndValue];//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername = @"push_Yatpor_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = [AttractionData appFlameContent];
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://yatpor.blob.core.windows.net/yat/por.txt";
        self.hostFrom = [AttractionData mainScreamUrl];

        // 打包OSS-2
        //: self.hostFrom2 = @"https://yatpor.s3.ap-northeast-1.amazonaws.com/por.txt";
        self.hostFrom2 = [AttractionData dream_smokePlotText];

//        保底域名
//        NSString *PreSetHost = @"https://apple.akunjapan0206chat.com";//⚠️警告：最后面不能有斜杠/
//
//        //如果包含了api则不处理了，否则就要加上api
//        if ([PreSetHost containsString:@"/api"])
//        {} else {
//            if ([PreSetHost hasSuffix:@"/"]) {
//                PreSetHost = [PreSetHost stringByAppendingString:@"api"];
//            } else {
//                PreSetHost = [PreSetHost stringByAppendingString:@"/api"];
//            }
//        }
//        self.domainURL = PreSetHost;


//        NSString *defaultHost = [[NSUserDefaults standardUserDefaults] stringForKey:@"HOST_KEY"] ? :@"";//本地存储的host
//        if (defaultHost.length > 0){
//            //如果包含了api则不处理了，否则就要加上api
//            if ([defaultHost containsString:@"/api"])
//            {} else {
//                if ([defaultHost hasSuffix:@"/"]) {
//                    defaultHost = [defaultHost stringByAppendingString:@"api"];
//                } else {
//                    defaultHost = [defaultHost stringByAppendingString:@"/api"];
//                }
//            }
//            self.domainURL = defaultHost;
//        }




//        void (^hostBlock)(NSString *HOST) = ^(NSString *HOST){
//           
////            if (!HOST || HOST.length < 5) {
////                HOST = [[NSString alloc] initWithString:PreSetHost];
////                NSLog(@"========>警告⚠️读不到网上的host");
////            }
//            
////            if ([HOST containsString:defaultHost]) {
////                _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
////            }
////            else
////            {
////                _allowAutoLogin = NO; //如果网上的host和本地的不一致，则禁止🈲️自动登录
////                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:@"HOST_KEY"];
////            }
////            
//            
//            //如果包含了api则不处理了，否则就要加上api
//            if ([HOST containsString:@"/api"])
//            {} else {
//                if ([HOST hasSuffix:@"/"]) {
//                    HOST = [HOST stringByAppendingString:@"api"];
//                } else {
//                    HOST = [HOST stringByAppendingString:@"/api"];
//                }
//            }
//                    
//            self.domainURL = [[NSString alloc] initWithString:HOST];//设置host主域名
//
//        };



//        @weakify(self);
//        __block NSString *HOST = @"";
//        [TitlePath get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [TitlePath get:self.hostFrom2
//                       params:nil
//                      success:^(NSString *oss) {
//                    if ([oss hasPrefix:@"http"]) {
//                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    }
//                    hostBlock(HOST);
//                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
//                }];
//            }
//            
//        } fail:^(int code, NSString *msg) {
//            
//            [TitlePath get:self.hostFrom2
//                   params:nil
//                  success:^(NSString *oss) {
//                if ([oss hasPrefix:@"http"]) {
//                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                }
//                hostBlock(HOST);
//
//            } fail:^(int code, NSString *msg) {
//                hostBlock(HOST);
//
//            }];
//        }];

    }
    //: return self;
    return self;
}

//: - (NSString *)getCurrentDomain {
- (NSString *)domain {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *str1 = @"akun";
    NSString *str2 = @"japan";
    NSString *str3 = @"0206";
    NSString *str4 = @"chat.com";
    NSString *totalStr = [NSString stringWithFormat:@"https://apple.%@%@%@%@", str1, str2, str3, str4];
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:mImageFormat] ?: totalStr;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:[AttractionData m_adequateMsg]])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:[AttractionData m_yeTransitPath]];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:[AttractionData m_adequateMsg]];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)save:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [TitlePath combine:self.hostFrom
                   //: params:nil
                   chemicalElement:nil
                  //: success:^(NSString *oss) {
                  receiveInsideFail:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:[AttractionData userButtonData]]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:mImageFormat];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [TitlePath combine:self.hostFrom2
                           //: params:nil
                           chemicalElement:nil
                          //: success:^(NSString *oss) {
                          receiveInsideFail:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:[AttractionData userButtonData]]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:mImageFormat];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } luckSumo:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } luckSumo:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [TitlePath combine:self.hostFrom2
                       //: params:nil
                       chemicalElement:nil
                      //: success:^(NSString *oss) {
                      receiveInsideFail:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:[AttractionData userButtonData]]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:mImageFormat];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } luckSumo:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    //: if (completion) completion(NO);
                    if (completion) completion(NO);
                //: }];
                }];
            //: }];
            }];


//    NSString *configURL = self.hostFrom; // 配置接口地址
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:configURL]];
//    
//    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        if (error || !data) {
//            if (completion) completion(NO);
//            return;
//        }
//        
////        // 解析响应数据（假设返回 JSON: {"domain": "https://api.new.com"}）
////        NSError *jsonError;
////        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
////        NSString *newDomain = json[@"domain"];
//        
//
//        NSString *newDomain = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//
//        
//        if (newDomain) {
//            // 保存新域名
//            [[NSUserDefaults standardUserDefaults] setObject:newDomain forKey:kSavedDomainKey];
//            [[NSUserDefaults standardUserDefaults] synchronize];
//            if (completion) completion(YES);
//        } else {
//            if (completion) completion(NO);
//        }
//    }];
//    
//    [task resume];
}




//: @end
@end
