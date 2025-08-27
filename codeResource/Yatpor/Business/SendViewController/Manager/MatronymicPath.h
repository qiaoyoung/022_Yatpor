// __DEBUG__
// __CLOSE_PRINT__
//
//  MatronymicPath.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ContentLanguageManager : NSObject
@interface MatronymicPath : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (ContentLanguageManager *)shareInstance;
+ (MatronymicPath *)name;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setPressed:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)colorStreetwise:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)upendedLocale;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
