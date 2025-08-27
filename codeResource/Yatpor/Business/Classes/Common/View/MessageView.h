// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class MessageView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol ToolMessageBottom <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)parameterred: (MessageView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)activity: (MessageView *)pageView inputPage: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol RectoBubbleDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)marginOfSafety: (MessageView *)pageView
             //: currentIndex: (NSInteger)index
             be: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               status: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)yearred: (MessageView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)blueDirection;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface MessageView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ToolMessageBottom> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<RectoBubbleDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)quickPage: (NSInteger)pages;
//: - (void)reloadData;
- (void)present;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)start: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)originCurrent;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)count:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                more:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)requireWith:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         name:(NSTimeInterval)duration;
//: @end
@end