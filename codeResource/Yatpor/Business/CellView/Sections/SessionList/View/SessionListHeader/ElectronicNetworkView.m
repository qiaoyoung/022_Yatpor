
#import <Foundation/Foundation.h>

NSString *StringFromMessageData(Byte *data);        


//: sign_gold_title
Byte main_frameId[] = {21, 15, 95, 9, 136, 89, 95, 200, 148, 20, 10, 8, 15, 0, 8, 16, 13, 5, 0, 21, 10, 21, 13, 6, 84};

//: dialog_sign_now
Byte notiRangeName[] = {80, 15, 60, 6, 109, 151, 40, 45, 37, 48, 51, 43, 35, 55, 45, 43, 50, 35, 50, 51, 59, 240};

//: sign_keep_title
Byte userGlobalData[] = {47, 15, 35, 11, 33, 174, 55, 60, 180, 146, 136, 80, 70, 68, 75, 60, 72, 66, 66, 77, 60, 81, 70, 81, 73, 66, 113};

//: home_system_sign_close
Byte dream_globalStr[] = {70, 22, 42, 4, 62, 69, 67, 59, 53, 73, 79, 73, 74, 59, 67, 53, 73, 63, 61, 68, 53, 57, 66, 69, 73, 59, 8};

//: #EE4A5C
Byte showOpenTitle[] = {79, 7, 71, 12, 51, 167, 35, 56, 99, 6, 89, 84, 220, 254, 254, 237, 250, 238, 252, 35};

//: home_syetem_sign_back
Byte showReleaseFormat[] = {38, 21, 22, 7, 244, 239, 251, 82, 89, 87, 79, 73, 93, 99, 79, 94, 79, 87, 73, 93, 83, 81, 88, 73, 76, 75, 77, 85, 122};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ElectronicNetworkView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemSignNotificationSheet.h"
#import "ElectronicNetworkView.h"

//: @interface NTESSystemSignNotificationSheet ()
@interface ElectronicNetworkView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @end
@end

//: @implementation NTESSystemSignNotificationSheet
@implementation ElectronicNetworkView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithLiftButton:(CGRect)frame green:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;
        CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];
        //: _backView.layer.cornerRadius = 8.2;
        _backView.layer.cornerRadius = 8.2;
        //: _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        //: _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        //: _backView.layer.shadowOpacity = 0.5;
        _backView.layer.shadowOpacity = 0.5;

        //: UIImageView *topImageView = [[UIImageView alloc] init];
        UIImageView *topImageView = [[UIImageView alloc] init];
        //: topImageView.userInteractionEnabled = YES;
        topImageView.userInteractionEnabled = YES;
        //: topImageView.image = [UIImage imageNamed:@"home_syetem_sign_back"];
        topImageView.image = [UIImage imageNamed:StringFromMessageData(showReleaseFormat)];
        //: [_backView addSubview:topImageView];
        [_backView addSubview:topImageView];
        //: [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.width.mas_equalTo(_backView.mas_width);
            make.width.mas_equalTo(_backView.mas_width);
            //: make.height.mas_equalTo(_backView.mas_height);
            make.height.mas_equalTo(_backView.mas_height);
        //: }];
        }];


        //: UILabel *title_1 = [[UILabel alloc] init];
        UILabel *title_1 = [[UILabel alloc] init];
        //: title_1.textColor = [UIColor whiteColor];
        title_1.textColor = [UIColor whiteColor];
        //: title_1.font = [UIFont boldSystemFontOfSize:25];
        title_1.font = [UIFont boldSystemFontOfSize:25];
        //: title_1.textAlignment = NSTextAlignmentCenter;
        title_1.textAlignment = NSTextAlignmentCenter;
        //: title_1.text = [ContentLanguageManager getTextWithKey:@"sign_gold_title"];
        title_1.text = [MatronymicPath colorStreetwise:StringFromMessageData(main_frameId)];
        //: [topImageView addSubview:title_1];
        [topImageView addSubview:title_1];
        //: [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(20);
            make.top.mas_offset(20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *title_2 = [[UILabel alloc] init];
        UILabel *title_2 = [[UILabel alloc] init];
        //: title_2.textColor = [UIColor whiteColor];
        title_2.textColor = [UIColor whiteColor];
        //: title_2.textAlignment = NSTextAlignmentCenter;
        title_2.textAlignment = NSTextAlignmentCenter;
        //: title_2.font = [UIFont boldSystemFontOfSize:15];
        title_2.font = [UIFont boldSystemFontOfSize:15];
        //: title_2.text = [ContentLanguageManager getTextWithKey:@"sign_keep_title"];
        title_2.text = [MatronymicPath colorStreetwise:StringFromMessageData(userGlobalData)];
        //: [topImageView addSubview:title_2];
        [topImageView addSubview:title_2];
        //: [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];




        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        //: closeButton.backgroundColor = [UIColor colorWithHexString:@"#EE4A5C"];
        closeButton.backgroundColor = [UIColor recordView:StringFromMessageData(showOpenTitle)];
        //: [closeButton setTitle:[ContentLanguageManager getTextWithKey:@"dialog_sign_now"] forState:UIControlStateNormal];
        [closeButton setTitle:[MatronymicPath colorStreetwise:StringFromMessageData(notiRangeName)] forState:UIControlStateNormal];
        //: [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(signButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(messageAdd) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 18;
        closeButton.layer.cornerRadius = 18;
        //: closeButton.layer.borderColor = [UIColor colorWithHexString:@"#EE4A5C"].CGColor;
        closeButton.layer.borderColor = [UIColor recordView:StringFromMessageData(showOpenTitle)].CGColor;
        //: closeButton.layer.borderWidth = 1.4;
        closeButton.layer.borderWidth = 1.4;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];


        //: UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [close setImage:[UIImage imageNamed:@"home_system_sign_close"] forState:UIControlStateNormal];
        [close setImage:[UIImage imageNamed:StringFromMessageData(dream_globalStr)] forState:UIControlStateNormal];
        //: [close addTarget:self action:@selector(closeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [close addTarget:self action:@selector(successMax) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:close];
        [self addSubview:close];
        //: [close mas_makeConstraints:^(MASConstraintMaker *make) {
        [close mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            //: make.width.mas_equalTo(34);
            make.width.mas_equalTo(34);
            //: make.height.mas_equalTo(34);
            make.height.mas_equalTo(34);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];



        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(convertAuto)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [self addGestureRecognizer:singleRecognizer];
        [self addGestureRecognizer:singleRecognizer];

    }
    //: return self;
    return self;
}

//: -(void)signButtonClick{
-(void)messageAdd{
    //: [self dismissPicker];
    [self slightPicker];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signButtonClickDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(examineInfo)]) {
        //: [self.delegate signButtonClickDelegate];
        [self.delegate examineInfo];
    }
}


//: -(void)closeButtonClick{
-(void)successMax{
    //: [self dismissPicker];
    [self slightPicker];
}

//: -(void)handleSingleTapFrom{
-(void)convertAuto{
    //: [self dismissPicker];
    [self slightPicker];
}

//: - (void)show{
- (void)arrayShow{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
        [self->_backView setBottomDirection:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice bearDown]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)slightPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setBottomDirection:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: @end
@end

Byte * MessageDataToCache(Byte *data) {
    int start = data[0];
    int textTitle = data[1];
    Byte windowUser = data[2];
    int masterKey = data[3];
    if (!start) return data + masterKey;
    for (int i = masterKey; i < masterKey + textTitle; i++) {
        int value = data[i] + windowUser;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[masterKey + textTitle] = 0;
    return data + masterKey;
}

NSString *StringFromMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MessageDataToCache(data)];
}
