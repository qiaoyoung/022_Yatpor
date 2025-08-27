// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentConfig.m
// UserKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentReplyedTextContentConfig.h"
#import "ContentConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentReplyedTextContentConfig ()
@interface ContentConfig ()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) WithSessionNameView *label;

//: @end
@end

//: @implementation ContentReplyedTextContentConfig
@implementation ContentConfig


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NSString *text = [[MyUserKit sharedKit] replyedContentWithMessage:message];
    NSString *text = [[UserKit totalSend] titled:message];
    //: self.label.font = [[MyUserKit sharedKit].config repliedSetting:message].replyedFont;
    self.label.font = [[UserKit totalSend].config sceneSetting:message].replyedFont;

    //: [self.label nim_setText:text];
    [self.label maturity:text];

//    CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
//    CGFloat bubbleLeftToContent  = 14;
//    CGFloat contentRightToBubble = 14;
//    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
//    
//    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
//    return CGSizeMake(ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);

    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGFloat nameMaxWidth = (msgContentMaxWidth - 50);
    CGFloat nameMaxWidth = (msgContentMaxWidth - 50);

    //: CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    //: return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);
    return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);



}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config repliedSetting:message].contentInsets;
    return [[UserKit totalSend].config sceneSetting:message].contentInsets;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"ContentReplyedTextContentView";
    return @"LanguageControl";
}

//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (WithSessionNameView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}


//: @end
@end
