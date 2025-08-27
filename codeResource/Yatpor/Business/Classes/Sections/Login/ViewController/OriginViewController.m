
#import <Foundation/Foundation.h>

@interface WisecrackData : NSObject

+ (instancetype)sharedInstance;

//: login_success
@property (nonatomic, copy) NSString *mainSelectedIdent;

//: /user/modifyPass
@property (nonatomic, copy) NSString *noti_byUrl;

//: saft_bind_account
@property (nonatomic, copy) NSString *userTextIdent;

//: code
@property (nonatomic, copy) NSString *k_endValueBeginContent;

//: activity_modify_new_again
@property (nonatomic, copy) NSString *m_needIdent;

//: contact_list_activity_complete
@property (nonatomic, copy) NSString *kGrayStr;

//: account
@property (nonatomic, copy) NSString *userTextMsg;

//: login_bg
@property (nonatomic, copy) NSString *notiReleaseKey;

//: safe_bind_phone_icon
@property (nonatomic, copy) NSString *appTingText;

//: renewpass
@property (nonatomic, copy) NSString *userTableValue;

//: #F7BA00
@property (nonatomic, copy) NSString *dream_textName;

//: activity_modify_new
@property (nonatomic, copy) NSString *m_processorStr;

//: newpass
@property (nonatomic, copy) NSString *app_contentFormat;

//: ic_visible
@property (nonatomic, copy) NSString *m_dateName;

//: ic_invisible
@property (nonatomic, copy) NSString *dreamBeginMsg;

//: register_account_activity_account
@property (nonatomic, copy) NSString *main_layerNameValue;

//: modify_activity_psw_no_same
@property (nonatomic, copy) NSString *kTouchId;

//: msg
@property (nonatomic, copy) NSString *user_teamName;

//: activity_safe_setting_modify
@property (nonatomic, copy) NSString *kEndIdent;

//: oldpass
@property (nonatomic, copy) NSString *user_dotStr;

//: type
@property (nonatomic, copy) NSString *main_viewUrl;

//: #5D5F66
@property (nonatomic, copy) NSString *kTableId;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *dream_byTitle;

//: #333333
@property (nonatomic, copy) NSString *mainShouldFormat;

//: login_error
@property (nonatomic, copy) NSString *showTotalMessage;

//: back_arrow_bl
@property (nonatomic, copy) NSString *userNeedPath;

@end

@implementation WisecrackData

+ (instancetype)sharedInstance {
    static WisecrackData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WisecrackDataToData:(NSString *)value {
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

- (Byte *)WisecrackDataToCache:(Byte *)data {
    int viewTable = data[0];
    Byte searchName = data[1];
    int dayCustom = data[2];
    for (int i = dayCustom; i < dayCustom + viewTable; i++) {
        int value = data[i] + searchName;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[dayCustom + viewTable] = 0;
    return data + dayCustom;
}

- (NSString *)StringFromWisecrackData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WisecrackDataToCache:data]];
}

//: #5D5F66
- (NSString *)kTableId {
    if (!_kTableId) {
		NSString *origin = @"07320B80C276E91963E66BF1031203140404E4";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTableId = [self StringFromWisecrackData:value];
    }
    return _kTableId;
}

//: saft_bind_account
- (NSString *)userTextIdent {
    if (!_userTextIdent) {
		NSString *origin = @"110908B0BAC854896A585D6B565960655B56585A5A666C656B23";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTextIdent = [self StringFromWisecrackData:value];
    }
    return _userTextIdent;
}

//: type
- (NSString *)main_viewUrl {
    if (!_main_viewUrl) {
		NSString *origin = @"042D05F33C474C4338AB";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_viewUrl = [self StringFromWisecrackData:value];
    }
    return _main_viewUrl;
}

//: /user/modifyPass
- (NSString *)noti_byUrl {
    if (!_noti_byUrl) {
		NSString *origin = @"105103DE24221421DE1C1E13181528FF10222204";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_byUrl = [self StringFromWisecrackData:value];
    }
    return _noti_byUrl;
}

//: activity_safe_setting_modify
- (NSString *)kEndIdent {
    if (!_kEndIdent) {
		NSString *origin = @"1C5B0A255BB0C629CB7D0608190E1B0E191E0418060B0A04180A19190E130C041214090E0B1E19";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kEndIdent = [self StringFromWisecrackData:value];
    }
    return _kEndIdent;
}

//: activity_modify_new_again
- (NSString *)m_needIdent {
    if (!_m_needIdent) {
		NSString *origin = @"190B0828FD2B54115658695E6B5E696E546264595E5B6E54635A6C54565C565E63F3";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_needIdent = [self StringFromWisecrackData:value];
    }
    return _m_needIdent;
}

//: friend_verify_avtivity_net_error
- (NSString *)dream_byTitle {
    if (!_dream_byTitle) {
		NSString *origin = @"203F0327332A262F25203726332A273A202237352A372A353A202F26352026333330334F";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_byTitle = [self StringFromWisecrackData:value];
    }
    return _dream_byTitle;
}

//: back_arrow_bl
- (NSString *)userNeedPath {
    if (!_userNeedPath) {
		NSString *origin = @"0D4808B1C3D6D21F1A191B2317192A2A272F171A242F";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userNeedPath = [self StringFromWisecrackData:value];
    }
    return _userNeedPath;
}

//: login_error
- (NSString *)showTotalMessage {
    if (!_showTotalMessage) {
		NSString *origin = @"0B400B19FCD1808F7C27AA2C2F27292E1F2532322F32F3";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTotalMessage = [self StringFromWisecrackData:value];
    }
    return _showTotalMessage;
}

//: renewpass
- (NSString *)userTableValue {
    if (!_userTableValue) {
		NSString *origin = @"090E08BB75F0E166645760576962536565EB";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTableValue = [self StringFromWisecrackData:value];
    }
    return _userTableValue;
}

//: register_account_activity_account
- (NSString *)main_layerNameValue {
    if (!_main_layerNameValue) {
		NSString *origin = @"214504592D2022242E2F202D1A1C1E1E2A30292F1A1C1E2F2431242F341A1C1E1E2A30292F25";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_layerNameValue = [self StringFromWisecrackData:value];
    }
    return _main_layerNameValue;
}

//: #F7BA00
- (NSString *)dream_textName {
    if (!_dream_textName) {
		NSString *origin = @"07430BE5509EBB72F4DF88E003F4FFFEEDED6D";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_textName = [self StringFromWisecrackData:value];
    }
    return _dream_textName;
}

//: newpass
- (NSString *)app_contentFormat {
    if (!_app_contentFormat) {
		NSString *origin = @"073A080F52994899342B3D362739391F";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_contentFormat = [self StringFromWisecrackData:value];
    }
    return _app_contentFormat;
}

//: ic_visible
- (NSString *)m_dateName {
    if (!_m_dateName) {
		NSString *origin = @"0A630B5524E2E6C88939720600FC13061006FF09028C";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_dateName = [self StringFromWisecrackData:value];
    }
    return _m_dateName;
}

//: safe_bind_phone_icon
- (NSString *)appTingText {
    if (!_appTingText) {
		NSString *origin = @"14050A93E1527DBC8CE96E5C61605A5D64695F5A6B636A69605A645E6A69E4";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appTingText = [self StringFromWisecrackData:value];
    }
    return _appTingText;
}

//: contact_list_activity_complete
- (NSString *)kGrayStr {
    if (!_kGrayStr) {
		NSString *origin = @"1E6103020E0D13000213FE0B081213FE0002130815081318FE020E0C0F0B0413040E";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kGrayStr = [self StringFromWisecrackData:value];
    }
    return _kGrayStr;
}

//: msg
- (NSString *)user_teamName {
    if (!_user_teamName) {
		NSString *origin = @"033C05F41431372B32";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_teamName = [self StringFromWisecrackData:value];
    }
    return _user_teamName;
}

//: account
- (NSString *)userTextMsg {
    if (!_userTextMsg) {
		NSString *origin = @"07390998ACA4A86BB5282A2A363C353B02";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTextMsg = [self StringFromWisecrackData:value];
    }
    return _userTextMsg;
}

//: ic_invisible
- (NSString *)dreamBeginMsg {
    if (!_dreamBeginMsg) {
		NSString *origin = @"0C220B839B1C312F5E908747413D474C54475147404A437A";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamBeginMsg = [self StringFromWisecrackData:value];
    }
    return _dreamBeginMsg;
}

//: code
- (NSString *)k_endValueBeginContent {
    if (!_k_endValueBeginContent) {
		NSString *origin = @"045208BD485D1EAD111D12134E";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_endValueBeginContent = [self StringFromWisecrackData:value];
    }
    return _k_endValueBeginContent;
}

//: activity_modify_new
- (NSString *)m_processorStr {
    if (!_m_processorStr) {
		NSString *origin = @"1340042A21233429362934391F2D2F242926391F2E25371A";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_processorStr = [self StringFromWisecrackData:value];
    }
    return _m_processorStr;
}

//: login_success
- (NSString *)mainSelectedIdent {
    if (!_mainSelectedIdent) {
		NSString *origin = @"0D1A05287852554D4F5445595B49494B59599B";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainSelectedIdent = [self StringFromWisecrackData:value];
    }
    return _mainSelectedIdent;
}

//: oldpass
- (NSString *)user_dotStr {
    if (!_user_dotStr) {
		NSString *origin = @"073C0617B69E33302834253737CD";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_dotStr = [self StringFromWisecrackData:value];
    }
    return _user_dotStr;
}

//: #333333
- (NSString *)mainShouldFormat {
    if (!_mainShouldFormat) {
		NSString *origin = @"07190BE6CE9EA3B1D07EEF0A1A1A1A1A1A1A6C";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainShouldFormat = [self StringFromWisecrackData:value];
    }
    return _mainShouldFormat;
}

//: modify_activity_psw_no_same
- (NSString *)kTouchId {
    if (!_kTouchId) {
		NSString *origin = @"1B1B0D3287996442BF94CD1D365254494E4B5E444648594E5B4E595E4455585C445354445846524A3A";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTouchId = [self StringFromWisecrackData:value];
    }
    return _kTouchId;
}

//: login_bg
- (NSString *)notiReleaseKey {
    if (!_notiReleaseKey) {
		NSString *origin = @"081204535A5D55575C4D5055C6";
		NSData *data = [WisecrackData WisecrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiReleaseKey = [self StringFromWisecrackData:value];
    }
    return _notiReleaseKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "GetBackPasswordViewController.h"
#import "OriginViewController.h"

//: @interface GetBackPasswordViewController ()
@interface OriginViewController ()

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;

//: @end
@end

//: @implementation GetBackPasswordViewController
@implementation OriginViewController

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
    bg.image = [UIImage imageNamed:[WisecrackData sharedInstance].notiReleaseKey];
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
    [backButton setImage:[UIImage imageNamed:[WisecrackData sharedInstance].userNeedPath] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [MatronymicPath colorStreetwise:[WisecrackData sharedInstance].kEndIdent];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view1.backgroundColor = [UIColor whiteColor];
    view1.backgroundColor = [UIColor whiteColor];
    //: view1.layer.cornerRadius = 24;
    view1.layer.cornerRadius = 24;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];

    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"saft_bind_account"];
    imgname.image = [UIImage imageNamed:[WisecrackData sharedInstance].userTextIdent];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor recordView:[WisecrackData sharedInstance].mainShouldFormat];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"register_account_activity_account"];
    self.textfile_1.placeholder = [MatronymicPath colorStreetwise:[WisecrackData sharedInstance].main_layerNameValue];
//    self.textfile_1.delegate = self;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view2.backgroundColor = [UIColor whiteColor];
    view2.backgroundColor = [UIColor whiteColor];
    //: view2.layer.cornerRadius = 24;
    view2.layer.cornerRadius = 24;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[WisecrackData sharedInstance].appTingText];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor recordView:[WisecrackData sharedInstance].mainShouldFormat];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [MatronymicPath colorStreetwise:[WisecrackData sharedInstance].m_processorStr];
//    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

    //: UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton1 addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton1 addTarget:self action:@selector(vacantCover:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton1 setImage:[UIImage imageNamed:[WisecrackData sharedInstance].dreamBeginMsg] forState:UIControlStateNormal];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton1 setImage:[UIImage imageNamed:[WisecrackData sharedInstance].m_dateName] forState:UIControlStateSelected];
//    secureButton1.hidden = YES;
    //: [view2 addSubview:secureButton1];
    [view2 addSubview:secureButton1];


    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view3.backgroundColor = [UIColor whiteColor];
    view3.backgroundColor = [UIColor whiteColor];
    //: view3.layer.cornerRadius = 24;
    view3.layer.cornerRadius = 24;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[WisecrackData sharedInstance].appTingText];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor recordView:[WisecrackData sharedInstance].mainShouldFormat];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new_again"];
    self.textfile_3.placeholder = [MatronymicPath colorStreetwise:[WisecrackData sharedInstance].m_needIdent];
//    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton2 addTarget:self action:@selector(pwdAginaTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton2 addTarget:self action:@selector(totUp:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton2 setImage:[UIImage imageNamed:[WisecrackData sharedInstance].dreamBeginMsg] forState:UIControlStateNormal];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton2 setImage:[UIImage imageNamed:[WisecrackData sharedInstance].m_dateName] forState:UIControlStateSelected];
//    secureButton2.hidden = YES;
    //: [view3 addSubview:secureButton2];
    [view3 addSubview:secureButton2];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [emptyButton setTitle:[MatronymicPath colorStreetwise:[WisecrackData sharedInstance].kGrayStr] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(recordString) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    emptyButton.backgroundColor = [UIColor recordView:[WisecrackData sharedInstance].dream_textName];
    //: emptyButton.layer.cornerRadius = 22;
    emptyButton.layer.cornerRadius = 22;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];


}

//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)vacantCover:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WisecrackData sharedInstance].m_dateName] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = NO;
            self.textfile_2.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WisecrackData sharedInstance].dreamBeginMsg] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = YES;
            self.textfile_2.secureTextEntry = YES;
        //: }];
        }];
    }
}
//: - (void)pwdAginaTextSwitch:(UIButton *)sender
- (void)totUp:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WisecrackData sharedInstance].dreamBeginMsg] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = NO;
            self.textfile_3.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WisecrackData sharedInstance].m_dateName] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = YES;
            self.textfile_3.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: -(void)commitButtonClick
-(void)recordString
{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
    if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor recordView:[WisecrackData sharedInstance].kTableId];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"modify_activity_psw_no_same"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[MatronymicPath colorStreetwise:[WisecrackData sharedInstance].kTouchId] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WisecrackData sharedInstance].showTotalMessage] style:style completion:nil];
        //: return;
        return;
    }


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[WisecrackData sharedInstance].userTextMsg];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[WisecrackData sharedInstance].main_viewUrl];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[WisecrackData sharedInstance].user_dotStr];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[WisecrackData sharedInstance].app_contentFormat];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[WisecrackData sharedInstance].userTableValue];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[WisecrackData sharedInstance].noti_byUrl] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:[WisecrackData sharedInstance].user_teamName];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[WisecrackData sharedInstance].k_endValueBeginContent];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor recordView:[WisecrackData sharedInstance].kTableId];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WisecrackData sharedInstance].mainSelectedIdent] style:style completion:nil];

            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }else{
        }else{
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor recordView:[WisecrackData sharedInstance].kTableId];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WisecrackData sharedInstance].showTotalMessage] style:style completion:nil];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor recordView:[WisecrackData sharedInstance].kTableId];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[MatronymicPath colorStreetwise:[WisecrackData sharedInstance].dream_byTitle] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WisecrackData sharedInstance].showTotalMessage] style:style completion:nil];
    //: }];
    }];

}

//: @end
@end