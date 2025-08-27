
#import <Foundation/Foundation.h>

NSString *StringFromCoalitionData(Byte *data);        


//: lead_close
Byte user_retMessage[] = {77, 10, 32, 5, 167, 76, 69, 65, 68, 63, 67, 76, 79, 83, 69, 86};

//: speaker
Byte m_pilotMessage[] = {23, 7, 28, 11, 102, 105, 114, 239, 224, 177, 166, 87, 84, 73, 69, 79, 73, 86, 199};

//: click
Byte userGatorRegardId[] = {37, 5, 65, 14, 151, 78, 148, 76, 54, 77, 38, 233, 80, 183, 34, 43, 40, 34, 42, 33};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorCustomView.m
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SNLeadCompleteInfo.h"
#import "ColorCustomView.h"

//: static NSAttributedString *NSAttributedStringFromTitle(__unsafe_unretained NSString *title)
static NSAttributedString *operationName(__unsafe_unretained NSString *title)
{
    //: if (nil == title) {
    if (nil == title) {
        //: return nil;
        return nil;
    }

    //: UIFont *font = [UIFont systemFontOfSize:11];
    UIFont *font = [UIFont systemFontOfSize:11];

    //: NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor blackColor],
    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor blackColor],
                                 //: NSFontAttributeName: font};
                                 NSFontAttributeName: font};
    //: NSAttributedString *as = [[NSAttributedString alloc] initWithString:title attributes:attributes];
    NSAttributedString *as = [[NSAttributedString alloc] initWithString:title attributes:attributes];
    //: return as;
    return as;
}

//: @interface SNLeadCompleteInfo () <UUMarqueeViewDelegate>
@interface ColorCustomView () <CropViewScale>

//: @property (nonatomic, strong) UIImageView *noticeImageview;
@property (nonatomic, strong) UIImageView *noticeImageview;

//: @property (nonatomic, strong) UIButton *actionButton;
@property (nonatomic, strong) UIButton *actionButton;

//: @end
@end


//: @implementation SNLeadCompleteInfo
@implementation ColorCustomView

//: CGFloat SNStatusBarHeight(void) {
CGFloat statusLoftinessBar(void) {
    //: static CGFloat statusBarHeight;
    static CGFloat statusBarHeight;
    //: if (statusBarHeight <= 0) {
    if (statusBarHeight <= 0) {
        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {
            //: UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;
            UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;
            //: statusBarHeight = statusBarManager.statusBarFrame.size.height;
            statusBarHeight = statusBarManager.statusBarFrame.size.height;
        //: } else {
        } else {
            //: statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
            statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
        }
    }

    //: return statusBarHeight;
    return statusBarHeight;
}

//: CGFloat SNNavBarHeight(void) {
CGFloat topAdd(void) {
    //: return SNStatusBarHeight() + 44;
    return statusLoftinessBar() + 44;
}


//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)bottom:(float)delay
                                                 //: superView:(UIView *)superView
                                                 screen:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    canadianProvinceBlock:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               handle:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 swageBlock:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback {
                                               along:(void (^)(void))callback {

    //: SNLeadCompleteInfo *tipView = [[SNLeadCompleteInfo alloc] initWithFrame:(CGRect) {
    ColorCustomView *tipView = [[ColorCustomView alloc] initWithFrame:(CGRect) {
        //: .origin.x = 5,
        .origin.x = 5,
        //: .origin.y = (44.0f + [UIDevice vg_statusBarHeight])+5,
        .origin.y = (44.0f + [UIDevice bearDown])+5,
        //: .size.width = UIScreen.mainScreen.bounds.size.width-10.f,
        .size.width = UIScreen.mainScreen.bounds.size.width-10.f,
        //: .size.height = 46.f
        .size.height = 46.f
    //: }];
    }];

    //: [tipView p_updateInTransaction:^(SNLeadCompleteInfo *tipView) {
    [tipView mercantilismTransaction:^(ColorCustomView *tipView) {
        //: tipView.completeType = type;
        tipView.completeType = type;
        //: tipView.completion = trueBlock;
        tipView.completion = trueBlock;
        //: tipView.cancleCompletion = callback;
        tipView.cancleCompletion = callback;

        //: switch (type) {
        switch (type) {
            //: case CompletingUserInfoType_headicon:
            case CompletingUserInfoType_headicon:
                //: tipView.title = msg;
                tipView.title = msg;
                //: tipView.actionTitle = @"click";
                tipView.actionTitle = StringFromCoalitionData(userGatorRegardId);
                //: break;
                break;

            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];

    //: if (delay > 0) {
    if (delay > 0) {
        //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [tipView p_showOnView:superView];
            [tipView to:superView];
        //: });
        });
    //: } else {
    } else {
        //: [tipView p_showOnView:superView];
        [tipView to:superView];
    }

    //: return tipView;
    return tipView;
}


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 4.f;
        self.layer.cornerRadius = 4.f;
        //: self.layer.masksToBounds = YES;
        self.layer.masksToBounds = YES;
        //: self.userInteractionEnabled = YES;
        self.userInteractionEnabled = YES;
        {
            //: self.leftwardMarqueeView = [[UUMarqueeView alloc] initWithFrame:CGRectMake(54, 0, [UIScreen mainScreen].bounds.size.width- 54 - 30 - 10, 46) direction:UUMarqueeViewDirectionLeftward];
            self.leftwardMarqueeView = [[ColorCropView alloc] initWithEnableDirection:CGRectMake(54, 0, [UIScreen mainScreen].bounds.size.width- 54 - 30 - 10, 46) withHeadingFrameColor:UUMarqueeViewDirectionLeftward];
            //: _leftwardMarqueeView.delegate = self;
            _leftwardMarqueeView.delegate = self;
            //: _leftwardMarqueeView.timeIntervalPerScroll = 3.0f;
            _leftwardMarqueeView.timeIntervalPerScroll = 3.0f;
            //: _leftwardMarqueeView.scrollSpeed = 40.0f;
            _leftwardMarqueeView.scrollSpeed = 40.0f;
            //: _leftwardMarqueeView.itemSpacing = 20.0f;
            _leftwardMarqueeView.itemSpacing = 20.0f;
            //: _leftwardMarqueeView.touchEnabled = YES;
            _leftwardMarqueeView.touchEnabled = YES;
            //: _leftwardMarqueeView.backgroundColor = [UIColor whiteColor];
            _leftwardMarqueeView.backgroundColor = [UIColor whiteColor];
            //: [self addSubview:_leftwardMarqueeView];
            [self addSubview:_leftwardMarqueeView];
        }

        // action button
        {
            //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//            button.backgroundColor = [UIColor redColor];
            //: [button addTarget:self action:@selector(p_dismissActionTouched:) forControlEvents:UIControlEventTouchUpInside];
            [button addTarget:self action:@selector(cellForTouched:) forControlEvents:UIControlEventTouchUpInside];
//            [button.titleLabel setFont:[UIFont systemFontOfSize:14]];
            //: [self addSubview:button];
            [self addSubview:button];
            //: self.actionButton = button;
            self.actionButton = button;
        }

        {
            //: UIImageView *noticeImageview = [[UIImageView alloc] initWithFrame:CGRectMake(10, 6, 34, 34)];
            UIImageView *noticeImageview = [[UIImageView alloc] initWithFrame:CGRectMake(10, 6, 34, 34)];
            //: noticeImageview.image = [UIImage imageNamed:@"speaker"];
            noticeImageview.image = [UIImage imageNamed:StringFromCoalitionData(m_pilotMessage)];
            //: [self addSubview:noticeImageview];
            [self addSubview:noticeImageview];
            //: self.noticeImageview = noticeImageview;
            self.noticeImageview = noticeImageview;
        }


    }
    //: return self;
    return self;
}

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock
- (void)mercantilismTransaction:(void (^)(ColorCustomView *tipView))transactionBlock
{
    //: if (nil == transactionBlock) {
    if (nil == transactionBlock) {
        //: return;
        return;
    }

    //: transactionBlock(self);
    transactionBlock(self);

    //: [_actionButton setImage:[UIImage imageNamed:@"lead_close"] forState:(UIControlStateNormal)];
    [_actionButton setImage:[UIImage imageNamed:StringFromCoalitionData(user_retMessage)] forState:(UIControlStateNormal)];

    // 设置 action button 的 frame
    {

        //: CGRect frame = CGRectMake(0, 0, 30, 30);
        CGRect frame = CGRectMake(0, 0, 30, 30);
        //: frame.origin.x = CGRectGetMaxX(self.bounds) - frame.size.width;
        frame.origin.x = CGRectGetMaxX(self.bounds) - frame.size.width;
        //: frame.origin.y = (self.bounds.size.height - frame.size.height) * 0.5;
        frame.origin.y = (self.bounds.size.height - frame.size.height) * 0.5;

        //: _actionButton.frame = CGRectIntegral(frame);
        _actionButton.frame = CGRectIntegral(frame);
    }

    //: [_leftwardMarqueeView reloadData];
    [_leftwardMarqueeView titleArray];
    //: [_leftwardMarqueeView start];
    [_leftwardMarqueeView send];
}


//: #pragma mark -
#pragma mark -
//: #pragma mark Prviate
#pragma mark Prviate

//: - (void)p_showOnView:(UIView *)superView
- (void)to:(UIView *)superView
{
    //: [superView addSubview:self];
    [superView addSubview:self];

    //: [UIView animateWithDuration:0.5 delay:0.3 options:UIViewAnimationOptionCurveLinear animations:^{
    [UIView animateWithDuration:0.5 delay:0.3 options:UIViewAnimationOptionCurveLinear animations:^{
        //: CGRect frame = self.frame;
        CGRect frame = self.frame;
        //: frame.origin.y = SNStatusBarHeight() + 44 + 5;
        frame.origin.y = statusLoftinessBar() + 44 + 5;
        //: self.frame = frame;
        self.frame = frame;
    //: } completion:nil];
    } completion:nil];
}

//: - (void)p_dismissWith:(BOOL)callback
- (void)bar:(BOOL)callback
{
    //: [self.leftwardMarqueeView pause];
    [self.leftwardMarqueeView to];

    //: if (!self.hidden && nil != self.superview) {
    if (!self.hidden && nil != self.superview) {

        //: [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.90 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseOut animations:^{
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.90 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseOut animations:^{
            //: CGRect frame = self.frame;
            CGRect frame = self.frame;
            //: frame.origin.y = SNStatusBarHeight();
            frame.origin.y = statusLoftinessBar();
            //: self.frame = frame;
            self.frame = frame;
        //: } completion:^(BOOL finished) {
        } completion:^(BOOL finished) {
            //: self.hidden = YES;
            self.hidden = YES;
            //: [self removeFromSuperview];
            [self removeFromSuperview];

            //: if (self.cancleCompletion) {
            if (self.cancleCompletion) {
                //: self.cancleCompletion();
                self.cancleCompletion();
            }

            //: if (callback){
            if (callback){
                //: if (self.completion) {
                if (self.completion) {
                    //: self.completion();
                    self.completion();
                }
            }
        //: }];
        }];
    }
}


//: #pragma mark -
#pragma mark -
//: #pragma mark Target-Action
#pragma mark Target-Action

//: - (void)p_dismiss {
- (void)specs {
    //: [self p_dismissWith:NO];
    [self bar:NO];
}

//: - (void)p_dismissActionTouched:(UIButton *)button {
- (void)cellForTouched:(UIButton *)button {
    //: [self p_dismissWith:NO];
    [self bar:NO];
}

//: #pragma mark - UUMarqueeViewDelegate
#pragma mark - CropViewScale
//: - (NSUInteger)numberOfVisibleItemsForMarqueeView:(UUMarqueeView*)marqueeView {
- (NSUInteger)numerosityEnable:(ColorCropView*)marqueeView {
    //: return 1;
    return 1;
}

//: - (NSUInteger)numberOfDataForMarqueeView:(UUMarqueeView*)marqueeView {
- (NSUInteger)withView:(ColorCropView*)marqueeView {
    //: return 1;
    return 1;
}

//: - (void)createItemView:(UIView*)itemView forMarqueeView:(UUMarqueeView*)marqueeView {
- (void)should:(UIView*)itemView bottom:(ColorCropView*)marqueeView {
    // for leftwardMarqueeView
    //: itemView.backgroundColor = [UIColor clearColor];
    itemView.backgroundColor = [UIColor clearColor];

    //: UILabel *content = [[UILabel alloc] initWithFrame:CGRectMake(5.0f , 0.0f, CGRectGetWidth(itemView.bounds) - 5.0f - 5.0f, CGRectGetHeight(itemView.bounds))];
    UILabel *content = [[UILabel alloc] initWithFrame:CGRectMake(5.0f , 0.0f, CGRectGetWidth(itemView.bounds) - 5.0f - 5.0f, CGRectGetHeight(itemView.bounds))];
    //: content.font = [UIFont systemFontOfSize:13.0f];
    content.font = [UIFont systemFontOfSize:13.0f];
    //: content.tag = 1001;
    content.tag = 1001;
    //: content.textColor = [UIColor darkGrayColor];
    content.textColor = [UIColor darkGrayColor];
    //: [itemView addSubview:content];
    [itemView addSubview:content];
}

//: - (void)updateItemView:(UIView*)itemView atIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView {
- (void)marquee:(UIView*)itemView bitSub:(NSUInteger)index max:(ColorCropView*)marqueeView {
    // for leftwardMarqueeView
    //: UILabel *content = [itemView viewWithTag:1001];
    UILabel *content = [itemView viewWithTag:1001];
    //: content.text = self.title;
    content.text = self.title;

}

//: - (CGFloat)itemViewHeightAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView {
- (CGFloat)past:(NSUInteger)index ting:(ColorCropView*)marqueeView {
    // for upwardDynamicHeightMarqueeView
    //: UILabel *content = [[UILabel alloc] init];
    UILabel *content = [[UILabel alloc] init];
    //: content.numberOfLines = 0;
    content.numberOfLines = 0;
    //: content.font = [UIFont systemFontOfSize:13.0f];
    content.font = [UIFont systemFontOfSize:13.0f];
    //: content.text = self.title;
    content.text = self.title;
    //: CGSize contentFitSize = [content sizeThatFits:CGSizeMake(CGRectGetWidth(marqueeView.frame) - 5.0f - 5.0f,  0x1.fffffep+127f)];
    CGSize contentFitSize = [content sizeThatFits:CGSizeMake(CGRectGetWidth(marqueeView.frame) - 5.0f - 5.0f,  0x1.fffffep+127f)];
    //: return contentFitSize.height + 20.0f;
    return contentFitSize.height + 20.0f;
}

//: - (CGFloat)itemViewWidthAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView {
- (CGFloat)messageData:(NSUInteger)index doing:(ColorCropView*)marqueeView {
    // for leftwardMarqueeView
    //: UILabel *content = [[UILabel alloc] init];
    UILabel *content = [[UILabel alloc] init];
    //: content.font = [UIFont systemFontOfSize:13.0f];
    content.font = [UIFont systemFontOfSize:13.0f];
    //: content.text = self.title;
    content.text = self.title;
    //: return (5.0f + 5.0f) + content.intrinsicContentSize.width; 
    return (5.0f + 5.0f) + content.intrinsicContentSize.width; // icon width + label width (it's perfect to cache them all)
}

//: - (void)didTouchItemViewAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView {
- (void)table:(NSUInteger)index text:(ColorCropView*)marqueeView {
    //: [self p_dismissWith:YES];
    [self bar:YES];
}

//: @end
@end

Byte * CoalitionDataToCache(Byte *data) {
    int exhibit = data[0];
    int presentation = data[1];
    Byte emicBurden = data[2];
    int tentCustom = data[3];
    if (!exhibit) return data + tentCustom;
    for (int i = tentCustom; i < tentCustom + presentation; i++) {
        int value = data[i] + emicBurden;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tentCustom + presentation] = 0;
    return data + tentCustom;
}

NSString *StringFromCoalitionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CoalitionDataToCache(data)];
}
