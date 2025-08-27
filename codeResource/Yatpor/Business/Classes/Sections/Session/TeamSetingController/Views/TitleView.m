
#import <Foundation/Foundation.h>

@interface ToilData : NSObject

+ (instancetype)sharedInstance;

//: #FF483D
@property (nonatomic, copy) NSString *userPerfectlyBeginRemoveFormat;

//: 999999
@property (nonatomic, copy) NSString *main_illId;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *m_viewName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *appGrayMsg;

//: #5D5F66
@property (nonatomic, copy) NSString *dreamLayerData;

//: warm_prompt
@property (nonatomic, copy) NSString *k_needPath;

@end

@implementation ToilData

+ (instancetype)sharedInstance {
    static ToilData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ToilDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ToilDataToCache:(Byte *)data {
    int thickResource = data[0];
    Byte eraseName = data[1];
    int textKit = data[2];
    for (int i = textKit; i < textKit + thickResource; i++) {
        int value = data[i] - eraseName;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[textKit + thickResource] = 0;
    return data + textKit;
}

- (NSString *)StringFromToilData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ToilDataToCache:data]];
}

//: 999999
- (NSString *)main_illId {
    if (!_main_illId) {
		NSArray<NSNumber *> *origin = @[@6, @69, @7, @73, @134, @89, @215, @126, @126, @126, @126, @126, @126, @178];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_illId = [self StringFromToilData:value];
    }
    return _main_illId;
}

//: #5D5F66
- (NSString *)dreamLayerData {
    if (!_dreamLayerData) {
		NSArray<NSNumber *> *origin = @[@7, @36, @4, @92, @71, @89, @104, @89, @106, @90, @90, @225];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamLayerData = [self StringFromToilData:value];
    }
    return _dreamLayerData;
}

//: contact_tag_fragment_cancel
- (NSString *)m_viewName {
    if (!_m_viewName) {
		NSArray<NSNumber *> *origin = @[@27, @27, @13, @138, @38, @179, @230, @154, @120, @159, @37, @219, @134, @126, @138, @137, @143, @124, @126, @143, @122, @143, @124, @130, @122, @129, @141, @124, @130, @136, @128, @137, @143, @122, @126, @124, @137, @126, @128, @135, @220];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_viewName = [self StringFromToilData:value];
    }
    return _m_viewName;
}

//: #FF483D
- (NSString *)userPerfectlyBeginRemoveFormat {
    if (!_userPerfectlyBeginRemoveFormat) {
		NSArray<NSNumber *> *origin = @[@7, @25, @8, @1, @165, @104, @220, @220, @60, @95, @95, @77, @81, @76, @93, @227];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userPerfectlyBeginRemoveFormat = [self StringFromToilData:value];
    }
    return _userPerfectlyBeginRemoveFormat;
}

//: warm_prompt
- (NSString *)k_needPath {
    if (!_k_needPath) {
		NSArray<NSNumber *> *origin = @[@11, @53, @13, @226, @214, @81, @168, @200, @194, @13, @246, @53, @165, @172, @150, @167, @162, @148, @165, @167, @164, @162, @165, @169, @182];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_needPath = [self StringFromToilData:value];
    }
    return _k_needPath;
}

//: contact_tag_fragment_sure
- (NSString *)appGrayMsg {
    if (!_appGrayMsg) {
		NSArray<NSNumber *> *origin = @[@25, @11, @6, @47, @200, @145, @110, @122, @121, @127, @108, @110, @127, @106, @127, @108, @114, @106, @113, @125, @108, @114, @120, @112, @121, @127, @106, @126, @128, @125, @112, @239];
		NSData *data = [ToilData ToilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appGrayMsg = [self StringFromToilData:value];
    }
    return _appGrayMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "TitleView.h"

//: @interface ZMONAlartView ()
@interface TitleView ()

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

//: @implementation ZMONAlartView
@implementation TitleView

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
        [self initData];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initData{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    //: tip.textColor = [UIColor blackColor];
    tip.textColor = [UIColor blackColor];
    //: tip.textAlignment = NSTextAlignmentCenter;
    tip.textAlignment = NSTextAlignmentCenter;
    //: tip.text = [FFFLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [MatronymicPath colorStreetwise:[ToilData sharedInstance].k_needPath];
    //: [_box addSubview:tip];
    [_box addSubview:tip];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);


}

//: - (void)reloadWithTitlename:(NSString *)name
- (void)viewFor:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)egoChild{

    //: [self endEditing:YES];
    [self endEditing:YES];
    //: self.speiceBackBlock(@"");
    self.speiceBackBlock(@"");

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"999999"];
        _titleLabel.textColor = [UIColor recordView:[ToilData sharedInstance].main_illId];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
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
        [_closeBtn setTitleColor:[UIColor recordView:[ToilData sharedInstance].dreamLayerData] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[ToilData sharedInstance].m_viewName] forState:UIControlStateNormal];
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
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[ToilData sharedInstance].appGrayMsg] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor recordView:[ToilData sharedInstance].userPerfectlyBeginRemoveFormat];
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
- (void)item
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end