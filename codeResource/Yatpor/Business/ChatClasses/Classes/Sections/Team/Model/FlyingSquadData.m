
#import <Foundation/Foundation.h>

NSString *StringFromViewChildData(Byte *data);


//: contact_group_header
Byte appButtonProposalId[] = {43, 20, 69, 11, 71, 25, 90, 24, 64, 173, 49, 168, 180, 179, 185, 166, 168, 185, 164, 172, 183, 180, 186, 181, 164, 173, 170, 166, 169, 170, 183, 224};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamInfoData.h"
#import "FlyingSquadData.h"
//: #import "FFFSpellingCenter.h"
#import "TingReason.h"

//: @implementation FFFTeamInfoData
@implementation FlyingSquadData

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithDismiss:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = StringFromViewChildData(appButtonProposalId);
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)replyBackground{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[TingReason infoCenter] earlyLetter:self.teamName].capitalizedString;
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

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)emotionCan{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[TingReason infoCenter] count:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)parent{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)exceptName{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)range{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end

Byte * ViewChildDataToCache(Byte *data) {
    int leading = data[0];
    int keyPatron = data[1];
    Byte tacticImage = data[2];
    int shelvy = data[3];
    if (!leading) return data + shelvy;
    for (int i = shelvy; i < shelvy + keyPatron; i++) {
        int value = data[i] - tacticImage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shelvy + keyPatron] = 0;
    return data + shelvy;
}

NSString *StringFromViewChildData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViewChildDataToCache(data)];
}
