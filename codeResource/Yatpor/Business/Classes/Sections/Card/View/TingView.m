
#import <Foundation/Foundation.h>

typedef struct {
    Byte reload;
    Byte *backgroundView;
    unsigned int valueBack;
	int modelRelease;
	int accountOn;
} StructCounternalRepresentationData;

@interface CounternalRepresentationData : NSObject

@end

@implementation CounternalRepresentationData

+ (NSData *)CounternalRepresentationDataToData:(NSString *)value {
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

+ (Byte *)CounternalRepresentationDataToByte:(StructCounternalRepresentationData *)data {
    for (int i = 0; i < data->valueBack; i++) {
        data->backgroundView[i] ^= data->reload;
    }
    data->backgroundView[data->valueBack] = 0;
	if (data->valueBack >= 2) {
		data->modelRelease = data->backgroundView[0];
		data->accountOn = data->backgroundView[1];
	}
    return data->backgroundView;
}

+ (NSString *)StringFromCounternalRepresentationData:(StructCounternalRepresentationData *)data {
    return [NSString stringWithUTF8String:(char *)[self CounternalRepresentationDataToByte:data]];
}

//: report_reasons3
+ (NSString *)dreamSizeKey {
    /* static */ NSString *dreamSizeKey = nil;
    if (!dreamSizeKey) {
		NSString *origin = @"a9beabb4a9af84a9bebaa8b4b5a8e89d";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){219, (Byte *)data.bytes, 15, 62, 29};
        dreamSizeKey = [self StringFromCounternalRepresentationData:&value];
    }
    return dreamSizeKey;
}

//: report_reasons1
+ (NSString *)dreamTouchUpKey {
    /* static */ NSString *dreamTouchUpKey = nil;
    if (!dreamTouchUpKey) {
		NSString *origin = @"a9beabb4a9af84a9bebaa8b4b5a8eaca";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){219, (Byte *)data.bytes, 15, 99, 120};
        dreamTouchUpKey = [self StringFromCounternalRepresentationData:&value];
    }
    return dreamTouchUpKey;
}

//: report_reasons6
+ (NSString *)kAccountMessage {
    /* static */ NSString *kAccountMessage = nil;
    if (!kAccountMessage) {
		NSString *origin = @"d1c6d3ccd1d7fcd1c6c2d0cccdd095b5";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){163, (Byte *)data.bytes, 15, 150, 105};
        kAccountMessage = [self StringFromCounternalRepresentationData:&value];
    }
    return kAccountMessage;
}

//: report_reasons2
+ (NSString *)notiAccountId {
    /* static */ NSString *notiAccountId = nil;
    if (!notiAccountId) {
		NSString *origin = @"d0c7d2cdd0d6fdd0c7c3d1cdccd1906e";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){162, (Byte *)data.bytes, 15, 108, 181};
        notiAccountId = [self StringFromCounternalRepresentationData:&value];
    }
    return notiAccountId;
}

//: report_Tip
+ (NSString *)dreamSingleCoverDeletePath {
    /* static */ NSString *dreamSingleCoverDeletePath = nil;
    if (!dreamSingleCoverDeletePath) {
		NSString *origin = @"c4d3c6d9c4c2e9e2dfc6a7";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){182, (Byte *)data.bytes, 10, 57, 245};
        dreamSingleCoverDeletePath = [self StringFromCounternalRepresentationData:&value];
    }
    return dreamSingleCoverDeletePath;
}

//: icon_accessory_normal
+ (NSString *)k_valueIdent {
    /* static */ NSString *k_valueIdent = nil;
    if (!k_valueIdent) {
		NSString *origin = @"d0dad6d7e6d8dadadccacad6cbc0e6d7d6cbd4d8d5da";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){185, (Byte *)data.bytes, 21, 96, 178};
        k_valueIdent = [self StringFromCounternalRepresentationData:&value];
    }
    return k_valueIdent;
}

//: contact_tag_fragment_cancel
+ (NSString *)k_showDismissMessage {
    /* static */ NSString *k_showDismissMessage = nil;
    if (!k_showDismissMessage) {
		NSString *origin = @"f7fbfae0f5f7e0cbe0f5f3cbf2e6f5f3f9f1fae0cbf7f5faf7f1f815";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){148, (Byte *)data.bytes, 27, 204, 138};
        k_showDismissMessage = [self StringFromCounternalRepresentationData:&value];
    }
    return k_showDismissMessage;
}

//: report_reasons4
+ (NSString *)main_closeKey {
    /* static */ NSString *main_closeKey = nil;
    if (!main_closeKey) {
		NSString *origin = @"5b4c59465b5d765b4c485a46475a1d89";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){41, (Byte *)data.bytes, 15, 122, 163};
        main_closeKey = [self StringFromCounternalRepresentationData:&value];
    }
    return main_closeKey;
}

//: icon_accessory_selected
+ (NSString *)mainViewName {
    /* static */ NSString *mainViewName = nil;
    if (!mainViewName) {
		NSString *origin = @"b6bcb0b180bebcbcbaacacb0ada680acbab3babcabbabbce";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){223, (Byte *)data.bytes, 23, 189, 81};
        mainViewName = [self StringFromCounternalRepresentationData:&value];
    }
    return mainViewName;
}

//: #F7BA00
+ (NSString *)m_ofMessage {
    /* static */ NSString *m_ofMessage = nil;
    if (!m_ofMessage) {
		NSString *origin = @"74116015166767cf";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){87, (Byte *)data.bytes, 7, 2, 17};
        m_ofMessage = [self StringFromCounternalRepresentationData:&value];
    }
    return m_ofMessage;
}

//: report_reasons5
+ (NSString *)appStartTitle {
    /* static */ NSString *appStartTitle = nil;
    if (!appStartTitle) {
		NSString *origin = @"8394819e8385ae839490829e9f82c40d";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){241, (Byte *)data.bytes, 15, 159, 65};
        appStartTitle = [self StringFromCounternalRepresentationData:&value];
    }
    return appStartTitle;
}

//: #333333
+ (NSString *)noti_enableNameKey {
    /* static */ NSString *noti_enableNameKey = nil;
    if (!noti_enableNameKey) {
		NSString *origin = @"f7e7e7e7e7e7e779";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){212, (Byte *)data.bytes, 7, 186, 218};
        noti_enableNameKey = [self StringFromCounternalRepresentationData:&value];
    }
    return noti_enableNameKey;
}

//: contact_tag_fragment_sure
+ (NSString *)appCoverMsg {
    /* static */ NSString *appCoverMsg = nil;
    if (!appCoverMsg) {
		NSString *origin = @"4f4342584d4f5873584d4b734a5e4d4b41494258735f595e4965";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){44, (Byte *)data.bytes, 25, 157, 255};
        appCoverMsg = [self StringFromCounternalRepresentationData:&value];
    }
    return appCoverMsg;
}

//: #5D5F66
+ (NSString *)app_titleId {
    /* static */ NSString *app_titleId = nil;
    if (!app_titleId) {
		NSString *origin = @"01176617641414e5";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){34, (Byte *)data.bytes, 7, 255, 78};
        app_titleId = [self StringFromCounternalRepresentationData:&value];
    }
    return app_titleId;
}

//: #999999
+ (NSString *)appValueMessage {
    /* static */ NSString *appValueMessage = nil;
    if (!appValueMessage) {
		NSString *origin = @"7f65656565656589";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){92, (Byte *)data.bytes, 7, 32, 159};
        appValueMessage = [self StringFromCounternalRepresentationData:&value];
    }
    return appValueMessage;
}

//: report_User
+ (NSString *)mCheckPath {
    /* static */ NSString *mCheckPath = nil;
    if (!mCheckPath) {
		NSString *origin = @"05120718050328220412055a";
		NSData *data = [CounternalRepresentationData CounternalRepresentationDataToData:origin];
        StructCounternalRepresentationData value = (StructCounternalRepresentationData){119, (Byte *)data.bytes, 11, 213, 174};
        mCheckPath = [self StringFromCounternalRepresentationData:&value];
    }
    return mCheckPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportUserView.h"
#import "TingView.h"

//: @interface ZMONReportUserView ()
@interface TingView ()

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

//: @implementation ZMONReportUserView
@implementation TingView

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
        [self initNew];

        //: self.selectButtons = @[[ContentLanguageManager getTextWithKey:@"report_reasons1"],[ContentLanguageManager getTextWithKey:@"report_reasons2"],[ContentLanguageManager getTextWithKey:@"report_reasons3"],[ContentLanguageManager getTextWithKey:@"report_reasons4"],[ContentLanguageManager getTextWithKey:@"report_reasons5"],[ContentLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[MatronymicPath colorStreetwise:[CounternalRepresentationData dreamTouchUpKey]],[MatronymicPath colorStreetwise:[CounternalRepresentationData notiAccountId]],[MatronymicPath colorStreetwise:[CounternalRepresentationData dreamSizeKey]],[MatronymicPath colorStreetwise:[CounternalRepresentationData main_closeKey]],[MatronymicPath colorStreetwise:[CounternalRepresentationData appStartTitle]],[MatronymicPath colorStreetwise:[CounternalRepresentationData kAccountMessage]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initNew{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
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
    labsub.textColor = [UIColor recordView:[CounternalRepresentationData appValueMessage]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [ContentLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [MatronymicPath colorStreetwise:[CounternalRepresentationData dreamSingleCoverDeletePath]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
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
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"report_User"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[CounternalRepresentationData mCheckPath]];
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
        [Btn1 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons1"] forState:UIControlStateNormal];
        [Btn1 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData dreamTouchUpKey]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
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
        [Btn2 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons2"] forState:UIControlStateNormal];
        [Btn2 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData notiAccountId]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
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
        [Btn3 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons3"] forState:UIControlStateNormal];
        [Btn3 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData dreamSizeKey]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
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
        [Btn4 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons4"] forState:UIControlStateNormal];
        [Btn4 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData main_closeKey]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
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
        [Btn5 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons5"] forState:UIControlStateNormal];
        [Btn5 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData appStartTitle]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
        //: UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn6 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn6 addTarget:self action:@selector(smarted:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn6 setImage:[UIImage imageNamed:[CounternalRepresentationData k_valueIdent]] forState:UIControlStateNormal];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn6 setImage:[UIImage imageNamed:[CounternalRepresentationData mainViewName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn6];
        [_buttonBox addSubview:Btn6];
        //: [Btn6 setTitle:[ContentLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn6 setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData kAccountMessage]] forState:UIControlStateNormal];
        //: Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn6 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn6 setTitleColor:[UIColor recordView:[CounternalRepresentationData noti_enableNameKey]] forState:UIControlStateNormal];
        //: Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn6.tag = 5;
        Btn6.tag = 5;
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
        [_closeBtn setTitleColor:[UIColor recordView:[CounternalRepresentationData app_titleId]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData k_showDismissMessage]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[CounternalRepresentationData appCoverMsg]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[CounternalRepresentationData m_ofMessage]];
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
//
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitButton:)]) {
    if ([self.delegate respondsToSelector:@selector(enableColor:)]) {
        //: [self.delegate didTouchSubmitButton:self.selectButtons[self.index]];
        [self.delegate enableColor:self.selectButtons[self.index]];
    }
}


//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)read
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
