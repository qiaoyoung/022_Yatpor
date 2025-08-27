// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableViewController.h
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "KIImageCropperView.h"
#import "OptionImageView.h"

//: @interface KIImageCropperViewController : UIViewController {
@interface DisableViewController : UIViewController {
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: UIImage *_image;
    UIImage *_image;
    //: KIImageCropperView *_imageCropperView;
    OptionImageView *_imageCropperView;
    //: void(^_croppedImage)(UIImage *image);
    void(^_croppedImage)(UIImage *image);
}

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize;
- (id)initWithAlong:(UIImage *)image pageComment:(CGSize)cropSize;

//: - (void)setCroppedImage:(void(^)(UIImage *image))block;
- (void)setFallContent:(void(^)(UIImage *image))block;

//: @end
@end