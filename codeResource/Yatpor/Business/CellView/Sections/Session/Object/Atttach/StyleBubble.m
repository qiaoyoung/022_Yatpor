
#import <Foundation/Foundation.h>

@interface DismissData : NSObject

@end

@implementation DismissData

+ (Byte *)DismissDataToCache:(Byte *)data {
    int titleLine = data[0];
    Byte buttonView = data[1];
    int panoramicView = data[2];
    for (int i = panoramicView; i < panoramicView + titleLine; i++) {
        int value = data[i] - buttonView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[panoramicView + titleLine] = 0;
    return data + panoramicView;
}

+ (NSString *)StringFromDismissData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DismissDataToCache:data]];
}

//: custom_msg_jan
+ (NSString *)appTitleRedName {
    /* static */ NSString *appTitleRedName = nil;
    if (!appTitleRedName) {
        Byte value[] = {14, 2, 7, 94, 37, 105, 145, 101, 119, 117, 118, 113, 111, 97, 111, 117, 105, 97, 108, 99, 112, 69};
        appTitleRedName = [self StringFromDismissData:value];
    }
    return appTitleRedName;
}

//: custom_msg_pon
+ (NSString *)dream_beginName {
    /* static */ NSString *dream_beginName = nil;
    if (!dream_beginName) {
        Byte value[] = {14, 87, 3, 186, 204, 202, 203, 198, 196, 182, 196, 202, 190, 182, 199, 198, 197, 222};
        dream_beginName = [self StringFromDismissData:value];
    }
    return dream_beginName;
}

//: data
+ (NSString *)main_releaseIdent {
    /* static */ NSString *main_releaseIdent = nil;
    if (!main_releaseIdent) {
        Byte value[] = {4, 9, 9, 132, 88, 176, 234, 216, 202, 109, 106, 125, 106, 36};
        main_releaseIdent = [self StringFromDismissData:value];
    }
    return main_releaseIdent;
}

//: type
+ (NSString *)showShareStr {
    /* static */ NSString *showShareStr = nil;
    if (!showShareStr) {
        Byte value[] = {4, 5, 3, 121, 126, 117, 106, 209};
        showShareStr = [self StringFromDismissData:value];
    }
    return showShareStr;
}

//: value
+ (NSString *)notiCollectionMsg {
    /* static */ NSString *notiCollectionMsg = nil;
    if (!notiCollectionMsg) {
        Byte value[] = {5, 37, 5, 119, 248, 155, 134, 145, 154, 138, 64};
        notiCollectionMsg = [self StringFromDismissData:value];
    }
    return notiCollectionMsg;
}

//: custom_msg_ken
+ (NSString *)appStartKey {
    /* static */ NSString *appStartKey = nil;
    if (!appStartKey) {
        Byte value[] = {14, 13, 12, 80, 177, 230, 14, 124, 225, 89, 195, 71, 112, 130, 128, 129, 124, 122, 108, 122, 128, 116, 108, 120, 114, 123, 220};
        appStartKey = [self StringFromDismissData:value];
    }
    return appStartKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StyleBubble.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "StyleBubble.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation StyleBubble

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{[DismissData showShareStr] : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           [DismissData main_releaseIdent] : @{[DismissData notiCollectionMsg]:@(self.value)}};
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


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)tap:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"MottleTextView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentMode:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:[DismissData appTitleRedName]];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:[DismissData appStartKey]];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:[DismissData dream_beginName]];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)tinMaxFile
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)referColor
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)bringForthTing:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end