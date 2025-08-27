// __DEBUG__
// __CLOSE_PRINT__
//
//  DistrictManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface DistrictManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)nimThanManager;

//: - (void)start;
- (void)disableDoing;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)tag:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)toolState:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)rangeVoiceQuantityerval:(NSString *)userId;

//: @end
@end