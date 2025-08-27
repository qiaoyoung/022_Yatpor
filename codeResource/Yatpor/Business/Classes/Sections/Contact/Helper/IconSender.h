// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface IconSender : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)beforeRandom:(NSString *)content digitizer:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)collection:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)to:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    state:(NSString *)roomName
                     //: members:(NSArray *)members;
                     notification:(NSArray *)members;

//: @end
@end