// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+UserKit.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (UserKit)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)message:(NSString *)imageName index:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)with:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              background:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              derivationQueryed:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)secretRandom:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)messageUpload;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)gesture;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)quick:(CGSize)size;

//: @end
@end