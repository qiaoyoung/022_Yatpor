// __DEBUG__
// __CLOSE_PRINT__
//
//  SpeedyView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportNextDelegate <NSObject>
@protocol StyleDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)sightButton;
//: - (void)didTouchDeleteButton;
- (void)messageBubble;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface SpeedyView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<StyleDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)marginFirstNim;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationEnableClose;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END