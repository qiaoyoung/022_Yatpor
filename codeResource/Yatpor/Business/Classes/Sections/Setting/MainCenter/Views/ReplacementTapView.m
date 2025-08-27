
#import <Foundation/Foundation.h>

@interface BusinessConcernData : NSObject

@end

@implementation BusinessConcernData

+ (NSData *)BusinessConcernDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BusinessConcernDataToCache:(Byte *)data {
    int disc = data[0];
    Byte tingRefresh = data[1];
    int tagVertical = data[2];
    for (int i = tagVertical; i < tagVertical + disc; i++) {
        int value = data[i] - tingRefresh;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[tagVertical + disc] = 0;
    return data + tagVertical;
}

+ (NSString *)StringFromBusinessConcernData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BusinessConcernDataToCache:data]];
}

//: #5D5F66
+ (NSString *)userEndStr {
    /* static */ NSString *userEndStr = nil;
    if (!userEndStr) {
		NSArray<NSNumber *> *origin = @[@7, @35, @4, @18, @70, @88, @103, @88, @105, @89, @89, @248];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userEndStr = [self StringFromBusinessConcernData:value];
    }
    return userEndStr;
}

//: #F7BA00
+ (NSString *)kValueTitle {
    /* static */ NSString *kValueTitle = nil;
    if (!kValueTitle) {
		NSArray<NSNumber *> *origin = @[@7, @97, @6, @22, @169, @136, @132, @167, @152, @163, @162, @145, @145, @79];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kValueTitle = [self StringFromBusinessConcernData:value];
    }
    return kValueTitle;
}

//: set_nick_activity_input
+ (NSString *)kTitleIdent {
    /* static */ NSString *kTitleIdent = nil;
    if (!kTitleIdent) {
		NSArray<NSNumber *> *origin = @[@23, @38, @13, @103, @247, @88, @71, @220, @10, @10, @168, @157, @69, @153, @139, @154, @133, @148, @143, @137, @145, @133, @135, @137, @154, @143, @156, @143, @154, @159, @133, @143, @148, @150, @155, @154, @76];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleIdent = [self StringFromBusinessConcernData:value];
    }
    return kTitleIdent;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)mainResourceValue {
    /* static */ NSString *mainResourceValue = nil;
    if (!mainResourceValue) {
		NSArray<NSNumber *> *origin = @[@45, @62, @8, @185, @178, @96, @213, @172, @179, @177, @163, @176, @157, @174, @176, @173, @164, @167, @170, @163, @157, @159, @180, @178, @167, @180, @167, @178, @183, @157, @179, @177, @163, @176, @157, @167, @172, @164, @173, @157, @179, @174, @162, @159, @178, @163, @157, @164, @159, @167, @170, @163, @162, @187];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainResourceValue = [self StringFromBusinessConcernData:value];
    }
    return mainResourceValue;
}

//: #F6F7FA
+ (NSString *)user_tingFormat {
    /* static */ NSString *user_tingFormat = nil;
    if (!user_tingFormat) {
		NSArray<NSNumber *> *origin = @[@7, @45, @3, @80, @115, @99, @115, @100, @115, @110, @88];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_tingFormat = [self StringFromBusinessConcernData:value];
    }
    return user_tingFormat;
}

//: user_profile_avtivity_user_info_update_success
+ (NSString *)appProcessorTitleFormat {
    /* static */ NSString *appProcessorTitleFormat = nil;
    if (!appProcessorTitleFormat) {
		NSArray<NSNumber *> *origin = @[@46, @36, @10, @129, @181, @193, @109, @146, @199, @237, @153, @151, @137, @150, @131, @148, @150, @147, @138, @141, @144, @137, @131, @133, @154, @152, @141, @154, @141, @152, @157, @131, @153, @151, @137, @150, @131, @141, @146, @138, @147, @131, @153, @148, @136, @133, @152, @137, @131, @151, @153, @135, @135, @137, @151, @151, @62];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appProcessorTitleFormat = [self StringFromBusinessConcernData:value];
    }
    return appProcessorTitleFormat;
}

//: user_info_avtivity_keep
+ (NSString *)dream_titleMessage {
    /* static */ NSString *dream_titleMessage = nil;
    if (!dream_titleMessage) {
		NSArray<NSNumber *> *origin = @[@23, @6, @3, @123, @121, @107, @120, @101, @111, @116, @108, @117, @101, @103, @124, @122, @111, @124, @111, @122, @127, @101, @113, @107, @107, @118, @150];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_titleMessage = [self StringFromBusinessConcernData:value];
    }
    return dream_titleMessage;
}

//: activity_my_user_info_nick
+ (NSString *)appBackMessage {
    /* static */ NSString *appBackMessage = nil;
    if (!appBackMessage) {
		NSArray<NSNumber *> *origin = @[@26, @74, @11, @25, @158, @245, @41, @166, @2, @192, @110, @171, @173, @190, @179, @192, @179, @190, @195, @169, @183, @195, @169, @191, @189, @175, @188, @169, @179, @184, @176, @185, @169, @184, @179, @173, @181, @87];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBackMessage = [self StringFromBusinessConcernData:value];
    }
    return appBackMessage;
}

//: contact_tag_fragment_cancel
+ (NSString *)userKeyBubbleShowUrl {
    /* static */ NSString *userKeyBubbleShowUrl = nil;
    if (!userKeyBubbleShowUrl) {
		NSArray<NSNumber *> *origin = @[@27, @51, @11, @254, @142, @220, @73, @70, @159, @83, @22, @150, @162, @161, @167, @148, @150, @167, @146, @167, @148, @154, @146, @153, @165, @148, @154, @160, @152, @161, @167, @146, @150, @148, @161, @150, @152, @159, @91];
		NSData *data = [BusinessConcernData BusinessConcernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userKeyBubbleShowUrl = [self StringFromBusinessConcernData:value];
    }
    return userKeyBubbleShowUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementTapView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/7.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KEKESetNickNameView.h"
#import "ReplacementTapView.h"

//: @interface KEKESetNickNameView ()<UITextFieldDelegate>
@interface ReplacementTapView ()<UITextFieldDelegate>

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation KEKESetNickNameView
@implementation ReplacementTapView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initBy];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initBy{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-260)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-260)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);


    //: [_box addSubview:self.searchView];
    [_box addSubview:self.searchView];
    //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);
    self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);

//    [_box addSubview:self.numLabel];
//    self.numLabel.frame = CGRectMake(20, self.searchView.bottom+10, SCREEN_WIDTH-80, 20);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 210-height-15, width, height);
    self.closeBtn.frame = CGRectMake(20, 210-height-15, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 210-height-15, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 210-height-15, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)handle:(NSString *)nickname
{
    //: self.titleLabel.text = [ContentLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.titleLabel.text = [MatronymicPath colorStreetwise:[BusinessConcernData appBackMessage]];
    //: self.searchField.text = nickname;
    self.searchField.text = nickname;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}

//: - (void)updateTheNickname{
- (void)sendLimit{

    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
    //: if (!self.titleLabel.text.length) {
    if (!self.titleLabel.text.length) {
        //: [self makeToast:[ContentLanguageManager getTextWithKey:@"set_nick_activity_input"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MatronymicPath colorStreetwise:[BusinessConcernData kTitleIdent]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagNick) : self.titleLabel.text} completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagNick) : self.titleLabel.text} completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself makeToast:[ContentLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [wself makeToast:[MatronymicPath colorStreetwise:[BusinessConcernData appProcessorTitleFormat]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
//            [wself.navigationController popViewControllerAnimated:NO];
            //: [self animationClose];
            [self animationEnableClose];

        //: }else{
        }else{
            //: [wself makeToast:[ContentLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself makeToast:[MatronymicPath colorStreetwise:[BusinessConcernData mainResourceValue]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-508, SCREEN_WIDTH, 508);
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    // 如果是删除键
//    if ([string length] == 0 && range.length > 0)
//    {
//        return YES;
//    }
    //: NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    //: if (self.inputLimit && genString.length > self.inputLimit) {
    if (self.inputLimit && genString.length > self.inputLimit) {
        //: return NO;
        return NO;
    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
//    self.titleLabel.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
}
//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _numLabel.textColor = [UIColor recordView:[BusinessConcernData userEndStr]];
    }
    //: return _numLabel;
    return _numLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationEnableClose) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor recordView:[BusinessConcernData userEndStr]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[BusinessConcernData userKeyBubbleShowUrl]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 1;
        _closeBtn.layer.borderWidth = 1;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(sendLimit) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[BusinessConcernData dream_titleMessage]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[BusinessConcernData kValueTitle]];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor recordView:[BusinessConcernData user_tingFormat]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _searchView.backgroundColor = [UIColor recordView:[BusinessConcernData user_tingFormat]];
        //: _searchView.layer.cornerRadius = 26;
        _searchView.layer.cornerRadius = 26;
//        _searchView.layer.borderWidth = 1;
//        _searchView.layer.borderColor = ThemeColor.CGColor;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [ContentLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
        _searchField.placeholder = [MatronymicPath colorStreetwise:[BusinessConcernData appBackMessage]];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
}

//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)info
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
