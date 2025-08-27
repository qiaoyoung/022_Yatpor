
#import <Foundation/Foundation.h>

@interface ExplorationData : NSObject

@end

@implementation ExplorationData

+ (NSData *)ExplorationDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ExplorationDataToCache:(Byte *)data {
    int openWith = data[0];
    Byte sashFastener = data[1];
    int messageImage = data[2];
    for (int i = messageImage; i < messageImage + openWith; i++) {
        int value = data[i] + sashFastener;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[messageImage + openWith] = 0;
    return data + messageImage;
}

+ (NSString *)StringFromExplorationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ExplorationDataToCache:data]];
}

//: account_delete_tip2
+ (NSString *)notiTableName {
    /* static */ NSString *notiTableName = nil;
    if (!notiTableName) {
		NSArray<NSString *> *origin = @[@"19", @"45", @"6", @"161", @"215", @"167", @"52", @"54", @"54", @"66", @"72", @"65", @"71", @"50", @"55", @"56", @"63", @"56", @"71", @"56", @"50", @"71", @"60", @"67", @"5", @"168"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiTableName = [self StringFromExplorationData:value];
    }
    return notiTableName;
}

//: contact_tag_fragment_cancel
+ (NSString *)user_textMsg {
    /* static */ NSString *user_textMsg = nil;
    if (!user_textMsg) {
		NSArray<NSString *> *origin = @[@"27", @"40", @"11", @"70", @"128", @"5", @"93", @"68", @"37", @"243", @"146", @"59", @"71", @"70", @"76", @"57", @"59", @"76", @"55", @"76", @"57", @"63", @"55", @"62", @"74", @"57", @"63", @"69", @"61", @"70", @"76", @"55", @"59", @"57", @"70", @"59", @"61", @"68", @"226"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_textMsg = [self StringFromExplorationData:value];
    }
    return user_textMsg;
}

//: contact_tag_fragment_sure
+ (NSString *)noti_globalImagePath {
    /* static */ NSString *noti_globalImagePath = nil;
    if (!noti_globalImagePath) {
		NSArray<NSString *> *origin = @[@"25", @"25", @"12", @"54", @"31", @"139", @"93", @"96", @"91", @"76", @"222", @"127", @"74", @"86", @"85", @"91", @"72", @"74", @"91", @"70", @"91", @"72", @"78", @"70", @"77", @"89", @"72", @"78", @"84", @"76", @"85", @"91", @"70", @"90", @"92", @"89", @"76", @"110"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_globalImagePath = [self StringFromExplorationData:value];
    }
    return noti_globalImagePath;
}

//: activity_comment_setting_cancel_account
+ (NSString *)user_needShareName {
    /* static */ NSString *user_needShareName = nil;
    if (!user_needShareName) {
		NSArray<NSString *> *origin = @[@"39", @"36", @"11", @"77", @"174", @"32", @"50", @"6", @"13", @"249", @"59", @"61", @"63", @"80", @"69", @"82", @"69", @"80", @"85", @"59", @"63", @"75", @"73", @"73", @"65", @"74", @"80", @"59", @"79", @"65", @"80", @"80", @"69", @"74", @"67", @"59", @"63", @"61", @"74", @"63", @"65", @"72", @"59", @"61", @"63", @"63", @"75", @"81", @"74", @"80", @"1"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_needShareName = [self StringFromExplorationData:value];
    }
    return user_needShareName;
}

//: #2C3042
+ (NSString *)app_tingValue {
    /* static */ NSString *app_tingValue = nil;
    if (!app_tingValue) {
		NSArray<NSString *> *origin = @[@"7", @"45", @"5", @"67", @"77", @"246", @"5", @"22", @"6", @"3", @"7", @"5", @"167"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_tingValue = [self StringFromExplorationData:value];
    }
    return app_tingValue;
}

//: #FF483D
+ (NSString *)userBackContent {
    /* static */ NSString *userBackContent = nil;
    if (!userBackContent) {
		NSArray<NSString *> *origin = @[@"7", @"87", @"10", @"211", @"85", @"55", @"98", @"73", @"113", @"156", @"204", @"239", @"239", @"221", @"225", @"220", @"237", @"2"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBackContent = [self StringFromExplorationData:value];
    }
    return userBackContent;
}

//: #333333
+ (NSString *)userGlobalOperationFormat {
    /* static */ NSString *userGlobalOperationFormat = nil;
    if (!userGlobalOperationFormat) {
		NSArray<NSString *> *origin = @[@"7", @"45", @"13", @"139", @"190", @"202", @"63", @"69", @"217", @"136", @"61", @"22", @"28", @"246", @"6", @"6", @"6", @"6", @"6", @"6", @"88"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userGlobalOperationFormat = [self StringFromExplorationData:value];
    }
    return userGlobalOperationFormat;
}

//: account_delete_tip1
+ (NSString *)show_singleId {
    /* static */ NSString *show_singleId = nil;
    if (!show_singleId) {
		NSArray<NSString *> *origin = @[@"19", @"34", @"3", @"63", @"65", @"65", @"77", @"83", @"76", @"82", @"61", @"66", @"67", @"74", @"67", @"82", @"67", @"61", @"82", @"71", @"78", @"15", @"31"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_singleId = [self StringFromExplorationData:value];
    }
    return show_singleId;
}

//: #5D5F66
+ (NSString *)k_closeCustomTitle {
    /* static */ NSString *k_closeCustomTitle = nil;
    if (!k_closeCustomTitle) {
		NSArray<NSString *> *origin = @[@"7", @"87", @"8", @"5", @"183", @"107", @"89", @"178", @"204", @"222", @"237", @"222", @"239", @"223", @"223", @"220"];
		NSData *data = [ExplorationData ExplorationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_closeCustomTitle = [self StringFromExplorationData:value];
    }
    return k_closeCustomTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeakView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "BeakView.h"

//: @interface DeleteAccountTipView ()
@interface BeakView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation BeakView

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
        [self initDateUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initDateUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



//: - (void)handleSubmit
- (void)egoChild
{
    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(untilMedia)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate untilMedia];
    }

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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor recordView:[ExplorationData app_tingValue]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[ExplorationData user_needShareName]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor recordView:[ExplorationData userGlobalOperationFormat]];
        //: labtitle1.text = [ContentLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [MatronymicPath colorStreetwise:[ExplorationData show_singleId]];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor recordView:[ExplorationData userGlobalOperationFormat]];
        //: labsubtitle1.text = [ContentLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [MatronymicPath colorStreetwise:[ExplorationData notiTableName]];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
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
        [_closeBtn setTitleColor:[UIColor recordView:[ExplorationData k_closeCustomTitle]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[ExplorationData user_textMsg]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[ExplorationData noti_globalImagePath]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor recordView:[ExplorationData userBackContent]];
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
- (void)message
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end
