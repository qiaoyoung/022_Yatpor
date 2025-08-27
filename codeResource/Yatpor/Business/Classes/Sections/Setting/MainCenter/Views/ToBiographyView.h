// __DEBUG__
// __CLOSE_PRINT__
//
//  ToBiographyView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol DateTool <NSObject>

//: - (void)didTouchNextButton;
- (void)completeManager;
//: - (void)didTouchProtocolButton;
- (void)fullImage;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface ToBiographyView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<DateTool> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)can;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationEnableClose;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END