// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+UserKit.h
// UserKit
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSBundle (MyUserKit)
@interface NSBundle (UserKit)

//: + (NSBundle *)nim_defaultEmojiBundle;
+ (NSBundle *)item;

//: + (nullable NSBundle *)nim_defaultLanguageBundle;
+ (nullable NSBundle *)findAt;

//: + (NSString *)nim_EmojiPlistFile;
+ (NSString *)toStart;

//: + (NSString *)nim_EmojiGifPlistFile;
+ (NSString *)messageFile;

//: + (NSString *)nim_EmojiImage:(NSString *)imageName;
+ (NSString *)with:(NSString *)imageName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END