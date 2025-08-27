// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+NIM.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface NSString (MyUserKit)
@interface NSString (UserKit)

//: - (CGSize)nim_stringSizeWithFont:(UIFont *)font;
- (CGSize)to:(UIFont *)font;

//: - (NSString *)nim_MD5String;
- (NSString *)showDown;

//: - (NSUInteger)nim_getBytesLength;
- (NSUInteger)quick;

//: - (NSString *)nim_stringByDeletingPictureResolution;
- (NSString *)center;

//: - (UIColor *)nim_hexToColor;
- (UIColor *)comment;

//: - (BOOL)nim_fileIsExist;
- (BOOL)chromatogram;


//: - (NSString *)nim_localized;
- (NSString *)resign;

//: - (NSString *)nim_localizedWithTable:(NSString *)table;
- (NSString *)media:(NSString *)table;

//: - (BOOL)nim_containsEmoji;
- (BOOL)containsDismissMonth;

//: - (NSRange)nim_rangeOfLastUnicode;
- (NSRange)child;
//: @end
@end