
#import <Foundation/Foundation.h>

@interface BladeData : NSObject

@end

@implementation BladeData

+ (NSData *)BladeDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BladeDataToCache:(Byte *)data {
    int upNigh = data[0];
    Byte proSpark = data[1];
    int holdfast = data[2];
    for (int i = holdfast; i < holdfast + upNigh; i++) {
        int value = data[i] - proSpark;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[holdfast + upNigh] = 0;
    return data + holdfast;
}

+ (NSString *)StringFromBladeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BladeDataToCache:data]];
}

//: NTESChatroomTextContentView
+ (NSString *)kToilHoeValue {
    /* static */ NSString *kToilHoeValue = nil;
    if (!kToilHoeValue) {
		NSString *origin = @"1B100CE4234FA2D30C286BB75E64556353787184827F7F7D64758884537F7E84757E8466797587EF";
		NSData *data = [BladeData BladeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kToilHoeValue = [self StringFromBladeData:value];
    }
    return kToilHoeValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorSendConfig.m
//  NIM
//
//  Created by chris on 2017/8/21.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESChatroomRobotContentConfig.h"
#import "ColorSendConfig.h"
//: #import "M80AttributedLabel+NIMKit.h"
#import "M80AttributedLabel+NIMKit.h"
//: #import "NTESSessionRobotContentView.h"
#import "RobotQuick.h"
//: #import "UIView+NIM.h"
#import "UIView+NIM.h"

// __M_A_C_R_O__

//: @interface NTESChatroomRobotContentConfig()
@interface ColorSendConfig()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) WithSessionNameView *label;

//: @property (nonatomic,strong) NTESSessionRobotContentView *robotContentView;
@property (nonatomic,strong) RobotQuick *robotContentView;

//: @property (nonatomic,strong) NIMMessageModel *robotModel;
@property (nonatomic,strong) NIMMessageModel *robotModel;
//: @end
@end

//: @implementation NTESChatroomRobotContentConfig
@implementation ColorSendConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)time:(CGFloat)cellWidth resolution:(NIMMessage *)message
{
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: if ([self isFromRobot:message])
    if ([self inputBackground:message])
    {
        //: self.robotModel.message = message;
        self.robotModel.message = message;
        //: self.robotContentView.nim_width = msgBubbleMaxWidth;
        self.robotContentView.nim_width = msgBubbleMaxWidth;
        //: [self.robotContentView setupRobot:self.robotModel];
        [self.robotContentView setupRobot:self.robotModel];
        //: [self.robotContentView layoutIfNeeded];
        [self.robotContentView layoutIfNeeded];

        //: CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        //: return size;
        return size;
    }
    //: else
    else
    {
        //: NSString *text = message.text;
        NSString *text = message.text;
        //: [self.label nim_setText:text];
        [self.label nim_setText:text];

        //: CGFloat bubbleLeftToContent = 14;
        CGFloat bubbleLeftToContent = 14;
        //: CGFloat contentRightToBubble = 14;
        CGFloat contentRightToBubble = 14;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)containerSessionText:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self inputBackground:message])
    {
        //: return @"NTESSessionRobotContentView";
        return @"RobotQuick";
    }
    //: else
    else
    {
        //: return @"NTESChatroomTextContentView";
        return [BladeData kToilHoeValue];
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)publicTransport:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self inputBackground:message])
    {
        //: return UIEdgeInsetsMake(9,15,10,0);
        return UIEdgeInsetsMake(9,15,10,0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(20,15,10,0);
        return UIEdgeInsetsMake(20,15,10,0);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)isFromRobot:(NIMMessage *)message
- (BOOL)inputBackground:(NIMMessage *)message
{
    //: NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    //: return object.isFromRobot;
    return object.isFromRobot;
}

//: - (M80AttributedLabel *)label
- (WithSessionNameView *)label
{
    //: if (_label)
    if (_label)
    {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
    //: _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    //: return _label;
    return _label;
}

//: - (NTESSessionRobotContentView *)robotContentView
- (RobotQuick *)robotContentView
{
    //: if (_robotContentView)
    if (_robotContentView)
    {
        //: return _robotContentView;
        return _robotContentView;
    }
    //: _robotContentView = [[NTESSessionRobotContentView alloc] initSessionMessageContentView];
    _robotContentView = [[RobotQuick alloc] initSessionMessageContentView];
    //: return _robotContentView;
    return _robotContentView;
}

//: - (NIMMessageModel *)robotModel
- (NIMMessageModel *)robotModel
{
    //: if (_robotModel)
    if (_robotModel)
    {
        //: return _robotModel;
        return _robotModel;
    }
    //: _robotModel = [[NIMMessageModel alloc] init];
    _robotModel = [[NIMMessageModel alloc] init];
    //: return _robotModel;
    return _robotModel;
}

//: @end
@end