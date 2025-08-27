// __DEBUG__
// __CLOSE_PRINT__
//
//  BrandTool.h
// UserKit
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, ContentKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, ContentKitAuthorizationStatus) {
    //: ContentKitAuthorizationStatusAuthorized, 
    ContentKitAuthorizationStatusAuthorized, // 已授权
    //: ContentKitAuthorizationStatusDenied, 
    ContentKitAuthorizationStatusDenied, // 拒绝
    //: ContentKitAuthorizationStatusRestricted, 
    ContentKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: ContentKitAuthorizationStatusNotSupport 
    ContentKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface ContentKitAuthorizationTool : NSObject
@interface BrandTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(ContentKitAuthorizationStatus status))callback;
+ (void)convert:(void(^)(ContentKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(ContentKitAuthorizationStatus status))callback;
+ (void)reflexCameraDate:(void(^)(ContentKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(ContentKitAuthorizationStatus))callback;
+ (void)eparchy:(void (^)(ContentKitAuthorizationStatus))callback;

//: @end
@end
