// __DEBUG__
// __CLOSE_PRINT__
//
//  TipTitle.h
// UserKit
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFKitFileLocationHelper : NSObject
@interface TipTitle : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)notice;

//: + (NSString *)getAppTempPath;
+ (NSString *)app;

//: + (NSString *)userDirectory;
+ (NSString *)totalerval;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)input:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)forShow:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)removeImage:(NSString *)filename;

//: @end
@end