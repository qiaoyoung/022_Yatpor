
#import <Foundation/Foundation.h>
typedef struct {
    Byte messageKey;
    Byte *symptomEnroll;
    unsigned int mould;
    Byte fateValue;
	int valueTheological;
	int enroll;
} AsideData;

NSString *StringFromAsideData(AsideData *data);


//: image
AsideData m_messageByViewText = (AsideData){177, (Byte []){216, 220, 208, 214, 212, 214}, 5, 153, 95, 97};

//: video
AsideData k_shareMsg = (AsideData){57, (Byte []){79, 80, 93, 92, 86, 172}, 5, 200, 186, 238};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TipTitle.m
// UserKit
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitFileLocationHelper.h"
#import "TipTitle.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import <sys/stat.h>
#import <sys/stat.h>

//: @interface FFFKitFileLocationHelper ()
@interface TipTitle ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)withUnwelcomeFilename: (NSString *)dirname behindAnnouncement_strong: (NSString *)filename;
//: @end
@end


//: @implementation FFFKitFileLocationHelper
@implementation TipTitle
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)viewClose:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
        //: NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)notice
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [NIMSDK sharedSDK].appKey;
        NSString *appKey = [NIMSDK sharedSDK].appKey;
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [FFFKitFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [TipTitle viewClose:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)app
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)totalerval
{
    //: NSString *documentPath = [FFFKitFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [TipTitle notice];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
        //: NSLog(@"Error: Get User Directory While UserID Is Empty");
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)add: (NSString *)resouceName
{
    //: NSString *dir = [[FFFKitFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[TipTitle totalerval] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)forShow:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"video"
    return [TipTitle withUnwelcomeFilename:StringFromAsideData(&k_shareMsg)
                                         //: filename:filename];
                                         behindAnnouncement_strong:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)removeImage:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"image"
    return [TipTitle withUnwelcomeFilename:StringFromAsideData(&m_messageByViewText)
                                         //: filename:filename];
                                         behindAnnouncement_strong:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)input:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)withUnwelcomeFilename:(NSString *)dirname
                    //: filename:(NSString *)filename
                    behindAnnouncement_strong:(NSString *)filename
{
    //: return [[FFFKitFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[TipTitle add:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte *AsideDataToByte(AsideData *data) {
    if (data->fateValue < 149) return data->symptomEnroll;
    for (int i = 0; i < data->mould; i++) {
        data->symptomEnroll[i] ^= data->messageKey;
    }
    data->symptomEnroll[data->mould] = 0;
    data->fateValue = 78;
	if (data->mould >= 2) {
		data->valueTheological = data->symptomEnroll[0];
		data->enroll = data->symptomEnroll[1];
	}
    return data->symptomEnroll;
}

NSString *StringFromAsideData(AsideData *data) {
    return [NSString stringWithUTF8String:(char *)AsideDataToByte(data)];
}
