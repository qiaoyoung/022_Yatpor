// __DEBUG__
// __CLOSE_PRINT__
//
//  OnTingHandle.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface OnTingHandle : NSObject

//: + (NTESDevice *)currentDevice;
+ (OnTingHandle *)modernIndicator;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)completePixels;

//: - (CGFloat)compressQuality;
- (CGFloat)user;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)view;
//: - (BOOL)isInBackground;
- (BOOL)bearing;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)mottle;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)rateShow:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)add;

//: - (BOOL)isLowDevice;
- (BOOL)biographyWith;
//: - (BOOL)isIphone;
- (BOOL)bottom;
//: - (NSString *)machineName;
- (NSString *)computer;


//: - (CGFloat)statusBarHeight;
- (CGFloat)tagHeight;

//: @end
@end