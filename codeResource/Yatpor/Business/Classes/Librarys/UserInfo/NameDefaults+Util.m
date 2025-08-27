
#import <Foundation/Foundation.h>

NSString *StringFromAdequateToData(Byte *data);


//: NSUserDefault%@
Byte userLibraryAssTitle[] = {85, 15, 79, 6, 83, 208, 157, 162, 164, 194, 180, 193, 147, 180, 181, 176, 196, 187, 195, 116, 143, 151};

//: KEKENotificationLanguageChanged
Byte main_relativelyName[] = {93, 31, 57, 7, 180, 81, 192, 132, 126, 132, 126, 135, 168, 173, 162, 159, 162, 156, 154, 173, 162, 168, 167, 133, 154, 167, 160, 174, 154, 160, 158, 124, 161, 154, 167, 160, 158, 157, 109};

//: Webpage
Byte userStateText[] = {93, 7, 82, 6, 204, 236, 169, 183, 180, 194, 179, 185, 183, 209};

//: webViewURL
Byte dream_tacticBarTitle[] = {95, 10, 98, 8, 8, 61, 65, 79, 217, 199, 196, 184, 203, 199, 217, 183, 180, 174, 3};

//: logininfo
Byte dream_comparableFormat[] = {47, 9, 53, 8, 120, 143, 217, 158, 161, 164, 156, 158, 163, 158, 163, 155, 164, 76};

//: webViewTitle
Byte show_busyLikelyMessage[] = {84, 12, 22, 14, 236, 217, 7, 212, 7, 106, 38, 72, 45, 156, 141, 123, 120, 108, 127, 123, 141, 106, 127, 138, 130, 123, 197};

//: Hello World
Byte show_hormoneStateIdent[] = {56, 11, 92, 10, 41, 248, 243, 140, 153, 51, 164, 193, 200, 200, 203, 124, 179, 203, 206, 200, 192, 9};

//: isclose
Byte dreamBubbleFortyKitName[] = {44, 7, 62, 7, 43, 194, 80, 167, 177, 161, 170, 173, 177, 163, 144};

//: language
Byte k_guyId[] = {8, 8, 38, 13, 151, 204, 139, 50, 19, 215, 70, 199, 89, 146, 135, 148, 141, 155, 135, 141, 139, 173};

//: e6548ec2fe71a38961430ee520b0ad47
Byte noti_witnessOffValueData[] = {71, 32, 39, 6, 238, 44, 140, 93, 92, 91, 95, 140, 138, 89, 141, 140, 94, 88, 136, 90, 95, 96, 93, 88, 91, 90, 87, 140, 140, 92, 89, 87, 137, 87, 136, 139, 91, 94, 7};

//: isregitor
Byte k_buttonValue[] = {74, 9, 94, 9, 77, 42, 33, 177, 246, 199, 209, 208, 195, 197, 199, 210, 205, 208, 205};

//: appkey
Byte userAccountValue[] = {12, 6, 84, 4, 181, 196, 196, 191, 185, 205, 174};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameDefaults+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "NameDefaults+Util.h"
//: #import "ZCHttpManager.h"
#import "TroublingName.h"

//: @implementation NIMUserDefaults (Util)
@implementation NameDefaults (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)hide {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromAdequateToData(show_busyLikelyMessage) : StringFromAdequateToData(userStateText),
             //: @"webViewURL" : @"",
             StringFromAdequateToData(dream_tacticBarTitle) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromAdequateToData(userAccountValue) : StringFromAdequateToData(noti_witnessOffValueData),
             //: @"isclose" : @"0",
             StringFromAdequateToData(dreamBubbleFortyKitName) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromAdequateToData(dream_comparableFormat) : StringFromAdequateToData(show_hormoneStateIdent),
             //: @"isregitor" : @"1",
             StringFromAdequateToData(k_buttonValue) : @"1",
             //: @"language" : @""
             StringFromAdequateToData(k_guyId) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)steep:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [TroublingName asText].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    NameDefaults *userDefaults = [NameDefaults argument];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[ContentLanguageManager shareInstance] setLanguagre:lang];
    [[MatronymicPath name] setPressed:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [UserKit totalSend].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromAdequateToData(main_relativelyName) object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)achromaticColorKey:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromAdequateToData(userLibraryAssTitle), key];
}
//: @end
@end

Byte * AdequateToDataToCache(Byte *data) {
    int retort = data[0];
    int planetary = data[1];
    Byte pass = data[2];
    int queryScale = data[3];
    if (!retort) return data + queryScale;
    for (int i = queryScale; i < queryScale + planetary; i++) {
        int value = data[i] - pass;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[queryScale + planetary] = 0;
    return data + queryScale;
}

NSString *StringFromAdequateToData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AdequateToDataToCache(data)];
}
