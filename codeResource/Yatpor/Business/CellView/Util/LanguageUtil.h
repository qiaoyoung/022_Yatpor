// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageUtil.h
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
// 最近会话本地扩展标记类型

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
    // @ 标记
    //: NTESRecentSessionMarkTypeAt,
    NTESRecentSessionMarkTypeAt,
    // 置顶标记（已废弃）
    //: NTESRecentSessionMarkTypeTop,
    NTESRecentSessionMarkTypeTop,
//: };
};

//: @interface NTESSessionUtil : NSObject
@interface LanguageUtil : NSObject

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)image:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  titleKey:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSize;
                                  count:(CGSize)imageMaxSize;

//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session;
+ (NSString *)searchedSession:(NSString*)uid session:(NIMSession*)session;

//接收时间格式化
//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail;
+ (NSString*)cell:(NSTimeInterval) msglastTime downwardly:(BOOL)showDetail;

//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)sendKey:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  tin:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler;
               change:(void (^)(AVAssetExportSession*))handler;


//: + (NSDictionary *)dictByJsonData:(NSData *)data;
+ (NSDictionary *)figure:(NSData *)data;

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString;
+ (NSDictionary *)scale:(NSString *)jsonString;

//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message;
+ (BOOL)page:(NIMMessage *)message;

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message;
+ (BOOL)wire:(NIMMessage *)message;

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message;
+ (BOOL)year:(NIMMessage *)message;

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notificaton;
+ (NSString *)takeHome:(NIMRevokeMessageNotification *)notificaton;

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript;
+ (NSString *)on:(NSString *)postscript;

//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)image:(NIMSession *)session titleSize:(NTESRecentSessionMarkType)type;

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)max:(NIMSession *)session session:(NTESRecentSessionMarkType)type;

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type;
+ (BOOL)pin:(NIMRecentSession *)recent index:(NTESRecentSessionMarkType)type;



//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail;
+ (NSString *)startLength:(NSString *)userId provinceText:(BOOL)detail;

//: + (NSString *)formatAutoLoginMessage:(NSError *)error;
+ (NSString *)voice:(NSError *)error;

//: @end
@end