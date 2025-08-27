// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol OriginDelegate;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface LengthViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<OriginDelegate> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<OriginDelegate> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)jabbing:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol OriginDelegate <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)view:(LengthViewController *)viewController keyImage:(NSString *)key key:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)pod;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)after:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)sub:(NSString *)imageName empty:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)quantity:(NSString *)message radius:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)tingMarqueText:(NSString *)message info:(UIView *)inView position:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)empty:(UIView *)view;
//: - (void)hideEmptyView;
- (void)veil;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)showContentChild;
//: - (void)refrushWithNotNet;
- (void)send;



//: @end
@end