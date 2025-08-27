
#import <Foundation/Foundation.h>

typedef struct {
    Byte ageLine;
    Byte *thoughtImage;
    unsigned int ye;
	int too;
} StructArtisticDialData;

@interface ArtisticDialData : NSObject

@end

@implementation ArtisticDialData

+ (NSData *)ArtisticDialDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ArtisticDialDataToByte:(StructArtisticDialData *)data {
    for (int i = 0; i < data->ye; i++) {
        data->thoughtImage[i] ^= data->ageLine;
    }
    data->thoughtImage[data->ye] = 0;
	if (data->ye >= 1) {
		data->too = data->thoughtImage[0];
	}
    return data->thoughtImage;
}

+ (NSString *)StringFromArtisticDialData:(StructArtisticDialData *)data {
    return [NSString stringWithUTF8String:(char *)[self ArtisticDialDataToByte:data]];
}

//: head_default
+ (NSString *)app_captainEmicFormat {
    /* static */ NSString *app_captainEmicFormat = nil;
    if (!app_captainEmicFormat) {
		NSArray<NSNumber *> *origin = @[@120, @117, @113, @116, @79, @116, @117, @118, @113, @101, @124, @100, @162];
		NSData *data = [ArtisticDialData ArtisticDialDataToData:origin];
        StructArtisticDialData value = (StructArtisticDialData){16, (Byte *)data.bytes, 12, 164};
        app_captainEmicFormat = [self StringFromArtisticDialData:&value];
    }
    return app_captainEmicFormat;
}

//: [自定义消息]
+ (NSString *)noti_distantTitle {
    /* static */ NSString *noti_distantTitle = nil;
    if (!noti_distantTitle) {
		NSArray<NSNumber *> *origin = @[@21, @166, @201, @228, @171, @224, @212, @170, @247, @199, @168, @248, @198, @168, @207, @225, @19, @21];
		NSData *data = [ArtisticDialData ArtisticDialDataToData:origin];
        StructArtisticDialData value = (StructArtisticDialData){78, (Byte *)data.bytes, 17, 207};
        noti_distantTitle = [self StringFromArtisticDialData:&value];
    }
    return noti_distantTitle;
}

//: invalid mode
+ (NSString *)show_guyIdent {
    /* static */ NSString *show_guyIdent = nil;
    if (!show_guyIdent) {
		NSArray<NSNumber *> *origin = @[@228, @227, @251, @236, @225, @228, @233, @173, @224, @226, @233, @232, @74];
		NSData *data = [ArtisticDialData ArtisticDialDataToData:origin];
        StructArtisticDialData value = (StructArtisticDialData){141, (Byte *)data.bytes, 12, 157};
        show_guyIdent = [self StringFromArtisticDialData:&value];
    }
    return show_guyIdent;
}

//: 未知消息
+ (NSString *)show_solarContent {
    /* static */ NSString *show_solarContent = nil;
    if (!show_solarContent) {
		NSArray<NSNumber *> *origin = @[@30, @100, @82, @31, @103, @93, @30, @78, @112, @30, @121, @87, @144];
		NSData *data = [ArtisticDialData ArtisticDialDataToData:origin];
        StructArtisticDialData value = (StructArtisticDialData){248, (Byte *)data.bytes, 12, 157};
        show_solarContent = [self StringFromArtisticDialData:&value];
    }
    return show_solarContent;
}

//: invalid type
+ (NSString *)mainDetectiveContent {
    /* static */ NSString *mainDetectiveContent = nil;
    if (!mainDetectiveContent) {
		NSArray<NSNumber *> *origin = @[@254, @249, @225, @246, @251, @254, @243, @183, @227, @238, @231, @242, @166];
		NSData *data = [ArtisticDialData ArtisticDialDataToData:origin];
        StructArtisticDialData value = (StructArtisticDialData){151, (Byte *)data.bytes, 12, 138};
        mainDetectiveContent = [self StringFromArtisticDialData:&value];
    }
    return mainDetectiveContent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DittyBagSizeBarTitle.m
// UserKit
//
//  Created by chris on 2016/10/31.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #pragma mark - kit data request
#pragma mark - kit data request

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitDataProviderImpl.h"
#import "DittyBagSizeBarTitle.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"

//: @interface NIMKitDataRequest : NSObject
@interface AnalogDigitalConverterQuick : NSObject

//: @property (nonatomic,strong) NSMutableSet *failedUserIds;
@property (nonatomic,strong) NSMutableSet *failedUserIds;

//: @property (nonatomic,assign) NSInteger maxMergeCount; 
@property (nonatomic,assign) NSInteger maxMergeCount; //最大合并数

//: - (void)requestUserIds:(NSArray *)userIds;
- (void)cell:(NSArray *)userIds;

//: @end
@end


//: @implementation NIMKitDataRequest{
@implementation AnalogDigitalConverterQuick{
    //: NSMutableArray *_requstUserIdArray; 
    NSMutableArray *_requstUserIdArray; //待请求池
    //: BOOL _isRequesting;
    BOOL _isRequesting;
}

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _failedUserIds = [[NSMutableSet alloc] init];
        _failedUserIds = [[NSMutableSet alloc] init];
        //: _requstUserIdArray = [[NSMutableArray alloc] init];
        _requstUserIdArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}


//: - (void)requestUserIds:(NSArray *)userIds
- (void)cell:(NSArray *)userIds
{
    //: for (NSString *userId in userIds)
    for (NSString *userId in userIds)
    {
        //: if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        {
            //: [_requstUserIdArray addObject:userId];
            [_requstUserIdArray addObject:userId];
        }
    }
    //: [self request];
    [self textRequest];
}


//: - (void)request
- (void)textRequest
{
    //: static NSUInteger MaxBatchReuqestCount = 10;
    static NSUInteger MaxBatchReuqestCount = 10;
    //: if (_isRequesting || [_requstUserIdArray count] == 0) {
    if (_isRequesting || [_requstUserIdArray count] == 0) {
        //: return;
        return;
    }
    //: _isRequesting = YES;
    _isRequesting = YES;
    //: NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    //: [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];
    [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
    [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
                                        //: completion:^(NSArray *users, NSError *error) {
                                        completion:^(NSArray *users, NSError *error) {
                                            //: [weakSelf afterReuquest:userIds];
                                            [weakSelf image:userIds];
                                            //: if (!error && users.count)
                                            if (!error && users.count)
                                            {
                                                //: [[MyUserKit sharedKit] notfiyUserInfoChanged:userIds];
                                                [[UserKit totalSend] icon:userIds];
                                            }
                                            //: else if ([weakSelf shouldAddToFailedUsers:error])
                                            else if ([weakSelf jerkUsers:error])
                                            {
                                                //: [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                                [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                            }
                                        //: }];
                                        }];
}

//: - (void)afterReuquest:(NSArray *)userIds
- (void)image:(NSArray *)userIds
{
    //: _isRequesting = NO;
    _isRequesting = NO;
    //: [_requstUserIdArray removeObjectsInArray:userIds];
    [_requstUserIdArray removeObjectsInArray:userIds];
    //: [self request];
    [self textRequest];

}

//: - (BOOL)shouldAddToFailedUsers:(NSError *)error
- (BOOL)jerkUsers:(NSError *)error
{
    //没有错误这种异常情况走到这个路径里也不对，不再请求
    //: return error.code != NIMRemoteErrorCodeTimeoutError || !error;
    return error.code != NIMRemoteErrorCodeTimeoutError || !error;
}

//: @end
@end

//: #pragma mark - data provider impl
#pragma mark - data provider impl

//: @interface FFFKitDataProviderImpl()<NIMUserManagerDelegate,
@interface DittyBagSizeBarTitle()<NIMUserManagerDelegate,
                                    //: NIMTeamManagerDelegate,
                                    NIMTeamManagerDelegate,
                                    //: NIMLoginManagerDelegate,
                                    NIMLoginManagerDelegate,
                                    //: NIMTeamManagerDelegate>
                                    NIMTeamManagerDelegate>

//: @property (nonatomic,strong) UIImage *defaultUserAvatar;
@property (nonatomic,strong) UIImage *defaultUserAvatar;

//: @property (nonatomic,strong) UIImage *defaultTeamAvatar;
@property (nonatomic,strong) UIImage *defaultTeamAvatar;

//: @property (nonatomic,strong) NIMKitDataRequest *request;
@property (nonatomic,strong) AnalogDigitalConverterQuick *request;

//: @end
@end


//: @implementation FFFKitDataProviderImpl
@implementation DittyBagSizeBarTitle

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _request = [[NIMKitDataRequest alloc] init];
        _request = [[AnalogDigitalConverterQuick alloc] init];
        //: _request.maxMergeCount = 20;
        _request.maxMergeCount = 20;
        //: [[NIMSDK sharedSDK].userManager addDelegate:self];
        [[NIMSDK sharedSDK].userManager addDelegate:self];
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
        //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
}


//: #pragma mark - public api
#pragma mark - public api
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (ViewInfo *)color:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option
                    image:(ImageOption *)option
{
    //: NIMSession *session = option.message.session?:option.session;
    NIMSession *session = option.message.session?:option.session;
    //: FFFKitInfo *info = [self infoByUser:userId session:session option:option];
    ViewInfo *info = [self line:userId userOption:session toMax:option];
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (ViewInfo *)search:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option
                    speedy:(ImageOption *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    ViewInfo *info = [[ViewInfo alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (ViewInfo *)statusOption:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option
                         mergeOf:(ImageOption *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    ViewInfo *info = [[ViewInfo alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)replyedMessage
- (NSString *)titled:(NIMMessage *)replyedMessage
{
    //: NIMMessageType messageType = replyedMessage.messageType;
    NIMMessageType messageType = replyedMessage.messageType;
    //: NSString *content = @"未知消息".nim_localized;
    NSString *content = [ArtisticDialData show_solarContent].resign;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.message = replyedMessage;
    option.message = replyedMessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replyedMessage.from option:option];
    ViewInfo *info = [[UserKit totalSend] color:replyedMessage.from image:option];
    //: NSString *from = info.showName;
    NSString *from = info.showName;
    //: switch (messageType) {
    switch (messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: content = replyedMessage.text;
            content = replyedMessage.text;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: content = @"[图片]".nim_localized;
            content = @"[图片]".resign;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: content = @"[视频]".nim_localized;
            content = @"[视频]".resign;
            //: break;
            break;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: content = @"[文件]".nim_localized;
            content = @"[文件]".resign;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: content = @"[位置]".nim_localized;
            content = @"[位置]".resign;
            //: break;
            break;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
            //: content = @"[通知]".nim_localized;
            content = @"[通知]".resign;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: content = @"[提示]".nim_localized;
            content = @"[提示]".resign;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: content = @"[语音]".nim_localized;
            content = @"[语音]".resign;
            //: break;
            break;
        //: case NIMMessageTypeCustom:
        case NIMMessageTypeCustom:
            //: content = @"[自定义消息]".nim_localized;
            content = [ArtisticDialData noti_distantTitle].resign;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (content.length > 0)
//    {
//        content = [NSString stringWithFormat:@"“%@”".nim_localized, content];
//    }
    //: return content;
    return content;
}

//: #pragma mark - 用户信息拼装
#pragma mark - 用户信息拼装
//会话中用户信息
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (ViewInfo *)line:(NSString *)userId
                   //: session:(NIMSession *)session
                   userOption:(NIMSession *)session
                    //: option:(FFFKitInfoFetchOption *)option
                    toMax:(ImageOption *)option
{
    //: NIMSessionType sessionType = session.sessionType;
    NIMSessionType sessionType = session.sessionType;
    //: FFFKitInfo *info;
    ViewInfo *info;

    //: switch (sessionType) {
    switch (sessionType) {
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        {
            //: info = [self userInfoInP2P:userId option:option];
            info = [self layer:userId doingOption:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        {
            //: info = [self userInfo:userId inTeam:session.sessionId option:option];
            info = [self origin:userId info:session.sessionId member:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
        {
            //: info = [self userInfo:userId inChatroom:session.sessionId option:option];
            info = [self designate:userId quick:session.sessionId consumer_strong:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        {
            //: info = [self userInfo:userId inSuperTeam:session.sessionId option:option];
            info = [self image:userId bubble:session.sessionId complete:option];
            //: break;
            break;
        }
        //: default:
        default:
            //: NSAssert(0, @"invalid type");
            NSAssert(0, [ArtisticDialData mainDetectiveContent]);
            //: break;
            break;
    }

    //: if (!info)
    if (!info)
    {
        //: if (!userId.length)
        if (!userId.length)
        {
            //: NSLog(@"warning: fetch user failed because userid is empty");
        }
        //: else
        else
        {
            //: [self.request requestUserIds:@[userId]];
            [self.request cell:@[userId]];
        }

        //: info = [[FFFKitInfo alloc] init];
        info = [[ViewInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: info.showName = userId; 
        info.showName = userId; //默认值
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}



//: #pragma mark - P2P 用户信息
#pragma mark - P2P 用户信息
//: - (FFFKitInfo *)userInfoInP2P:(NSString *)userId
- (ViewInfo *)layer:(NSString *)userId
                       //: option:(FFFKitInfoFetchOption *)option
                       doingOption:(ImageOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: FFFKitInfo *info;
    ViewInfo *info;
    //: if (userInfo)
    if (userInfo)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[ViewInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self addMagnitude:user
                                           //: nick:nil
                                           option:nil
                                         //: option:option];
                                         course:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 群组用户信息
#pragma mark - 群组用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (ViewInfo *)origin:(NSString *)userId
                  //: inTeam:(NSString *)teamId
                  info:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  member:(ImageOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                                 //: inTeam:teamId];
                                                                 inTeam:teamId];

    //: FFFKitInfo *info;
    ViewInfo *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[ViewInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self addMagnitude:user
                                           //: nick:member.nickname
                                           option:member.nickname
                                         //: option:option];
                                         course:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}

//: #pragma mark - 超大群用户信息
#pragma mark - 超大群用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (ViewInfo *)image:(NSString *)userId
             //: inSuperTeam:(NSString *)teamId
             bubble:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  complete:(ImageOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                      //: inTeam:teamId];
                                                                      inTeam:teamId];

    //: FFFKitInfo *info;
    ViewInfo *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[ViewInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self addMagnitude:user
                                           //: nick:member.nickname
                                           option:member.nickname
                                         //: option:option];
                                         course:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 聊天室用户信息
#pragma mark - 聊天室用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (ViewInfo *)designate:(NSString *)userId
              //: inChatroom:(NSString *)roomId
              quick:(NSString *)roomId
                  //: option:(FFFKitInfoFetchOption *)option
                  consumer_strong:(ImageOption *)option
{
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    ViewInfo *info = [[ViewInfo alloc] init];
    //: info.infoId = userId;
    info.infoId = userId;
    //: NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    //: (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    //: if (ext)
    if (ext)
    {
        //: info.showName = ext.roomNickname;
        info.showName = ext.roomNickname;
        //: info.avatarUrlString = ext.roomAvatar;
        info.avatarUrlString = ext.roomAvatar;
    }
    //: else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];
        NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];

        //: switch (mode) {
        switch (mode) {
            //: case NIMSDKAuthModeChatroom:
            case NIMSDKAuthModeChatroom:
            {
//                NSAssert([UserKit sharedKit].independentModeExtraInfo, @"in mode NIMSDKAuthModeChatroom , must has independentModeExtraInfo");
                //: info.showName = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomNickname;
                info.showName = [UserKit totalSend].independentModeExtraInfo.myChatroomNickname;
                //: info.avatarUrlString = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomAvatar;
                info.avatarUrlString = [UserKit totalSend].independentModeExtraInfo.myChatroomAvatar;
            }
                //: break;
                break;
            //: case NIMSDKAuthModeIM:
            case NIMSDKAuthModeIM:
            {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: info.showName = user.userInfo.nickName;
                info.showName = user.userInfo.nickName;
                //: info.avatarUrlString = user.userInfo.thumbAvatarUrl;
                info.avatarUrlString = user.userInfo.thumbAvatarUrl;
            }
                //: break;
                break;
            //: default:
            default:
            {
                //: NSAssert(0, @"invalid mode");
                NSAssert(0, [ArtisticDialData show_guyIdent]);
            }
                //: break;
                break;
        }
    }

    //: info.avatarImage = self.defaultUserAvatar;
    info.avatarImage = self.defaultUserAvatar;
    //: return info;
    return info;
}

//昵称优先级
//: - (NSString *)nicknameWithUser:(NIMUser *)user
- (NSString *)addMagnitude:(NIMUser *)user
                          //: nick:(NSString *)nick
                          option:(NSString *)nick
                        //: option:(FFFKitInfoFetchOption *)option
                        course:(ImageOption *)option
{
    //: NSString *name = nil;
    NSString *name = nil;
    //: do{
    do{
        //: if (!option.forbidaAlias && [user.alias length])
        if (!option.forbidaAlias && [user.alias length])
        {
            //: name = user.alias;
            name = user.alias;
            //: break;
            break;
        }
        //: if (nick && [nick length])
        if (nick && [nick length])
        {
            //: name = nick;
            name = nick;
            //: break;
            break;
        }

        //: if ([user.userInfo.nickName length])
        if ([user.userInfo.nickName length])
        {
            //: name = user.userInfo.nickName;
            name = user.userInfo.nickName;
            //: break;
            break;
        }
    //: }while (0);
    }while (0);
    //: return name;
    return name;
}

//: #pragma mark - avatar
#pragma mark - avatar
//: - (UIImage *)defaultTeamAvatar
- (UIImage *)defaultTeamAvatar
{
    //: if (!_defaultTeamAvatar)
    if (!_defaultTeamAvatar)
    {
        //: _defaultTeamAvatar = [UIImage imageNamed:@"head_default"];
        _defaultTeamAvatar = [UIImage imageNamed:[ArtisticDialData app_captainEmicFormat]];
    }
    //: return _defaultTeamAvatar;
    return _defaultTeamAvatar;
}

//: - (UIImage *)defaultUserAvatar
- (UIImage *)defaultUserAvatar
{
    //: if (!_defaultUserAvatar)
    if (!_defaultUserAvatar)
    {
        //: _defaultUserAvatar = [UIImage imageNamed:@"head_default"];
        _defaultUserAvatar = [UIImage imageNamed:[ArtisticDialData app_captainEmicFormat]];
    }
    //: return _defaultUserAvatar;
    return _defaultUserAvatar;
}




//将个人信息和群组信息变化通知给 UserKit 。
//如果您的应用不托管个人信息给云信，则需要您自行在上层监听个人信息变动，并将变动通知给 NIMKit。

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onFriendChanged:(NIMUser *)user
- (void)onFriendChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self colour:user];
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self colour:user];
}

//: - (void)notifyUser:(NIMUser *)user
- (void)colour:(NIMUser *)user
{
    //: if (!user)
    if (!user)
    {
        //: NSLog(@"warning: notify user failed because user is empty");
    }
    //: else
    else
    {
        //: [[MyUserKit sharedKit] notfiyUserInfoChanged:@[user.userId]];
        [[UserKit totalSend] icon:@[user.userId]];
    }

}

//: #pragma mark - NIMTeamManagerDelegate
#pragma mark - NIMTeamManagerDelegate
//: - (void)onTeamAdded:(NIMTeam *)team
- (void)onTeamAdded:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self tip:team];
}

//: - (void)onTeamUpdated:(NIMTeam *)team
- (void)onTeamUpdated:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self tip:team];
}

//: - (void)onTeamRemoved:(NIMTeam *)team
- (void)onTeamRemoved:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self tip:team];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team
- (void)onTeamMemberChanged:(NIMTeam *)team
{
    //: [self notifyTeamMember:team];
    [self afterPic:team];
}

//: - (void)notifyTeamInfo:(NIMTeam *)team
- (void)tip:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify teamid failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[UserKit totalSend] oldBegin:team.teamId formatTeamType:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[UserKit totalSend] oldBegin:team.teamId formatTeamType:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: - (void)notifyTeamMember:(NIMTeam *)team
- (void)afterPic:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify team member failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[UserKit totalSend] oldBegin:team.teamId formatTeamType:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[UserKit totalSend] oldBegin:team.teamId formatTeamType:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [[MyUserKit sharedKit] notifyTeamInfoChanged:nil type:NIMKitTeamTypeNomal];
        [[UserKit totalSend] oldBegin:nil formatTeamType:NIMKitTeamTypeNomal];
        //: [[MyUserKit sharedKit] notifyTeamMemebersChanged:nil type:NIMKitTeamTypeNomal];
        [[UserKit totalSend] present:nil nighttime:NIMKitTeamTypeNomal];
    }
}



//: @end
@end