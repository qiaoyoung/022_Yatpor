// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartMobile.h
// UserKit
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ContentKitTimerHolder.h"
#import "KitTeamHoldingDeviceScale.h"

//: @class NIMKitFirerInfo;
@class OccasionSize;

//: @interface ContentKitNotificationFirer : NSObject<ContentKitTimerHolderDelegate>
@interface SmartMobile : NSObject<MobileDelegate>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) ContentKitTimerHolder *timer;
@property (nonatomic,strong) KitTeamHoldingDeviceScale *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)fire:(OccasionSize *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface OccasionSize : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)recordObject;

//: - (NSString *)saveIdentity;
- (NSString *)to;

//: @end
@end
