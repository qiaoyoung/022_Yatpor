// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.h
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary(Extend)
@interface NSDictionary(Extend)

// for value
//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj;
- (id)view:(NSString *)key huntId:(id)defaultObj;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)allOrNothing:(id)aKey bar:(Class)aClass onWith:(id)defaultObj;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)sessionValue:(NSString *)key message:(int)defaultValue;
//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)year:(NSString *)key titleIgnitionKey:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)along:(NSString *)key labelQuantity:(double)defaultValue;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)reply:(NSString *)key postFrom:(long)defaultValue;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)scaleInfo:(NSString *)key wire:(long long)defaultValue;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)wearer:(NSString *)key bit:(NSString *)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)address:(NSString *)key value:(NSArray *)defaultValue;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)isImageTitle:(NSString *)key extend:(NSDictionary *)defaultValue;


// xml
//: - (NSArray*) toArray;
- (NSArray*) backEnd;
//: - (NSString*) toXMLString;
- (NSString*) pageSize;

// url string

//: - (NSString *)toUrlString;
- (NSString *)item;
//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)shadow;

/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)title;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)place;

//: @end
@end