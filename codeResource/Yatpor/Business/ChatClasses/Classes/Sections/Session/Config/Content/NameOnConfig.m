// __DEBUG__
// __CLOSE_PRINT__
//
//  NameOnConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLocationContentConfig.h"
#import "NameOnConfig.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation FFFLocationContentConfig
@implementation NameOnConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: return CGSizeMake(110.f, 105.f);
    return CGSizeMake(110.f, 105.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"FFFSessionLocationContentView";
    return @"QuickAView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
}

//: @end
@end