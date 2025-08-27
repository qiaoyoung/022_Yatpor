
#import <Foundation/Foundation.h>

@interface SoundData : NSObject

@end

@implementation SoundData

+ (Byte *)SoundDataToCache:(Byte *)data {
    int lid = data[0];
    Byte valueImportant = data[1];
    int quickly = data[2];
    for (int i = quickly; i < quickly + lid; i++) {
        int value = data[i] + valueImportant;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[quickly + lid] = 0;
    return data + quickly;
}

+ (NSString *)StringFromSoundData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SoundDataToCache:data]];
}

//: message should be notification
+ (NSString *)main_efficiencyStr {
    /* static */ NSString *main_efficiencyStr = nil;
    if (!main_efficiencyStr) {
        Byte value[] = {30, 5, 13, 7, 127, 58, 141, 210, 245, 12, 121, 178, 184, 104, 96, 110, 110, 92, 98, 96, 27, 110, 99, 106, 112, 103, 95, 27, 93, 96, 27, 105, 106, 111, 100, 97, 100, 94, 92, 111, 100, 106, 105, 43};
        main_efficiencyStr = [self StringFromSoundData:value];
    }
    return main_efficiencyStr;
}

//: not supported notification type %zd
+ (NSString *)dreamChingFormat {
    /* static */ NSString *dreamChingFormat = nil;
    if (!dreamChingFormat) {
        Byte value[] = {35, 20, 4, 12, 90, 91, 96, 12, 95, 97, 92, 92, 91, 94, 96, 81, 80, 12, 90, 91, 96, 85, 82, 85, 79, 77, 96, 85, 91, 90, 12, 96, 101, 92, 81, 12, 17, 102, 80, 194};
        dreamChingFormat = [self StringFromSoundData:value];
    }
    return dreamChingFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFNotificationContentConfig.h"
#import "ObjectConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "FFFUnsupportContentConfig.h"
#import "SubstitutionSuccess.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation FFFNotificationContentConfig
@implementation ObjectConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [SoundData main_efficiencyStr]);

    //: CGSize contentSize = CGSizeZero;
    CGSize contentSize = CGSizeZero;

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
        {
            //: CGFloat TeamNotificationMessageWidth = cellWidth;
            CGFloat TeamNotificationMessageWidth = cellWidth;
            //: UILabel *label = [[UILabel alloc] init];
            UILabel *label = [[UILabel alloc] init];
            //: label.text = [FFFKitUtil messageTipContent:message];
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
            //: contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            //: break;
            break;
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            WithSessionNameView *label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[UserKit totalSend].config color:message].font;
            //: NSString *text = [FFFKitUtil messageTipContent:message];
            NSString *text = [TextWithUtil messageSessionValue:message];
            //: [label nim_setText:text];
            [label maturity:text];

            //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: FFFUnsupportContentConfig *config = [[FFFUnsupportContentConfig alloc] init];
            SubstitutionSuccess *config = [[SubstitutionSuccess alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config voice:cellWidth add:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, [SoundData dreamChingFormat],object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [SoundData main_efficiencyStr]);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"FFFSessionNotificationContentView";
            return @"BarNameView";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"FFFSessionNetChatNotifyContentView";
            return @"TapControl";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"FFFSessionUnknowContentView";
            return @"DismissTextView";
        //: default:
        default:
            //: break;
            break;
    }
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
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [SoundData main_efficiencyStr]);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return NO;
            return NO;
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return YES;
            return YES;
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return YES;
    return YES;
}

//: @end
@end