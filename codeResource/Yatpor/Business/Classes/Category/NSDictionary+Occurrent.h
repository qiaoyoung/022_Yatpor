// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+Occurrent.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (Occurrent)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)translate: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)share: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)user: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)strive: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)center: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)occurrent: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)daylong: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)rangeLong:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)unsettled: (NSString *)key;
//: @end
@end