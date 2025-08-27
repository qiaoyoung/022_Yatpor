
#import <Foundation/Foundation.h>

typedef struct {
    Byte column;
    Byte *grain;
    unsigned int contentKey;
	int ofBack;
} StructQuantitativeRelationData;

@interface QuantitativeRelationData : NSObject

+ (instancetype)sharedInstance;

//: video
@property (nonatomic, copy) NSString *show_fateName;

//: image
@property (nonatomic, copy) NSString *showImageName;

//: merge
@property (nonatomic, copy) NSString *k_armyComfortKey;

@end

@implementation QuantitativeRelationData

+ (instancetype)sharedInstance {
    static QuantitativeRelationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)QuantitativeRelationDataToData:(NSString *)value {
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

- (Byte *)QuantitativeRelationDataToByte:(StructQuantitativeRelationData *)data {
    for (int i = 0; i < data->contentKey; i++) {
        data->grain[i] ^= data->column;
    }
    data->grain[data->contentKey] = 0;
	if (data->contentKey >= 1) {
		data->ofBack = data->grain[0];
	}
    return data->grain;
}

- (NSString *)StringFromQuantitativeRelationData:(StructQuantitativeRelationData *)data {
    return [NSString stringWithUTF8String:(char *)[self QuantitativeRelationDataToByte:data]];
}

//: image
- (NSString *)showImageName {
    if (!_showImageName) {
		NSString *origin = @"787c7076742c";
		NSData *data = [QuantitativeRelationData QuantitativeRelationDataToData:origin];
        StructQuantitativeRelationData value = (StructQuantitativeRelationData){17, (Byte *)data.bytes, 5, 246};
        _showImageName = [self StringFromQuantitativeRelationData:&value];
    }
    return _showImageName;
}

//: merge
- (NSString *)k_armyComfortKey {
    if (!_k_armyComfortKey) {
		NSString *origin = @"20283f2a28db";
		NSData *data = [QuantitativeRelationData QuantitativeRelationDataToData:origin];
        StructQuantitativeRelationData value = (StructQuantitativeRelationData){77, (Byte *)data.bytes, 5, 5};
        _k_armyComfortKey = [self StringFromQuantitativeRelationData:&value];
    }
    return _k_armyComfortKey;
}

//: video
- (NSString *)show_fateName {
    if (!_show_fateName) {
		NSString *origin = @"849b96979d07";
		NSData *data = [QuantitativeRelationData QuantitativeRelationDataToData:origin];
        StructQuantitativeRelationData value = (StructQuantitativeRelationData){242, (Byte *)data.bytes, 5, 91};
        _show_fateName = [self StringFromQuantitativeRelationData:&value];
    }
    return _show_fateName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomObjectHelper.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "ContentConfig.h"
#import "BottomConfig.h"

//: @interface NTESFileLocationHelper ()
@interface BottomObjectHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)tap: (NSString *)dirname value: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation BottomObjectHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)top:(NSURL *)URL
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
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)year
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[ContentConfig sharedConfig] appKey];
        NSString *appKey = [[BottomConfig at] appKey];
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
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [BottomObjectHelper top:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)exhibit
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)tableGame
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [BottomObjectHelper year];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
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
+ (NSString *)to: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[BottomObjectHelper tableGame] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)proximate:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [BottomObjectHelper tap:([QuantitativeRelationData sharedInstance].show_fateName)
                                     //: filename:filename];
                                     value:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)viewUnwelcome:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [BottomObjectHelper tap:([QuantitativeRelationData sharedInstance].showImageName)
                                     //: filename:filename];
                                     value:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)circleDown:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [BottomObjectHelper tap:([QuantitativeRelationData sharedInstance].k_armyComfortKey)
                                     //: filename:filename];
                                     value:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)factoid:(NSString *)ext
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
+ (NSString *)tap:(NSString *)dirname
                    //: filename:(NSString *)filename
                    value:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[BottomObjectHelper to:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end
