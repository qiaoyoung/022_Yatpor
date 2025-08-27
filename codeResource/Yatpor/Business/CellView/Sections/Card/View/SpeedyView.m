
#import <Foundation/Foundation.h>

@interface LaughAwayData : NSObject

+ (instancetype)sharedInstance;

//: icon_accessory_selected
@property (nonatomic, copy) NSString *mBackMsg;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *m_removePath;

//: ic_delete
@property (nonatomic, copy) NSString *showCollectionIdent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *notiValueFormat;

//: report_next_select
@property (nonatomic, copy) NSString *dreamBubbleUpMsg;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *notiDateTitle;

//: #F7BA00
@property (nonatomic, copy) NSString *appKitKey;

//: report_Content
@property (nonatomic, copy) NSString *userWindowIdent;

//: ic_distrub
@property (nonatomic, copy) NSString *user_releaseIdent;

//: #FAF8FD
@property (nonatomic, copy) NSString *app_verticalValue;

//: user_profile_avtivity_remove_friend
@property (nonatomic, copy) NSString *show_needReleaseStartMessage;

//: #5D5F66
@property (nonatomic, copy) NSString *userTitleKey;

//: icon_accessory_normal
@property (nonatomic, copy) NSString *noti_contentMessage;

@end

@implementation LaughAwayData

+ (instancetype)sharedInstance {
    static LaughAwayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LaughAwayDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)LaughAwayDataToCache:(Byte *)data {
    int auditoryImage = data[0];
    Byte eigenvalueOfASquareMatrix = data[1];
    int dotBar = data[2];
    for (int i = dotBar; i < dotBar + auditoryImage; i++) {
        int value = data[i] - eigenvalueOfASquareMatrix;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[dotBar + auditoryImage] = 0;
    return data + dotBar;
}

- (NSString *)StringFromLaughAwayData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LaughAwayDataToCache:data]];
}

//: ic_distrub
- (NSString *)user_releaseIdent {
    if (!_user_releaseIdent) {
		NSArray<NSNumber *> *origin = @[@10, @79, @12, @181, @139, @97, @128, @202, @215, @104, @191, @151, @184, @178, @174, @179, @184, @194, @195, @193, @196, @177, @121];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_releaseIdent = [self StringFromLaughAwayData:value];
    }
    return _user_releaseIdent;
}

//: contact_tag_fragment_sure
- (NSString *)m_removePath {
    if (!_m_removePath) {
		NSArray<NSNumber *> *origin = @[@25, @44, @12, @143, @161, @224, @95, @255, @57, @81, @80, @73, @143, @155, @154, @160, @141, @143, @160, @139, @160, @141, @147, @139, @146, @158, @141, @147, @153, @145, @154, @160, @139, @159, @161, @158, @145, @222];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_removePath = [self StringFromLaughAwayData:value];
    }
    return _m_removePath;
}

//: ic_delete
- (NSString *)showCollectionIdent {
    if (!_showCollectionIdent) {
		NSArray<NSNumber *> *origin = @[@9, @35, @9, @140, @24, @104, @230, @210, @102, @140, @134, @130, @135, @136, @143, @136, @151, @136, @16];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showCollectionIdent = [self StringFromLaughAwayData:value];
    }
    return _showCollectionIdent;
}

//: #F7BA00
- (NSString *)appKitKey {
    if (!_appKitKey) {
		NSArray<NSNumber *> *origin = @[@7, @77, @4, @13, @112, @147, @132, @143, @142, @125, @125, @137];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appKitKey = [self StringFromLaughAwayData:value];
    }
    return _appKitKey;
}

//: activity_group_chat_avatar_add_black
- (NSString *)notiDateTitle {
    if (!_notiDateTitle) {
		NSArray<NSNumber *> *origin = @[@36, @38, @9, @66, @225, @172, @52, @126, @189, @135, @137, @154, @143, @156, @143, @154, @159, @133, @141, @152, @149, @155, @150, @133, @137, @142, @135, @154, @133, @135, @156, @135, @154, @135, @152, @133, @135, @138, @138, @133, @136, @146, @135, @137, @145, @185];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiDateTitle = [self StringFromLaughAwayData:value];
    }
    return _notiDateTitle;
}

//: user_profile_avtivity_remove_friend
- (NSString *)show_needReleaseStartMessage {
    if (!_show_needReleaseStartMessage) {
		NSArray<NSNumber *> *origin = @[@35, @91, @6, @19, @224, @7, @208, @206, @192, @205, @186, @203, @205, @202, @193, @196, @199, @192, @186, @188, @209, @207, @196, @209, @196, @207, @212, @186, @205, @192, @200, @202, @209, @192, @186, @193, @205, @196, @192, @201, @191, @106];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_needReleaseStartMessage = [self StringFromLaughAwayData:value];
    }
    return _show_needReleaseStartMessage;
}

//: #FAF8FD
- (NSString *)app_verticalValue {
    if (!_app_verticalValue) {
		NSArray<NSNumber *> *origin = @[@7, @86, @11, @33, @239, @37, @190, @253, @72, @179, @35, @121, @156, @151, @156, @142, @156, @154, @205];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_verticalValue = [self StringFromLaughAwayData:value];
    }
    return _app_verticalValue;
}

//: #5D5F66
- (NSString *)userTitleKey {
    if (!_userTitleKey) {
		NSArray<NSNumber *> *origin = @[@7, @75, @7, @228, @27, @72, @20, @110, @128, @143, @128, @145, @129, @129, @130];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTitleKey = [self StringFromLaughAwayData:value];
    }
    return _userTitleKey;
}

//: icon_accessory_selected
- (NSString *)mBackMsg {
    if (!_mBackMsg) {
		NSArray<NSNumber *> *origin = @[@23, @6, @8, @139, @64, @72, @28, @191, @111, @105, @117, @116, @101, @103, @105, @105, @107, @121, @121, @117, @120, @127, @101, @121, @107, @114, @107, @105, @122, @107, @106, @90];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mBackMsg = [self StringFromLaughAwayData:value];
    }
    return _mBackMsg;
}

//: report_next_select
- (NSString *)dreamBubbleUpMsg {
    if (!_dreamBubbleUpMsg) {
		NSArray<NSNumber *> *origin = @[@18, @69, @11, @29, @97, @106, @232, @211, @168, @121, @159, @183, @170, @181, @180, @183, @185, @164, @179, @170, @189, @185, @164, @184, @170, @177, @170, @168, @185, @67];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamBubbleUpMsg = [self StringFromLaughAwayData:value];
    }
    return _dreamBubbleUpMsg;
}

//: report_Content
- (NSString *)userWindowIdent {
    if (!_userWindowIdent) {
		NSArray<NSNumber *> *origin = @[@14, @29, @3, @143, @130, @141, @140, @143, @145, @124, @96, @140, @139, @145, @130, @139, @145, @149];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userWindowIdent = [self StringFromLaughAwayData:value];
    }
    return _userWindowIdent;
}

//: contact_tag_fragment_cancel
- (NSString *)notiValueFormat {
    if (!_notiValueFormat) {
		NSArray<NSNumber *> *origin = @[@27, @2, @6, @85, @55, @155, @101, @113, @112, @118, @99, @101, @118, @97, @118, @99, @105, @97, @104, @116, @99, @105, @111, @103, @112, @118, @97, @101, @99, @112, @101, @103, @110, @202];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiValueFormat = [self StringFromLaughAwayData:value];
    }
    return _notiValueFormat;
}

//: icon_accessory_normal
- (NSString *)noti_contentMessage {
    if (!_noti_contentMessage) {
		NSArray<NSNumber *> *origin = @[@21, @81, @4, @78, @186, @180, @192, @191, @176, @178, @180, @180, @182, @196, @196, @192, @195, @202, @176, @191, @192, @195, @190, @178, @189, @3];
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_contentMessage = [self StringFromLaughAwayData:value];
    }
    return _noti_contentMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpeedyView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "SpeedyView.h"

//: @interface ZMONReportNextView ()
@interface SpeedyView ()

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

//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) NSString *type;
@property (nonatomic,strong) NSString *type;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation SpeedyView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: self.type = @"1";
        self.type = @"1";
        //: [self initUI];
        [self initCalendarUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initCalendarUi{
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

//    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    cloBtn.frame = CGRectMake(SCREEN_WIDTH-50-32, 10, 32, 32);
//    [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//    [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
//    [_box addSubview:cloBtn];

//    //What other steps do you want to take
//    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
//    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
//    labLabel.textColor = TextColor_4;
//    labLabel.text = LangKey(@"report_next_select");
//    [_box addSubview:labLabel];

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor recordView:[LaughAwayData sharedInstance].userTitleKey];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [ContentLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].dreamBubbleUpMsg];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: [_box addSubview:self.deleteView];
    [_box addSubview:self.deleteView];
    //: self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);

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
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].userWindowIdent];

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
        _blockView.backgroundColor = [UIColor recordView:[LaughAwayData sharedInstance].app_verticalValue];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[LaughAwayData sharedInstance].user_releaseIdent];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor recordView:[LaughAwayData sharedInstance].userTitleKey];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [ContentLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].notiDateTitle];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(working:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[LaughAwayData sharedInstance].noti_contentMessage] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[LaughAwayData sharedInstance].mBackMsg] forState:UIControlStateSelected];
        //: [_blockView addSubview:_btnBlock];
        [_blockView addSubview:_btnBlock];
        //: _btnBlock.selected = YES;
        _btnBlock.selected = YES;
    }
    //: return _blockView;
    return _blockView;
}

//: - (UIView *)deleteView
- (UIView *)deleteView
{
    //: if (!_deleteView) {
    if (!_deleteView) {
        //: _deleteView = [[UIView alloc]init];
        _deleteView = [[UIView alloc]init];
        //: _deleteView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _deleteView.backgroundColor = [UIColor recordView:[LaughAwayData sharedInstance].app_verticalValue];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:[LaughAwayData sharedInstance].showCollectionIdent];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor recordView:[LaughAwayData sharedInstance].userTitleKey];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [ContentLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].show_needReleaseStartMessage];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimations:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(buttonned:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:[LaughAwayData sharedInstance].noti_contentMessage] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:[LaughAwayData sharedInstance].mBackMsg] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)working:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}
//: - (void)showAnimations:(UIButton *)sender{
- (void)buttonned:(UIButton *)sender{
    //: self.type = @"2";
    self.type = @"2";
//    sender.selected = !sender.selected;
    //: _btnBlock.selected = NO;
    _btnBlock.selected = NO;
    //: _btnDelete.selected = YES;
    _btnDelete.selected = YES;
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
        [_closeBtn setTitleColor:[UIColor recordView:[LaughAwayData sharedInstance].userTitleKey] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].notiValueFormat] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(egoChild) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[LaughAwayData sharedInstance].m_removePath] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[LaughAwayData sharedInstance].appKitKey];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

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

//: - (void)showAnimation
- (void)cornerSelection
{
    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(messageBubble)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate messageBubble];
    }

}

//: - (void)handleSubmit
- (void)egoChild
{
    //: [self animationClose];
    [self animationEnableClose];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(sightButton)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate sightButton];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(messageBubble)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate messageBubble];
        }
    }
}

//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)marginFirstNim
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
