// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__

/*
 *  @header LEEAlertHelper.h
 *
 *  ┌─┐      ┌───────┐ ┌───────┐ 帅™
 *  │ │      │ ┌─────┘ │ ┌─────┘
 *  │ │      │ └─────┐ │ └─────┐
 *  │ │      │ ┌─────┘ │ ┌─────┘
 *  │ └─────┐│ └─────┐ │ └─────┐
 *  └───────┘└───────┘ └───────┘
 *
 *  @brief  LEEAlertHelper
 *
 *  @author LEE
 *  @copyright    Copyright © 2016 - 2020年 lee. All rights reserved.
 *  @version    V1.6.1
 */




//: FOUNDATION_EXPORT double LEEAlertVersionNumber;
FOUNDATION_EXPORT double LEEAlertVersionNumber;
//: FOUNDATION_EXPORT const unsigned char LEEAlertVersionString[];
FOUNDATION_EXPORT const unsigned char LEEAlertVersionString[];

//: @class LEEAlert
@class TeamModeAlert
//: , LEEBaseConfig
, VisualImageSection
//: , LEEAlertConfig
, BarEnableBaseConfig
//: , LEEActionSheetConfig
, EqualBaseConfig
//: , LEEBaseConfigModel
, CropModel
//: , LEEAlertWindow
, AlertView
//: , LEEAction
, DisableMessage
//: , LEEItem
, BottomBubble
//: , LEECustomView
, SizeOrigin
//: , LEEPresentation;
, LengthTool;

//: typedef NS_ENUM(NSInteger, LEEScreenOrientationType) {
typedef NS_ENUM(NSInteger, LEEScreenOrientationType) {
    /** 屏幕方向类型 横屏 */
    //: LEEScreenOrientationTypeHorizontal,
    LEEScreenOrientationTypeHorizontal,
    /** 屏幕方向类型 竖屏 */
    //: LEEScreenOrientationTypeVertical
    LEEScreenOrientationTypeVertical
//: };
};


//: typedef NS_ENUM(NSInteger, LEEAlertType) {
typedef NS_ENUM(NSInteger, LEEAlertType) {

    //: LEEAlertTypeAlert,
    LEEAlertTypeAlert,

    //: LEEAlertTypeActionSheet
    LEEAlertTypeActionSheet
//: };
};


//: typedef NS_ENUM(NSInteger, LEEActionType) {
typedef NS_ENUM(NSInteger, LEEActionType) {
    /** 默认 */
    //: LEEActionTypeDefault,
    LEEActionTypeDefault,
    /** 取消 */
    //: LEEActionTypeCancel,
    LEEActionTypeCancel,
    /** 销毁 */
    //: LEEActionTypeDestructive
    LEEActionTypeDestructive
//: };
};


//: typedef NS_OPTIONS(NSInteger, LEEActionBorderPosition) {
typedef NS_OPTIONS(NSInteger, LEEActionBorderPosition) {
    /** Action边框位置 上 */
    //: LEEActionBorderPositionTop = 1 << 0,
    LEEActionBorderPositionTop = 1 << 0,
    /** Action边框位置 下 */
    //: LEEActionBorderPositionBottom = 1 << 1,
    LEEActionBorderPositionBottom = 1 << 1,
    /** Action边框位置 左 */
    //: LEEActionBorderPositionLeft = 1 << 2,
    LEEActionBorderPositionLeft = 1 << 2,
    /** Action边框位置 右 */
    //: LEEActionBorderPositionRight = 1 << 3
    LEEActionBorderPositionRight = 1 << 3
//: };
};


//: typedef NS_ENUM(NSInteger, LEEItemType) {
typedef NS_ENUM(NSInteger, LEEItemType) {
    /** 标题 */
    //: LEEItemTypeTitle,
    LEEItemTypeTitle,
    /** 内容 */
    //: LEEItemTypeContent,
    LEEItemTypeContent,
    /** 输入框 */
    //: LEEItemTypeTextField,
    LEEItemTypeTextField,
    /** 自定义视图 */
    //: LEEItemTypeCustomView,
    LEEItemTypeCustomView,
//: };
};


//: typedef NS_ENUM(NSInteger, LEECustomViewPositionType) {
typedef NS_ENUM(NSInteger, LEECustomViewPositionType) {
    /** 居中 */
    //: LEECustomViewPositionTypeCenter,
    LEECustomViewPositionTypeCenter,
    /** 靠左 */
    //: LEECustomViewPositionTypeLeft,
    LEECustomViewPositionTypeLeft,
    /** 靠右 */
    //: LEECustomViewPositionTypeRight
    LEECustomViewPositionTypeRight
//: };
};

//: typedef NS_OPTIONS(NSInteger, LEEAnimationStyle) {
typedef NS_OPTIONS(NSInteger, LEEAnimationStyle) {
    /** 动画样式方向 默认 */
    //: LEEAnimationStyleOrientationNone = 1 << 0,
    LEEAnimationStyleOrientationNone = 1 << 0,
    /** 动画样式方向 上 */
    //: LEEAnimationStyleOrientationTop = 1 << 1,
    LEEAnimationStyleOrientationTop = 1 << 1,
    /** 动画样式方向 下 */
    //: LEEAnimationStyleOrientationBottom = 1 << 2,
    LEEAnimationStyleOrientationBottom = 1 << 2,
    /** 动画样式方向 左 */
    //: LEEAnimationStyleOrientationLeft = 1 << 3,
    LEEAnimationStyleOrientationLeft = 1 << 3,
    /** 动画样式方向 右 */
    //: LEEAnimationStyleOrientationRight = 1 << 4,
    LEEAnimationStyleOrientationRight = 1 << 4,

    /** 动画样式 淡入淡出 */
    //: LEEAnimationStyleFade = 1 << 12,
    LEEAnimationStyleFade = 1 << 12,

    /** 动画样式 缩放 放大 */
    //: LEEAnimationStyleZoomEnlarge = 1 << 24,
    LEEAnimationStyleZoomEnlarge = 1 << 24,
    /** 动画样式 缩放 缩小 */
    //: LEEAnimationStyleZoomShrink = 2 << 24,
    LEEAnimationStyleZoomShrink = 2 << 24,
//: };
};

//: typedef struct {
typedef struct {
    //: CGFloat topLeft;
    CGFloat topLeft;
    //: CGFloat topRight;
    CGFloat topRight;
    //: CGFloat bottomLeft;
    CGFloat bottomLeft;
    //: CGFloat bottomRight;
    CGFloat bottomRight;
//: } CornerRadii;
} AIcon;



//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfig)(void);
typedef CropModel * _Nonnull (^LEEConfig)(void);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToAny)(id any);
typedef CropModel * _Nonnull (^LEEConfigToAny)(id any);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBool)(BOOL is);
typedef CropModel * _Nonnull (^LEEConfigToBool)(BOOL is);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToInteger)(NSInteger number);
typedef CropModel * _Nonnull (^LEEConfigToInteger)(NSInteger number);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToFloat)(CGFloat number);
typedef CropModel * _Nonnull (^LEEConfigToFloat)(CGFloat number);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToString)(NSString *str);
typedef CropModel * _Nonnull (^LEEConfigToString)(NSString *str);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToView)(UIView *view);
typedef CropModel * _Nonnull (^LEEConfigToView)(UIView *view);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToColor)(UIColor *color);
typedef CropModel * _Nonnull (^LEEConfigToColor)(UIColor *color);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToSize)(CGSize size);
typedef CropModel * _Nonnull (^LEEConfigToSize)(CGSize size);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToPoint)(CGPoint point);
typedef CropModel * _Nonnull (^LEEConfigToPoint)(CGPoint point);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToEdgeInsets)(UIEdgeInsets insets);
typedef CropModel * _Nonnull (^LEEConfigToEdgeInsets)(UIEdgeInsets insets);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToPresentation)(LEEPresentation *presentation);
typedef CropModel * _Nonnull (^LEEConfigToPresentation)(LengthTool *presentation);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToAnimationStyle)(LEEAnimationStyle style);
typedef CropModel * _Nonnull (^LEEConfigToAnimationStyle)(LEEAnimationStyle style);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBlurEffectStyle)(UIBlurEffectStyle style);
typedef CropModel * _Nonnull (^LEEConfigToBlurEffectStyle)(UIBlurEffectStyle style);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToInterfaceOrientationMask)(UIInterfaceOrientationMask);
typedef CropModel * _Nonnull (^LEEConfigToInterfaceOrientationMask)(UIInterfaceOrientationMask);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToReturnMaxSize)(CGFloat(^)(LEEScreenOrientationType type, CGSize size));
typedef CropModel * _Nonnull (^LEEConfigToReturnMaxSize)(CGFloat(^)(LEEScreenOrientationType type, CGSize size));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToAction)(void(^)(LEEAction *action));
typedef CropModel * _Nonnull (^LEEConfigToAction)(void(^)(DisableMessage *action));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToCustomView)(void(^)(LEECustomView *custom));
typedef CropModel * _Nonnull (^LEEConfigToCustomView)(void(^)(SizeOrigin *custom));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToCornerRadii)(CornerRadii);
typedef CropModel * _Nonnull (^LEEConfigToCornerRadii)(AIcon);
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToStringAndBlock)(NSString *str, void (^ _Nullable)(void));
typedef CropModel * _Nonnull (^LEEConfigToStringAndBlock)(NSString *str, void (^ _Nullable)(void));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToConfigLabel)(void(^ _Nullable)(UILabel *label));
typedef CropModel * _Nonnull (^LEEConfigToConfigLabel)(void(^ _Nullable)(UILabel *label));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToConfigTextField)(void(^ _Nullable)(UITextField *textField));
typedef CropModel * _Nonnull (^LEEConfigToConfigTextField)(void(^ _Nullable)(UITextField *textField));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToItem)(void(^)(LEEItem *item));
typedef CropModel * _Nonnull (^LEEConfigToItem)(void(^)(BottomBubble *item));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBlock)(void(^block)(void));
typedef CropModel * _Nonnull (^LEEConfigToBlock)(void(^block)(void));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBlockReturnBool)(BOOL(^block)(void));
typedef CropModel * _Nonnull (^LEEConfigToBlockReturnBool)(BOOL(^block)(void));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBlockIntegerReturnBool)(BOOL(^block)(NSInteger index));
typedef CropModel * _Nonnull (^LEEConfigToBlockIntegerReturnBool)(BOOL(^block)(NSInteger index));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToBlockAndBlock)(void(^)(void (^animatingBlock)(void) , void (^animatedBlock)(void)));
typedef CropModel * _Nonnull (^LEEConfigToBlockAndBlock)(void(^)(void (^animatingBlock)(void) , void (^animatedBlock)(void)));
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToStatusBarStyle)(UIStatusBarStyle style);
typedef CropModel * _Nonnull (^LEEConfigToStatusBarStyle)(UIStatusBarStyle style);
//: API_AVAILABLE(ios(13.0))
API_AVAILABLE(ios(13.0))
//: typedef LEEBaseConfigModel * _Nonnull (^LEEConfigToUserInterfaceStyle)(UIUserInterfaceStyle style);
typedef CropModel * _Nonnull (^LEEConfigToUserInterfaceStyle)(UIUserInterfaceStyle style);
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END