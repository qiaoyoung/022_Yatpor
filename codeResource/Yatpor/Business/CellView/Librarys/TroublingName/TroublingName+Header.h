// __DEBUG__
// __CLOSE_PRINT__
//
//  TroublingName+Header.h
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "TroublingName.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^GlobalConfigBlock)(NSDictionary *configDict);
typedef void(^GlobalConfigBlock)(NSDictionary *configDict);

//: @interface ZCHttpManager (Addtionals)
@interface TroublingName (Header)
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo;
+(NSDictionary *)frameworkMargin:(NSDictionary *)userInfo;
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value;
+(void)thumb:(NSDictionary *)userInfo selected:(NSString *)key index:(NSString *)value;

//: + (void)refreshRegistConfig:(GlobalConfigBlock)block;
+ (void)team:(GlobalConfigBlock)block;

//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block;
+(void)nameConfig:(GlobalConfigBlock)block;

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block;
+(void)everyRefresh:(GlobalConfigBlock)block;//检查朋友圈权限

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block;
+(void)of:(GlobalConfigBlock)block;

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block;
+ (void)redUser:(GlobalConfigBlock)block;

//: +(void)deleteUser:(GlobalConfigBlock)block;
+(void)sign:(GlobalConfigBlock)block;

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block;
+ (void)description:(NSDictionary *)params make:(GlobalConfigBlock)block;

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block;
+(void)refreshInRequestSend:(GlobalConfigBlock)block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END