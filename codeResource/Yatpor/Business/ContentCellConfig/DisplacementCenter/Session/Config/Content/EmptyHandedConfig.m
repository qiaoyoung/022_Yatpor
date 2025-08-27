// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyHandedConfig.m
// UserKit
//
//  Created by chris on 16/1/21.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTipContentConfig.h"
#import "EmptyHandedConfig.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation ContentTipContentConfig
@implementation EmptyHandedConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: CGFloat messageWidth = cellWidth;
    CGFloat messageWidth = cellWidth;
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = [ContentKitUtil messageTipContent:message];
    label.text = [TextWithUtil messageSessionValue:message];
    //: label.font = [[MyUserKit sharedKit].config setting:message].font;
    label.font = [[UserKit totalSend].config color:message].font;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [UserKit totalSend].config.view;
    //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"ContentSessionNotificationContentView";
    return @"BarNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)nameBy:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end
