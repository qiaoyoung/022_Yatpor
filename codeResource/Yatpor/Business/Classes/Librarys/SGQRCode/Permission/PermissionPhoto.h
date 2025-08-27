// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "SGPermission.h"
#import "ModePermission.h"

//: @class SGPermissionPhoto;
@class PermissionPhoto;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SGPermissionPhotoBlock)(SGPermissionPhoto *photos, SGPermissionStatus status);
typedef void(^SGPermissionPhotoBlock)(PermissionPhoto *photos, SGPermissionStatus status);

//: @interface SGPermissionPhoto : NSObject
@interface PermissionPhoto : NSObject
//: + (void)photo:(SGPermissionPhotoBlock)block;
+ (void)withLength:(SGPermissionPhotoBlock)block;
//: + (void)request:(void (^)(BOOL granted))handler;
+ (void)cellQuantityeract:(void (^)(BOOL granted))handler;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END