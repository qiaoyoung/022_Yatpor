// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthOff.h
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentLoginViewController.h"
#import "SightViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESRegistConfigManager : NSObject
@interface LengthOff : NSObject
//: @property (nonatomic ,strong) ContentLoginViewController *loginVC;
@property (nonatomic ,strong) SightViewController *loginVC;
//: @property (nonatomic ,strong) NSMutableDictionary *registDict;
@property (nonatomic ,strong) NSMutableDictionary *registDict;
//: @property (nonatomic ,strong) UIImage *headerImage;
@property (nonatomic ,strong) UIImage *headerImage;

//: + (NTESRegistConfigManager *)shareConfigManager;
+ (LengthOff *)lipogramManager;

//: + (void)refreshRegistConfig;
+ (void)representation;

//: + (void)sendRegistRequest:(UINavigationController *)nav;
+ (void)pin:(UINavigationController *)nav;


//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL ,NSString *))complete;
+ (void)prototypical:(NSString *)name sendBox:(NSString *)pd text:(void(^)(BOOL ,NSString *))complete;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
