
#import <Foundation/Foundation.h>

@interface BackgroundData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation BackgroundData

+ (instancetype)sharedInstance {
    static BackgroundData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BackgroundDataToCache:(Byte *)data {
    int labBlue = data[0];
    Byte collectionCover = data[1];
    int sizeLayer = data[2];
    for (int i = sizeLayer; i < sizeLayer + labBlue; i++) {
        int value = data[i] - collectionCover;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[sizeLayer + labBlue] = 0;
    return data + sizeLayer;
}

- (NSString *)StringFromBackgroundData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BackgroundDataToCache:data]];
}

//: activity_group_chat_avatar_add_black
- (NSString *)m_imageMessage {
    /* static */ NSString *m_imageMessage = nil;
    if (!m_imageMessage) {
        Byte value[] = {36, 12, 7, 190, 223, 118, 64, 109, 111, 128, 117, 130, 117, 128, 133, 107, 115, 126, 123, 129, 124, 107, 111, 116, 109, 128, 107, 109, 130, 109, 128, 109, 126, 107, 109, 112, 112, 107, 110, 120, 109, 111, 119, 196};
        m_imageMessage = [self StringFromBackgroundData:value];
    }
    return m_imageMessage;
}

//: contact_tag_fragment_sure
- (NSString *)k_containerValue {
    /* static */ NSString *k_containerValue = nil;
    if (!k_containerValue) {
        Byte value[] = {25, 36, 11, 38, 231, 167, 88, 80, 63, 123, 106, 135, 147, 146, 152, 133, 135, 152, 131, 152, 133, 139, 131, 138, 150, 133, 139, 145, 137, 146, 152, 131, 151, 153, 150, 137, 46};
        k_containerValue = [self StringFromBackgroundData:value];
    }
    return k_containerValue;
}

//: #FAF8FD
- (NSString *)dreamRemoteFrameIdent {
    /* static */ NSString *dreamRemoteFrameIdent = nil;
    if (!dreamRemoteFrameIdent) {
        Byte value[] = {7, 56, 11, 30, 29, 136, 189, 191, 64, 59, 30, 91, 126, 121, 126, 112, 126, 124, 21};
        dreamRemoteFrameIdent = [self StringFromBackgroundData:value];
    }
    return dreamRemoteFrameIdent;
}

//: report_next_select
- (NSString *)user_modelIdent {
    /* static */ NSString *user_modelIdent = nil;
    if (!user_modelIdent) {
        Byte value[] = {18, 22, 9, 40, 209, 40, 137, 104, 59, 136, 123, 134, 133, 136, 138, 117, 132, 123, 142, 138, 117, 137, 123, 130, 123, 121, 138, 115};
        user_modelIdent = [self StringFromBackgroundData:value];
    }
    return user_modelIdent;
}

//: contact_tag_fragment_cancel
- (NSString *)kCoverMsg {
    /* static */ NSString *kCoverMsg = nil;
    if (!kCoverMsg) {
        Byte value[] = {27, 39, 7, 64, 33, 250, 228, 138, 150, 149, 155, 136, 138, 155, 134, 155, 136, 142, 134, 141, 153, 136, 142, 148, 140, 149, 155, 134, 138, 136, 149, 138, 140, 147, 174};
        kCoverMsg = [self StringFromBackgroundData:value];
    }
    return kCoverMsg;
}

//: #5D5F66
- (NSString *)mainNeedName {
    /* static */ NSString *mainNeedName = nil;
    if (!mainNeedName) {
        Byte value[] = {7, 35, 4, 246, 70, 88, 103, 88, 105, 89, 89, 101};
        mainNeedName = [self StringFromBackgroundData:value];
    }
    return mainNeedName;
}

//: #F7BA00
- (NSString *)main_verticalId {
    /* static */ NSString *main_verticalId = nil;
    if (!main_verticalId) {
        Byte value[] = {7, 92, 5, 226, 216, 127, 162, 147, 158, 157, 140, 140, 12};
        main_verticalId = [self StringFromBackgroundData:value];
    }
    return main_verticalId;
}

//: ic_distrub
- (NSString *)show_contentNamePath {
    /* static */ NSString *show_contentNamePath = nil;
    if (!show_contentNamePath) {
        Byte value[] = {10, 17, 10, 45, 164, 225, 167, 101, 173, 169, 122, 116, 112, 117, 122, 132, 133, 131, 134, 115, 224};
        show_contentNamePath = [self StringFromBackgroundData:value];
    }
    return show_contentNamePath;
}

//: report_Content
- (NSString *)user_imageIdent {
    /* static */ NSString *user_imageIdent = nil;
    if (!user_imageIdent) {
        Byte value[] = {14, 26, 12, 148, 185, 151, 97, 58, 214, 183, 190, 228, 140, 127, 138, 137, 140, 142, 121, 93, 137, 136, 142, 127, 136, 142, 101};
        user_imageIdent = [self StringFromBackgroundData:value];
    }
    return user_imageIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportHisView.h"
#import "CustomView.h"

//: @interface ZMONReportHisView ()
@interface CustomView ()

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
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @end
@end

//: @implementation ZMONReportHisView
@implementation CustomView

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
        [self initGray];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initGray{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
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

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor recordView:[[BackgroundData sharedInstance] mainNeedName]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [ContentLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [MatronymicPath colorStreetwise:[[BackgroundData sharedInstance] user_modelIdent]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

//    [_box addSubview:self.deleteView];
//    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, SCREEN_WIDTH-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
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
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[[BackgroundData sharedInstance] user_imageIdent]];

    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor recordView:[[BackgroundData sharedInstance] dreamRemoteFrameIdent]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[[BackgroundData sharedInstance] show_contentNamePath]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor recordView:[[BackgroundData sharedInstance] mainNeedName]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [ContentLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [MatronymicPath colorStreetwise:[[BackgroundData sharedInstance] m_imageMessage]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
//        [btn addTarget:self action:@selector(handleBlock) forControlEvents:UIControlEventTouchUpInside];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
//        [_blockView addSubview:btn];
    }
    //: return _blockView;
    return _blockView;
}



//: - (void)handleBlock{
- (void)direction{

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
        [_closeBtn setTitleColor:[UIColor recordView:[[BackgroundData sharedInstance] mainNeedName]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[[BackgroundData sharedInstance] kCoverMsg]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(colorFor) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[[BackgroundData sharedInstance] k_containerValue]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[[BackgroundData sharedInstance] main_verticalId]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)colorFor
{
    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(sightButton)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate sightButton];
    }
}

//: - (void)handleSubmit
- (void)egoChild
{

}

//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)can
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
