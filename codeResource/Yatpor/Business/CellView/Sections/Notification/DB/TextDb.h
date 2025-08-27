// __DEBUG__
// __CLOSE_PRINT__
//
//  TextDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class EnableOrigin;
//: @interface NTESCustomNotificationDB : NSObject
@interface TextDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)valuePress;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)fetch:(EnableOrigin *)notification
                          //: limit:(NSInteger)limit;
                          nearTitle:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)menuIn:(EnableOrigin *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)foreword:(EnableOrigin *)notification;

//: - (void)deleteAllNotification;
- (void)need;

//: - (void)markAllNotificationsAsRead;
- (void)inputPressed;

//: @end
@end