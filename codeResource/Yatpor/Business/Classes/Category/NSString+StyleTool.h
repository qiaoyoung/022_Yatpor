// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+StyleTool.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * leftEvent(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (StyleTool)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)save:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)textCell;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)key;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)tab;

//: - (NSString *)tokenByPassword;
- (NSString *)videoPassword;

//: - (NSString *)ntes_localized;
- (NSString *)with;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)selection:(NSUInteger)length;

//: @end
@end