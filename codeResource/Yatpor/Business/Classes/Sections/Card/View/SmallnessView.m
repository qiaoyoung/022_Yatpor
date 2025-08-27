
#import <Foundation/Foundation.h>

@interface RemoveCoverData : NSObject

+ (instancetype)sharedInstance;

//: YES
@property (nonatomic, copy) NSString *m_teamStr;

//: user_profile_avtivity_remove_friend
@property (nonatomic, copy) NSString *dreamDotMessage;

//: report_next_select_delete
@property (nonatomic, copy) NSString *dreamExamineedName;

//: #333333
@property (nonatomic, copy) NSString *m_stateValue;

//: #F7BA00
@property (nonatomic, copy) NSString *mainDataNameKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *app_buttonPath;

//: #5D5F66
@property (nonatomic, copy) NSString *mainInfoMsg;

//: delete
@property (nonatomic, copy) NSString *mainLayerOfId;

@end

@implementation RemoveCoverData

+ (instancetype)sharedInstance {
    static RemoveCoverData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RemoveCoverDataToData:(NSString *)value {
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

- (Byte *)RemoveCoverDataToCache:(Byte *)data {
    int upFrame = data[0];
    Byte processorWith = data[1];
    int window = data[2];
    for (int i = window; i < window + upFrame; i++) {
        int value = data[i] + processorWith;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[window + upFrame] = 0;
    return data + window;
}

- (NSString *)StringFromRemoveCoverData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RemoveCoverDataToCache:data]];
}

//: YES
- (NSString *)m_teamStr {
    if (!_m_teamStr) {
		NSString *origin = @"034f0d65c42af72ab4b59f25210af604e3";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_teamStr = [self StringFromRemoveCoverData:value];
    }
    return _m_teamStr;
}

//: report_next_select_delete
- (NSString *)dreamExamineedName {
    if (!_dreamExamineedName) {
		NSString *origin = @"19590bd988d7c1cca9ad72190c1716191b06150c1f1b061a0c130c0a1b060b0c130c1b0c09";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamExamineedName = [self StringFromRemoveCoverData:value];
    }
    return _dreamExamineedName;
}

//: #5D5F66
- (NSString *)mainInfoMsg {
    if (!_mainInfoMsg) {
		NSString *origin = @"070506dcc4e91e303f304131316e";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainInfoMsg = [self StringFromRemoveCoverData:value];
    }
    return _mainInfoMsg;
}

//: delete
- (NSString *)mainLayerOfId {
    if (!_mainLayerOfId) {
		NSString *origin = @"0661057c6c03040b04130446";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainLayerOfId = [self StringFromRemoveCoverData:value];
    }
    return _mainLayerOfId;
}

//: #F7BA00
- (NSString *)mainDataNameKey {
    if (!_mainDataNameKey) {
		NSString *origin = @"0704069546f31f42333e3d2c2c9f";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainDataNameKey = [self StringFromRemoveCoverData:value];
    }
    return _mainDataNameKey;
}

//: #333333
- (NSString *)m_stateValue {
    if (!_m_stateValue) {
		NSString *origin = @"07550a136e83344ada1ecedededededede14";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_stateValue = [self StringFromRemoveCoverData:value];
    }
    return _m_stateValue;
}

//: user_profile_avtivity_remove_friend
- (NSString *)dreamDotMessage {
    if (!_dreamDotMessage) {
		NSString *origin = @"23310a94308e5b961be0444234412e3f413e35383b342e30454338453843482e41343c3e45342e354138343d3347";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamDotMessage = [self StringFromRemoveCoverData:value];
    }
    return _dreamDotMessage;
}

//: contact_tag_fragment_cancel
- (NSString *)app_buttonPath {
    if (!_app_buttonPath) {
		NSString *origin = @"1b050866ce31daae5e6a696f5c5e6f5a6f5c625a616d5c626860696f5a5e5c695e6067b1";
		NSData *data = [RemoveCoverData RemoveCoverDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_buttonPath = [self StringFromRemoveCoverData:value];
    }
    return _app_buttonPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmallnessView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "SmallnessView.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"

//: @interface ZMONReportDeleteView ()
@interface SmallnessView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONReportDeleteView
@implementation SmallnessView

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
        [self initIconUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initIconUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor recordView:[RemoveCoverData sharedInstance].m_stateValue];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [ContentLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [MatronymicPath colorStreetwise:[RemoveCoverData sharedInstance].dreamExamineedName];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)showAnimation
- (void)cornerSelection
{
    //: [self animationClose];
    [self animationEnableClose];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([RemoveCoverData sharedInstance].m_teamStr);
}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[RemoveCoverData sharedInstance].dreamDotMessage];
    }
    //: return _titleLabel;
    return _titleLabel;
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
        [_closeBtn setTitleColor:[UIColor recordView:[RemoveCoverData sharedInstance].mainInfoMsg] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[RemoveCoverData sharedInstance].app_buttonPath] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(cornerSelection) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[RemoveCoverData sharedInstance].mainLayerOfId] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[RemoveCoverData sharedInstance].mainDataNameKey];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)net
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end
