
#import <Foundation/Foundation.h>

typedef struct {
    Byte adequateTeam;
    Byte *walkTo;
    unsigned int labCover;
	int libraryQuarterback;
	int maleChest;
} StructFireData;

@interface FireData : NSObject

+ (instancetype)sharedInstance;

//: info must be fired in main thread
@property (nonatomic, copy) NSString *userLabUpIdent;

@end

@implementation FireData

+ (instancetype)sharedInstance {
    static FireData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FireDataToByte:(StructFireData *)data {
    for (int i = 0; i < data->labCover; i++) {
        data->walkTo[i] ^= data->adequateTeam;
    }
    data->walkTo[data->labCover] = 0;
	if (data->labCover >= 2) {
		data->libraryQuarterback = data->walkTo[0];
		data->maleChest = data->walkTo[1];
	}
    return data->walkTo;
}

- (NSString *)StringFromFireData:(StructFireData *)data {
    return [NSString stringWithUTF8String:(char *)[self FireDataToByte:data]];
}

//: info must be fired in main thread
- (NSString *)userLabUpIdent {
    if (!_userLabUpIdent) {
        StructFireData value = (StructFireData){124, (Byte []){21, 18, 26, 19, 92, 17, 9, 15, 8, 92, 30, 25, 92, 26, 21, 14, 25, 24, 92, 21, 18, 92, 17, 29, 21, 18, 92, 8, 20, 14, 25, 29, 24, 181}, 33, 59, 85};
        _userLabUpIdent = [self StringFromFireData:&value];
    }
    return _userLabUpIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartMobile.m
// UserKit
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitNotificationFirer.h"
#import "SmartMobile.h"

//: NSString *const main_kitData = @"main_kitData";
NSString *const main_kitData = @"main_kitData";
//: NSString *const app_versionKey = @"app_versionKey";
NSString *const app_versionKey = @"app_versionKey";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const userSizeTapValue = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const k_onceMessage = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const k_kitData = @"k_kitData";
NSString *const k_kitData = @"k_kitData";

//: NSString *const dream_bottomFormat = @"InfoId";
NSString *const dream_bottomFormat = @"InfoId";

//: @implementation ContentKitNotificationFirer
@implementation SmartMobile

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[ContentKitTimerHolder alloc] init];
        _timer = [[KitTeamHoldingDeviceScale alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)fire:(OccasionSize *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, [FireData sharedInstance].userLabUpIdent);
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer should:self.timeInterval bubbleTimer:self colouring:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.to];
}

//: #pragma mark - ContentKitTimerHolderDelegate
#pragma mark - MobileDelegate

//: - (void)onNIMKitTimerFired:(ContentKitTimerHolder *)holder{
- (void)kitFired:(KitTeamHoldingDeviceScale *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (OccasionSize *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.recordObject) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.recordObject];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ dream_bottomFormat:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ dream_bottomFormat:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation OccasionSize

//: - (NSObject *)fireObject
- (NSObject *)recordObject
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)to
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end
