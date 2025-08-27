// __DEBUG__
// __CLOSE_PRINT__
//
//  UIButton+Crop.h
//  ImagePickerDemo
//
//  Created by raozhongxiong on 12-11-23.
//  Copyright (c) 2012年 raozhongxiong. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface UIButton (Badge)
@interface UIButton (Crop)

//: @property (strong, nonatomic) UILabel *badge;
@property (strong, nonatomic) UILabel *badge;

// Crop value to be display
//: @property (nonatomic) NSString *badgeValue;
@property (nonatomic) NSString *badgeValue;
// Crop background color
//: @property (nonatomic) UIColor *badgeBGColor;
@property (nonatomic) UIColor *badgeBGColor;
// Crop text color
//: @property (nonatomic) UIColor *badgeTextColor;
@property (nonatomic) UIColor *badgeTextColor;
// Crop font
//: @property (nonatomic) UIFont *badgeFont;
@property (nonatomic) UIFont *badgeFont;
// Padding value for the badge
//: @property (nonatomic) CGFloat badgePadding;
@property (nonatomic) CGFloat badgePadding;
// Minimum size badge to small
//: @property (nonatomic) CGFloat badgeMinSize;
@property (nonatomic) CGFloat badgeMinSize;
// Values for offseting the badge over the BarButtonItem you picked
//: @property (nonatomic) CGFloat badgeOriginX;
@property (nonatomic) CGFloat badgeOriginX;
//: @property (nonatomic) CGFloat badgeOriginY;
@property (nonatomic) CGFloat badgeOriginY;
// In case of numbers, remove the badge when reaching zero
//: @property BOOL shouldHideBadgeAtZero;
@property BOOL shouldHideBadgeAtZero;
// Crop has a bounce animation when value changes
//: @property BOOL shouldAnimateBadge;
@property BOOL shouldAnimateBadge;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END