// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryAdditions.h
//  WeiboPad
//
//  Created by junmin liu on 10-10-6.
//  Copyright 2010 Openlab. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (Additions)
@interface NSDictionary (ToolAdditions)

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)selected:(NSString *)key title:(BOOL)defaultValue;
//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)color:(NSString *)key dayOfTheMonth:(int)defaultValue;
//: - (float)getFloatValueForKey:(NSString*)key defaultValue:(float)defaultValue;
- (float)team:(NSString*)key heading:(float)defaultValue;
//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue;
- (double)value:(NSString*)key putDoing:(double)defaultValue;
//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)length:(NSString *)key handleLong:(long long)defaultValue;
//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)timeUnit:(NSString *)key scaleValue:(NSString *)defaultValue;

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key;
- (NSDictionary*)showMessage:(NSString*)key;
//: - (NSArray*)getArrayForKey:(NSString*)key;
- (NSArray*)pan:(NSString*)key;
//: @end
@end

//: @interface NSDictionary (CollationAdditions)
@interface NSDictionary (AdditionsDisable)
//: - (NSString*)getNameValue;
- (NSString*)sub;
//: - (NSString*)getCodeValue;
- (NSString*)beyondReplacement;
//: @end
@end