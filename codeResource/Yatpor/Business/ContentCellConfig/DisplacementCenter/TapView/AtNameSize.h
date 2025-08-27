// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// UserKit
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface OriginLengthReason : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface ContentInputAtCache : NSObject
@interface AtNameSize : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)upwards:(NSString *)sendText;

//: - (void)clean;
- (void)recordAcross;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)worsted:(OriginLengthReason *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (OriginLengthReason *)on:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (OriginLengthReason *)session:(NSString *)name;

//: @end
@end
