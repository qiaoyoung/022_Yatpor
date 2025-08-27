// __DEBUG__
// __CLOSE_PRINT__
//
//  KitEvent.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"

//: @interface ContentKitEvent : NSObject
@interface KitEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) ContentMessageModel *messageModel;
@property (nonatomic,strong) PossibilityMessageStyle *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const ContentKitEventNameTapContent;
extern NSString *const user_quickCommentValue;
//: extern NSString *const ContentKitEventNameTapLabelLink;
extern NSString *const m_styleIdent;
//: extern NSString *const ContentKitEventNameTapAudio;
extern NSString *const app_applyText;

//: extern NSString *const ContentKitEventNameTapRepliedContent;
extern NSString *const k_contentFormat;
