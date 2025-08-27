
#import <Foundation/Foundation.h>

@interface EigenvalueOfAMatrixData : NSObject

@end

@implementation EigenvalueOfAMatrixData

+ (NSData *)EigenvalueOfAMatrixDataToData:(NSString *)value {
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

+ (Byte *)EigenvalueOfAMatrixDataToCache:(Byte *)data {
    int quantitativeRelation = data[0];
    Byte orangeUp = data[1];
    int jurisdictionState = data[2];
    for (int i = jurisdictionState; i < jurisdictionState + quantitativeRelation; i++) {
        int value = data[i] - orangeUp;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[jurisdictionState + quantitativeRelation] = 0;
    return data + jurisdictionState;
}

+ (NSString *)StringFromEigenvalueOfAMatrixData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EigenvalueOfAMatrixDataToCache:data]];
}

//: {8,20,8,20}
+ (NSString *)m_dataMsg {
    /* static */ NSString *m_dataMsg = nil;
    if (!m_dataMsg) {
		NSString *origin = @"0b01077df168757c392d33312d392d33317e54";
		NSData *data = [EigenvalueOfAMatrixData EigenvalueOfAMatrixDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_dataMsg = [self StringFromEigenvalueOfAMatrixData:value];
    }
    return m_dataMsg;
}

//: icon_session_time_bg
+ (NSString *)dream_upPath {
    /* static */ NSString *dream_upPath = nil;
    if (!dream_upPath) {
		NSString *origin = @"14540df82c688887ac2f01c3cdbdb7c3c2b3c7b9c7c7bdc3c2b3c8bdc1b9b3b6bb46";
		NSData *data = [EigenvalueOfAMatrixData EigenvalueOfAMatrixDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_upPath = [self StringFromEigenvalueOfAMatrixData:value];
    }
    return dream_upPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoveredOptionControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "CoveredOptionControl.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "PermitMenu.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface CoveredOptionControl()<DerivationDelegate>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation CoveredOptionControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)valueRow:(PossibilityMessageStyle *)model{
    //: [super refresh:model];
    [super valueRow:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> attachment = (id<ViewStyle>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(colorAction)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.colorAction;
        //: [self.label appendText:formatedMessage];
        [self.label pamphlet:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".with];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)ting:(UIControlState)state sharedOutgoing:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[EigenvalueOfAMatrixData dream_upPath]];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([EigenvalueOfAMatrixData m_dataMsg]);
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - DerivationDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)preface:(WithSessionNameView *)label
             //: clickedOnLink:(id)linkData
             openLink:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = notiObjectMessage;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];
    }
}


//: @end
@end