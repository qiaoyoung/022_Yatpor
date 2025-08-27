// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (Scale)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)bar:(NSString *)format shouldTeam:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)at:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)anKey:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)center:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)media:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)array:(NSString *)format meanSun:(NSDate *)date;

//: @end
@end