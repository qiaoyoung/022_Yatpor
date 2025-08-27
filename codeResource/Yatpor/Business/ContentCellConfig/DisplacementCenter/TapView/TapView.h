// __DEBUG__
// __CLOSE_PRINT__
//
//  TapView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentPageView.h"
#import "SpreadheadLightView.h"
//: #import "ContentSessionConfig.h"
#import "SaloonConfig.h"

//: @class NIMInputEmoticonCatalog;
@class SpecialSessionView;
//: @class ContentInputEmoticonTabView;
@class EmptyControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol ImageProtocol <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)sendCount:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)willDrop:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)memoryImage:(NSString*)emoticonID catalogIndexDescription:(NSString*)emotCatalogID at:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)progress:(NSString*)gif;

//: @end
@end


//: @interface ContentInputEmoticonContainerView : UIView<ContentPageViewDataSource,ContentPageViewDelegate>
@interface TapView : UIView<NameSource,OptionText>

//: @property (nonatomic, strong) ContentPageView *emoticonPageView;
@property (nonatomic, strong) SpreadheadLightView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) SpecialSessionView *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) ContentInputEmoticonTabView *tabView;
@property (nonatomic, strong) EmptyControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<ImageProtocol> delegate;
//: @property (nonatomic, weak) id<ContentSessionConfig> config;
@property (nonatomic, weak) id<SaloonConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end
