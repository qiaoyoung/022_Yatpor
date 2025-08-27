// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamLanguage.h
// UserKit
//
//  Created by amao on 8/13/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMSession;
@class NIMSession;
//: @class FFFKitInfo;
@class ViewInfo;
//: @class FFFKitInfoFetchOption;
@class ImageOption;
//: @class NIMMessage;
@class NIMMessage;

//: @protocol FFFKitDataProvider <NSObject>
@protocol TeamLanguage <NSObject>

//: @optional
@optional

/**
 *  上层提供用户信息的接口
 *
 *  @param userId  用户ID
 *  @param option  获取选项
 *
 *  @return 用户信息
 */
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (ViewInfo *)color:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option;
                    image:(ImageOption *)option;


/**
 *  上层提供群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (ViewInfo *)search:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option;
                    speedy:(ImageOption *)option;

/**
 *  上层提供超大群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (ViewInfo *)statusOption:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option;
                         mergeOf:(ImageOption *)option;

/**
*  上层提供被回复消息内容给统一格式的接口
*
*  @param message 被回复的消息
*
*  @return 回复展示内容
*/
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)titled:(NIMMessage *)message;

//: @end
@end