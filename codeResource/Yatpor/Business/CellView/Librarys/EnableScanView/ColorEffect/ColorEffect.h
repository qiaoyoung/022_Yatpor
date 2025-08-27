// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SGSoundEffect : NSObject
@interface ColorEffect : NSObject
/// 对象方法获取音效文件
//: - (id)initWithFilepath:(NSString *)path;
- (id)initWithNameMargin:(NSString *)path;

/// 类方法获取音效文件
//: + (id)soundEffectWithFilepath:(NSString *)path;
+ (id)soundTime:(NSString *)path;

/// 开始播放音效
//: - (void)play;
- (void)location;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END