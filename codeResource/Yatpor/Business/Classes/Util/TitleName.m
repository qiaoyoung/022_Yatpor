
#import <Foundation/Foundation.h>

NSString *StringFromFarData(Byte *data);        


//: friend_info_activity_xu
Byte notiQuarterbackUrl[] = {42, 23, 36, 14, 168, 234, 252, 101, 185, 64, 79, 176, 153, 8, 66, 78, 69, 65, 74, 64, 59, 69, 74, 66, 75, 59, 61, 63, 80, 69, 82, 69, 80, 85, 59, 84, 81, 136};

//: friend_info_activity_nan
Byte main_creasedKey[] = {6, 24, 34, 6, 182, 3, 68, 80, 71, 67, 76, 66, 61, 71, 76, 68, 77, 61, 63, 65, 82, 71, 84, 71, 82, 87, 61, 76, 63, 76, 172};

//: friend_info_activity_nv
Byte app_imageMsg[] = {78, 23, 37, 13, 35, 40, 18, 4, 4, 204, 200, 70, 221, 65, 77, 68, 64, 73, 63, 58, 68, 73, 65, 74, 58, 60, 62, 79, 68, 81, 68, 79, 84, 58, 73, 81, 88};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleName.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "TitleName.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"

//: @implementation NTESUserUtil
@implementation TitleName

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)pinion:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [MatronymicPath colorStreetwise:StringFromFarData(main_creasedKey)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [MatronymicPath colorStreetwise:StringFromFarData(app_imageMsg)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [MatronymicPath colorStreetwise:StringFromFarData(notiQuarterbackUrl)];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end

Byte * FarDataToCache(Byte *data) {
    int fellowCover = data[0];
    int elementaryEnd = data[1];
    Byte globalDotBurden = data[2];
    int userButtonSingle = data[3];
    if (!fellowCover) return data + userButtonSingle;
    for (int i = userButtonSingle; i < userButtonSingle + elementaryEnd; i++) {
        int value = data[i] + globalDotBurden;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[userButtonSingle + elementaryEnd] = 0;
    return data + userButtonSingle;
}

NSString *StringFromFarData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FarDataToCache(data)];
}
