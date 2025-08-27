
#import <Foundation/Foundation.h>

@interface ClayRemoteData : NSObject

@end

@implementation ClayRemoteData

+ (NSData *)ClayRemoteDataToData:(NSString *)value {
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

+ (Byte *)ClayRemoteDataToCache:(Byte *)data {
    int guy = data[0];
    int dotEfficiency = data[1];
    for (int i = 0; i < guy / 2; i++) {
        int begin = dotEfficiency + i;
        int end = dotEfficiency + guy - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[dotEfficiency + guy] = 0;
    return data + dotEfficiency;
}

+ (NSString *)StringFromClayRemoteData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ClayRemoteDataToCache:data]];
}  

//: report_reasons6
+ (NSString *)appButtonName {
    /* static */ NSString *appButtonName = nil;
    if (!appButtonName) {
		NSString *origin = @"0F0B4D2F9B40F57D4E9DEF36736E6F736165725F74726F7065721D";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appButtonName = [self StringFromClayRemoteData:value];
    }
    return appButtonName;
}

//: report_Content
+ (NSString *)notiBackgroundUrl {
    /* static */ NSString *notiBackgroundUrl = nil;
    if (!notiBackgroundUrl) {
		NSString *origin = @"0E0467CD746E65746E6F435F74726F70657236";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBackgroundUrl = [self StringFromClayRemoteData:value];
    }
    return notiBackgroundUrl;
}

//: icon_accessory_normal
+ (NSString *)user_scaleFrameId {
    /* static */ NSString *user_scaleFrameId = nil;
    if (!user_scaleFrameId) {
		NSString *origin = @"150607BB58A26C616D726F6E5F79726F7373656363615F6E6F6369C5";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_scaleFrameId = [self StringFromClayRemoteData:value];
    }
    return user_scaleFrameId;
}

//: report_reasons10
+ (NSString *)dreamCreasedTitle {
    /* static */ NSString *dreamCreasedTitle = nil;
    if (!dreamCreasedTitle) {
		NSString *origin = @"100779F28015B63031736E6F736165725F74726F706572CC";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamCreasedTitle = [self StringFromClayRemoteData:value];
    }
    return dreamCreasedTitle;
}

//: icon_accessory_selected
+ (NSString *)appShouldOperationText {
    /* static */ NSString *appShouldOperationText = nil;
    if (!appShouldOperationText) {
		NSString *origin = @"170B4314B445546750C62964657463656C65735F79726F7373656363615F6E6F6369E9";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appShouldOperationText = [self StringFromClayRemoteData:value];
    }
    return appShouldOperationText;
}

//: #333333
+ (NSString *)m_shareValue {
    /* static */ NSString *m_shareValue = nil;
    if (!m_shareValue) {
		NSString *origin = @"0706C2CA63C13333333333332354";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_shareValue = [self StringFromClayRemoteData:value];
    }
    return m_shareValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)appExamineedUrl {
    /* static */ NSString *appExamineedUrl = nil;
    if (!appExamineedUrl) {
		NSString *origin = @"1B05D13EDD6C65636E61635F746E656D676172665F6761745F746361746E6F6315";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appExamineedUrl = [self StringFromClayRemoteData:value];
    }
    return appExamineedUrl;
}

//: #F7BA00
+ (NSString *)userTraditionalStr {
    /* static */ NSString *userTraditionalStr = nil;
    if (!userTraditionalStr) {
		NSString *origin = @"07059505BF303041423746238C";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTraditionalStr = [self StringFromClayRemoteData:value];
    }
    return userTraditionalStr;
}

//: contact_tag_fragment_sure
+ (NSString *)notiFlameIdent {
    /* static */ NSString *notiFlameIdent = nil;
    if (!notiFlameIdent) {
		NSString *origin = @"190494D0657275735F746E656D676172665F6761745F746361746E6F6387";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiFlameIdent = [self StringFromClayRemoteData:value];
    }
    return notiFlameIdent;
}

//: report_Tip
+ (NSString *)mainDropSumTraditionalMessage {
    /* static */ NSString *mainDropSumTraditionalMessage = nil;
    if (!mainDropSumTraditionalMessage) {
		NSString *origin = @"0A0A38DB7E26C89A7B907069545F74726F706572C2";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDropSumTraditionalMessage = [self StringFromClayRemoteData:value];
    }
    return mainDropSumTraditionalMessage;
}

//: report_reasons9
+ (NSString *)k_touchStr {
    /* static */ NSString *k_touchStr = nil;
    if (!k_touchStr) {
		NSString *origin = @"0F04F31439736E6F736165725F74726F7065729C";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_touchStr = [self StringFromClayRemoteData:value];
    }
    return k_touchStr;
}

//: #999999
+ (NSString *)mSpendingPath {
    /* static */ NSString *mSpendingPath = nil;
    if (!mSpendingPath) {
		NSString *origin = @"07061051D27739393939393923BA";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSpendingPath = [self StringFromClayRemoteData:value];
    }
    return mSpendingPath;
}

//: report_reasons8
+ (NSString *)noti_teamTitleId {
    /* static */ NSString *noti_teamTitleId = nil;
    if (!noti_teamTitleId) {
		NSString *origin = @"0F0ABEB625046D5B0B4E38736E6F736165725F74726F706572B2";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_teamTitleId = [self StringFromClayRemoteData:value];
    }
    return noti_teamTitleId;
}

//: #5D5F66
+ (NSString *)k_orangeMsg {
    /* static */ NSString *k_orangeMsg = nil;
    if (!k_orangeMsg) {
		NSString *origin = @"0709CD301DBA2A91D53636463544352327";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_orangeMsg = [self StringFromClayRemoteData:value];
    }
    return k_orangeMsg;
}

//: report_reasons7
+ (NSString *)noti_infoIdent {
    /* static */ NSString *noti_infoIdent = nil;
    if (!noti_infoIdent) {
		NSString *origin = @"0F0237736E6F736165725F74726F706572BC";
		NSData *data = [ClayRemoteData ClayRemoteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_infoIdent = [self StringFromClayRemoteData:value];
    }
    return noti_infoIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONTranslateView.h"
#import "BottomView.h"

//: @interface ZMONTranslateView ()
@interface BottomView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;

//: @property (nonatomic,strong) NSArray *selectButtons;
@property (nonatomic,strong) NSArray *selectButtons;
//: @property (nonatomic,assign) NSInteger index;
@property (nonatomic,assign) NSInteger index;

//: @end
@end

//: @implementation ZMONTranslateView
@implementation BottomView

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
        [self initInfo];

        //: self.selectButtons = @[[ContentLanguageManager getTextWithKey:@"report_reasons7"],[ContentLanguageManager getTextWithKey:@"report_reasons8"],[ContentLanguageManager getTextWithKey:@"report_reasons9"],[ContentLanguageManager getTextWithKey:@"report_reasons10"],[ContentLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[MatronymicPath colorStreetwise:[ClayRemoteData noti_infoIdent]],[MatronymicPath colorStreetwise:[ClayRemoteData noti_teamTitleId]],[MatronymicPath colorStreetwise:[ClayRemoteData k_touchStr]],[MatronymicPath colorStreetwise:[ClayRemoteData dreamCreasedTitle]],[MatronymicPath colorStreetwise:[ClayRemoteData appButtonName]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initInfo{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    //: labsub.font = [UIFont systemFontOfSize:12.f];
    labsub.font = [UIFont systemFontOfSize:12.f];
    //: labsub.textColor = [UIColor colorWithHexString:@"#999999"];
    labsub.textColor = [UIColor recordView:[ClayRemoteData mSpendingPath]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [ContentLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [MatronymicPath colorStreetwise:[ClayRemoteData mainDropSumTraditionalMessage]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

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
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[ClayRemoteData notiBackgroundUrl]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)handleReason:(UIButton *)sender
- (void)smarted:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if(sender.selected){
    if(sender.selected){
        //: self.index = sender.tag;
        self.index = sender.tag;
    }

}

//: - (UIView *)buttonBox
- (UIView *)buttonBox
{
    //: if(!_buttonBox){
    if(!_buttonBox){
        //: _buttonBox = [[UIView alloc]init];
        _buttonBox = [[UIView alloc]init];

        //: UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn1 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn1 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn1 setImage:[UIImage imageNamed:[ClayRemoteData user_scaleFrameId]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[ClayRemoteData appShouldOperationText]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons7"] forState:UIControlStateNormal];
        [Btn1 setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData noti_infoIdent]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor recordView:[ClayRemoteData m_shareValue]] forState:UIControlStateNormal];
        //: Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn1];
        [_buttonBox addSubview:Btn1];
        //: Btn1.tag = 0;
        Btn1.tag = 0;


        //: UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn2 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn2 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn2 setImage:[UIImage imageNamed:[ClayRemoteData user_scaleFrameId]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[ClayRemoteData appShouldOperationText]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons8"] forState:UIControlStateNormal];
        [Btn2 setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData noti_teamTitleId]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor recordView:[ClayRemoteData m_shareValue]] forState:UIControlStateNormal];
        //: Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn2];
        [_buttonBox addSubview:Btn2];
        //: Btn2.tag = 1;
        Btn2.tag = 1;

        //: UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn3 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn3 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn3 setImage:[UIImage imageNamed:[ClayRemoteData user_scaleFrameId]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[ClayRemoteData appShouldOperationText]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons9"] forState:UIControlStateNormal];
        [Btn3 setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData k_touchStr]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor recordView:[ClayRemoteData m_shareValue]] forState:UIControlStateNormal];
        //: Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn3.tag = 2;
        Btn3.tag = 2;

        //: UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn4 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn4 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn4 setImage:[UIImage imageNamed:[ClayRemoteData user_scaleFrameId]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[ClayRemoteData appShouldOperationText]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons10"] forState:UIControlStateNormal];
        [Btn4 setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData dreamCreasedTitle]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor recordView:[ClayRemoteData m_shareValue]] forState:UIControlStateNormal];
        //: Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn4.tag = 3;
        Btn4.tag = 3;

        //: UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn5 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn5 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn5 setImage:[UIImage imageNamed:[ClayRemoteData user_scaleFrameId]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[ClayRemoteData appShouldOperationText]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn5 setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData appButtonName]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor recordView:[ClayRemoteData m_shareValue]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
    }
    //: return _buttonBox;
    return _buttonBox;
}
//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationEnableClose) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor recordView:[ClayRemoteData k_orangeMsg]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData appExamineedUrl]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(egoChild) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[ClayRemoteData notiFlameIdent]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[ClayRemoteData userTraditionalStr]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}
//- (UIButton *)closeBtn {
//    if (!_closeBtn) {
//        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
//        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _closeBtn.layer.borderWidth = 0.5;
//        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
//        _closeBtn.layer.cornerRadius = 10;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
//    }
//    return _closeBtn;
//}
//
//- (UIButton *)sureBtn {
//    if (!_sureBtn) {
//        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
//        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//        [_sureBtn setTitle:LangKey(@"contact_tag_fragment_sure") forState:UIControlStateNormal];
//        _sureBtn.backgroundColor = ThemeColor;
//        _sureBtn.layer.cornerRadius = 10;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;
//        
//    }
//    return _sureBtn;
//}

//: - (void)handleSubmit
- (void)egoChild
{
    //: [self animationClose];
    [self animationEnableClose];
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];

    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitContentButton:)]) {
    if ([self.delegate respondsToSelector:@selector(presented:)]) {
        //: [self.delegate didTouchSubmitContentButton:self.selectButtons[self.index]];
        [self.delegate presented:self.selectButtons[self.index]];
    }


}


//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)indexCrop
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
