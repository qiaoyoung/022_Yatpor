// __DEBUG__
// __CLOSE_PRINT__
//
//  NonsolidColourTip.h
//  sohunews
//
//  Created by lhp on 9/24/14.
//  Copyright (c) 2014 Sohu.com. All rights reserved.
//
//  modify by tengli on 2022.8.1 (V6.7.8)

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface SNDevice : NSObject
@interface NonsolidColourTip : NSObject


//+ (NSString *)deviceIDFA;
/**
 IUUID 生成后保存至磁盘,卸载重装后重新生成
 IDFA & IDFV & MCI 变化,也会重新生成
 */
//: + (NSString *)deviceIUUID;
+ (NSString *)by;

/**
 IDFA & IDFV & MCI 变化,重新生成
 */
//: + (void)updateDeviceIUUID;
+ (void)magnitude;

/*
 * @method uniqueDeviceIdentifier
 * @description use this method when you need a unique identifier in one app.
 * It generates a hash from the MAC-address in combination with the bundle identifier
 * of your app.
 */
//: - (NSString *)uniqueDeviceIdentifier;
- (NSString *)commentNim;

/*
 * @method uniqueGlobalDeviceIdentifier
 * @description use this method when you need a unique global identifier to track a device
 * with multiple apps. as example a advertising network will use this method to track the device
 * from different apps.
 * It generates a hash from the MAC-address only.
 */
//: - (NSString *)uniqueGlobalDeviceIdentifier;
- (NSString *)view;


//: #pragma mark - CAID
#pragma mark - CAID

/// 设备启动时间
//: + (NSString *)bootTimeInSec;
+ (NSString *)inwards;

/// 国家
//: + (NSString *)countryCode;
+ (NSString *)grievousBodilyHarm;

/// 语言
//: + (NSString *)language;
+ (NSString *)vertical;


/// 运营商
//: +(NSString* )carrierInfo;
+(NSString* )size;

/// 系统更新时间
//: + (NSString *)sysFileTime;
+ (NSString *)handle;


///时区
//: + (NSString *)timeZone;
+ (NSString *)optionZone;

//get system uptime since last boot 获取系统当前运行了多长时间
//: + (NSTimeInterval)uptime;
+ (NSTimeInterval)style;


//: @end
@end