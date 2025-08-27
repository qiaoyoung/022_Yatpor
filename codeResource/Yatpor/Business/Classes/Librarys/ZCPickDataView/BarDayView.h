// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class modelClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol AnonymText;

//: @interface HMDatePickerView : UIView{
@interface BarDayView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<AnonymText> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<AnonymText> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)tapDate:(UIView*)view aLaCarte:(id<AnonymText>)delegate percentage_strong:(NSDate*)minDate backgroundStep:(NSDate*)maxDate view_strong:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)solarDay:(id<AnonymText>)delegate key:(NSDate*)minDate color:(NSDate*)maxDate with:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setPullEnableDate:(NSDate*)date;

//: - (void)show;
- (void)message;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)changeLanguage:(id<AnonymText>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol AnonymText <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)messageView;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)cut:(BarDayView *)pickView coverToQuery:(NSDate *)date;

//: @end
@end