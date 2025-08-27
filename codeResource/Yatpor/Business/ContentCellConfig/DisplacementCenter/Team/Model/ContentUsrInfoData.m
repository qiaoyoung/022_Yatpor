// __DEBUG__
// __CLOSE_PRINT__
//
//  UsrInfoData.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentUsrInfoData.h"
#import "ContentUsrInfoData.h"
//: #import "ContentSpellingCenter.h"
#import "TingReason.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation RiverlaUsrInfo
@implementation TitleInfo

//: - (BOOL)isFriend {
- (BOOL)overMessage {
    //: NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    //: for (NIMUser *user in friends) {
    for (NIMUser *user in friends) {
        //: if ([user.userId isEqualToString:self.info.infoId]) {
        if ([user.userId isEqualToString:self.info.infoId]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (NSString *)groupTitle {
- (NSString *)statusContent {
    //: NSString *title = [[ContentSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
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

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)range{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)avatarUrlString {
- (NSString *)subIn {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)yard {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)borderlineKey {
    //: return [[ContentSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[TingReason infoCenter] count:self.info.showName].shortSpelling;
}

//: @end
@end
