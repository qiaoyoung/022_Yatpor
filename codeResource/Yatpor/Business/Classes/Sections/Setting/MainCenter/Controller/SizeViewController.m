
#import <Foundation/Foundation.h>

@interface ViewLineData : NSObject

+ (instancetype)sharedInstance;

//: login_bg
@property (nonatomic, copy) NSString *app_stateMessage;

//: #333333
@property (nonatomic, copy) NSString *dreamValueTingPath;

//: back_arrow_bl
@property (nonatomic, copy) NSString *mDotTitle;

//: oldpass
@property (nonatomic, copy) NSString *k_titleValue;

//: renewpass
@property (nonatomic, copy) NSString *kVerticalFormat;

//: /user/modifyPass
@property (nonatomic, copy) NSString *app_textMsg;

//: sure_edit
@property (nonatomic, copy) NSString *app_tingUserValueName;

//: activity_modify_old
@property (nonatomic, copy) NSString *app_stateStr;

//: activity_modify_new
@property (nonatomic, copy) NSString *dreamValueContent;

//: type
@property (nonatomic, copy) NSString *noti_textValue;

//: account
@property (nonatomic, copy) NSString *appReleaseName;

//: activity_safe_setting_modify
@property (nonatomic, copy) NSString *mainSearchContent;

//: safe_bind_phone_icon
@property (nonatomic, copy) NSString *userGlobalId;

//: msg
@property (nonatomic, copy) NSString *showMessageFormat;

//: newpass
@property (nonatomic, copy) NSString *k_showMsg;

//: #F7BA00
@property (nonatomic, copy) NSString *appStartText;

@end

@implementation ViewLineData

+ (instancetype)sharedInstance {
    static ViewLineData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ViewLineDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ViewLineDataToCache:(Byte *)data {
    int laughAway = data[0];
    Byte mean = data[1];
    int big = data[2];
    for (int i = big; i < big + laughAway; i++) {
        int value = data[i] - mean;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[big + laughAway] = 0;
    return data + big;
}

- (NSString *)StringFromViewLineData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewLineDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)mDotTitle {
    if (!_mDotTitle) {
		NSArray<NSString *> *origin = @[@"13", @"15", @"12", @"130", @"246", @"125", @"232", @"26", @"84", @"115", @"49", @"24", @"113", @"112", @"114", @"122", @"110", @"112", @"129", @"129", @"126", @"134", @"110", @"113", @"123", @"180"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mDotTitle = [self StringFromViewLineData:value];
    }
    return _mDotTitle;
}

//: login_bg
- (NSString *)app_stateMessage {
    if (!_app_stateMessage) {
		NSArray<NSString *> *origin = @[@"8", @"71", @"10", @"61", @"120", @"245", @"247", @"220", @"66", @"20", @"179", @"182", @"174", @"176", @"181", @"166", @"169", @"174", @"234"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_stateMessage = [self StringFromViewLineData:value];
    }
    return _app_stateMessage;
}

//: newpass
- (NSString *)k_showMsg {
    if (!_k_showMsg) {
		NSArray<NSString *> *origin = @[@"7", @"94", @"13", @"216", @"216", @"75", @"206", @"35", @"60", @"70", @"130", @"171", @"127", @"204", @"195", @"213", @"206", @"191", @"209", @"209", @"137"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_showMsg = [self StringFromViewLineData:value];
    }
    return _k_showMsg;
}

//: activity_safe_setting_modify
- (NSString *)mainSearchContent {
    if (!_mainSearchContent) {
		NSArray<NSString *> *origin = @[@"28", @"27", @"3", @"124", @"126", @"143", @"132", @"145", @"132", @"143", @"148", @"122", @"142", @"124", @"129", @"128", @"122", @"142", @"128", @"143", @"143", @"132", @"137", @"130", @"122", @"136", @"138", @"127", @"132", @"129", @"148", @"62"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainSearchContent = [self StringFromViewLineData:value];
    }
    return _mainSearchContent;
}

//: sure_edit
- (NSString *)app_tingUserValueName {
    if (!_app_tingUserValueName) {
		NSArray<NSString *> *origin = @[@"9", @"56", @"13", @"62", @"138", @"26", @"84", @"128", @"126", @"208", @"153", @"72", @"76", @"171", @"173", @"170", @"157", @"151", @"157", @"156", @"161", @"172", @"146"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_tingUserValueName = [self StringFromViewLineData:value];
    }
    return _app_tingUserValueName;
}

//: activity_modify_new
- (NSString *)dreamValueContent {
    if (!_dreamValueContent) {
		NSArray<NSString *> *origin = @[@"19", @"84", @"12", @"253", @"186", @"246", @"144", @"255", @"161", @"177", @"116", @"36", @"181", @"183", @"200", @"189", @"202", @"189", @"200", @"205", @"179", @"193", @"195", @"184", @"189", @"186", @"205", @"179", @"194", @"185", @"203", @"93"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamValueContent = [self StringFromViewLineData:value];
    }
    return _dreamValueContent;
}

//: #F7BA00
- (NSString *)appStartText {
    if (!_appStartText) {
		NSArray<NSString *> *origin = @[@"7", @"1", @"6", @"68", @"31", @"101", @"36", @"71", @"56", @"67", @"66", @"49", @"49", @"62"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appStartText = [self StringFromViewLineData:value];
    }
    return _appStartText;
}

//: type
- (NSString *)noti_textValue {
    if (!_noti_textValue) {
		NSArray<NSString *> *origin = @[@"4", @"23", @"6", @"72", @"17", @"160", @"139", @"144", @"135", @"124", @"216"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_textValue = [self StringFromViewLineData:value];
    }
    return _noti_textValue;
}

//: msg
- (NSString *)showMessageFormat {
    if (!_showMessageFormat) {
		NSArray<NSString *> *origin = @[@"3", @"40", @"9", @"238", @"2", @"48", @"53", @"113", @"172", @"149", @"155", @"143", @"89"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showMessageFormat = [self StringFromViewLineData:value];
    }
    return _showMessageFormat;
}

//: account
- (NSString *)appReleaseName {
    if (!_appReleaseName) {
		NSArray<NSString *> *origin = @[@"7", @"35", @"12", @"142", @"183", @"74", @"95", @"134", @"203", @"41", @"198", @"221", @"132", @"134", @"134", @"146", @"152", @"145", @"151", @"165"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appReleaseName = [self StringFromViewLineData:value];
    }
    return _appReleaseName;
}

//: safe_bind_phone_icon
- (NSString *)userGlobalId {
    if (!_userGlobalId) {
		NSArray<NSString *> *origin = @[@"20", @"55", @"6", @"112", @"26", @"71", @"170", @"152", @"157", @"156", @"150", @"153", @"160", @"165", @"155", @"150", @"167", @"159", @"166", @"165", @"156", @"150", @"160", @"154", @"166", @"165", @"76"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userGlobalId = [self StringFromViewLineData:value];
    }
    return _userGlobalId;
}

//: oldpass
- (NSString *)k_titleValue {
    if (!_k_titleValue) {
		NSArray<NSString *> *origin = @[@"7", @"52", @"12", @"45", @"187", @"29", @"67", @"226", @"188", @"10", @"190", @"72", @"163", @"160", @"152", @"164", @"149", @"167", @"167", @"156"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_titleValue = [self StringFromViewLineData:value];
    }
    return _k_titleValue;
}

//: renewpass
- (NSString *)kVerticalFormat {
    if (!_kVerticalFormat) {
		NSArray<NSString *> *origin = @[@"9", @"79", @"4", @"42", @"193", @"180", @"189", @"180", @"198", @"191", @"176", @"194", @"194", @"70"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kVerticalFormat = [self StringFromViewLineData:value];
    }
    return _kVerticalFormat;
}

//: /user/modifyPass
- (NSString *)app_textMsg {
    if (!_app_textMsg) {
		NSArray<NSString *> *origin = @[@"16", @"38", @"5", @"202", @"13", @"85", @"155", @"153", @"139", @"152", @"85", @"147", @"149", @"138", @"143", @"140", @"159", @"118", @"135", @"153", @"153", @"31"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_textMsg = [self StringFromViewLineData:value];
    }
    return _app_textMsg;
}

//: #333333
- (NSString *)dreamValueTingPath {
    if (!_dreamValueTingPath) {
		NSArray<NSString *> *origin = @[@"7", @"73", @"13", @"149", @"34", @"175", @"69", @"40", @"97", @"219", @"207", @"77", @"91", @"108", @"124", @"124", @"124", @"124", @"124", @"124", @"204"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamValueTingPath = [self StringFromViewLineData:value];
    }
    return _dreamValueTingPath;
}

//: activity_modify_old
- (NSString *)app_stateStr {
    if (!_app_stateStr) {
		NSArray<NSString *> *origin = @[@"19", @"67", @"9", @"97", @"188", @"148", @"145", @"152", @"181", @"164", @"166", @"183", @"172", @"185", @"172", @"183", @"188", @"162", @"176", @"178", @"167", @"172", @"169", @"188", @"162", @"178", @"175", @"167", @"81"];
		NSData *data = [ViewLineData ViewLineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_stateStr = [self StringFromViewLineData:value];
    }
    return _app_stateStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "SizeViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "ViewCell.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface SizeViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation SizeViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}
//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[ViewLineData sharedInstance].app_stateMessage];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ViewLineData sharedInstance].mDotTitle] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [MatronymicPath colorStreetwise:[ViewLineData sharedInstance].mainSearchContent];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 25;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:[ViewLineData sharedInstance].userGlobalId];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor recordView:[ViewLineData sharedInstance].dreamValueTingPath];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [MatronymicPath colorStreetwise:[ViewLineData sharedInstance].app_stateStr];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.cornerRadius = 25;
    view2.layer.cornerRadius = 25;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[ViewLineData sharedInstance].userGlobalId];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor recordView:[ViewLineData sharedInstance].dreamValueTingPath];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [MatronymicPath colorStreetwise:[ViewLineData sharedInstance].dreamValueContent];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.cornerRadius = 25;
    view3.layer.cornerRadius = 25;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[ViewLineData sharedInstance].userGlobalId];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor recordView:[ViewLineData sharedInstance].dreamValueTingPath];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [MatronymicPath colorStreetwise:[ViewLineData sharedInstance].dreamValueContent];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[MatronymicPath colorStreetwise:[ViewLineData sharedInstance].app_tingUserValueName] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(recordString) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    emptyButton.backgroundColor = [UIColor recordView:[ViewLineData sharedInstance].appStartText];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)recordString{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[ViewLineData sharedInstance].appReleaseName];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[ViewLineData sharedInstance].noti_textValue];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[ViewLineData sharedInstance].k_titleValue];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[ViewLineData sharedInstance].k_showMsg];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[ViewLineData sharedInstance].kVerticalFormat];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[ViewLineData sharedInstance].app_textMsg] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:[ViewLineData sharedInstance].showMessageFormat];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end