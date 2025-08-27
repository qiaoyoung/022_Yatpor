
#import <Foundation/Foundation.h>

@interface ExecutionData : NSObject

+ (instancetype)sharedInstance;

//: 邀请成功
@property (nonatomic, copy) NSString *kBladeId;

//: modify_activity_modify_success
@property (nonatomic, copy) NSString *user_busyMsg;

//: postscript
@property (nonatomic, copy) NSString *user_assumptionIdent;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *app_sopBubbleTitle;

//: 超大群未开放该功能
@property (nonatomic, copy) NSString *mPatronStopPath;

//: 邀请失败
@property (nonatomic, copy) NSString *kNecessityYeBratName;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *noti_seniorTentMsg;

//: 你已经不在群里
@property (nonatomic, copy) NSString *dreamUreaTitle;

//: attach
@property (nonatomic, copy) NSString *dreamGrainRangeMsg;

//: user_profile_avtivity_user_info_update_failed
@property (nonatomic, copy) NSString *appAdoptShareData;

//: nimkit.teamlist.data
@property (nonatomic, copy) NSString *k_scanIdent;

//: 邀请成功，等待验证
@property (nonatomic, copy) NSString *notiImageStartPath;

@end

@implementation ExecutionData

+ (instancetype)sharedInstance {
    static ExecutionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ExecutionDataToData:(NSString *)value {
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

- (Byte *)ExecutionDataToCache:(Byte *)data {
    int illRelation = data[0];
    Byte busyShareAttend = data[1];
    int taphouse = data[2];
    for (int i = taphouse; i < taphouse + illRelation; i++) {
        int value = data[i] + busyShareAttend;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[taphouse + illRelation] = 0;
    return data + taphouse;
}

- (NSString *)StringFromExecutionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ExecutionDataToCache:data]];
}

//: 超大群未开放该功能
- (NSString *)mPatronStopPath {
    if (!_mPatronStopPath) {
		NSString *origin = @"1b3903af7d4cac6b6eae856bad6371ac8347ad5b85af766cac5166af4a84f0";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mPatronStopPath = [self StringFromExecutionData:value];
    }
    return _mPatronStopPath;
}

//: 你已经不在群里
- (NSString *)dreamUreaTitle {
    if (!_dreamUreaTitle) {
		NSString *origin = @"1503086cfda6b5dae1ba9de2b4afe4b88ce1b58ae299a5e4bba1e68489db";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamUreaTitle = [self StringFromExecutionData:value];
    }
    return _dreamUreaTitle;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)appAdoptShareData {
    if (!_appAdoptShareData) {
		NSString *origin = @"2d1409faed1776ecb8615f515e4b5c5e5b525558514b4d626055625560654b615f515e4b555a525b4b615c504d60514b524d5558515015";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appAdoptShareData = [self StringFromExecutionData:value];
    }
    return _appAdoptShareData;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)app_sopBubbleTitle {
    if (!_app_sopBubbleTitle) {
		NSString *origin = @"27210b52b342a301c38158545244513e484d454e3e40555348554853583e544f4b4e40433e4055405340513e4540484b4443a7";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_sopBubbleTitle = [self StringFromExecutionData:value];
    }
    return _app_sopBubbleTitle;
}

//: nimkit.teamlist.data
- (NSString *)k_scanIdent {
    if (!_k_scanIdent) {
		NSString *origin = @"14620b6378f21e5de4da0d0c070b090712cc1203ff0b0a071112cc02ff12ff17";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_scanIdent = [self StringFromExecutionData:value];
    }
    return _k_scanIdent;
}

//: group_info_activity_op_failed
- (NSString *)noti_seniorTentMsg {
    if (!_noti_seniorTentMsg) {
		NSString *origin = @"1d55081772c7de85121d1a201b0a1419111a0a0c0e1f1421141f240a1a1b0a110c1417100f0d";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_seniorTentMsg = [self StringFromExecutionData:value];
    }
    return _noti_seniorTentMsg;
}

//: postscript
- (NSString *)user_assumptionIdent {
    if (!_user_assumptionIdent) {
		NSString *origin = @"0a2409119397dad7394c4b4f504f3f4e454c50ab";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_assumptionIdent = [self StringFromExecutionData:value];
    }
    return _user_assumptionIdent;
}

//: 邀请失败
- (NSString *)kNecessityYeBratName {
    if (!_kNecessityYeBratName) {
		NSString *origin = @"0c300b0b234edb05d40be5b95250b87f87b57481b88475d5";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNecessityYeBratName = [self StringFromExecutionData:value];
    }
    return _kNecessityYeBratName;
}

//: modify_activity_modify_success
- (NSString *)user_busyMsg {
    if (!_user_busyMsg) {
		NSString *origin = @"1e1e0dfa51d2991008ebf3e9254f51464b485b414345564b584b565b414f51464b485b415557454547555573";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_busyMsg = [self StringFromExecutionData:value];
    }
    return _user_busyMsg;
}

//: 邀请成功
- (NSString *)kBladeId {
    if (!_kBladeId) {
		NSString *origin = @"0c3403b54e4cb47b83b2545cb1566be7";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kBladeId = [self StringFromExecutionData:value];
    }
    return _kBladeId;
}

//: 邀请成功，等待验证
- (NSString *)notiImageStartPath {
    if (!_notiImageStartPath) {
		NSString *origin = @"1b1d09164ebc1c7c23cc6563cb929ac96b73c86d82d29f6fca906cc8a168cc8d6fcb9264d5";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiImageStartPath = [self StringFromExecutionData:value];
    }
    return _notiImageStartPath;
}

//: attach
- (NSString *)dreamGrainRangeMsg {
    if (!_dreamGrainRangeMsg) {
		NSString *origin = @"06480423192c2c191b20b6";
		NSData *data = [ExecutionData ExecutionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamGrainRangeMsg = [self StringFromExecutionData:value];
    }
    return _dreamGrainRangeMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerEnable.m
// UserKit
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamListDataManager.h"
#import "ManagerEnable.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: NSString *const kNIMTeamListDataTeamInfoUpdate = @"kNIMTeamListDataTeamInfoUpdate";
NSString *const notiTextId = @"kNIMTeamListDataTeamInfoUpdate";
//: NSString *const kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
NSString *const user_teamUrl = @"kNIMTeamListDataTeamMembersChanged";

//: @interface FFFTeamListDataManager ()<NIMTeamManagerDelegate>
@interface ManagerEnable ()<NIMTeamManagerDelegate>

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, strong) NSMutableArray <FFFTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray <BarImageEmpty *> *members;

//: @property (nonatomic, strong) NIMTeamMember *myTeamInfo;
@property (nonatomic, strong) NIMTeamMember *myTeamInfo;

//: @property (nonatomic, strong) FFFTeamCardMemberItem *myCard;
@property (nonatomic, strong) BarImageEmpty *myCard;

//: @end
@end

//: @implementation FFFTeamListDataManager
@implementation ManagerEnable

//: - (void)dealloc {
- (void)dealloc {
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }
}

//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session {
- (instancetype)initWithSession:(NIMTeam *)team roving_strong:(NIMSession *)session {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _team = team;
        _team = team;
        //: _session = session;
        _session = session;
        //: if (team.type == NIMTeamTypeSuper) {
        if (team.type == NIMTeamTypeSuper) {
            //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
            [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
            [[NIMSDK sharedSDK].teamManager addDelegate:self];
        }
        //: [self reloadMyTeamInfo];
        [self suffer];
    }
    //: return self;
    return self;
}

//: - (NSMutableArray *)memberIds {
- (NSMutableArray *)memberIds {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(BarImageEmpty * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (obj.userId) {
        if (obj.userId) {
            //: [ret addObject:obj.userId];
            [ret addObject:obj.userId];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId {
- (BarImageEmpty *)endUser:(NSString *)userId {
    //: __block FFFTeamCardMemberItem *ret = nil;
    __block BarImageEmpty *ret = nil;
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(BarImageEmpty * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: ret = obj;
            ret = obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: #pragma mark - Function
#pragma mark - Function
//: - (NSString *)myAccount {
- (NSString *)myAccount {
    //: return [[NIMSDK sharedSDK].loginManager currentAccount];
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}

//: - (void)reloadMyTeamInfo {
- (void)suffer {
    //: NSString *userId = [self myAccount];
    NSString *userId = [self myAccount];
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: if (self.team.type == NIMTeamTypeSuper) {
    if (self.team.type == NIMTeamTypeSuper) {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                   //: inTeam:teamId];
                                                                   inTeam:teamId];
    //: } else {
    } else {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                          //: inTeam:teamId];
                                                          inTeam:teamId];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addMemberItem:(FFFTeamCardMemberItem *)item {
- (void)imageOption:(BarImageEmpty *)item {
    //: if (!item) {
    if (!item) {
        //: return;
        return;
    }
    //: switch (item.userType) {
    switch (item.userType) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
        {
            //: [_members insertObject:item atIndex:0];
            [_members insertObject:item atIndex:0];
            //: break;
            break;
        }
        //: default:
        default:
            //: [_members addObject:item];
            [_members addObject:item];
            //: break;
            break;
    }
}

//: - (void)removeMemberItem:(NSString *)userId {
- (void)removeView:(NSString *)userId {
    //: for (FFFTeamCardMemberItem *obj in _members) {
    for (BarImageEmpty *obj in _members) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: [_members removeObject:obj];
            [_members removeObject:obj];
            //: break;
            break;
        }
    }
}

//: - (void)addMembers:(NSArray <NIMTeamMember *>*)members {
- (void)messageShowMembers:(NSArray <NIMTeamMember *>*)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: for (NIMTeamMember *member in members) {
    for (NIMTeamMember *member in members) {
        //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
        BarImageEmpty *item = [[BarImageEmpty alloc] initWithTodayEnableence:member
                                                                           //: teamType:_team.type];
                                                                           lengthCan:_team.type];

        //: [self addMemberItem:item];
        [self imageOption:item];
    }
}

//: - (void)removeMembers:(NSArray <NSString *> *)userIds {
- (void)backgroundOf:(NSArray <NSString *> *)userIds {
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: [self removeMemberItem:userId];
        [self removeView:userId];
    }
}

//: - (NIMTeamMember*)teamInfo:(NSString*)uid{
- (NIMTeamMember*)database:(NSString*)uid{
    //: for (FFFTeamCardMemberItem *member in _members) {
    for (BarImageEmpty *member in _members) {
        //: if ([member.userId isEqualToString:uid]) {
        if ([member.userId isEqualToString:uid]) {
            //: return member.member;
            return member.member;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
- (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
    //: _myTeamInfo = myTeamInfo;
    _myTeamInfo = myTeamInfo;
    //: _myCard = [[FFFTeamCardMemberItem alloc] initWithMember:myTeamInfo
    _myCard = [[BarImageEmpty alloc] initWithTodayEnableence:myTeamInfo
                                                   //: teamType:_team.type];
                                                   lengthCan:_team.type];
}


//: - (void)updateMembersWithOption:(FFFMembersFetchOption *)option
- (void)members:(MembersFetchOptionA *)option
                        //: members:(NSArray <NIMTeamMember *> *)members {
                        messageMembers:(NSArray <NIMTeamMember *> *)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: if (option.isRefresh) {
    if (option.isRefresh) {
        //: [_members removeAllObjects];
        [_members removeAllObjects];

        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            BarImageEmpty *item = [[BarImageEmpty alloc] initWithTodayEnableence:member
                                                                               //: teamType:_team.type];
                                                                               lengthCan:_team.type];
            //: [self addMemberItem:item];
            [self imageOption:item];
        }
    //: } else {
    } else {
        //: NSInteger start = _members.count - option.offset;
        NSInteger start = _members.count - option.offset;
        //: for (NSInteger i = start; i < members.count; i++) {
        for (NSInteger i = start; i < members.count; i++) {
            //: NIMTeamMember *member = members[i];
            NIMTeamMember *member = members[i];

            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            BarImageEmpty *item = [[BarImageEmpty alloc] initWithTodayEnableence:member
                                                                               //: teamType:_team.type];
                                                                               lengthCan:_team.type];
            //: [self addMemberItem:item];
            [self imageOption:item];
        }
    }
}

//: #pragma mark - Handle
#pragma mark - Handle
//: - (void)handleUnsupport:(NIMTeamListDataBlock)completion {
- (void)getToGrips:(NIMTeamListDataBlock)completion {
    //: NSError *error = [NSError errorWithDomain:@"nimkit.teamlist.data"
    NSError *error = [NSError errorWithDomain:[ExecutionData sharedInstance].k_scanIdent
                                         //: code:0x1000
                                         code:0x1000
                                     //: userInfo:@{NSLocalizedDescriptionKey : @"超大群未开放该功能".nim_localized}];
                                     userInfo:@{NSLocalizedDescriptionKey : [ExecutionData sharedInstance].mPatronStopPath.resign}];
    //: if (completion) {
    if (completion) {
        //: completion(error, @"超大群未开放该功能".nim_localized);
        completion(error, [ExecutionData sharedInstance].mPatronStopPath.resign);
    }
}


//: - (void)handleAddUsers:(NSError *)error
- (void)handleWith:(NSError *)error
              //: memebers:(NSArray<NIMTeamMember *> *)members
              of:(NSArray<NIMTeamMember *> *)members
            //: completion:(NIMTeamListDataBlock)completion {
            usersCompletion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: if (self.team.type == NIMTeamTypeNormal) { 
        if (self.team.type == NIMTeamTypeNormal) { //高级群需要验证，普通群直接进
            //: [self addMembers:members];
            [self messageShowMembers:members];
            //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
            msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].kBladeId];
        //: } else {
        } else {
            //: if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
            if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功，等待验证"];
                msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].notiImageStartPath];
            //: } else {
            } else {
                //: [self addMembers:members];
                [self messageShowMembers:members];
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
                msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].kBladeId];
            }
        }
    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@ :%zd",[FFFLanguageManager getTextWithKey:@"邀请失败"],error.code];
        msg = [NSString stringWithFormat:@"%@ :%zd",[MatronymicPath colorStreetwise:[ExecutionData sharedInstance].kNecessityYeBratName],error.code];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleKickUsers:(NSArray *)userIds
- (void)up:(NSArray *)userIds
                  //: error:(NSError *)error
                  removeColor:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             commandTo:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self removeMembers:userIds];
        [self backgroundOf:userIds];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAnnouncement:(NSString *)content
- (void)modifyConvert:(NSString *)content
                               //: error:(NSError *)error
                               length:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          show:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.announcement = content;
        self.team.announcement = content;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAvatar:(NSString *)urlString
- (void)disable:(NSString *)urlString
                         //: error:(NSError *)error
                         error:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion {
                    valueLabel:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].appAdoptShareData];
    //: } else {
    } else {
        //: self.team.avatarUrl = urlString;
        self.team.avatarUrl = urlString;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamName:(NSString *)name
- (void)dateCompletion:(NSString *)name
                       //: error:(NSError *)error
                       fingerState:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  comment:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.teamName = name;
        self.team.teamName = name;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNick:(NSString *)nick
- (void)qualifyData:(NSString *)nick
                       //: error:(NSError *)error
                       view:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  sessionMargin:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.myTeamInfo.nickname = nick;
        self.myTeamInfo.nickname = nick;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamIntro:(NSString *)intro
- (void)option:(NSString *)intro
                        //: error:(NSError *)error
                        sizeBy:(NSError *)error
                   //: completion:(NIMTeamListDataBlock)completion {
                   textCompletion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.intro = intro;
        self.team.intro = intro;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamMute:(NSError *)error
- (void)red:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  bubble:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)evidence:(NIMTeamJoinMode)mode
                           //: error:(NSError *)error
                           data:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      setup:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.joinMode = mode;
        self.team.joinMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)frame:(NIMTeamInviteMode)mode
                             //: error:(NSError *)error
                             menu:(NSError *)error
                        //: completion:(NIMTeamListDataBlock)completion {
                        from:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.inviteMode = mode;
        self.team.inviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)message:(NIMTeamUpdateInfoMode)mode
                           //: error:(NSError *)error
                           session:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      popOutPlace:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.updateInfoMode = mode;
        self.team.updateInfoMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)analogDigitalConverterCompletion:(NIMTeamBeInviteMode)mode
                               //: error:(NSError *)error
                               concealed_strong:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          takeCareAndHead:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.beInviteMode = mode;
        self.team.beInviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNotifyState:(NIMTeamNotifyState)state
- (void)underView:(NIMTeamNotifyState)state
                              //: error:(NSError *)error
                              pop:(NSError *)error
                         //: completion:(NIMTeamListDataBlock)completion {
                         noReplacement:(NIMTeamListDataBlock)completion {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleAddManagers:(NSArray *)userIds
- (void)user:(NSArray *)userIds
                    //: error:(NSError *)error
                    extraColor:(NSError *)error
               //: completion:(NIMTeamListDataBlock)completion {
               managersDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: __block BOOL isChanged = NO;
    __block BOOL isChanged = NO;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(BarImageEmpty * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeManager;
                    obj.userType = NIMTeamMemberTypeManager;
                    //: isChanged = YES;
                    isChanged = YES;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }

        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}


//: - (void)handleRemoveManagers:(NSArray *)userIds
- (void)range:(NSArray *)userIds
                       //: error:(NSError *)error
                       observe:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  pratfall:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(BarImageEmpty * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeNormal;
                    obj.userType = NIMTeamMemberTypeNormal;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleTransferOwner:(NSString *)userId
- (void)style:(NSString *)userId
                      //: leave:(BOOL)leave
                      scale:(BOOL)leave
                      //: error:(NSError *)error
                      box:(NSError *)error
                 //: completion:(NIMTeamListDataBlock)completion {
                 success:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: NIMTeamMember *memberInfo = [self teamInfo:userId];
        NIMTeamMember *memberInfo = [self database:userId];
        //: memberInfo.type = NIMTeamMemberTypeOwner;
        memberInfo.type = NIMTeamMemberTypeOwner;
        //: if (leave && userId) {
        if (leave && userId) {
            //: [self removeMembers:@[userId]];
            [self backgroundOf:@[userId]];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateUserNick:(NSString *)userId
- (void)nick:(NSString *)userId
                        //: nick:(NSString *)nick
                        of_strong:(NSString *)nick
                       //: error:(NSError *)error
                       doingdSession:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  account:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.members enumerateObjectsUsingBlock:^(BarImageEmpty * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.userId isEqualToString:userId]) {
            if ([obj.userId isEqualToString:userId]) {
                //: obj.member.nickname = nick;
                obj.member.nickname = nick;
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpateUserMuteState:(NSError *)error
- (void)italianRegion:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      majorityDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].user_busyMsg];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)account:(NSArray <NIMTeamMember *> *)members
                        //: option:(FFFMembersFetchOption *)option
                        cell:(MembersFetchOptionA *)option
                         //: error:(NSError *)error
                         color:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion{
                    organiseOrTitle:(NIMTeamListDataBlock)completion{
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self updateMembersWithOption:option members:members];
        [self members:option messageMembers:members];
    //: } else if (error.code == NIMRemoteErrorCodeTeamNotMember
    } else if (error.code == NIMRemoteErrorCodeTeamNotMember
               //: || error.code == NIMRemoteErrorCodeNotInTeam) {
               || error.code == NIMRemoteErrorCodeNotInTeam) {
        //: msg = @"你已经不在群里".nim_localized;
        msg = [ExecutionData sharedInstance].dreamUreaTitle.resign;
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchMuteTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)origin:(NSArray <NIMTeamMember *> *)members
                             //: error:(NSError *)error
                             completion:(NSError *)error
                        //: completion:(NIMTeamMuteListDataBlock)completion {
                        input:(NIMTeamMuteListDataBlock)completion {
    //: NSMutableArray *items = nil;
    NSMutableArray *items = nil;
    //: if (!error) {
    if (!error) {
        //: items = [NSMutableArray array];
        items = [NSMutableArray array];
        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            BarImageEmpty *item = [[BarImageEmpty alloc] initWithTodayEnableence:member
                                                                               //: teamType:_team.type];
                                                                               lengthCan:_team.type];
            //: [items addObject:item];
            [items addObject:item];
        }
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, items);
        completion(error, items);
    }
}

//: - (void)handleWithError:(NSError *)error
- (void)viewCompletion:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             stain:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].noti_seniorTentMsg];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: #pragma mark - <FFFTeamOperation>
#pragma mark - <ToSessionTing>
//: - (void)addUsers:(NSArray *)userIds
- (void)temp:(NSArray *)userIds
            //: info:(NSDictionary *)info
            quantity:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)block {
      monthDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *postscript = info[@"postscript"];
    NSString *postscript = info[[ExecutionData sharedInstance].user_assumptionIdent];
    //: NSString *attach = info[@"attach"];
    NSString *attach = info[[ExecutionData sharedInstance].dreamGrainRangeMsg];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
                                               //: toTeam:teamId
                                               toTeam:teamId
                                           //: postscript:postscript
                                           postscript:postscript
                                               //: attach:attach
                                               attach:attach
                                           //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                           completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf handleWith:error
                            //: memebers:members
                            of:members
                          //: completion:block];
                          usersCompletion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addUsers:userIds
        [[NIMSDK sharedSDK].teamManager addUsers:userIds
                                          //: toTeam:teamId
                                          toTeam:teamId
                                      //: postscript:postscript
                                      postscript:postscript
                                          //: attach:attach
                                          attach:attach
                                      //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                      completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf handleWith:error
                            //: memebers:members
                            of:members
                          //: completion:block];
                          usersCompletion:block];
        //: }];
        }];
    }
}

//: - (void)kickUsers:(NSArray *)userIds
- (void)item:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)block {
       styleDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
                                              //: fromTeam:teamId
                                              fromTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself up:userIds
                             //: error:error
                             removeColor:error
                        //: completion:block];
                        commandTo:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager kickUsers:userIds
        [[NIMSDK sharedSDK].teamManager kickUsers:userIds
                                         //: fromTeam:teamId
                                         fromTeam:teamId
                                       //: completion:^(NSError *error) {
                                       completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself up:userIds
                             //: error:error
                             removeColor:error
                        //: completion:block];
                        commandTo:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)showMessage:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)block {
                    cut:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *announcement = content ?: @"";
    NSString *announcement = content ?: @"";
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError * _Nullable error) {
                                                         completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf modifyConvert:announcement
                                             //: error:error
                                             length:error
                                        //: completion:block];
                                        show:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError * _Nullable error) {
                                                    completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf modifyConvert:announcement
                                             //: error:error
                                             length:error
                                        //: completion:block];
                                        show:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)assemblage:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)block {
              upward:(NIMTeamListDataBlock)block {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
    [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
        //: if (!error && urlString && wself) {
        if (!error && urlString && wself) {

            //: if (wself.team.type == NIMTeamTypeSuper) {
            if (wself.team.type == NIMTeamTypeSuper) {
                    //: [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                    [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                                                                   //: teamId:wself.team.teamId
                                                                   teamId:wself.team.teamId
                                                               //: completion:^(NSError * _Nullable error) {
                                                               completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself disable:urlString error:error valueLabel:block];
                //: }];
                }];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                                                          //: teamId:wself.team.teamId
                                                          teamId:wself.team.teamId
                                                      //: completion:^(NSError * _Nullable error) {
                                                      completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself disable:urlString error:error valueLabel:block];
                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (block) {
            if (block) {
                //: block(error, [FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]);
                block(error, [MatronymicPath colorStreetwise:[ExecutionData sharedInstance].app_sopBubbleTitle]);
            }
        }
    //: }];
    }];
}

//: - (void)updateTeamName:(NSString *)name
- (void)disable:(NSString *)name
            //: completion:(NIMTeamListDataBlock)block {
            atDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
        [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
                                                     //: teamId:teamId
                                                     teamId:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf dateCompletion:name
                                     //: error:error
                                     fingerState:error
                                //: completion:block];
                                comment:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamName:name
        [[NIMSDK sharedSDK].teamManager updateTeamName:name
                                                //: teamId:teamId
                                                teamId:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf dateCompletion:name
                                     //: error:error
                                     fingerState:error
                                //: completion:block];
                                comment:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNick:(NSString *)nick
- (void)aTeam:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            need:(NIMTeamListDataBlock)block {
    //: NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf qualifyData:nick
                                     //: error:error
                                     view:error
                                //: completion:block];
                                sessionMargin:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf qualifyData:nick
                                     //: error:error
                                     view:error
                                //: completion:block];
                                sessionMargin:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamIntro:(NSString *)intro
- (void)selectedInCompletion:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)block {
             userCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf option:intro
                                      //: error:error
                                      sizeBy:error
                                 //: completion:block];
                                 textCompletion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
                                                 //: teamId:teamId
                                                 teamId:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf option:intro
                                      //: error:error
                                      sizeBy:error
                                 //: completion:block];
                                 textCompletion:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamMute:(BOOL)mute
- (void)atModifyRandom:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)block {
            minorLeagueClub:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: inTeam:teamId
                                                      inTeam:teamId
                                                  //: completion:^(NSError * _Nullable error) {
                                                  completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf red:error
                                //: completion:block];
                                bubble:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf red:error
                                //: completion:block];
                                bubble:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)key:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                quick:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
                                                         //: teamId:teamId
                                                         teamId:teamId
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf evidence:mode
                                         //: error:error
                                         data:error
                                    //: completion:block];
                                    setup:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
                                                    //: teamId:teamId
                                                    teamId:teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf evidence:mode
                                         //: error:error
                                         data:error
                                    //: completion:block];
                                    setup:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)arc:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)block {
                  modifyGroupCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self getToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInviteMode:mode
            [weakSelf frame:mode
                                           //: error:error
                                           menu:error
                                      //: completion:block];
                                      from:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)complete:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                hide:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self getToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
                                                          //: teamId:teamId
                                                          teamId:teamId
                                                      //: completion:^(NSError *error) {
                                                      completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInfoMode:mode
            [weakSelf message:mode
                                         //: error:error
                                         session:error
                                    //: completion:block];
                                    popOutPlace:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)inheritance:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)block {
                    name:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf analogDigitalConverterCompletion:mode
                                             //: error:error
                                             concealed_strong:error
                                        //: completion:block];
                                        takeCareAndHead:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf analogDigitalConverterCompletion:mode
                                             //: error:error
                                             concealed_strong:error
                                        //: completion:block];
                                        takeCareAndHead:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)ironed:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)block {
                   tamp:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
        [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf underView:state
                                            //: error:error
                                            pop:error
                                       //: completion:block];
                                       noReplacement:block];
         //: }];
         }];
    //: } else {
    } else {
        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf underView:state
                                            //: error:error
                                            pop:error
                                       //: completion:block];
                                       noReplacement:block];
         //: }];
         }];
    }
}

//: - (void)addManagers:(NSArray *)userIds
- (void)managersItemCompletion:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)block {
         path:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf user:userIds
                                  //: error:error
                                  extraColor:error
                             //: completion:block];
                             managersDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
                                                    //: users:userIds
                                                    users:userIds
                                               //: completion:^(NSError *error) {
                                               completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf user:userIds
                                  //: error:error
                                  extraColor:error
                             //: completion:block];
                             managersDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)removeManagers:(NSArray *)userIds
- (void)colorTearAway:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)block {
            messageCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
                                                              //: users:userIds
                                                              users:userIds
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf range:userIds
                                     //: error:error
                                     observe:error
                                //: completion:block];
                                pratfall:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf range:userIds
                                     //: error:error
                                     observe:error
                                //: completion:block];
                                pratfall:block];
        //: }];
        }];
    }
}

//: - (void)transferOwnerWithUserId:(NSString *)userId
- (void)contentBy:(NSString *)userId
                          //: leave:(BOOL)leave
                          input:(BOOL)leave
                     //: completion:(NIMTeamListDataBlock)block {
                     complete:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
                                                          //: newOwnerId:userId
                                                          newOwnerId:userId
                                                             //: isLeave:leave
                                                             isLeave:leave
                                                          //: completion:^(NSError *error) {
                                                          completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf style:userId
                                    //: leave:leave
                                    scale:leave
                                    //: error:error
                                    box:error
                               //: completion:block];
                               success:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
                                                     //: newOwnerId:userId
                                                     newOwnerId:userId
                                                        //: isLeave:leave
                                                        isLeave:leave
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf style:userId
                                    //: leave:leave
                                    scale:leave
                                    //: error:error
                                    box:error
                               //: completion:block];
                               success:block];
        //: }];
        }];
    }
}



//: - (void)updateUserNick:(NSString *)userId
- (void)record:(NSString *)userId
                  //: nick:(NSString *)nick
                  teamBubbleSize:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            indexDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf nick:userId
                                      //: nick:nick
                                      of_strong:nick
                                     //: error:error
                                     doingdSession:error
                                //: completion:block];
                                account:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:userId
        [[NIMSDK sharedSDK].teamManager updateUserNick:userId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf nick:userId
                                      //: nick:nick
                                      of_strong:nick
                                     //: error:error
                                     doingdSession:error
                                //: completion:block];
                                account:block];
        //: }];
        }];
    }
}

//: - (void)updateUserMuteState:(NSString *)userId
- (void)info:(NSString *)userId
                       //: mute:(BOOL)mute
                       orientation:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)block {
                 stormCenter:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (userId) {
        if (userId) {
            //: [users addObject:userId];
            [users addObject:userId];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf italianRegion:error
                                    //: completion:block];
                                    majorityDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: userId:userId
                                                 userId:userId
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf italianRegion:error
                                    //: completion:block];
                                    majorityDataBlock:block];
         //: }];
         }];
    }
}

//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption *)option
- (void)with:(MembersFetchOptionA *)option
                        //: completion:(NIMTeamListDataBlock)block {
                        ting:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        //: sdkOption.offset = option.offset;
        sdkOption.offset = option.offset;
        //: sdkOption.count = option.count;
        sdkOption.count = option.count;
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
                                                       //: option:sdkOption
                                                       option:sdkOption
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf account:members
                          //: option:option
                          cell:option
                           //: error:error
                           color:error
                      //: completion:block];
                      organiseOrTitle:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: option.isRefresh = YES; 
            option.isRefresh = YES; //高级群全更新
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf account:members
                                      //: option:option
                                      cell:option
                                       //: error:error
                                       color:error
                                  //: completion:block];
                                  organiseOrTitle:block];
        //: }];
        }];
    }
}

//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)block {
- (void)user:(NIMTeamMuteListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
                                                        //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                        completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf origin:members
                                           //: error:error
                                           completion:error
                                      //: completion:block];
                                      input:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf origin:members
                                           //: error:error
                                           completion:error
                                      //: completion:block];
                                      input:block];
        //: }];
        }];
    }
}

//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)block {
- (void)image:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
                                           //: completion:^(NSError *error) {
                                           completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf viewCompletion:error
                           //: completion:block];
                           stain:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager quitTeam:teamId
        [[NIMSDK sharedSDK].teamManager quitTeam:teamId
                                      //: completion:^(NSError *error) {
                                      completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf viewCompletion:error
                           //: completion:block];
                           stain:block];
        //: }];
        }];
    }
}

//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)block {
- (void)insertOf:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self getToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
        [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
            //: [weakSelf handleWithError:error completion:block];
            [weakSelf viewCompletion:error stain:block];
        //: }];
        }];
    }
}

//: #pragma mark - <FFFTeamMemberListDataSource>
#pragma mark - <HeadingSource>
//: - (NSInteger)memberNumber {
- (NSInteger)scale {
    //: return [_team memberNumber];
    return [_team memberNumber];
}

//: #pragma mark - <NIMTeamManagerDelegate>
#pragma mark - <NIMTeamManagerDelegate>
//: - (void)onTeamUpdated:(NIMTeam *)team {
- (void)onTeamUpdated:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamInfoUpdate object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:notiTextId object:nil];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team {
- (void)onTeamMemberChanged:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    MembersFetchOptionA *option = [[MembersFetchOptionA alloc] init];
    //: option.count = _members.count + 50;
    option.count = _members.count + 50;
    //: option.offset = 0;
    option.offset = 0;
    //: [self fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
    [self with:option ting:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: if (error) {
        if (error) {
            //: NSLog(@"warning: teamupdate user failed because userid is empty");
        //: } else {
        } else {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamMembersChanged object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:user_teamUrl object:nil];
        }
    //: }];
    }];
}

//: @end
@end