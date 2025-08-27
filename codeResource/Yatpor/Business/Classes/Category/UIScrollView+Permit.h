// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+Permit.h
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPullToRefreshView;
@class BirdSEyeView;

//: @interface UIScrollView (NTESPullToRefresh)
@interface UIScrollView (Permit)

//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
    //: NTESPullToRefreshPositionTop = 0,
    NTESPullToRefreshPositionTop = 0,
    //: NTESPullToRefreshPositionBottom,
    NTESPullToRefreshPositionBottom,
//: };
};

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
- (void)isTo:(void (^)(void))actionHandler;
//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(NTESPullToRefreshPosition)position;
- (void)quickPosition:(void (^)(void))actionHandler pull:(NTESPullToRefreshPosition)position;
//: - (void)triggerPullToRefresh;
- (void)client;

//: @property (nonatomic, strong, readonly) NTESPullToRefreshView *pullToRefreshView;
@property (nonatomic, strong, readonly) BirdSEyeView *pullToRefreshView;
//: @property (nonatomic, assign) BOOL showsPullToRefresh;
@property (nonatomic, assign) BOOL showsPullToRefresh;

//: @end
@end


//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
    //: NTESPullToRefreshStateStopped = 0,
    NTESPullToRefreshStateStopped = 0,
    //: NTESPullToRefreshStateTriggered,
    NTESPullToRefreshStateTriggered,
    //: NTESPullToRefreshStateLoading,
    NTESPullToRefreshStateLoading,
    //: NTESPullToRefreshStateAll = 10
    NTESPullToRefreshStateAll = 10
//: };
};

//: @interface NTESPullToRefreshView : UIView
@interface BirdSEyeView : UIView

//: @property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *arrowColor;
//: @property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *textColor;
//: @property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *titleLabel;
//: @property (nonatomic, strong, readonly) UILabel *subtitleLabel;
@property (nonatomic, strong, readonly) UILabel *subtitleLabel;
//: @property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
@property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
//: @property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;
@property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

//: @property (nonatomic, readonly) NTESPullToRefreshState state;
@property (nonatomic, readonly) NTESPullToRefreshState state;
//: @property (nonatomic, readonly) NTESPullToRefreshPosition position;
@property (nonatomic, readonly) NTESPullToRefreshPosition position;

//: - (void)setTitle:(NSString *)title forState:(NTESPullToRefreshState)state;
- (void)team:(NSString *)title airBubble:(NTESPullToRefreshState)state;
//: - (void)setSubtitle:(NSString *)subtitle forState:(NTESPullToRefreshState)state;
- (void)quickName:(NSString *)subtitle inputGray:(NTESPullToRefreshState)state;
//: - (void)setCustomView:(UIView *)view forState:(NTESPullToRefreshState)state;
- (void)parent:(UIView *)view somebody:(NTESPullToRefreshState)state;

//: - (void)startAnimating;
- (void)record;
//: - (void)stopAnimating;
- (void)search;


//: @end
@end