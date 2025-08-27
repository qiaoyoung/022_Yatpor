
#import <Foundation/Foundation.h>

typedef struct {
    Byte physician;
    Byte *cardinal;
    unsigned int proposalOffBack;
	int resourceClayInfo;
	int examine;
} StructStreetSmartData;

@interface StreetSmartData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation StreetSmartData

+ (instancetype)sharedInstance {
    static StreetSmartData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)StreetSmartDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)StreetSmartDataToByte:(StructStreetSmartData *)data {
    for (int i = 0; i < data->proposalOffBack; i++) {
        data->cardinal[i] ^= data->physician;
    }
    data->cardinal[data->proposalOffBack] = 0;
	if (data->proposalOffBack >= 2) {
		data->resourceClayInfo = data->cardinal[0];
		data->examine = data->cardinal[1];
	}
    return data->cardinal;
}

- (NSString *)StringFromStreetSmartData:(StructStreetSmartData *)data {
    return [NSString stringWithUTF8String:(char *)[self StreetSmartDataToByte:data]];
}

//: #222222
- (NSString *)main_showUrl {
    /* static */ NSString *main_showUrl = nil;
    if (!main_showUrl) {
		NSArray<NSString *> *origin = @[@"61", @"44", @"44", @"44", @"44", @"44", @"44", @"102"];
		NSData *data = [StreetSmartData StreetSmartDataToData:origin];
        StructStreetSmartData value = (StructStreetSmartData){30, (Byte *)data.bytes, 7, 73, 187};
        main_showUrl = [self StringFromStreetSmartData:&value];
    }
    return main_showUrl;
}

//: #612CF9
- (NSString *)m_etherEndPath {
    /* static */ NSString *m_etherEndPath = nil;
    if (!m_etherEndPath) {
		NSArray<NSString *> *origin = @[@"99", @"118", @"113", @"114", @"3", @"6", @"121", @"207"];
		NSData *data = [StreetSmartData StreetSmartDataToData:origin];
        StructStreetSmartData value = (StructStreetSmartData){64, (Byte *)data.bytes, 7, 215, 154};
        m_etherEndPath = [self StringFromStreetSmartData:&value];
    }
    return m_etherEndPath;
}

//: #875FFA
- (NSString *)show_remoteName {
    /* static */ NSString *show_remoteName = nil;
    if (!show_remoteName) {
		NSArray<NSString *> *origin = @[@"103", @"124", @"115", @"113", @"2", @"2", @"5", @"122"];
		NSData *data = [StreetSmartData StreetSmartDataToData:origin];
        StructStreetSmartData value = (StructStreetSmartData){68, (Byte *)data.bytes, 7, 164, 83};
        show_remoteName = [self StringFromStreetSmartData:&value];
    }
    return show_remoteName;
}

//: back_arrow_bl
- (NSString *)m_kitMessage {
    /* static */ NSString *m_kitMessage = nil;
    if (!m_kitMessage) {
		NSArray<NSString *> *origin = @[@"243", @"240", @"242", @"250", @"206", @"240", @"227", @"227", @"254", @"230", @"206", @"243", @"253", @"189"];
		NSData *data = [StreetSmartData StreetSmartDataToData:origin];
        StructStreetSmartData value = (StructStreetSmartData){145, (Byte *)data.bytes, 13, 149, 143};
        m_kitMessage = [self StringFromStreetSmartData:&value];
    }
    return m_kitMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.m
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "UIColor+KIAdditions.h"

// __M_A_C_R_O__
//: #import "UIViewController+KIAdditions.h"
#import "UIViewController+Scale.h"

//: @implementation UIViewController (KIAdditions)
@implementation UIViewController (Scale)


//: #pragma mark - nav bar 设置
#pragma mark - nav bar 设置

//: - (void)showCustomBackButton {
- (void)button {
    //: [self showCustomBackButton:@selector(close)];
    [self strongbox:@selector(dateLight)];
}

//: - (void)showCustomBackButton:(SEL)selector {
- (void)strongbox:(SEL)selector {
    //: [self setNavLeftItem:selector image:[UIImage imageNamed:@"back_arrow_bl"] imageH:nil];
    [self step:selector name:[UIImage imageNamed:[[StreetSmartData sharedInstance] m_kitMessage]] sharedInfo:nil];

}

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH {
- (void)step:(SEL)selector name:(UIImage *)image sharedInfo:(UIImage *)imageH {

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:image forState:UIControlStateNormal];
    //: if (imageH) {
    if (imageH) {
        //: [backButton setImage:imageH forState:UIControlStateHighlighted];
        [backButton setImage:imageH forState:UIControlStateHighlighted];
    }
    //: [backButton setFrame:CGRectMake(0, 0, 50, 44)];
    [backButton setFrame:CGRectMake(0, 0, 50, 44)];
    //: backButton.backgroundColor = [UIColor clearColor];
    backButton.backgroundColor = [UIColor clearColor];
    //: backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: self.navigationItem.leftBarButtonItem = backItem;
    self.navigationItem.leftBarButtonItem = backItem;

}

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH {
- (void)item:(SEL)selector ting:(UIImage *)image background:(UIImage *)imageH {
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:image forState:UIControlStateNormal];
    //: if (imageH) {
    if (imageH) {
        //: [backButton setImage:imageH forState:UIControlStateHighlighted];
        [backButton setImage:imageH forState:UIControlStateHighlighted];
    }
    //: [backButton setFrame:CGRectMake(0, 7, 30, 50)];
    [backButton setFrame:CGRectMake(0, 7, 30, 50)];
    //: backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: backItem.tintColor = [UIColor whiteColor];
    backItem.tintColor = [UIColor whiteColor];

    //: self.navigationItem.rightBarButtonItem = backItem;
    self.navigationItem.rightBarButtonItem = backItem;
}
//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color
-(void)userColor:(SEL)selector window:(NSString *)title lineColor:(UIColor *)color
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitle:title forState:UIControlStateNormal];
    //: [backButton setTitle:title forState:UIControlStateHighlighted];
    [backButton setTitle:title forState:UIControlStateHighlighted];
    //: [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleColor:color forState:UIControlStateNormal];
    //: [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    //: backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: self.navigationItem.leftBarButtonItem = backItem;
    self.navigationItem.leftBarButtonItem = backItem;
}

//: -(void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color
-(void)view:(SEL)selector team:(NSString *)title setInColor:(UIColor *)color
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitle:title forState:UIControlStateNormal];
    //: [backButton setTitle:title forState:UIControlStateHighlighted];
    [backButton setTitle:title forState:UIControlStateHighlighted];
    //: [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleColor:color forState:UIControlStateNormal];
    //: [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    //: backButton.titleLabel.font = [UIFont systemFontOfSize:15];
    backButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: backItem.tintColor = [UIColor whiteColor];
    backItem.tintColor = [UIColor whiteColor];

    //: self.navigationItem.rightBarButtonItem = backItem;
    self.navigationItem.rightBarButtonItem = backItem;
}
//: - (void)setTitle:(NSString *)title {
- (void)setTitle:(NSString *)title {
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:18]];
        [titleLabel setFont:[UIFont systemFontOfSize:18]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];

        //注意：防止rightBarButtonItem为nil，title被挤到右屏幕边缘显示
        //: if (!self.navigationItem.rightBarButtonItem) {
        if (!self.navigationItem.rightBarButtonItem) {
            //: UIView *fixedSpaceView = [[UIView alloc]init];
            UIView *fixedSpaceView = [[UIView alloc]init];
            //: fixedSpaceView.frame = CGRectMake(0, 7, 20, 50);
            fixedSpaceView.frame = CGRectMake(0, 7, 20, 50);
            //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:fixedSpaceView];
            UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:fixedSpaceView];
            //: self.navigationItem.rightBarButtonItem = backItem;
            self.navigationItem.rightBarButtonItem = backItem;
        }
    }
    //: [titleLabel setTextColor:[UIColor colorWithHexString:@"#222222"]];
    [titleLabel setTextColor:[UIColor recordView:[[StreetSmartData sharedInstance] main_showUrl]]];
    //: [titleLabel setText:title];
    [titleLabel setText:title];
    //: [titleLabel sizeToFit];
    [titleLabel sizeToFit];


}

//: - (void)setTitleColor:(UIColor *)color{
- (void)setPullColor:(UIColor *)color{
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:20]];
        [titleLabel setFont:[UIFont systemFontOfSize:20]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];
    }
    //: [titleLabel setTextColor:color];
    [titleLabel setTextColor:color];
}

//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color{
- (void)text:(NSString *)title barrel:(UIColor *)color{
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:20]];
        [titleLabel setFont:[UIFont systemFontOfSize:20]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];
    }
    //: [titleLabel setTextColor:color];
    [titleLabel setTextColor:color];
    //: [titleLabel setText:title];
    [titleLabel setText:title];
}

//: #pragma mark - controller 控制
#pragma mark - controller 控制

//- (void)pushController:(UIViewController *)viewController {
//    [self pushController:viewController animated:YES];
//}

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated {
//    if ([self isKindOfClass:[UINavigationController class]]) {
//        [(UINavigationController *)self pushViewController:viewController animated:animated];
//    } else if (self.navigationController != nil) {
//        [self.navigationController pushViewController:viewController animated:animated];
//    } else {
//        if (viewController == self) {
//            return ;
//        }
//
//        [viewController viewWillAppear:YES];
//        [self.view pushView:viewController.view completion:^(BOOL finished) {
//            [viewController viewDidAppear:YES];
//        }];
//    }
//}

//: - (void)popController {
- (void)inputBy {
    //: if ([self isKindOfClass:[UINavigationController class]]) {
    if ([self isKindOfClass:[UINavigationController class]]) {
        //: if ([self respondsToSelector:@selector(popViewControllerAnimated:)]) {
        if ([self respondsToSelector:@selector(popViewControllerAnimated:)]) {
            //: [(UINavigationController *)self popViewControllerAnimated:NO];
            [(UINavigationController *)self popViewControllerAnimated:NO];
        }
    }
    //: if (self.navigationController != nil) {
    if (self.navigationController != nil) {
        //: if ([self.navigationController respondsToSelector:@selector(popViewControllerAnimated:)]) {
        if ([self.navigationController respondsToSelector:@selector(popViewControllerAnimated:)]) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        }

    //: } else {
    } else {
        //: [self viewWillDisappear:YES];
        [self viewWillDisappear:YES];
        //: [self.view popCompletion:^(BOOL finished) {
        [self.view reply:^(BOOL finished) {
            //: [self viewDidDisappear:YES];
            [self viewDidDisappear:YES];
        //: }];
        }];
    }
}


//: - (void)dismissModalController {
- (void)voice {
    //: if (self.navigationController != nil) {
    if (self.navigationController != nil) {
        //: if ([self.navigationController respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
        if ([self.navigationController respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
            //: [self.navigationController dismissViewControllerAnimated:YES completion:^{
            [self.navigationController dismissViewControllerAnimated:YES completion:^{

            //: }];
            }];
        }
    //: } else {
    } else {
        //: if ([self respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
        if ([self respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
            //: [self.navigationController dismissViewControllerAnimated:YES completion:^{
            [self.navigationController dismissViewControllerAnimated:YES completion:^{

            //: }];
            }];
        }
    }
}


//: - (void)close {
- (void)dateLight {
    //: [self dismissModalController];
    [self voice];
    //: [self popController];
    [self inputBy];
}


//找到navbar底部的黑色线条
//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide{
- (BOOL)cell:(UIView *)view session:(BOOL)hide{
    //: UIView *line = [self findHairlineImageViewUnder:view];
    UIView *line = [self getToGripsUnder:view];

    //: if (line) {
    if (line) {
        //: line.hidden = hide;
        line.hidden = hide;
        //: return YES;
        return YES;
    }

    //: return NO;
    return NO;
}

//: - (UIImageView *)findHairlineImageViewUnder:(UIView *)view
- (UIImageView *)getToGripsUnder:(UIView *)view
{
    //: if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0)
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0)
    {
        //: return (UIImageView *)view;
        return (UIImageView *)view;
    }
    //: for (UIView *subview in view.subviews) {
    for (UIView *subview in view.subviews) {
        //: UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        UIImageView *imageView = [self getToGripsUnder:subview];
        //: if (imageView) {
        if (imageView) {
            //: return imageView;
            return imageView;
        }
    }
    //: return nil;
    return nil;
}


//: #pragma mark - navbar
#pragma mark - navbar

//: - (void)setNavBarBackGroundColor:(UIColor *)color{
- (void)setCustom:(UIColor *)color{
    //: [self.navigationController.navigationBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[GradientHelper inheritSureSingular:[UIColor recordView:[[StreetSmartData sharedInstance] show_remoteName]] front:[UIColor recordView:[[StreetSmartData sharedInstance] m_etherEndPath]] should:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    //: self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //: self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.translucent = YES;
}

//: - (void)setNavBarClearColor{
- (void)maxColor{
    //: [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[self shouldColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
    //: self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //: self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.translucent = YES;

}

//: - (void)setNavBarWithAlpha:(CGFloat)alpha{
- (void)setReplace:(CGFloat)alpha{

    //: self.navigationController.navigationBar.translucent = alpha<1.0;
    self.navigationController.navigationBar.translucent = alpha<1.0;
    //: [self.navigationController.navigationBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[GradientHelper inheritSureSingular:[UIColor recordView:[[StreetSmartData sharedInstance] show_remoteName]] front:[UIColor recordView:[[StreetSmartData sharedInstance] m_etherEndPath]] should:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

}

//: - (UIImage *)imageWithColor:(UIColor *)color{
- (UIImage *)shouldColor:(UIColor *)color{
    //: CGRect rect = CGRectMake(0, 0, 1, 1);
    CGRect rect = CGRectMake(0, 0, 1, 1);
    //: UIGraphicsBeginImageContext(rect.size);
    UIGraphicsBeginImageContext(rect.size);
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    //: [color setFill];
    [color setFill];
    //: CGContextFillRect(context, rect);
    CGContextFillRect(context, rect);
    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return image;
    return image;

}

//: - (void)setShadowClearColor{
- (void)contentArray{
}



//: @end
@end