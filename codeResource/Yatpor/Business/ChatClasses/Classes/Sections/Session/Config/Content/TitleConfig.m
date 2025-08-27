// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTextContentConfig.h"
#import "TitleConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentTextContentConfig()
@interface TitleConfig()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) WithSessionNameView *label;

//: @end
@end


//: @implementation ContentTextContentConfig
@implementation TitleConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
//    NSString *text = message.text;
//    if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
//    {
//        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
//    }

    //: self.label.font = [[MyUserKit sharedKit].config setting:message].font;
    self.label.font = [[UserKit totalSend].config color:message].font;

    //: [self.label nim_setText:text];
    [self.label maturity:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"ContentSessionTextContentView";
    return @"BottomControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
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
