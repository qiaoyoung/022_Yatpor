
#import <Foundation/Foundation.h>

typedef struct {
    Byte harassment;
    Byte *flexible;
    unsigned int ratioSearch;
	int infoHospital;
	int usBag;
	int provisionPotential;
} StructHousingData;

@interface HousingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HousingData

+ (instancetype)sharedInstance {
    static HousingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HousingDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HousingDataToByte:(StructHousingData *)data {
    for (int i = 0; i < data->ratioSearch; i++) {
        data->flexible[i] ^= data->harassment;
    }
    data->flexible[data->ratioSearch] = 0;
	if (data->ratioSearch >= 3) {
		data->infoHospital = data->flexible[0];
		data->usBag = data->flexible[1];
		data->provisionPotential = data->flexible[2];
	}
    return data->flexible;
}

- (NSString *)StringFromHousingData:(StructHousingData *)data {
    return [NSString stringWithUTF8String:(char *)[self HousingDataToByte:data]];
}

//: #875FFA
- (NSString *)showAccountPath {
    /* static */ NSString *showAccountPath = nil;
    if (!showAccountPath) {
		NSString *origin = @"A5BEB1B3C0C0C7C1";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){134, (Byte *)data.bytes, 7, 82, 122, 44};
        showAccountPath = [self StringFromHousingData:&value];
    }
    return showAccountPath;
}

//: #612CF9
- (NSString *)kAnimalName {
    /* static */ NSString *kAnimalName = nil;
    if (!kAnimalName) {
		NSString *origin = @"80959291E0E59AB6";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){163, (Byte *)data.bytes, 7, 63, 193, 78};
        kAnimalName = [self StringFromHousingData:&value];
    }
    return kAnimalName;
}

//: _isTransitioning
- (NSString *)kComfortFormat {
    /* static */ NSString *kComfortFormat = nil;
    if (!kComfortFormat) {
		NSString *origin = @"BE8892B593808F928895888E8F888F86E7";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){225, (Byte *)data.bytes, 16, 95, 199, 117};
        kComfortFormat = [self StringFromHousingData:&value];
    }
    return kComfortFormat;
}

//: icon_empty_data
- (NSString *)dream_normalTitle {
    /* static */ NSString *dream_normalTitle = nil;
    if (!dream_normalTitle) {
		NSString *origin = @"92989495A49E968B8F82A49F9A8F9AAE";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){251, (Byte *)data.bytes, 15, 45, 210, 197};
        dream_normalTitle = [self StringFromHousingData:&value];
    }
    return dream_normalTitle;
}

//: #F9F9F9
- (NSString *)show_diseaseId {
    /* static */ NSString *show_diseaseId = nil;
    if (!show_diseaseId) {
		NSString *origin = @"4D2857285728576E";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){110, (Byte *)data.bytes, 7, 142, 150, 195};
        show_diseaseId = [self StringFromHousingData:&value];
    }
    return show_diseaseId;
}

//: No related content, try another word
- (NSString *)k_shouldData {
    /* static */ NSString *k_shouldData = nil;
    if (!k_shouldData) {
		NSString *origin = @"BE9FD082959C91849594D0939F9E84959E84DCD0848289D0919E9F84989582D0879F829459";
		NSData *data = [HousingData HousingDataToData:origin];
        StructHousingData value = (StructHousingData){240, (Byte *)data.bytes, 36, 36, 19, 6};
        k_shouldData = [self StringFromHousingData:&value];
    }
    return k_shouldData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "LengthViewController.h"

//: @implementation HMViewController
@implementation LengthViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


//: - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor recordView:[[HousingData sharedInstance] show_diseaseId]];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[GradientHelper inheritSureSingular:[UIColor recordView:[[HousingData sharedInstance] showAccountPath]] front:[UIColor recordView:[[HousingData sharedInstance] kAnimalName]] should:SNLinearGradientDirectionLevel]];
    //: [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
}


//: #pragma - 系统返回手势改装
#pragma - 系统返回手势改装

/**
 注意：这个手势是添加在了self.navigationController.view上
 最好在：navigationController->RootViewController实现这个方法
 
 使用的时候一定要配置方法：注意！注意！注意！
 - (void)viewWillAppear:(BOOL)animated{
 [super viewWillAppear:animated];
 [self.navigationController setNavigationBarHidden:YES animated:animated];
 
 }
 */
//: - (void)addFullScreenPopGesture{
- (void)showLink{
//    // 获取系统自带滑动手势的target对象
//    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
//    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
//    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
//    pan.delegate = self;
//    pan.maximumNumberOfTouches = 1;
//    // 给导航控制器的view添加全屏滑动手势
//    [self.navigationController.view addGestureRecognizer:pan];
}

/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)jabbing:(BOOL)enable {
    /************************/
//    //注意：暂时取消侧拉pop手势
//    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
//        
//        gesture.enabled = NO;
//        return;
//    }

    //如果只有系统返回手势，添加自定义手势
    //: if (self.navigationController.view.gestureRecognizers.count == 1) {
    if (self.navigationController.view.gestureRecognizers.count == 1) {
        //: [self addFullScreenPopGesture];
        [self showLink];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
}

//: - (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
    //: if (self.navigationController.viewControllers.count <= 1) {
    if (self.navigationController.viewControllers.count <= 1) {
        //: return NO;
        return NO;
    }

    // Ignore pan gesture when the navigation controller is currently in transition.
    //: if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
    if ([[self.navigationController valueForKey:[[HousingData sharedInstance] kComfortFormat]] boolValue]) {
        //: return NO;
        return NO;
    }

    // Prevent calling the handler when the gesture begins in an opposite direction.
    //: CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    //: if (translation.x <= 0) {
    if (translation.x <= 0) {
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)pod{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self after:[[HousingData sharedInstance] k_shouldData]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)after:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self quantity:message radius:self.view];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)sub:(NSString *)imageName empty:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self tingMarqueText:@"" info:inView position:imageName];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)quantity:(NSString *)message radius:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self tingMarqueText:message info:inView position:[[HousingData sharedInstance] dream_normalTitle]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)tingMarqueText:(NSString *)message info:(UIView *)inView position:(NSString *)imageName{
    //: UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    //: if (!emptyView) {
    if (!emptyView) {
        //: emptyView = [[UIView alloc]init];
        emptyView = [[UIView alloc]init];
        //: emptyView.backgroundColor = [UIColor clearColor];
        emptyView.backgroundColor = [UIColor clearColor];
        //: emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        //: emptyView.tag = 53333;
        emptyView.tag = 53333;

        //: UIImageView *emptyImage = [[UIImageView alloc]init];
        UIImageView *emptyImage = [[UIImageView alloc]init];
        //: emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        //: emptyImage.image = [UIImage imageNamed:imageName];
        emptyImage.image = [UIImage imageNamed:imageName];
        //: [emptyView addSubview:emptyImage];
        [emptyView addSubview:emptyImage];

        //: UILabel *emptyLabel = [[UILabel alloc] init];
        UILabel *emptyLabel = [[UILabel alloc] init];
        //: emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        //: emptyLabel.backgroundColor = [UIColor clearColor];
        emptyLabel.backgroundColor = [UIColor clearColor];
        //: emptyLabel.textColor = [UIColor lightGrayColor];
        emptyLabel.textColor = [UIColor lightGrayColor];
        //: emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        //: emptyLabel.font = [UIFont systemFontOfSize:13];
        emptyLabel.font = [UIFont systemFontOfSize:13];
        //: emptyLabel.text = message;
        emptyLabel.text = message;
        //: [emptyView addSubview:emptyLabel];
        [emptyView addSubview:emptyLabel];
//        [emptyLabel underView:emptyImage padding:8];
//        [emptyLabel verticalAllignment:emptyImage];

    }


    //emptyView.center = CGPointMake(inView.width/2.0, inView.height/2.0);
    //: [inView addSubview:emptyView];
    [inView addSubview:emptyView];
    //: [inView bringSubviewToFront:emptyView];
    [inView bringSubviewToFront:emptyView];
}

//: - (void)hideEmptyView{
- (void)veil{
    //: [self hideEmptyViewInView:self.view];
    [self empty:self.view];
}
//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)empty:(UIView *)view{

    //: UIView *emptyView= (UIView *)[view viewWithTag:53333];
    UIView *emptyView= (UIView *)[view viewWithTag:53333];

    //: emptyView.hidden = YES;
    emptyView.hidden = YES;
    //: [emptyView removeFromSuperview];
    [emptyView removeFromSuperview];
}


//: #pragma mark - 网络异常时调用此方法
#pragma mark - 网络异常时调用此方法

//: - (BOOL)canShowNotNetView{
- (BOOL)showContentChild{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)send{


}





//: @end
@end