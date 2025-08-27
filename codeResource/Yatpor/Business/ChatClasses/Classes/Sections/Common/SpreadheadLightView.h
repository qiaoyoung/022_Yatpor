// __DEBUG__
// __CLOSE_PRINT__
//
//  SpreadheadLightView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class SpreadheadLightView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol NameSource <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)parameterred: (SpreadheadLightView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)activity: (SpreadheadLightView *)pageView inputPage: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol OptionText <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)marginOfSafety: (SpreadheadLightView *)pageView
             //: currentIndex: (NSInteger)index
             be: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               status: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)yearred: (SpreadheadLightView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)blueDirection;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface SpreadheadLightView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<NameSource> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<OptionText> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)showRecent: (NSInteger)pages;
//: - (void)reloadData;
- (void)remove;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)start: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)playerCurrent;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)mentalFacultyFrom:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                window:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)up:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         input:(NSTimeInterval)duration;
//: @end
@end