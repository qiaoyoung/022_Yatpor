
#import <Foundation/Foundation.h>

typedef struct {
    Byte cheerHospital;
    Byte *powerfulness;
    unsigned int agreeMechanic;
	int softDrinkJurisdiction;
} StructAccountWindowData;

@interface AccountWindowData : NSObject

+ (instancetype)sharedInstance;

//: strokeEnd
@property (nonatomic, copy) NSString *mLayerRedText;

//: rotate
@property (nonatomic, copy) NSString *show_adequateName;

//: transform.rotation
@property (nonatomic, copy) NSString *k_stopText;

//: strokeStart
@property (nonatomic, copy) NSString *m_upFormat;

//: bk_angle_mask
@property (nonatomic, copy) NSString *showResignData;

//: progress
@property (nonatomic, copy) NSString *dream_sweepValue;

@end

@implementation AccountWindowData

+ (instancetype)sharedInstance {
    static AccountWindowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AccountWindowDataToByte:(StructAccountWindowData *)data {
    for (int i = 0; i < data->agreeMechanic; i++) {
        data->powerfulness[i] ^= data->cheerHospital;
    }
    data->powerfulness[data->agreeMechanic] = 0;
	if (data->agreeMechanic >= 1) {
		data->softDrinkJurisdiction = data->powerfulness[0];
	}
    return data->powerfulness;
}

- (NSString *)StringFromAccountWindowData:(StructAccountWindowData *)data {
    return [NSString stringWithUTF8String:(char *)[self AccountWindowDataToByte:data]];
}

//: transform.rotation
- (NSString *)k_stopText {
    if (!_k_stopText) {
        StructAccountWindowData value = (StructAccountWindowData){53, (Byte []){65, 71, 84, 91, 70, 83, 90, 71, 88, 27, 71, 90, 65, 84, 65, 92, 90, 91, 121}, 18, 87};
        _k_stopText = [self StringFromAccountWindowData:&value];
    }
    return _k_stopText;
}

//: strokeEnd
- (NSString *)mLayerRedText {
    if (!_mLayerRedText) {
        StructAccountWindowData value = (StructAccountWindowData){240, (Byte []){131, 132, 130, 159, 155, 149, 181, 158, 148, 162}, 9, 219};
        _mLayerRedText = [self StringFromAccountWindowData:&value];
    }
    return _mLayerRedText;
}

//: rotate
- (NSString *)show_adequateName {
    if (!_show_adequateName) {
        StructAccountWindowData value = (StructAccountWindowData){49, (Byte []){67, 94, 69, 80, 69, 84, 74}, 6, 185};
        _show_adequateName = [self StringFromAccountWindowData:&value];
    }
    return _show_adequateName;
}

//: strokeStart
- (NSString *)m_upFormat {
    if (!_m_upFormat) {
        StructAccountWindowData value = (StructAccountWindowData){26, (Byte []){105, 110, 104, 117, 113, 127, 73, 110, 123, 104, 110, 7}, 11, 177};
        _m_upFormat = [self StringFromAccountWindowData:&value];
    }
    return _m_upFormat;
}

//: progress
- (NSString *)dream_sweepValue {
    if (!_dream_sweepValue) {
        StructAccountWindowData value = (StructAccountWindowData){192, (Byte []){176, 178, 175, 167, 178, 165, 179, 179, 177}, 8, 167};
        _dream_sweepValue = [self StringFromAccountWindowData:&value];
    }
    return _dream_sweepValue;
}

//: bk_angle_mask
- (NSString *)showResignData {
    if (!_showResignData) {
        StructAccountWindowData value = (StructAccountWindowData){91, (Byte []){57, 48, 4, 58, 53, 60, 55, 62, 4, 54, 58, 40, 48, 216}, 13, 176};
        _showResignData = [self StringFromAccountWindowData:&value];
    }
    return _showResignData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyEffectView.m
// UserKit
//
//  Created by chris on 2017/7/28.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentKitProgressHUD()
@interface EmptyEffectView()

//: @property (nonatomic, strong) CAShapeLayer *indefiniteAnimatedLayer;
@property (nonatomic, strong) CAShapeLayer *indefiniteAnimatedLayer;

//: @end
@end

//: @implementation ContentKitProgressHUD
@implementation EmptyEffectView

//: + (instancetype)sharedView
+ (instancetype)mutualPressPosition
{
    //: static ContentKitProgressHUD *instance = nil;
    static EmptyEffectView *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentKitProgressHUD alloc] initWithFrame:CGRectMake(0, 0, 84, 84)];
        instance = [[EmptyEffectView alloc] initWithFrame:CGRectMake(0, 0, 84, 84)];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

        //: UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        //: UIVisualEffectView *blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        UIVisualEffectView *blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        //: blurView.frame = self.bounds;
        blurView.frame = self.bounds;
        //: [self.contentView addSubview:blurView];
        [self.contentView addSubview:blurView];

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 14.f;
        self.layer.cornerRadius = 14.f;
        //: self.alpha = 0.8;
        self.alpha = 0.8;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
    }
    //: return self;
    return self;
}

//: + (void)show
+ (void)mustBy
{
    //: [[ContentKitProgressHUD sharedView] showInView:[UIApplication sharedApplication].windows.firstObject];
    [[EmptyEffectView mutualPressPosition] hid:[UIApplication sharedApplication].windows.firstObject];
}

//: + (void)dismiss
+ (void)tag
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[ContentKitProgressHUD sharedView] removeFromSuperview];
        [[EmptyEffectView mutualPressPosition] removeFromSuperview];
        //: [[ContentKitProgressHUD sharedView].indefiniteAnimatedLayer removeFromSuperlayer];
        [[EmptyEffectView mutualPressPosition].indefiniteAnimatedLayer removeFromSuperlayer];
    //: });
    });
}

//: - (void)showInView:(UIView *)view
- (void)hid:(UIView *)view
{
    //: [view addSubview:self];
    [view addSubview:self];
    //: self.center = view.center;
    self.center = view.center;
    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];
    //: [self.layer addSublayer:self.indefiniteAnimatedLayer];
    [self.layer addSublayer:self.indefiniteAnimatedLayer];
    //: [CATransaction commit];
    [CATransaction commit];
}


//: - (CAShapeLayer*)indefiniteAnimatedLayer {
- (CAShapeLayer*)indefiniteAnimatedLayer {
    //: if(!_indefiniteAnimatedLayer) {
    if(!_indefiniteAnimatedLayer) {
        //: CGFloat strokeThickness = 2.f;
        CGFloat strokeThickness = 2.f;
        //: CGFloat radius = 18.f;
        CGFloat radius = 18.f;

        //: CGPoint arcCenter = CGPointMake(radius+strokeThickness/2+5, radius+strokeThickness/2+5);
        CGPoint arcCenter = CGPointMake(radius+strokeThickness/2+5, radius+strokeThickness/2+5);
        //: UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:radius startAngle:(CGFloat) (3.14159265358979323846264338327950288*3/2) endAngle:(CGFloat) (3.14159265358979323846264338327950288/2+3.14159265358979323846264338327950288*5) clockwise:YES];
        UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:radius startAngle:(CGFloat) (3.14159265358979323846264338327950288*3/2) endAngle:(CGFloat) (3.14159265358979323846264338327950288/2+3.14159265358979323846264338327950288*5) clockwise:YES];

        //: _indefiniteAnimatedLayer = [CAShapeLayer layer];
        _indefiniteAnimatedLayer = [CAShapeLayer layer];
        //: _indefiniteAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        _indefiniteAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        //: _indefiniteAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        _indefiniteAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        //: _indefiniteAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        _indefiniteAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        //: _indefiniteAnimatedLayer.strokeColor = [UIColor blackColor].CGColor;
        _indefiniteAnimatedLayer.strokeColor = [UIColor blackColor].CGColor;
        //: _indefiniteAnimatedLayer.lineWidth = 2;
        _indefiniteAnimatedLayer.lineWidth = 2;
        //: _indefiniteAnimatedLayer.lineCap = kCALineCapRound;
        _indefiniteAnimatedLayer.lineCap = kCALineCapRound;
        //: _indefiniteAnimatedLayer.lineJoin = kCALineJoinBevel;
        _indefiniteAnimatedLayer.lineJoin = kCALineJoinBevel;
        //: _indefiniteAnimatedLayer.path = smoothedPath.CGPath;
        _indefiniteAnimatedLayer.path = smoothedPath.CGPath;

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];

//        NSString *bundleName = [[UserKit sharedKit] resourceBundleName];
//        NSURL *bundleURL = [[NSBundle bundleForClass:[EmptyEffectView class]] URLForResource:bundleName withExtension:nil];
//        
//        if (!bundleURL) // 兼容Pod use_frameworks!下，用户自定义资源文件
//        {
//            bundleURL = [[NSBundle mainBundle] URLForResource:bundleName withExtension:nil];
//        }
//        
//        if (bundleURL)
//        {
//            NSBundle *imageBundle = [NSBundle bundleWithURL:bundleURL];
//            
//            if (imageBundle)
//            {
//                NSString *path = [imageBundle pathForResource:@"bk_angle_mask" ofType:@"png"];
//                maskLayer.contents = (__bridge id)[[UIImage imageWithContentsOfFile:path] CGImage];
//            }
//        }

        //: maskLayer.contents = (__bridge id)[[UIImage imageNamed:@"bk_angle_mask"] CGImage];
        maskLayer.contents = (__bridge id)[[UIImage imageNamed:[AccountWindowData sharedInstance].showResignData] CGImage];

        //: maskLayer.frame = _indefiniteAnimatedLayer.bounds;
        maskLayer.frame = _indefiniteAnimatedLayer.bounds;
        //: _indefiniteAnimatedLayer.mask = maskLayer;
        _indefiniteAnimatedLayer.mask = maskLayer;

        //: NSTimeInterval animationDuration = 1;
        NSTimeInterval animationDuration = 1;
        //: CAMediaTimingFunction *linearCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        CAMediaTimingFunction *linearCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];

        //: CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:[AccountWindowData sharedInstance].k_stopText];
        //: animation.fromValue = (id) 0;
        animation.fromValue = (id) 0;
        //: animation.toValue = @(3.14159265358979323846264338327950288*2);
        animation.toValue = @(3.14159265358979323846264338327950288*2);
        //: animation.duration = animationDuration;
        animation.duration = animationDuration;
        //: animation.timingFunction = linearCurve;
        animation.timingFunction = linearCurve;
        //: animation.removedOnCompletion = NO;
        animation.removedOnCompletion = NO;
        //: animation.repeatCount = __builtin_huge_valf();
        animation.repeatCount = __builtin_huge_valf();
        //: animation.fillMode = kCAFillModeForwards;
        animation.fillMode = kCAFillModeForwards;
        //: animation.autoreverses = NO;
        animation.autoreverses = NO;
        //: [_indefiniteAnimatedLayer.mask addAnimation:animation forKey:@"rotate"];
        [_indefiniteAnimatedLayer.mask addAnimation:animation forKey:[AccountWindowData sharedInstance].show_adequateName];

        //: CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        //: animationGroup.duration = animationDuration;
        animationGroup.duration = animationDuration;
        //: animationGroup.repeatCount = __builtin_huge_valf();
        animationGroup.repeatCount = __builtin_huge_valf();
        //: animationGroup.removedOnCompletion = NO;
        animationGroup.removedOnCompletion = NO;
        //: animationGroup.timingFunction = linearCurve;
        animationGroup.timingFunction = linearCurve;

        //: CABasicAnimation *strokeStartAnimation = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
        CABasicAnimation *strokeStartAnimation = [CABasicAnimation animationWithKeyPath:[AccountWindowData sharedInstance].m_upFormat];
        //: strokeStartAnimation.fromValue = @0.015;
        strokeStartAnimation.fromValue = @0.015;
        //: strokeStartAnimation.toValue = @0.515;
        strokeStartAnimation.toValue = @0.515;

        //: CABasicAnimation *strokeEndAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        CABasicAnimation *strokeEndAnimation = [CABasicAnimation animationWithKeyPath:[AccountWindowData sharedInstance].mLayerRedText];
        //: strokeEndAnimation.fromValue = @0.485;
        strokeEndAnimation.fromValue = @0.485;
        //: strokeEndAnimation.toValue = @0.985;
        strokeEndAnimation.toValue = @0.985;

        //: animationGroup.animations = @[strokeStartAnimation, strokeEndAnimation];
        animationGroup.animations = @[strokeStartAnimation, strokeEndAnimation];
        //: [_indefiniteAnimatedLayer addAnimation:animationGroup forKey:@"progress"];
        [_indefiniteAnimatedLayer addAnimation:animationGroup forKey:[AccountWindowData sharedInstance].dream_sweepValue];

    }
    //: return _indefiniteAnimatedLayer;
    return _indefiniteAnimatedLayer;
}


//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.indefiniteAnimatedLayer.position = CGPointMake(self.nim_width * 0.5f, self.nim_height * 0.5f);
    self.indefiniteAnimatedLayer.position = CGPointMake(self.nim_width * 0.5f, self.nim_height * 0.5f);
}


//: @end
@end
