
#import <Foundation/Foundation.h>

NSString *StringFromShowData(Byte *data);


//: icon_whiteboard_session_msg
Byte showInfoCoverMsg[] = {40, 27, 31, 13, 247, 12, 127, 82, 181, 55, 107, 254, 241, 136, 130, 142, 141, 126, 150, 135, 136, 147, 132, 129, 142, 128, 145, 131, 126, 146, 132, 146, 146, 136, 142, 141, 126, 140, 146, 134, 63};

//: flag
Byte show_containerKey[] = {90, 4, 78, 7, 8, 95, 225, 180, 186, 175, 181, 147};

//: type
Byte mainViewPath[] = {65, 4, 55, 11, 86, 224, 115, 171, 90, 157, 239, 171, 176, 167, 156, 121};

//: 我发起了白板演示
Byte m_shareName[] = {87, 24, 60, 14, 212, 73, 184, 79, 113, 25, 98, 15, 123, 67, 34, 196, 205, 33, 203, 205, 36, 241, 243, 32, 246, 194, 35, 213, 249, 34, 217, 251, 34, 248, 208, 35, 224, 246, 166};

//: 白板演示已结束
Byte k_textViewMessage[] = {17, 21, 83, 7, 174, 167, 163, 58, 236, 16, 57, 240, 18, 57, 15, 231, 58, 247, 13, 56, 10, 5, 58, 14, 230, 57, 240, 242, 220};

//: data
Byte kDoingMessage[] = {86, 4, 55, 11, 146, 15, 49, 69, 1, 112, 66, 155, 152, 171, 152, 58};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAttachment.m
//  NIM
//
//  Created by 高峰 on 15/7/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @implementation NTESWhiteboardAttachment
@implementation TitleAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeWhiteboard),
    NSDictionary *dict = @{StringFromShowData(mainViewPath) : @(CustomMessageTypeWhiteboard),
                           //: @"data" : @{@"flag":@(self.flag)}};
                           StringFromShowData(kDoingMessage) : @{StringFromShowData(show_containerKey):@(self.flag)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}

//: - (NSString *)formatedMessage{
- (NSString *)colorAction{
    //: NSString *msg = @"";
    NSString *msg = @"";
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: msg = @"我发起了白板演示".ntes_localized;
            msg = StringFromShowData(m_shareName).with;
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: msg = @"白板演示已结束".ntes_localized;
            msg = StringFromShowData(k_textViewMessage).with;
        //: default:
        default:
            //: break;
            break;
    }
    //: return msg;
    return msg;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)tap:(NIMMessage *)message{
    //: NSString *content;
    NSString *content;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: content = @"NTESSessionWhiteBoardContentView";
            content = @"SizeContentView";
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: content = @"NTESSessionTipContentView";
            content = @"TipContentView";
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: return content;
    return content;
}

//: - (BOOL)shouldShowAvatar
- (BOOL)event
{
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: return YES;
            return YES;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return NO;
    return NO;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width{
    //: CGSize contentSize;
    CGSize contentSize;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:{
        case CustomWhiteboardFlagInvite:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            WithSessionNameView *label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [UIFont systemFontOfSize:14];
            label.font = [UIFont systemFontOfSize:14];
            //: [label setText:self.formatedMessage];
            [label setText:self.colorAction];
            //: UIImage *image = [UIImage imageNamed:@"icon_whiteboard_session_msg"];
            UIImage *image = [UIImage imageNamed:StringFromShowData(showInfoCoverMsg)];
            //: CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            //: CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            //: break;
            break;
        }
        //: case CustomWhiteboardFlagClose:{
        case CustomWhiteboardFlagClose:{
            //: CGFloat messageWidth = width;
            CGFloat messageWidth = width;
            //: CGFloat messageHeight = 40;
            CGFloat messageHeight = 40;
            //: contentSize = CGSizeMake(messageWidth, messageHeight);
            contentSize = CGSizeMake(messageWidth, messageHeight);
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentMode:(NIMMessage *)message
{
    //: if (self.flag == CustomWhiteboardFlagClose) {
    if (self.flag == CustomWhiteboardFlagClose) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    //: } else {
    } else {
        //: CGFloat selfBubbleTopToContentForBoard = 11.f;
        CGFloat selfBubbleTopToContentForBoard = 11.f;
        //: CGFloat selfBubbleLeftToContentForBoard = 11.f;
        CGFloat selfBubbleLeftToContentForBoard = 11.f;
        //: CGFloat selfContentButtomToBubbleForBoard = 9.f;
        CGFloat selfContentButtomToBubbleForBoard = 9.f;
        //: CGFloat selfBubbleRightToContentForBoard = 15.f;
        CGFloat selfBubbleRightToContentForBoard = 15.f;

        //: CGFloat otherBubbleTopToContentForBoard = 11.f;
        CGFloat otherBubbleTopToContentForBoard = 11.f;
        //: CGFloat otherBubbleLeftToContentForBoard = 15.f;
        CGFloat otherBubbleLeftToContentForBoard = 15.f;
        //: CGFloat otherContentButtomToBubbleForBoard = 9.f;
        CGFloat otherContentButtomToBubbleForBoard = 9.f;
        //: CGFloat otherContentRightToBubbleForBoard = 9.f;
        CGFloat otherContentRightToBubbleForBoard = 9.f;


        //: return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
        return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
                                                        //: selfBubbleLeftToContentForBoard,
                                                        selfBubbleLeftToContentForBoard,
                                                        //: selfContentButtomToBubbleForBoard,
                                                        selfContentButtomToBubbleForBoard,
                                                        //: selfBubbleRightToContentForBoard):
                                                        selfBubbleRightToContentForBoard):
        //: UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
        UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
                         //: otherBubbleLeftToContentForBoard,
                         otherBubbleLeftToContentForBoard,
                         //: otherContentButtomToBubbleForBoard,
                         otherContentButtomToBubbleForBoard,
                         //: otherContentRightToBubbleForBoard);
                         otherContentRightToBubbleForBoard);
    }
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)bringForthTing:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeForwarded
- (BOOL)referColor
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)tinMaxFile
{
    //: return NO;
    return NO;
}



//: @end
@end

Byte * ShowDataToCache(Byte *data) {
    int layerBar = data[0];
    int imageEnable = data[1];
    Byte oeilDeBoeuf = data[2];
    int coverDate = data[3];
    if (!layerBar) return data + coverDate;
    for (int i = coverDate; i < coverDate + imageEnable; i++) {
        int value = data[i] - oeilDeBoeuf;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[coverDate + imageEnable] = 0;
    return data + coverDate;
}

NSString *StringFromShowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShowDataToCache(data)];
}
