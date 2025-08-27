// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupedUsrInfo.h"
#import "FFFGroupedUsrInfo.h"
//: #import "FFFSpellingCenter.h"
#import "TingReason.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"

//: @interface NIMGroupUser()
@interface GroundUser()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) ViewInfo *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation GroundUser

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithBubble:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
        _info = [[UserKit totalSend] color:userId image:nil];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)replyBackground{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[TingReason infoCenter] earlyLetter:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)showName{
- (NSString *)range{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)emotionCan{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[TingReason infoCenter] count:self.info.showName].shortSpelling;
}

//: - (UIImage *)avatarImage {
- (UIImage *)yard {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}


//: - (NSString *)avatarUrlString {
- (NSString *)subIn {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface DbaWith()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) ViewInfo *info;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation DbaWith

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithMissive:(NSString *)userId
                       //: session:(NIMSession *)session {
                       button:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
        _info = [[UserKit totalSend] color:userId image:option];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)replyBackground{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[TingReason infoCenter] earlyLetter:self.range].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)emotionCan{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[TingReason infoCenter] count:self.range].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)range{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.userId;
    return self.userId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)yard {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)subIn {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end

//: @interface NIMGroupTeam()
@interface LanguageMenu()

//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) ViewInfo *info;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation LanguageMenu

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithNumbereract:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      message:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[UserKit totalSend] search:teamId speedy:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[UserKit totalSend] statusOption:teamId mergeOf:nil];
        }
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)replyBackground{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[TingReason infoCenter] earlyLetter:self.range].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)emotionCan{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[TingReason infoCenter] count:[self range]].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)range{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.teamId;
    return self.teamId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)yard {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)subIn {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end