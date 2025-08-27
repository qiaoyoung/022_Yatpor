
#import <Foundation/Foundation.h>

NSString *StringFromViewerData(Byte *data);


//: %@.lproj
Byte m_licenseSuccessValue[] = {57, 8, 38, 12, 241, 78, 170, 123, 145, 30, 164, 121, 75, 102, 84, 146, 150, 152, 149, 144, 146};

//: bundle
Byte kWitnessFormat[] = {53, 6, 84, 12, 189, 99, 220, 12, 205, 68, 1, 240, 182, 201, 194, 184, 192, 185, 41};

//: en.lproj
Byte userCalculationGlobalData[] = {48, 8, 62, 8, 210, 227, 29, 248, 163, 172, 108, 170, 174, 176, 173, 168, 154};

//: NSUserDefaultLanguage
Byte userSuccessMessage[] = {75, 21, 79, 5, 218, 157, 162, 164, 194, 180, 193, 147, 180, 181, 176, 196, 187, 195, 155, 176, 189, 182, 196, 176, 182, 180, 12};

//: emoji.plist
Byte appElementaryPath[] = {26, 11, 50, 5, 162, 151, 159, 161, 156, 155, 96, 162, 158, 155, 165, 166, 73};

//: GatewayKeeperValidate
Byte dream_transitKey[] = {64, 21, 14, 10, 43, 78, 75, 57, 145, 77, 85, 111, 130, 115, 133, 111, 135, 89, 115, 115, 126, 115, 128, 100, 111, 122, 119, 114, 111, 130, 115, 18};

//: emoji_ios.plist
Byte show_troopShareName[] = {24, 15, 50, 5, 221, 151, 159, 161, 156, 155, 145, 155, 161, 165, 96, 162, 158, 155, 165, 166, 76};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// UserKit
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
 
//: #import "SSZipArchiveManager.h"
#import "EqualArchiveManager.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (UserKit)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)item {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[UserKit class]];
    //: NSURL *url = [bundle URLForResource:@"GatewayKeeperValidate" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:StringFromViewerData(dream_transitKey) withExtension:StringFromViewerData(kWitnessFormat)];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)findAt {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[EqualArchiveManager message] pull];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self kingdom];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromViewerData(m_licenseSuccessValue), languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:StringFromViewerData(userCalculationGlobalData)];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }
    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)toStart {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EqualArchiveManager message] emoji];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromViewerData(show_troopShareName)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [UserKit sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)messageFile {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EqualArchiveManager message] emoji];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromViewerData(appElementaryPath)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [UserKit sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)kingdom
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromViewerData(userSuccessMessage)];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end

Byte * ViewerDataToCache(Byte *data) {
    int anythingState = data[0];
    int etherMinimize = data[1];
    Byte blueCoach = data[2];
    int budgeEmbrace = data[3];
    if (!anythingState) return data + budgeEmbrace;
    for (int i = budgeEmbrace; i < budgeEmbrace + etherMinimize; i++) {
        int value = data[i] - blueCoach;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[budgeEmbrace + etherMinimize] = 0;
    return data + budgeEmbrace;
}

NSString *StringFromViewerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViewerDataToCache(data)];
}
