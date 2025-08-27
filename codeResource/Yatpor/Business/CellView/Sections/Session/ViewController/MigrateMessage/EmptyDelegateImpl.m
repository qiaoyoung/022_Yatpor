// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyDelegateImpl.m
//  NIM
//
//  Created by Sampson on 2018/12/16.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageDelegateImpl.h"
#import "EmptyDelegateImpl.h"
//: #import "NTESRedPacketAttachment.h"
#import "BarName.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "PermitMenu.h"
//: #import "NTESJanKenPonAttachment.h"
#import "StyleBubble.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "DisableTo.h"

//: @implementation NTESExportMessageDelegateImpl
@implementation EmptyDelegateImpl

// 对于自定义消息的类型，用户需自行处理是否支持历史消息迁移
//: - (BOOL)shouldExportMessage:(NIMMessage *)message {
- (BOOL)shouldExportMessage:(NIMMessage *)message {
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *customObject = message.messageObject;
        NIMCustomObject *customObject = message.messageObject;
        //: id<NIMCustomAttachment> attachment = customObject.attachment;
        id<NIMCustomAttachment> attachment = customObject.attachment;

        // 支持的自定义消息
        //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]]) {
        if ([attachment isKindOfClass:[StyleBubble class]]) {
            //: return YES;
            return YES;
        }

        // 其他类型的过滤
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}

//: - (void)onMessageWillExport:(NIMMessage *)message {
- (void)onMessageWillExport:(NIMMessage *)message {

}

//: @end
@end