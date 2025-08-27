// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESJanKenPonAttachment;
@class StyleBubble;
//: @class NTESSnapchatAttachment;
@class DisableTo;
//: @class NTESWhiteboardAttachment;
@class TitleAttachment;
//: @class NTESRedPacketAttachment;
@class BarName;
//: @class NTESRedPacketTipAttachment;
@class PermitMenu;
//: @class NTESMultiRetweetAttachment;
@class NameSessionSuccess;
//: @class NTESShareCardAttachment;
@class LengthAttachment;

//: @interface NTESSessionMsgConverter : NSObject
@interface TingEmptyBubble : NSObject

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)name:(NSString *)text;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)min:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)completeList:(NSString *)path;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)info:(NSString *)filePath;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)containerVideo:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment;
+ (NIMMessage *)bump:(StyleBubble *)attachment;

//: + (NIMMessage *)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment;
+ (NIMMessage *)snapchatMessage:(DisableTo *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment;
+ (NIMMessage *)sound:(TitleAttachment *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)dateApp:(NSString *)path;

//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)sinceFile:(NSData *)data view_strong:(NSString *)extension;

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)tap:(NSString *)tip;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)tingChange:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              show:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         tag:(NSString *)revokeCallbackExt;

//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment;
+ (NIMMessage *)quickTip:(BarName *)attachment;

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment;
+ (NIMMessage *)messageText:(PermitMenu *)attachment;

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment;
+ (NIMMessage *)shared:(NameSessionSuccess *)attachment;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)successMessage:(NIMMessage *)revocationMessage;

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment;
+ (NIMMessage *)compartmentCard:(LengthAttachment *)attachment;

//: @end
@end