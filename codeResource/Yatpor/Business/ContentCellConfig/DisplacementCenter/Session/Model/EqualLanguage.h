// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualLanguage.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class MyUserKitLocationPoint;
@class MyUserKitLocationPoint;

//: @interface ContentMessageMaker : NSObject
@interface EqualLanguage : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)change:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)image:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)successImage:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)model:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)layer:(NSData *)data broad:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)stepTv:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface SizeMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)label:(int64_t)type
                             //: content:(NSString *)content
                             view:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 bar:(NSString *)ext;

//: @end
@end
