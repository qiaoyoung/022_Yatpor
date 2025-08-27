// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyControl.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContentInputEmoticonTabView;
@class EmptyControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol WithVoice <NSObject>

//: - (void)tabView:(ContentInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)key:(EmptyControl *)tabView cover:(NSInteger) index;

//: @end
@end

//: @interface ContentInputEmoticonTabView : UIControl
@interface EmptyControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<WithVoice> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)direction:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)belowReason:(NSArray*)emoticonCatalogs;

//: @end
@end
