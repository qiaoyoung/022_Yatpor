
#import <Foundation/Foundation.h>

@interface TinkleData : NSObject

@end

@implementation TinkleData

+ (NSData *)TinkleDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TinkleDataToCache:(Byte *)data {
    int dole = data[0];
    Byte present = data[1];
    int customReload = data[2];
    for (int i = customReload; i < customReload + dole; i++) {
        int value = data[i] - present;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[customReload + dole] = 0;
    return data + customReload;
}

+ (NSString *)StringFromTinkleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TinkleDataToCache:data]];
}

//: #000000
+ (NSString *)appBubbleIdent {
    /* static */ NSString *appBubbleIdent = nil;
    if (!appBubbleIdent) {
		NSArray<NSString *> *origin = @[@"7", @"17", @"6", @"200", @"237", @"166", @"52", @"65", @"65", @"65", @"65", @"65", @"65", @"176"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBubbleIdent = [self StringFromTinkleData:value];
    }
    return appBubbleIdent;
}

//: contact_tag_fragment_cancel
+ (NSString *)main_accountName {
    /* static */ NSString *main_accountName = nil;
    if (!main_accountName) {
		NSArray<NSString *> *origin = @[@"27", @"21", @"6", @"58", @"145", @"160", @"120", @"132", @"131", @"137", @"118", @"120", @"137", @"116", @"137", @"118", @"124", @"116", @"123", @"135", @"118", @"124", @"130", @"122", @"131", @"137", @"116", @"120", @"118", @"131", @"120", @"122", @"129", @"101"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_accountName = [self StringFromTinkleData:value];
    }
    return main_accountName;
}

//: #F7BA00
+ (NSString *)show_titleShareIdent {
    /* static */ NSString *show_titleShareIdent = nil;
    if (!show_titleShareIdent) {
		NSArray<NSString *> *origin = @[@"7", @"16", @"13", @"250", @"114", @"153", @"80", @"215", @"21", @"87", @"47", @"198", @"223", @"51", @"86", @"71", @"82", @"81", @"64", @"64", @"216"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_titleShareIdent = [self StringFromTinkleData:value];
    }
    return show_titleShareIdent;
}

//: friend_info_activity_nv
+ (NSString *)mProcessorUrl {
    /* static */ NSString *mProcessorUrl = nil;
    if (!mProcessorUrl) {
		NSArray<NSString *> *origin = @[@"23", @"63", @"12", @"75", @"26", @"245", @"214", @"58", @"112", @"94", @"142", @"255", @"165", @"177", @"168", @"164", @"173", @"163", @"158", @"168", @"173", @"165", @"174", @"158", @"160", @"162", @"179", @"168", @"181", @"168", @"179", @"184", @"158", @"173", @"181", @"51"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mProcessorUrl = [self StringFromTinkleData:value];
    }
    return mProcessorUrl;
}

//: #5D5F66
+ (NSString *)dreamSearchText {
    /* static */ NSString *dreamSearchText = nil;
    if (!dreamSearchText) {
		NSArray<NSString *> *origin = @[@"7", @"61", @"6", @"81", @"167", @"116", @"96", @"114", @"129", @"114", @"131", @"115", @"115", @"21"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamSearchText = [self StringFromTinkleData:value];
    }
    return dreamSearchText;
}

//: friend_info_activity_nan
+ (NSString *)user_operationUrl {
    /* static */ NSString *user_operationUrl = nil;
    if (!user_operationUrl) {
		NSArray<NSString *> *origin = @[@"24", @"46", @"10", @"130", @"95", @"190", @"137", @"29", @"224", @"70", @"148", @"160", @"151", @"147", @"156", @"146", @"141", @"151", @"156", @"148", @"157", @"141", @"143", @"145", @"162", @"151", @"164", @"151", @"162", @"167", @"141", @"156", @"143", @"156", @"6"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_operationUrl = [self StringFromTinkleData:value];
    }
    return user_operationUrl;
}

//: #fffContent
+ (NSString *)user_contentIdent {
    /* static */ NSString *user_contentIdent = nil;
    if (!user_contentIdent) {
		NSArray<NSString *> *origin = @[@"7", @"57", @"9", @"21", @"91", @"89", @"68", @"48", @"248", @"92", @"159", @"159", @"159", @"159", @"159", @"159", @"99"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_contentIdent = [self StringFromTinkleData:value];
    }
    return user_contentIdent;
}

//: activity_friend_info_sex
+ (NSString *)app_backStr {
    /* static */ NSString *app_backStr = nil;
    if (!app_backStr) {
		NSArray<NSString *> *origin = @[@"24", @"56", @"5", @"166", @"225", @"153", @"155", @"172", @"161", @"174", @"161", @"172", @"177", @"151", @"158", @"170", @"161", @"157", @"166", @"156", @"151", @"161", @"166", @"158", @"167", @"151", @"171", @"157", @"176", @"241"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_backStr = [self StringFromTinkleData:value];
    }
    return app_backStr;
}

//: friend_info_activity_xu
+ (NSString *)mainStartTouchMessage {
    /* static */ NSString *mainStartTouchMessage = nil;
    if (!mainStartTouchMessage) {
		NSArray<NSString *> *origin = @[@"23", @"95", @"10", @"124", @"173", @"25", @"180", @"23", @"108", @"238", @"197", @"209", @"200", @"196", @"205", @"195", @"190", @"200", @"205", @"197", @"206", @"190", @"192", @"194", @"211", @"200", @"213", @"200", @"211", @"216", @"190", @"215", @"212", @"186"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainStartTouchMessage = [self StringFromTinkleData:value];
    }
    return mainStartTouchMessage;
}

//: ic_btn_accept
+ (NSString *)appResourceValue {
    /* static */ NSString *appResourceValue = nil;
    if (!appResourceValue) {
		NSArray<NSString *> *origin = @[@"13", @"65", @"3", @"170", @"164", @"160", @"163", @"181", @"175", @"160", @"162", @"164", @"164", @"166", @"177", @"181", @"58"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appResourceValue = [self StringFromTinkleData:value];
    }
    return appResourceValue;
}

//: sex_man
+ (NSString *)m_containerData {
    /* static */ NSString *m_containerData = nil;
    if (!m_containerData) {
		NSArray<NSString *> *origin = @[@"7", @"99", @"4", @"248", @"214", @"200", @"219", @"194", @"208", @"196", @"209", @"55"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_containerData = [self StringFromTinkleData:value];
    }
    return m_containerData;
}

//: sex_unknow
+ (NSString *)notiOperationMsg {
    /* static */ NSString *notiOperationMsg = nil;
    if (!notiOperationMsg) {
		NSArray<NSString *> *origin = @[@"10", @"89", @"4", @"91", @"204", @"190", @"209", @"184", @"206", @"199", @"196", @"199", @"200", @"208", @"57"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiOperationMsg = [self StringFromTinkleData:value];
    }
    return notiOperationMsg;
}

//: user_info_avtivity_keep
+ (NSString *)app_removeMessage {
    /* static */ NSString *app_removeMessage = nil;
    if (!app_removeMessage) {
		NSArray<NSString *> *origin = @[@"23", @"95", @"10", @"84", @"159", @"226", @"252", @"97", @"42", @"165", @"212", @"210", @"196", @"209", @"190", @"200", @"205", @"197", @"206", @"190", @"192", @"213", @"211", @"200", @"213", @"200", @"211", @"216", @"190", @"202", @"196", @"196", @"207", @"80"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_removeMessage = [self StringFromTinkleData:value];
    }
    return app_removeMessage;
}

//: sex_woman
+ (NSString *)m_userIdent {
    /* static */ NSString *m_userIdent = nil;
    if (!m_userIdent) {
		NSArray<NSString *> *origin = @[@"9", @"90", @"13", @"136", @"148", @"56", @"151", @"101", @"99", @"20", @"184", @"127", @"147", @"205", @"191", @"210", @"185", @"209", @"201", @"199", @"187", @"200", @"4"];
		NSData *data = [TinkleData TinkleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_userIdent = [self StringFromTinkleData:value];
    }
    return m_userIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetSexView.h"
#import "ToView.h"

//: @interface NSSetSexView ()
@interface ToView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *BtnUnknow;
@property (nonatomic,strong) UIButton *BtnUnknow;
//: @property (nonatomic,strong) UILabel *labUnknow;
@property (nonatomic,strong) UILabel *labUnknow;
//: @property (nonatomic,strong) UIImageView *ImgUnknow;
@property (nonatomic,strong) UIImageView *ImgUnknow;

//: @property (nonatomic,strong) UIButton *BtnMan;
@property (nonatomic,strong) UIButton *BtnMan;
//: @property (nonatomic,strong) UILabel *labMan;
@property (nonatomic,strong) UILabel *labMan;
//: @property (nonatomic,strong) UIImageView *ImgMan;
@property (nonatomic,strong) UIImageView *ImgMan;

//: @property (nonatomic,strong) UIButton *BtnWoman;
@property (nonatomic,strong) UIButton *BtnWoman;
//: @property (nonatomic,strong) UILabel *labWoman;
@property (nonatomic,strong) UILabel *labWoman;
//: @property (nonatomic,strong) UIImageView *ImgWoman;
@property (nonatomic,strong) UIImageView *ImgWoman;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;

//: @end
@end

//: @implementation NSSetSexView
@implementation ToView

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
        [self initMargin];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initMargin{

    //: CGFloat totalwidth = 295;
    CGFloat totalwidth = 295;
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    //: _box.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
    _box.backgroundColor = [UIColor recordView:[TinkleData user_contentIdent]];
    //: _box.layer.cornerRadius = 20;
    _box.layer.cornerRadius = 20;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);
    self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);

    //: CGFloat widthview = 64;
    CGFloat widthview = 64;
    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    //: [_box addSubview:view1];
    [_box addSubview:view1];
    //: _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnUnknow.tag = 0;
    _BtnUnknow.tag = 0;
    //: [_BtnUnknow addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnUnknow addTarget:self action:@selector(lasting:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    [_BtnUnknow setImage:[UIImage imageNamed:[TinkleData notiOperationMsg]] forState:UIControlStateNormal];
    //: _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.cornerRadius = widthview/2;
    //: _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.masksToBounds = YES;
    //: _BtnUnknow.layer.borderColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
    _BtnUnknow.layer.borderColor = [UIColor recordView:[TinkleData show_titleShareIdent]].CGColor;
    //: _BtnUnknow.layer.borderWidth = 1;
    _BtnUnknow.layer.borderWidth = 1;
    //: [view1 addSubview:_BtnUnknow];
    [view1 addSubview:_BtnUnknow];

    //: _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgUnknow.image = [UIImage imageNamed:[TinkleData appResourceValue]];
    //: [view1 addSubview:_ImgUnknow];
    [view1 addSubview:_ImgUnknow];

    //: _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    //: _labUnknow.textColor = [UIColor colorWithHexString:@"#F7BA00"];
    _labUnknow.textColor = [UIColor recordView:[TinkleData show_titleShareIdent]];
    //: _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    //: _labUnknow.text = [ContentLanguageManager getTextWithKey:@"friend_info_activity_xu"];
    _labUnknow.text = [MatronymicPath colorStreetwise:[TinkleData mainStartTouchMessage]];
    //: [view1 addSubview:_labUnknow];
    [view1 addSubview:_labUnknow];

    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    //: [_box addSubview:view2];
    [_box addSubview:view2];
    //: _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnMan.tag = 1;
    _BtnMan.tag = 1;
    //: [_BtnMan addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnMan addTarget:self action:@selector(lasting:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    [_BtnMan setImage:[UIImage imageNamed:[TinkleData m_containerData]] forState:UIControlStateNormal];
    //: _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.cornerRadius = widthview/2;
    //: _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.masksToBounds = YES;
    //: _BtnMan.layer.borderColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
    _BtnMan.layer.borderColor = [UIColor recordView:[TinkleData show_titleShareIdent]].CGColor;
//    _BtnMan.layer.borderWidth = 1;
    //: [view2 addSubview:_BtnMan];
    [view2 addSubview:_BtnMan];

    //: _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgMan.image = [UIImage imageNamed:[TinkleData appResourceValue]];
    //: [view2 addSubview:_ImgMan];
    [view2 addSubview:_ImgMan];
    //: _ImgMan.hidden = YES;
    _ImgMan.hidden = YES;

    //: _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labMan.font = [UIFont systemFontOfSize:14.f];
    _labMan.font = [UIFont systemFontOfSize:14.f];
    //: _labMan.textColor = [UIColor blackColor];
    _labMan.textColor = [UIColor blackColor];
    //: _labMan.textAlignment = NSTextAlignmentCenter;
    _labMan.textAlignment = NSTextAlignmentCenter;
    //: _labMan.text = [ContentLanguageManager getTextWithKey:@"friend_info_activity_nan"];
    _labMan.text = [MatronymicPath colorStreetwise:[TinkleData user_operationUrl]];
    //: [view2 addSubview:_labMan];
    [view2 addSubview:_labMan];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    //: [_box addSubview:view3];
    [_box addSubview:view3];
    //: _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnWoman.tag = 2;
    _BtnWoman.tag = 2;
    //: [_BtnWoman addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnWoman addTarget:self action:@selector(lasting:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    [_BtnWoman setImage:[UIImage imageNamed:[TinkleData m_userIdent]] forState:UIControlStateNormal];
    //: _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.cornerRadius = widthview/2;
    //: _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.masksToBounds = YES;
    //: _BtnWoman.layer.borderColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
    _BtnWoman.layer.borderColor = [UIColor recordView:[TinkleData show_titleShareIdent]].CGColor;
    //: [view3 addSubview:_BtnWoman];
    [view3 addSubview:_BtnWoman];

    //: _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgWoman.image = [UIImage imageNamed:[TinkleData appResourceValue]];
    //: [view3 addSubview:_ImgWoman];
    [view3 addSubview:_ImgWoman];
    //: _ImgWoman.hidden = YES;
    _ImgWoman.hidden = YES;

    //: _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labWoman.font = [UIFont systemFontOfSize:14.f];
    _labWoman.font = [UIFont systemFontOfSize:14.f];
    //: _labWoman.textColor = [UIColor blackColor];
    _labWoman.textColor = [UIColor blackColor];
    //: _labWoman.textAlignment = NSTextAlignmentCenter;
    _labWoman.textAlignment = NSTextAlignmentCenter;
    //: _labWoman.text = [ContentLanguageManager getTextWithKey:@"friend_info_activity_nv"];
    _labWoman.text = [MatronymicPath colorStreetwise:[TinkleData mProcessorUrl]];
    //: [view3 addSubview:_labWoman];
    [view3 addSubview:_labWoman];


    //: CGFloat width = (totalwidth-60)/2;
    CGFloat width = (totalwidth-60)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}

//: - (void)reloadWithGender:(NSInteger)gender
- (void)smart:(NSInteger)gender
{
    //: if(gender == 0){
    if(gender == 0){
        //: [self clickTheSex:_BtnUnknow];
        [self lasting:_BtnUnknow];
    //: }else if (gender == 1){
    }else if (gender == 1){
        //: [self clickTheSex:_BtnMan];
        [self lasting:_BtnMan];
    //: }else if (gender == 2){
    }else if (gender == 2){
        //: [self clickTheSex:_BtnWoman];
        [self lasting:_BtnWoman];
    }
}

//: - (void)clickTheSex:(UIButton *)sender
- (void)lasting:(UIButton *)sender
{
    //: self.selectedGender = sender.tag;
    self.selectedGender = sender.tag;

    //: if(sender == _BtnUnknow){
    if(sender == _BtnUnknow){
//        _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
        //: _BtnUnknow.layer.borderWidth = 1;
        _BtnUnknow.layer.borderWidth = 1;
        //: _ImgUnknow.hidden = NO;
        _ImgUnknow.hidden = NO;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        _labUnknow.textColor = [UIColor recordView:[TinkleData show_titleShareIdent]];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
    //: }else if (sender == _BtnMan){
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        //: _BtnMan.layer.borderWidth = 1;
        _BtnMan.layer.borderWidth = 1;
        //: _ImgMan.hidden = NO;
        _ImgMan.hidden = NO;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        _labMan.textColor = [UIColor recordView:[TinkleData show_titleShareIdent]];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
    //: }else if (sender == _BtnWoman){
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        //: _BtnWoman.layer.borderWidth = 1;
        _BtnWoman.layer.borderWidth = 1;
        //: _ImgWoman.hidden = NO;
        _ImgWoman.hidden = NO;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        _labWoman.textColor = [UIColor recordView:[TinkleData show_titleShareIdent]];
    }
}

//: - (void)clickTheSave
- (void)snapBuild
{
    //: self.speiceBackBlock(self.selectedGender);
    self.speiceBackBlock(self.selectedGender);
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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
        _titleLabel.textColor = [UIColor recordView:[TinkleData appBubbleIdent]];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [ContentLanguageManager getTextWithKey:@"activity_friend_info_sex"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[TinkleData app_backStr]];
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
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor recordView:[TinkleData dreamSearchText]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[TinkleData main_accountName]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
        _closeBtn.backgroundColor = [UIColor recordView:[TinkleData user_contentIdent]];
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
        //: _closeBtn.layer.masksToBounds = YES;
        _closeBtn.layer.masksToBounds = YES;
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
        //: [_sureBtn addTarget:self action:@selector(clickTheSave) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(snapBuild) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#fffContent"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor recordView:[TinkleData user_contentIdent]] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[TinkleData app_removeMessage]] forState:UIControlStateNormal];
        //: CGFloat width = (295-60)/2;
        CGFloat width = (295-60)/2;
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[TinkleData show_titleShareIdent]];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
        //: _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.masksToBounds = YES;

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
- (void)compartmentMessagePresent
{
    //: self.hidden = NO;
    self.hidden = NO;
}



//: @end
@end
