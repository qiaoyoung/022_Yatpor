// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.h
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "NSObject+KIAdditions.h"
//#import "UIView+Scale.h"

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIViewController (KIAdditions)
@interface UIViewController (Scale)

//: - (void)showCustomBackButton;
- (void)button;

//: - (void)showCustomBackButton:(SEL)selector;
- (void)strongbox:(SEL)selector;

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)step:(SEL)selector name:(UIImage *)image sharedInfo:(UIImage *)imageH;
//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
-(void)userColor:(SEL)selector window:(NSString *)title lineColor:(UIColor *)color;

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)item:(SEL)selector ting:(UIImage *)image background:(UIImage *)imageH;
//: - (void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
- (void)view:(SEL)selector team:(NSString *)title setInColor:(UIColor *)color;
//: - (void)setTitle:(NSString *)title;
- (void)setTitle:(NSString *)title;

//: - (void)setTitleColor:(UIColor *)color;
- (void)setPullColor:(UIColor *)color;

//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color;
- (void)text:(NSString *)title barrel:(UIColor *)color;

//- (void)pushController:(UIViewController *)viewController;

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated;

//- (void)popController;

//: - (void)dismissModalController;
- (void)voice;

//: - (void)close;
- (void)dateLight;


//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide;
- (BOOL)cell:(UIView *)view session:(BOOL)hide;



//: - (void)setNavBarBackGroundColor:(UIColor *)color;
- (void)setCustom:(UIColor *)color;
//: - (void)setNavBarClearColor;
- (void)maxColor;
//: - (void)setNavBarWithAlpha:(CGFloat)alpha;
- (void)setReplace:(CGFloat)alpha;
//: - (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)shouldColor:(UIColor *)color;

//: - (void)setShadowClearColor;
- (void)contentArray;



//: @end
@end