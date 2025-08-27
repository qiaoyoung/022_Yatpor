
#import <Foundation/Foundation.h>

NSString *StringFromUsData(Byte *data);        


//: select_contact
Byte showBackData[] = {47, 14, 66, 4, 49, 35, 42, 35, 33, 50, 29, 33, 45, 44, 50, 31, 33, 50, 130};

//: 选择超限
Byte showCommentFormat[] = {35, 12, 59, 6, 235, 92, 174, 69, 78, 171, 80, 110, 173, 123, 74, 174, 94, 85, 117};

//: 选择群组
Byte appAccountBurdenValue[] = {15, 12, 49, 12, 76, 20, 162, 36, 15, 79, 132, 119, 184, 79, 88, 181, 90, 120, 182, 141, 115, 182, 138, 83, 244};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapName.m
// UserKit
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectConfig.h"
#import "TapName.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "DateSession.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "FFFKitInfo.h"
#import "ViewInfo.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation BottomBar : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)elect{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)showActivity{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [MatronymicPath colorStreetwise:StringFromUsData(showBackData)];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)titleComplete{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)textUser{
    //: return @"选择超限".nim_localized;
    return StringFromUsData(showCommentFormat).resign;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)deviceMax:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DateSession *groupedData = [[DateSession alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self media:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        GroundUser *user = [[GroundUser alloc] initWithBubble:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)media:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(outsideBar)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (ViewInfo *)name:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[UserKit totalSend] color:selectedId image:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation ImageLength : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)titleComplete{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)showActivity{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [MatronymicPath colorStreetwise:StringFromUsData(showBackData)];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)textUser{
    //: return @"选择超限".nim_localized;
    return StringFromUsData(showCommentFormat).resign;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)statusOn:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            margin:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            label:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf backgroundShoot:teamID
                                      //: uids:uids
                                      center:uids
                                   //: handler:handler];
                                   with:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf backgroundShoot:teamID
                                      //: uids:uids
                                      center:uids
                                   //: handler:handler];
                                   with:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)backgroundShoot:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    center:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 with:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DateSession *groupedData = [[DateSession alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self strain:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        DbaWith *user = [[DbaWith alloc] initWithMissive:uid
                                                                       //: session:_session];
                                                                       button:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)deviceMax:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self statusOn:_teamId
                              //: teamType:_teamType
                              margin:_teamType
                               //: handler:handler];
                               label:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)strain:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(outsideBar)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (ViewInfo *)name:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[UserKit totalSend] color:selectedId image:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation ArrayConfig : NSObject

//: - (NSString *)title{
- (NSString *)showActivity{
    //: return @"选择群组".nim_localized;
    return StringFromUsData(appAccountBurdenValue).resign;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)titleComplete{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)textUser{
    //: return @"选择超限".nim_localized;
    return StringFromUsData(showCommentFormat).resign;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)sizeChange:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self separateShouldSubjectMatter:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)deviceMax:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self sizeChange:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DateSession *groupedData = [[DateSession alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <AlterDate>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        LanguageMenu *team = [[LanguageMenu alloc] initWithNumbereract:tid message:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)separateShouldSubjectMatter:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(outsideBar)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (ViewInfo *)name:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[UserKit totalSend] search:selectedId speedy:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[UserKit totalSend] statusOption:selectedId mergeOf:nil];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * UsDataToCache(Byte *data) {
    int tactic = data[0];
    int customGrain = data[1];
    Byte ballotImage = data[2];
    int northern = data[3];
    if (!tactic) return data + northern;
    for (int i = northern; i < northern + customGrain; i++) {
        int value = data[i] + ballotImage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[northern + customGrain] = 0;
    return data + northern;
}

NSString *StringFromUsData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UsDataToCache(data)];
}
