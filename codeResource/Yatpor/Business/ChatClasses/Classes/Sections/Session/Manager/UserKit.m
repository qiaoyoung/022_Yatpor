
#import <Foundation/Foundation.h>

typedef struct {
    Byte commencement;
    Byte *startRed;
    unsigned int sprayBegin;
	int howdy;
	int anythingCustom;
	int theological;
} StructRefrigeratorData;

@interface RefrigeratorData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RefrigeratorData

+ (instancetype)sharedInstance {
    static RefrigeratorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RefrigeratorDataToData:(NSString *)value {
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

- (Byte *)RefrigeratorDataToByte:(StructRefrigeratorData *)data {
    for (int i = 0; i < data->sprayBegin; i++) {
        data->startRed[i] ^= data->commencement;
    }
    data->startRed[data->sprayBegin] = 0;
	if (data->sprayBegin >= 3) {
		data->howdy = data->startRed[0];
		data->anythingCustom = data->startRed[1];
		data->theological = data->startRed[2];
	}
    return data->startRed;
}

- (NSString *)StringFromRefrigeratorData:(StructRefrigeratorData *)data {
    return [NSString stringWithUTF8String:(char *)[self RefrigeratorDataToByte:data]];
}

//: class should be subclass of NIMLayoutConfig
- (NSString *)app_ignoreAdoptName {
    /* static */ NSString *app_ignoreAdoptName = nil;
    if (!app_ignoreAdoptName) {
		NSString *origin = @"E0EFE2F0F0A3F0EBECF6EFE7A3E1E6A3F0F6E1E0EFE2F0F0A3ECE5A3CDCACECFE2FAECF6F7C0ECEDE5EAE4F4";
		NSData *data = [RefrigeratorData RefrigeratorDataToData:origin];
        StructRefrigeratorData value = (StructRefrigeratorData){131, (Byte *)data.bytes, 43, 246, 82, 61};
        app_ignoreAdoptName = [self StringFromRefrigeratorData:&value];
    }
    return app_ignoreAdoptName;
}

//: \"未知消息\"
- (NSString *)k_hearingRetchPath {
    /* static */ NSString *k_hearingRetchPath = nil;
    if (!k_hearingRetchPath) {
		NSString *origin = @"D81C66501D655F1C4C721C7B55D89F";
		NSData *data = [RefrigeratorData RefrigeratorDataToData:origin];
        StructRefrigeratorData value = (StructRefrigeratorData){250, (Byte *)data.bytes, 14, 65, 241, 66};
        k_hearingRetchPath = [self StringFromRefrigeratorData:&value];
    }
    return k_hearingRetchPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
// UserKit.m
// UserKit
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitTimerHolder.h"
#import "KitTeamHoldingDeviceScale.h"
//: #import "FFFKitNotificationFirer.h"
#import "SmartMobile.h"
//: #import "FFFKitDataProviderImpl.h"
#import "DittyBagSizeBarTitle.h"
//: #import "FFFCellLayoutConfig.h"
#import "MenuConfig.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "FFFChatUIManager.h"
#import "ViewColor.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const main_kitData;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const app_versionKey;


//: @interface MyUserKit(){
@interface UserKit(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) SmartMobile *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<MenuConfig> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation UserKit
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[SmartMobile alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[DittyBagSizeBarTitle alloc] init]; //默认使用 UserKit 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[MenuConfig alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self reload];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)totalSend
{
    //: static MyUserKit *instance = nil;
    static UserKit *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[UserKit alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)crop:(MenuConfig *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[MenuConfig class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, [[RefrigeratorData sharedInstance] app_ignoreAdoptName]);
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle item];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle findAt];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<ViewColor>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return ViewColor.system;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<MenuConfig>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (RangeConfig *)config
{
    //不要放在 UserKit 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[RangeConfig alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)icon:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        OccasionSize *info = [[OccasionSize alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = main_kitData;
        //: [self.firer addFireInfo:info];
        [self.firer fire:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)oldBegin:(NSString *)teamId formatTeamType:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    OccasionSize *info = [[OccasionSize alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = app_versionKey;
    //: [self.firer addFireInfo:info];
    [self.firer fire:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)present:(NSString *)teamId nighttime:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    OccasionSize *info = [[OccasionSize alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer fire:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (ViewInfo *)color:(NSString *)userId image:(ImageOption *)option
{
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(color:image:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider color:userId image:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (ViewInfo *)search:(NSString *)teamId speedy:(ImageOption *)option
{
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(search:speedy:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider search:teamId speedy:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (ViewInfo *)statusOption:(NSString *)teamId mergeOf:(ImageOption *)option
{
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(statusOption:mergeOf:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider statusOption:teamId mergeOf:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)reload {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[CompleteManager index] off];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)titled:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return [[RefrigeratorData sharedInstance] k_hearingRetchPath].resign;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(titled:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider titled:message];
    }
    //: return info;
    return info;
}

//: @end
@end