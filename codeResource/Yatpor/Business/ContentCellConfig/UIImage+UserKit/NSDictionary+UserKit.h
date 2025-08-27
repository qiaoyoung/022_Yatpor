// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+UserKit.h
// UserKit
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (MyUserKit)
@interface NSDictionary (UserKit)

//: - (NSString *)nimkit_jsonString: (NSString *)key;
- (NSString *)styleThread: (NSString *)key;

//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key;
- (NSDictionary *)tip: (NSString *)key;
//: - (NSArray *)nimkit_jsonArray: (NSString *)key;
- (NSArray *)add: (NSString *)key;
//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key;
- (NSArray *)index: (NSString *)key;


//: - (BOOL)nimkit_jsonBool: (NSString *)key;
- (BOOL)searched: (NSString *)key;
//: - (NSInteger)nimkit_jsonInteger: (NSString *)key;
- (NSInteger)child: (NSString *)key;
//: - (long long)nimkit_jsonLongLong: (NSString *)key;
- (long long)independent: (NSString *)key;
//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)kitMessage:(NSString *)key;

//: - (double)nimkit_jsonDouble: (NSString *)key;
- (double)endSum: (NSString *)key;

//: @end
@end