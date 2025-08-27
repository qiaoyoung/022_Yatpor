// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickBubble.h
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESNoticationUtil : NSObject
@interface QuickBubble : NSObject

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note;
+ (NSString *)airBubbleItem:(NIMRevokeMessageNotification *)note;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END