// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageItem.h
// UserKit
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFMediaItem : NSObject
@interface LanguageItem : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (FFFMediaItem *)item:(NSString *)selector
+ (LanguageItem *)valueColor:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           sleepingPill:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         itemTo:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 domain:(NSString *)title;
//: @end
@end