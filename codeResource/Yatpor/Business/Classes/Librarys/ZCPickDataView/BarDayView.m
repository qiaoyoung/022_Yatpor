
#import <Foundation/Foundation.h>

NSString *StringFromDateData(Byte *data);        


//: #5D5F66
Byte notiDetectiveFormat[] = {59, 7, 54, 10, 40, 191, 144, 53, 242, 145, 237, 255, 14, 255, 16, 0, 0, 110};

//: NSUserDefaultLanguage
Byte dreamLestValue[] = {64, 21, 55, 13, 219, 81, 230, 214, 155, 47, 202, 206, 187, 23, 28, 30, 60, 46, 59, 13, 46, 47, 42, 62, 53, 61, 21, 42, 55, 48, 62, 42, 48, 46, 197};

//: eeeeee
Byte main_upKey[] = {17, 6, 78, 7, 77, 44, 130, 23, 23, 23, 23, 23, 23, 176};

//: yyyy-MM-dd
Byte k_thirtyTitle[] = {85, 10, 70, 14, 65, 193, 21, 113, 189, 194, 211, 202, 43, 215, 51, 51, 51, 51, 231, 7, 7, 231, 30, 30, 106};

//: 0d8bf5
Byte dream_scripId[] = {71, 6, 9, 9, 238, 224, 150, 200, 158, 39, 91, 47, 89, 93, 44, 42};

//: zh_CN
Byte mDebateUrl[] = {76, 5, 55, 12, 253, 59, 207, 83, 245, 154, 239, 169, 67, 49, 40, 12, 23, 177};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.m
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMDatePickerView.h"
#import "BarDayView.h"
//: #import "NSDate+KIAdditions.h"
#import "NSDate+Scale.h"
//: #import "NSDateFormatter+KIAdditions.h"
#import "NSDateFormatter+Scale.h"

//: @interface HMDatePickerView (){
@interface BarDayView (){

    //左边退出按钮
    //: UIButton *cancelButton;
    UIButton *cancelButton;
    //右边的确定按钮
    //: UIButton *chooseButton;
    UIButton *chooseButton;
}
//: @property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIView *bgView;

//: @property (nonatomic,retain) UILabel *yearLabel;
@property (nonatomic,retain) UILabel *yearLabel;
//: @property (nonatomic,retain) UIView *animationView;
@property (nonatomic,retain) UIView *animationView;

//: @end
@end

//: @implementation HMDatePickerView
@implementation BarDayView
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize datePicker;
@synthesize datePicker;
//: @synthesize yearLabel;
@synthesize yearLabel;
//: @synthesize blackBackgroundButton = _blackBackgroundButton;
@synthesize blackBackgroundButton = _blackBackgroundButton;
//: @synthesize animationView = _animationView;
@synthesize animationView = _animationView;



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 初始化
#pragma mark == 初始化
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (id)initWithFrame:(CGRect)frame{
- (id)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: _blackBackgroundButton = [[UIButton alloc]init];
        _blackBackgroundButton = [[UIButton alloc]init];
        //: _blackBackgroundButton.frame = self.bounds;
        _blackBackgroundButton.frame = self.bounds;
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        //: [_blackBackgroundButton addTarget:self action:@selector(singleTap) forControlEvents:UIControlEventTouchDown];
        [_blackBackgroundButton addTarget:self action:@selector(toSelected) forControlEvents:UIControlEventTouchDown];
        //: [self addSubview:_blackBackgroundButton];
        [self addSubview:_blackBackgroundButton];

        //: _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        //: _animationView.backgroundColor = [UIColor whiteColor];
        _animationView.backgroundColor = [UIColor whiteColor];
        //: _animationView.userInteractionEnabled = YES;
        _animationView.userInteractionEnabled = YES;
        //: [self addSubview:_animationView];
        [self addSubview:_animationView];

        //: datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        //: [datePicker addTarget:self action:@selector(datePickerValueChanged) forControlEvents:UIControlEventValueChanged];
        [datePicker addTarget:self action:@selector(commentChanged) forControlEvents:UIControlEventValueChanged];
        //: [datePicker setDate:[NSDate date]];
        [datePicker setDate:[NSDate date]];
        //: datePicker.datePickerMode = UIDatePickerModeDate;
        datePicker.datePickerMode = UIDatePickerModeDate;
        //: [_animationView addSubview:datePicker];
        [_animationView addSubview:datePicker];

        //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
        NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromDateData(dreamLestValue)];
        //: if (lang.length <= 0) {
        if (lang.length <= 0) {
            //: lang = @"zh_CN";
            lang = StringFromDateData(mDebateUrl);
        }
        //: NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        //: datePicker.locale = locale;
        datePicker.locale = locale;

        //: if (@available(iOS 14.0, *)) {
        if (@available(iOS 14.0, *)) {
            //: datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            //此处记得再写一下frame, 在datePickerMode设置之后
            //: datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
            datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
        }

        //: [self setNavigationBarView];
        [self forefront];
    }
    //: return self;
    return self;
}


//: - (void)singleTap{
- (void)toSelected{
    //: [self leftButtonClicked:nil];
    [self leftHandDismissFailure:nil];
}

//: - (void)setDate:(NSDate*)date{
- (void)setPullEnableDate:(NSDate*)date{
    //: if ([NSDate isDate:date earlierThanDate:datePicker.minimumDate]) {
    if ([NSDate view:date dateCenterMeanSolarDay:datePicker.minimumDate]) {
        //: return;
        return;
    }

    //: if ([NSDate isDate:datePicker.maximumDate earlierThanDate:date]) {
    if ([NSDate view:datePicker.maximumDate dateCenterMeanSolarDay:date]) {
        //: return;
        return;
    }

    //: [datePicker setDate:date];
    [datePicker setDate:date];
}


//: - (void)setNavigationBarView{
- (void)forefront{

    //盛放按钮的View
    //: UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    //: upVeiw.backgroundColor = [UIColor whiteColor];
    upVeiw.backgroundColor = [UIColor whiteColor];
    //: [_animationView addSubview:upVeiw];
    [_animationView addSubview:upVeiw];
    //: upVeiw.layer.borderWidth = 0.5f;
    upVeiw.layer.borderWidth = 0.5f;
    //: upVeiw.layer.borderColor = [UIColor colorWithHexString:@"eeeeee"].CGColor;
    upVeiw.layer.borderColor = [UIColor recordView:StringFromDateData(main_upKey)].CGColor;

    //左边的取消按钮
    //: cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: cancelButton.frame = CGRectMake(12, 0, 50, 50);
    cancelButton.frame = CGRectMake(12, 0, 50, 50);
    //: [cancelButton setTitle:@"取消".nim_localized forState:UIControlStateNormal];
    [cancelButton setTitle:@"取消".resign forState:UIControlStateNormal];
    //: cancelButton.backgroundColor = [UIColor clearColor];
    cancelButton.backgroundColor = [UIColor clearColor];
    //: cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [cancelButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor recordView:StringFromDateData(dream_scripId)] forState:UIControlStateNormal];
    //: [cancelButton addTarget:self action:@selector(leftButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton addTarget:self action:@selector(leftHandDismissFailure:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:cancelButton];
    [upVeiw addSubview:cancelButton];

    //右边的确定按钮
    //: chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    //: [chooseButton setTitle:@"完成".nim_localized forState:UIControlStateNormal];
    [chooseButton setTitle:@"完成".resign forState:UIControlStateNormal];
    //: chooseButton.backgroundColor = [UIColor clearColor];
    chooseButton.backgroundColor = [UIColor clearColor];
    //: chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [chooseButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [chooseButton setTitleColor:[UIColor recordView:StringFromDateData(dream_scripId)] forState:UIControlStateNormal];
    //: [chooseButton addTarget:self action:@selector(rightButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [chooseButton addTarget:self action:@selector(sheetClicked:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:chooseButton];
    [upVeiw addSubview:chooseButton];

    //: self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    //: [upVeiw addSubview:_titleL];
    [upVeiw addSubview:_titleL];
    //: _titleL.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _titleL.textColor = [UIColor recordView:StringFromDateData(notiDetectiveFormat)];
    //: _titleL.font = [UIFont systemFontOfSize:16];
    _titleL.font = [UIFont systemFontOfSize:16];
    //: _titleL.textAlignment = NSTextAlignmentCenter;
    _titleL.textAlignment = NSTextAlignmentCenter;
    //: _titleL.text = _titleString;
    _titleL.text = _titleString;

    //分割线
    //: UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    //: splitView.backgroundColor = [UIColor lightTextColor];
    splitView.backgroundColor = [UIColor lightTextColor];
    //: [upVeiw addSubview:splitView];
    [upVeiw addSubview:splitView];


    //: if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
        //: datePicker.backgroundColor = [UIColor whiteColor];
        datePicker.backgroundColor = [UIColor whiteColor];
    }

}

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate{
- (void)changeLanguage:(id<AnonymText>)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
    //: delegateClass = object_getClass(delegate);
    delegateClass = modelClass(delegate);
}

//: - (void)datePickerValueChanged{
- (void)commentChanged{
    //: [self reloadYearLabel:datePicker.date];
    [self secretItemWhite:datePicker.date];
}

//: - (void)reloadYearLabel:(NSDate*)date{
- (void)secretItemWhite:(NSDate*)date{
    //    NSString *stringYM = [NSDate getStringFromDate:datePicker.date dateFormatter:KKDateFormatter05];
    //: NSString *stringYMD = [NSDate getStringFromDate:date dateFormatter:@"yyyy-MM-dd"];
    NSString *stringYMD = [NSDate pagePost:date title:StringFromDateData(k_thirtyTitle)];
    //    NSString *stringYMDH = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter03];
    //    NSString *stringYMDHM = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter02];
    //
    //    CGFloat HH = [[NSDate getStringFromDate:date dateFormatter:@"HH"] floatValue];
    //    CGFloat mm = [[NSDate getStringFromDate:date dateFormatter:@"mm"] floatValue];


    //    if (HH==0 && mm==0) {
    //        yearLabel.text = stringYMD;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:24];
    //    }
    //    else if (mm==0 && HH!=0){
    //        yearLabel.text = stringYMDH;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:22];
    //    }
    //    else{
    //        yearLabel.text = stringYMDHM;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:20];
    //    }
    //: yearLabel.text = stringYMD;
    yearLabel.text = stringYMD;
    //: yearLabel.font = [UIFont boldSystemFontOfSize:24];
    yearLabel.font = [UIFont boldSystemFontOfSize:24];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 接口
#pragma mark == 接口
//: #pragma mark ==================================================
#pragma mark ==================================================
//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate *)showDate{
+ (void)tapDate:(UIView*)view aLaCarte:(id<AnonymText>)delegate percentage_strong:(NSDate*)minDate backgroundStep:(NSDate*)maxDate view_strong:(NSDate *)showDate{

    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    BarDayView *pickerView = [[BarDayView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView changeLanguage:delegate];
    //: [view addSubview:pickerView];
    [view addSubview:pickerView];
    //: [pickerView show];
    [pickerView message];


}

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate{
+ (id)solarDay:(id<AnonymText>)delegate key:(NSDate*)minDate color:(NSDate*)maxDate with:(NSDate*)showDate{
    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    BarDayView *pickerView = [[BarDayView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView changeLanguage:delegate];

//    BOOL iswork = [pickerView.delegate isKindOfClass:[UEmployNotifiViewController class]];
//    BOOL isedu  = [pickerView.delegate isKindOfClass:[UInvitationTestViewController class]];
//    if (iswork || isedu) {
//        pickerView.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
//
//    }

    //: UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    //: [window addSubview:pickerView];
    [window addSubview:pickerView];
    //: [window bringSubviewToFront:pickerView];
    [window bringSubviewToFront:pickerView];

    //: [pickerView show];
    [pickerView message];

    //: return pickerView;
    return pickerView;
}

//: - (void)show{
- (void)message{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0.3;
        _blackBackgroundButton.alpha = 0.3;
        //: _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
        _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

    //: }];
    }];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == PickerViewDelegate
#pragma mark == PickerViewDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)leftButtonClicked:(id)sender{
- (void)leftHandDismissFailure:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = modelClass(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(messageView)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate messageView];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: - (void)rightButtonClicked:(id)sender{
- (void)sheetClicked:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = modelClass(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(messageView)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate messageView];
    }
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(datePick:doneWithDate:)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(cut:coverToQuery:)]) {
        //: [self.delegate datePick:self doneWithDate:datePicker.date];
        [self.delegate cut:self coverToQuery:datePicker.date];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}


//: @end
@end

Byte * DateDataToCache(Byte *data) {
    int computerBusinessStop = data[0];
    int elaborate = data[1];
    Byte imageTable = data[2];
    int dataInfo = data[3];
    if (!computerBusinessStop) return data + dataInfo;
    for (int i = dataInfo; i < dataInfo + elaborate; i++) {
        int value = data[i] + imageTable;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dataInfo + elaborate] = 0;
    return data + dataInfo;
}

NSString *StringFromDateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DateDataToCache(data)];
}
