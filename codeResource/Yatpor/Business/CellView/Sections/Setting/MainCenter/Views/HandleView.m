
#import <Foundation/Foundation.h>

typedef struct {
    Byte coatButton;
    Byte *tingKit;
    unsigned int backing;
	int overlay;
	int refreshBubbleOperation;
	int past;
} StructIndividualismData;

@interface IndividualismData : NSObject

@end

@implementation IndividualismData

+ (NSData *)IndividualismDataToData:(NSString *)value {
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

+ (Byte *)IndividualismDataToByte:(StructIndividualismData *)data {
    for (int i = 0; i < data->backing; i++) {
        data->tingKit[i] ^= data->coatButton;
    }
    data->tingKit[data->backing] = 0;
	if (data->backing >= 3) {
		data->overlay = data->tingKit[0];
		data->refreshBubbleOperation = data->tingKit[1];
		data->past = data->tingKit[2];
	}
    return data->tingKit;
}

+ (NSString *)StringFromIndividualismData:(StructIndividualismData *)data {
    return [NSString stringWithUTF8String:(char *)[self IndividualismDataToByte:data]];
}

//: #000000
+ (NSString *)mRedValue {
    /* static */ NSString *mRedValue = nil;
    if (!mRedValue) {
		NSString *origin = @"E1F2F2F2F2F2F2E3";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){194, (Byte *)data.bytes, 7, 238, 135, 226};
        mRedValue = [self StringFromIndividualismData:&value];
    }
    return mRedValue;
}

//: #F7D2F3
+ (NSString *)k_ofData {
    /* static */ NSString *k_ofData = nil;
    if (!k_ofData) {
		NSString *origin = @"B6D3A2D1A7D3A683";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){149, (Byte *)data.bytes, 7, 191, 103, 178};
        k_ofData = [self StringFromIndividualismData:&value];
    }
    return k_ofData;
}

//: #fffContent
+ (NSString *)kTagMessageTitle {
    /* static */ NSString *kTagMessageTitle = nil;
    if (!kTagMessageTitle) {
		NSString *origin = @"6623232323232325";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){69, (Byte *)data.bytes, 7, 161, 248, 64};
        kTagMessageTitle = [self StringFromIndividualismData:&value];
    }
    return kTagMessageTitle;
}

//: ic_album
+ (NSString *)dreamQueryedTitle {
    /* static */ NSString *dreamQueryedTitle = nil;
    if (!dreamQueryedTitle) {
		NSString *origin = @"F7FDC1Content2FCEBF35D";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){158, (Byte *)data.bytes, 8, 37, 190, 156};
        dreamQueryedTitle = [self StringFromIndividualismData:&value];
    }
    return dreamQueryedTitle;
}

//: #CCECFC
+ (NSString *)app_buttonName {
    /* static */ NSString *app_buttonName = nil;
    if (!app_buttonName) {
		NSString *origin = @"6D0D0D0B0D080D2B";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){78, (Byte *)data.bytes, 7, 66, 116, 121};
        app_buttonName = [self StringFromIndividualismData:&value];
    }
    return app_buttonName;
}

//: message_send_camera
+ (NSString *)showResourceValue {
    /* static */ NSString *showResourceValue = nil;
    if (!showResourceValue) {
		NSString *origin = @"878F99998B8D8FB5998F848EB5898B878F988BDC";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){234, (Byte *)data.bytes, 19, 69, 52, 166};
        showResourceValue = [self StringFromIndividualismData:&value];
    }
    return showResourceValue;
}

//: ic_camera
+ (NSString *)showTagName {
    /* static */ NSString *showTagName = nil;
    if (!showTagName) {
		NSString *origin = @"ADA79BA7A5A9A1B6A5CB";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){196, (Byte *)data.bytes, 9, 220, 96, 74};
        showTagName = [self StringFromIndividualismData:&value];
    }
    return showTagName;
}

//: message_send_album
+ (NSString *)userSizeId {
    /* static */ NSString *userSizeId = nil;
    if (!userSizeId) {
		NSString *origin = @"E9E1F7F7E5E3E1DBF7E1EAE0DBE5E8E6F1E97D";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){132, (Byte *)data.bytes, 18, 78, 109, 72};
        userSizeId = [self StringFromIndividualismData:&value];
    }
    return userSizeId;
}

//: contact_tag_fragment_cancel
+ (NSString *)main_shouldName {
    /* static */ NSString *main_shouldName = nil;
    if (!main_shouldName) {
		NSString *origin = @"151918021715022902171129100417111B1318022915171815131AFC";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){118, (Byte *)data.bytes, 27, 41, 221, 185};
        main_shouldName = [self StringFromIndividualismData:&value];
    }
    return main_shouldName;
}

//: #5D5F66
+ (NSString *)mTableName {
    /* static */ NSString *mTableName = nil;
    if (!mTableName) {
		NSString *origin = @"12047504770707D5";
		NSData *data = [IndividualismData IndividualismDataToData:origin];
        StructIndividualismData value = (StructIndividualismData){49, (Byte *)data.bytes, 7, 135, 148, 175};
        mTableName = [self StringFromIndividualismData:&value];
    }
    return mTableName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "HandleView.h"

//: @interface NSSetAvater ()
@interface HandleView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation HandleView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationEnableClose)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initShouldBar];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initShouldBar{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
    _viewBg.backgroundColor = [UIColor recordView:[IndividualismData kTagMessageTitle]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)text:(NSInteger)Font success:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake( 0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake( 0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)oned:(UIButton *)sender
{
    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(cured:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate cured:sender.tag];
    }

}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor recordView:[IndividualismData k_ofData]];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(oned:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:[IndividualismData showTagName]];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor recordView:[IndividualismData mRedValue]];
        //: lab.text = [ContentLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [MatronymicPath colorStreetwise:[IndividualismData showResourceValue]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor recordView:[IndividualismData app_buttonName]];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(oned:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:[IndividualismData dreamQueryedTitle]];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor recordView:[IndividualismData mRedValue]];
        //: lab.text = [ContentLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [MatronymicPath colorStreetwise:[IndividualismData userSizeId]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
        [_albumBtn addSubview:lab];

//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _albumBtn;
    return _albumBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(animationEnableClose) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor recordView:[IndividualismData mTableName]] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[MatronymicPath colorStreetwise:[IndividualismData main_shouldName]] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
        _cancelBtn.backgroundColor = [UIColor recordView:[IndividualismData kTagMessageTitle]];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)green
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
