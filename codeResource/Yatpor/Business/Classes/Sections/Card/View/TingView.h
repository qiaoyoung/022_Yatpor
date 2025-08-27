// __DEBUG__
// __CLOSE_PRINT__
//
//  TingView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportDelegate <NSObject>
@protocol ToDelegate <NSObject>

//: - (void)didTouchSubmitButton:(NSString *)reason;
- (void)enableColor:(NSString *)reason;

//: @end
@end

//: @interface ZMONReportUserView : UIView
@interface TingView : UIView

//: @property (nonatomic,weak) id<NTESReportDelegate> delegate;
@property (nonatomic,weak) id<ToDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)read;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationEnableClose;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END