
#import <Foundation/Foundation.h>

@interface HullData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HullData

+ (instancetype)sharedInstance {
    static HullData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HullDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HullDataToCache:(Byte *)data {
    int fileAllocationTable = data[0];
    Byte startMessage = data[1];
    int far = data[2];
    for (int i = far; i < far + fileAllocationTable; i++) {
        int value = data[i] - startMessage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[far + fileAllocationTable] = 0;
    return data + far;
}

- (NSString *)StringFromHullData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HullDataToCache:data]];
}

//: teamId
- (NSString *)m_viewValue {
    /* static */ NSString *m_viewValue = nil;
    if (!m_viewValue) {
		NSString *origin = @"065e0c471702a8a30b77b18fd2c3bfcba7c294";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_viewValue = [self StringFromHullData:value];
    }
    return m_viewValue;
}

//: content
- (NSString *)user_accountMessage {
    /* static */ NSString *user_accountMessage = nil;
    if (!user_accountMessage) {
		NSString *origin = @"070908fb3e6050226c78777d6e777dd9";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_accountMessage = [self StringFromHullData:value];
    }
    return user_accountMessage;
}

//: teamType
- (NSString *)app_closeMessage {
    /* static */ NSString *app_closeMessage = nil;
    if (!app_closeMessage) {
		NSString *origin = @"083e0c149ee1f7621abacbfcb2a39fab92b7aea36f";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_closeMessage = [self StringFromHullData:value];
    }
    return app_closeMessage;
}

//: 正在呼叫您
- (NSString *)mainTingTitle {
    /* static */ NSString *mainTingTitle = nil;
    if (!mainTingTitle) {
		NSString *origin = @"0f5a0b3b02cab16cfa4a204007fd3ff6023feb163fe90540dc0291";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTingTitle = [self StringFromHullData:value];
    }
    return mainTingTitle;
}

//: teamName
- (NSString *)mainTagTitle {
    /* static */ NSString *mainTagTitle = nil;
    if (!mainTagTitle) {
		NSString *origin = @"08120ccabe1d85823b7586328677737f60737f771e";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTagTitle = [self StringFromHullData:value];
    }
    return mainTagTitle;
}

//: members
- (NSString *)m_showUrl {
    /* static */ NSString *m_showUrl = nil;
    if (!m_showUrl) {
		NSString *origin = @"07370ac419b07b8972f3a49ca4999ca9aaa1";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_showUrl = [self StringFromHullData:value];
    }
    return m_showUrl;
}

//: room
- (NSString *)show_kitStateMsg {
    /* static */ NSString *show_kitStateMsg = nil;
    if (!show_kitStateMsg) {
		NSString *origin = @"04380ca7ff790673180e7b05aaa7a7a536";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_kitStateMsg = [self StringFromHullData:value];
    }
    return show_kitStateMsg;
}

//: Group
- (NSString *)app_startShareForIdent {
    /* static */ NSString *app_startShareForIdent = nil;
    if (!app_startShareForIdent) {
		NSString *origin = @"05080bf0ee4e6cContentdc3d44f7a777d7827";
		NSData *data = [HullData HullDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_startShareForIdent = [self StringFromHullData:value];
    }
    return app_startShareForIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomSysNotificationSender.h"
#import "IconSender.h"
//: #import "ContentKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"

//: @interface NTESCustomSysNotificationSender ()
@interface IconSender ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation IconSender

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)beforeRandom:(NSString *)content digitizer:(NIMSession *)session{
    //: if (!content) {
    if (!content) {
        //: return;
        return;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((2)),
                           @"id" : @((2)),
                           //: @"content" : content,
                           [[HullData sharedInstance] user_accountMessage] : content,
                           //: };
                           };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *json = [[NSString alloc] initWithData:data
    NSString *json = [[NSString alloc] initWithData:data
                                              //: encoding:NSUTF8StringEncoding];
                                              encoding:NSUTF8StringEncoding];

    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    //: notification.apnsContent = content;
    notification.apnsContent = content;
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[PassageSetting language] panoply];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;
    //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
    [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                 //: toSession:session
                                                                 toSession:session
                                                                //: completion:nil];
                                                                completion:nil];
}


//: - (void)sendTypingState:(NIMSession *)session
- (void)collection:(NIMSession *)session
{
    //: NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    //: if (session.sessionType != NIMSessionTypeP2P ||
    if (session.sessionType != NIMSessionTypeP2P ||
        //: [session.sessionId isEqualToString:currentAccount])
        [session.sessionId isEqualToString:currentAccount])
    {
        //: return;
        return;
    }

    //: NSDate *now = [NSDate date];
    NSDate *now = [NSDate date];
    //: if (_lastTime == nil ||
    if (_lastTime == nil ||
        //: [now timeIntervalSinceDate:_lastTime] > 3)
        [now timeIntervalSinceDate:_lastTime] > 3)
    {
        //: _lastTime = now;
        _lastTime = now;

        //: NSDictionary *dict = @{@"id" : @((1))};
        NSDictionary *dict = @{@"id" : @((1))};
        //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
        NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
        //: NSString *content = [[NSString alloc] initWithData:data
        NSString *content = [[NSString alloc] initWithData:data
                                                  //: encoding:NSUTF8StringEncoding];
                                                  encoding:NSUTF8StringEncoding];

        //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        //: notification.sendToOnlineUsersOnly = YES;
        notification.sendToOnlineUsersOnly = YES;
        //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
        notification.env = [[PassageSetting language] panoply];
        //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        //: setting.apnsEnabled = NO;
        setting.apnsEnabled = NO;
        //: notification.setting = setting;
        notification.setting = setting;
        //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
        [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                     //: toSession:session
                                                                     toSession:session
                                                                    //: completion:nil];
                                                                    completion:nil];
    }

}


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)to:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    state:(NSString *)roomName
                     //: members:(NSArray *)members
                     notification:(NSArray *)members
{
    //: if (!team || !team.teamId || !members) {
    if (!team || !team.teamId || !members) {
        //: return;
        return;
    }

    //: NSString *teamId = team.teamId;
    NSString *teamId = team.teamId;
    //: NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    //: if (team.type == NIMTeamTypeSuper) {
    if (team.type == NIMTeamTypeSuper) {
        //: teamType = NIMKitTeamTypeSuper;
        teamType = NIMKitTeamTypeSuper;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((3)),
                           @"id" : @((3)),
                           //: @"members" : members,
                           [[HullData sharedInstance] m_showUrl] : members,
                           //: @"teamId" : teamId,
                           [[HullData sharedInstance] m_viewValue] : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [[HullData sharedInstance] mainTagTitle] : team.teamName? team.teamName : [[HullData sharedInstance] app_startShareForIdent],
                           //: @"room" : roomName,
                           [[HullData sharedInstance] show_kitStateMsg] : roomName,
                           //: @"teamType" : @(teamType)
                           [[HullData sharedInstance] app_closeMessage] : @(teamType)
                          //: };
                          };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = [[NSString alloc] initWithData:data
    NSString *content = [[NSString alloc] initWithData:data
                                           //: encoding:NSUTF8StringEncoding];
                                           encoding:NSUTF8StringEncoding];
    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[PassageSetting language] panoply];
    //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: ContentKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    ViewInfo *me = [[UserKit totalSend] color:[NIMSDK sharedSDK].loginManager.currentAccount image:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[[HullData sharedInstance] mainTingTitle].with];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;


    //: for (NSString *userId in members) {
    for (NSString *userId in members) {
        //: if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        {
            //: continue;
            continue;
        }
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
        [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
    }

}




//: @end
@end
