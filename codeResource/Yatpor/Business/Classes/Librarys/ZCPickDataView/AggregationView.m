
#import <Foundation/Foundation.h>

typedef struct {
    Byte detectiveToilet;
    Byte *gatorElaborate;
    unsigned int dentScrip;
	int tingScale;
	int showScrip;
} StructWheatData;

@interface WheatData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WheatData

+ (instancetype)sharedInstance {
    static WheatData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WheatDataToData:(NSString *)value {
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

- (Byte *)WheatDataToByte:(StructWheatData *)data {
    for (int i = 0; i < data->dentScrip; i++) {
        data->gatorElaborate[i] ^= data->detectiveToilet;
    }
    data->gatorElaborate[data->dentScrip] = 0;
	if (data->dentScrip >= 2) {
		data->tingScale = data->gatorElaborate[0];
		data->showScrip = data->gatorElaborate[1];
	}
    return data->gatorElaborate;
}

- (NSString *)StringFromWheatData:(StructWheatData *)data {
    return [NSString stringWithUTF8String:(char *)[self WheatDataToByte:data]];
}

//: #EDEEEF
- (NSString *)dreamDrawMsg {
    /* static */ NSString *dreamDrawMsg = nil;
    if (!dreamDrawMsg) {
		NSString *origin = @"3452535252525115";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){23, (Byte *)data.bytes, 7, 3, 152};
        dreamDrawMsg = [self StringFromWheatData:&value];
    }
    return dreamDrawMsg;
}

//: 请选择
- (NSString *)mPitaKey {
    /* static */ NSString *mPitaKey = nil;
    if (!mPitaKey) {
		NSString *origin = @"71362e7019107f12300c";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){153, (Byte *)data.bytes, 9, 118, 101};
        mPitaKey = [self StringFromWheatData:&value];
    }
    return mPitaKey;
}

//: #0092de
- (NSString *)main_ballotText {
    /* static */ NSString *main_ballotText = nil;
    if (!main_ballotText) {
		NSString *origin = @"5043434a411716a2";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){115, (Byte *)data.bytes, 7, 208, 128};
        main_ballotText = [self StringFromWheatData:&value];
    }
    return main_ballotText;
}

//: item_data
- (NSString *)app_hiTextValue {
    /* static */ NSString *app_hiTextValue = nil;
    if (!app_hiTextValue) {
		NSString *origin = @"2934252d1f24213421d2";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){64, (Byte *)data.bytes, 9, 26, 3};
        app_hiTextValue = [self StringFromWheatData:&value];
    }
    return app_hiTextValue;
}

//: #2C3042
- (NSString *)k_potentialName {
    /* static */ NSString *k_potentialName = nil;
    if (!k_potentialName) {
		NSString *origin = @"7e6f1e6e6d696fac";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){93, (Byte *)data.bytes, 7, 32, 239};
        k_potentialName = [self StringFromWheatData:&value];
    }
    return k_potentialName;
}

//: #5D5F66
- (NSString *)noti_frameFormat {
    /* static */ NSString *noti_frameFormat = nil;
    if (!noti_frameFormat) {
		NSString *origin = @"392f5e2f5c2c2c29";
		NSData *data = [WheatData WheatDataToData:origin];
        StructWheatData value = (StructWheatData){26, (Byte *)data.bytes, 7, 148, 232};
        noti_frameFormat = [self StringFromWheatData:&value];
    }
    return noti_frameFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationView.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMDataPicker.h"
#import "AggregationView.h"

//: @interface HMDataPicker () <UIPickerViewDataSource, UIPickerViewDelegate>{
@interface AggregationView () <UIPickerViewDataSource, UIPickerViewDelegate>{

}
//: @property (nonatomic,weak) id<HMDataPickerDelegate> delegate;
@property (nonatomic,weak) id<EmptyDelegate> delegate;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIView *pickerBackView;
@property (nonatomic,strong) UIView *pickerBackView;
//: @property (nonatomic,strong) UIPickerView *pickerView;
@property (nonatomic,strong) UIPickerView *pickerView;
//: @property (nonatomic,strong) NSArray *dataArray;
@property (nonatomic,strong) NSArray *dataArray;
//: @property (nonatomic,strong) NSDictionary *dataDict;
@property (nonatomic,strong) NSDictionary *dataDict;
//: @property (nonatomic,strong) NSDictionary *selectedDict;
@property (nonatomic,strong) NSDictionary *selectedDict;
//: @property (nonatomic,strong) NSDictionary *tempDict;
@property (nonatomic,strong) NSDictionary *tempDict;
//: @property (nonatomic,strong) NSString *jsonNode;
@property (nonatomic,strong) NSString *jsonNode;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end



//: @implementation HMDataPicker
@implementation AggregationView


//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode{
- (id)initWithInput:(id<EmptyDelegate>)delegate title:(NSDictionary *)dataDict should:(NSDictionary *)selectedDict media:(NSString *)jsonNode{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.frame = [[UIScreen mainScreen] bounds];
        self.frame = [[UIScreen mainScreen] bounds];
        //: _delegate = delegate;
        _delegate = delegate;

        //: _dataDict = [[NSDictionary alloc]initWithDictionary:dataDict];
        _dataDict = [[NSDictionary alloc]initWithDictionary:dataDict];
        //: _dataArray = [[NSArray alloc]initWithArray:[dataDict valueObjectForKey:@"item_data"]];
        _dataArray = [[NSArray alloc]initWithArray:[dataDict arrayMust:[[WheatData sharedInstance] app_hiTextValue]]];
        //: _selectedDict = selectedDict;
        _selectedDict = selectedDict;
        //: _jsonNode = jsonNode;
        _jsonNode = jsonNode;

        //: [self customInit];
        [self analogDigitalConverterInit];
    }
    //: return self;
    return self;
}

//: - (void)setTitle:(NSString *)title{
- (void)setColorName:(NSString *)title{
    //: _titleLabel.text = title;
    _titleLabel.text = title;
}

//: - (void)customInit{
- (void)analogDigitalConverterInit{



    //: _backView = [[UIView alloc] init];
    _backView = [[UIView alloc] init];
    //: _backView.frame = [[UIScreen mainScreen] bounds];
    _backView.frame = [[UIScreen mainScreen] bounds];
    //: _backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    _backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    //: _backView.userInteractionEnabled = YES;
    _backView.userInteractionEnabled = YES;
    //: [self addSubview:_backView];
    [self addSubview:_backView];

    //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: disButton.frame = _backView.bounds;
    disButton.frame = _backView.bounds;
    //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
    [disButton addTarget:self action:@selector(slightPicker) forControlEvents:UIControlEventTouchUpInside];
    //: [_backView addSubview:disButton];
    [_backView addSubview:disButton];

    //: UIView *backView = [[UIView alloc] init];
    UIView *backView = [[UIView alloc] init];
    //: backView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 60 + 246+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    backView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 60 + 246+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    //: backView.backgroundColor = [UIColor whiteColor];
    backView.backgroundColor = [UIColor whiteColor];
    //backView.center = _backView.center;
    //: [_backView addSubview:backView];
    [_backView addSubview:backView];
    //: _pickerBackView = backView;
    _pickerBackView = backView;

    //: UIView *headerView = [[UIView alloc] init];
    UIView *headerView = [[UIView alloc] init];
    //: headerView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 40);
    headerView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 40);
    //: headerView.backgroundColor = [UIColor colorWithHexString:@"#EDEEEF"];
    headerView.backgroundColor = [UIColor recordView:[[WheatData sharedInstance] dreamDrawMsg]];
    //: [backView addSubview:headerView];
    [backView addSubview:headerView];

//    UIView *lineView = [[UIView alloc] init];
//    lineView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 2);
//    lineView.backgroundColor = RGB_COLOR_String(@"#DCDDDE");
//    [backView addSubview:lineView];

    //: UILabel *titleLab = [[UILabel alloc] init];
    UILabel *titleLab = [[UILabel alloc] init];
    //: titleLab.frame = CGRectMake(30, 0, backView.frame.size.width-60, 40);
    titleLab.frame = CGRectMake(30, 0, backView.frame.size.width-60, 40);
    //: titleLab.textAlignment = NSTextAlignmentCenter;
    titleLab.textAlignment = NSTextAlignmentCenter;
    //: titleLab.font = [UIFont systemFontOfSize:16];
    titleLab.font = [UIFont systemFontOfSize:16];
    //: titleLab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    titleLab.textColor = [UIColor recordView:[[WheatData sharedInstance] noti_frameFormat]];
    //: [backView addSubview:titleLab];
    [backView addSubview:titleLab];
    //: titleLab.text = [NSString stringWithFormat:@"%@", @"请选择".nim_localized];
    titleLab.text = [NSString stringWithFormat:@"%@", [[WheatData sharedInstance] mPitaKey].resign];
    //: _titleLabel = titleLab;
    _titleLabel = titleLab;

    //: UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    //: button.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-60, 0, 60, 40);
    button.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-60, 0, 60, 40);
    //: [button setTitle:@"完成".nim_localized forState:UIControlStateNormal];
    [button setTitle:@"完成".resign forState:UIControlStateNormal];
    //: [button setTitleColor:[UIColor colorWithHexString:@"#0092de"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor recordView:[[WheatData sharedInstance] main_ballotText]] forState:UIControlStateNormal];
    //: button.tag = 100;
    button.tag = 100;
    //: button.titleLabel.font = [UIFont systemFontOfSize:14];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [button addTarget:self action:@selector(buttonClick1:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(videoed:) forControlEvents:UIControlEventTouchUpInside];
    //: [backView addSubview:button];
    [backView addSubview:button];

    //: UIPickerView *pickView = [[UIPickerView alloc] init];
    UIPickerView *pickView = [[UIPickerView alloc] init];
    //: pickView.tag = 1;
    pickView.tag = 1;
    //: pickView.frame = CGRectMake(0, 60, backView.frame.size.width, 206);
    pickView.frame = CGRectMake(0, 60, backView.frame.size.width, 206);
    //: pickView.delegate = self;
    pickView.delegate = self;
    //: pickView.dataSource = self;
    pickView.dataSource = self;
    //: pickView.backgroundColor = [UIColor whiteColor];
    pickView.backgroundColor = [UIColor whiteColor];
    //: pickView.showsSelectionIndicator=YES;
    pickView.showsSelectionIndicator=YES;
    //: [backView addSubview:pickView];
    [backView addSubview:pickView];
    //: pickView.userInteractionEnabled = _dataArray.count>0;
    pickView.userInteractionEnabled = _dataArray.count>0;
    //: _pickerView = pickView;
    _pickerView = pickView;


    //: [_pickerBackView setHeight:40+206 +(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)];
    [_pickerBackView setHeight:40+206 +(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)];


    //: if (_selectedDict) {
    if (_selectedDict) {
        //: _tempDict = _selectedDict;
        _tempDict = _selectedDict;
        //: for (NSInteger i=0; i<_dataArray.count; i++) {
        for (NSInteger i=0; i<_dataArray.count; i++) {
            //: NSDictionary *dict = [_dataArray objectAtIndex:i];
            NSDictionary *dict = [_dataArray objectAtIndex:i];

            //: if ([[dict newStringValueForKey:_jsonNode] isEqualToString:[_tempDict newStringValueForKey:_jsonNode]]) {
            if ([[dict to:_jsonNode] isEqualToString:[_tempDict to:_jsonNode]]) {
                //: [pickView selectRow:i inComponent:0 animated:YES];
                [pickView selectRow:i inComponent:0 animated:YES];
                //: break;
                break;
            }
        }

    //: }else{
    }else{
        //: if (_dataArray.count > 0)
        if (_dataArray.count > 0)
            //: _tempDict = [_dataArray objectAtIndex:0];
            _tempDict = [_dataArray objectAtIndex:0];
    }
}

//: -(void)buttonClick1:(UIButton*)sender{
-(void)videoed:(UIButton*)sender{
    //: if (_tempDict && _delegate && [_delegate respondsToSelector:@selector(dataPicker:selectedDict:)]) {
    if (_tempDict && _delegate && [_delegate respondsToSelector:@selector(build:message:)]) {
        //: [_delegate dataPicker:self selectedDict:_tempDict];
        [_delegate build:self message:_tempDict];
    }


    //: [self dismissPicker];
    [self slightPicker];

}

//: - (void)show{
- (void)streetwise{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

        //: [self->_pickerBackView setOriginY:[[UIScreen mainScreen] bounds].size.height - (40 + 206 + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        [self->_pickerBackView setBottomDirection:[[UIScreen mainScreen] bounds].size.height - (40 + 206 + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)slightPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_pickerBackView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_pickerBackView setBottomDirection:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //: return _dataArray.count;
    return _dataArray.count;
}



//: - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
    //: UILabel* pickerLabel = (UILabel*)view;
    UILabel* pickerLabel = (UILabel*)view;
    //: if (!pickerLabel){
    if (!pickerLabel){
        //: pickerLabel = [[UILabel alloc] init];
        pickerLabel = [[UILabel alloc] init];
        //: pickerLabel.adjustsFontSizeToFitWidth = YES;
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        //: pickerLabel.textAlignment = NSTextAlignmentCenter;
        pickerLabel.textAlignment = NSTextAlignmentCenter;
        //: pickerLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        pickerLabel.textColor = [UIColor recordView:[[WheatData sharedInstance] k_potentialName]];
        //: [pickerLabel setBackgroundColor:[UIColor clearColor]];
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        //: [pickerLabel setFont:[UIFont systemFontOfSize:17]];
        [pickerLabel setFont:[UIFont systemFontOfSize:17]];
    }

    //: NSDictionary *dic = [_dataArray objectAtIndex:row];
    NSDictionary *dic = [_dataArray objectAtIndex:row];
    //: NSString *brandAddressStr = [dic objectForKey:_jsonNode];
    NSString *brandAddressStr = [dic objectForKey:_jsonNode];
    //: pickerLabel.text = brandAddressStr;
    pickerLabel.text = brandAddressStr;
    //: return pickerLabel;
    return pickerLabel;
}

//: -(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent: (NSInteger) component
-(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent: (NSInteger) component
{
    //: return 40;
    return 40;
}

//: -(void) pickerView: (UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent: (NSInteger)component{
-(void) pickerView: (UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent: (NSInteger)component{

    //: _tempDict = [_dataArray objectAtIndex:row];
    _tempDict = [_dataArray objectAtIndex:row];
}



//: @end
@end