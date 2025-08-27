// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFBaseSessionContentConfig.h
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol QuantitativeRelationConfig <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)compartment:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)viewDoing:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)nameBy:(NIMMessage *)message;

//: @end
@end

//: @interface FFFSessionContentConfigFactory : NSObject
@interface ColorImageFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)should;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<QuantitativeRelationConfig>)item:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<QuantitativeRelationConfig>)month:(NIMMessage *)message;

//: @end
@end