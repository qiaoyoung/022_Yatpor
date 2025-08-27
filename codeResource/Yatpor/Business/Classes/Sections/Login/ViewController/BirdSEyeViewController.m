
#import <Foundation/Foundation.h>

@interface CustomData : NSObject

@end

@implementation CustomData

+ (NSData *)CustomDataToData:(NSString *)value {
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

+ (Byte *)CustomDataToCache:(Byte *)data {
    int netProfit = data[0];
    Byte soul = data[1];
    int stateSearch = data[2];
    for (int i = stateSearch; i < stateSearch + netProfit; i++) {
        int value = data[i] + soul;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[stateSearch + netProfit] = 0;
    return data + stateSearch;
}

+ (NSString *)StringFromCustomData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CustomDataToCache:data]];
}

//: #333333
+ (NSString *)app_normalMessage {
    /* static */ NSString *app_normalMessage = nil;
    if (!app_normalMessage) {
		NSString *origin = @"075C0580B9C7D7D7D7D7D7D7A1";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_normalMessage = [self StringFromCustomData:value];
    }
    return app_normalMessage;
}

//: activity_my_user_info_nick
+ (NSString *)notiImageName {
    /* static */ NSString *notiImageName = nil;
    if (!notiImageName) {
		NSString *origin = @"1A52098D729D2CCB1B0F112217241722270D1B270D232113200D171C141D0D1C171119F5";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiImageName = [self StringFromCustomData:value];
    }
    return notiImageName;
}

//: register_good_nick
+ (NSString *)kTableContentData {
    /* static */ NSString *kTableContentData = nil;
    if (!kTableContentData) {
		NSString *origin = @"120E08BB4613863C6457595B65665764515961615651605B555DB1";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTableContentData = [self StringFromCustomData:value];
    }
    return kTableContentData;
}

//: nickname_same_account
+ (NSString *)app_grayValueKey {
    /* static */ NSString *app_grayValueKey = nil;
    if (!app_grayValueKey) {
		NSString *origin = @"153B0D3D5A14C975C4EE1357DD332E28303326322A243826322A24262828343A33394B";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_grayValueKey = [self StringFromCustomData:value];
    }
    return app_grayValueKey;
}

//: activity_register_next
+ (NSString *)m_processorMsg {
    /* static */ NSString *m_processorMsg = nil;
    if (!m_processorMsg) {
		NSString *origin = @"16580DC010E587C30E7F15F60F090B1C111E111C21071A0D0F111B1C0D1A07160D201C4A";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_processorMsg = [self StringFromCustomData:value];
    }
    return m_processorMsg;
}

//: back_arrow_bl
+ (NSString *)dreamValueModelName {
    /* static */ NSString *dreamValueModelName = nil;
    if (!dreamValueModelName) {
		NSString *origin = @"0D0608EB228DDAC25C5B5D65595B6C6C6971595C66AD";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamValueModelName = [self StringFromCustomData:value];
    }
    return dreamValueModelName;
}

//: #F7BA00
+ (NSString *)kDatePath {
    /* static */ NSString *kDatePath = nil;
    if (!kDatePath) {
		NSString *origin = @"075B0D5213E325C3D5D226B307C8EBDCE7E6D5D574";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDatePath = [self StringFromCustomData:value];
    }
    return kDatePath;
}

//: #5D5F66
+ (NSString *)m_barSelectedId {
    /* static */ NSString *m_barSelectedId = nil;
    if (!m_barSelectedId) {
		NSString *origin = @"071B074BD86320081A291A2B1B1BCD";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_barSelectedId = [self StringFromCustomData:value];
    }
    return m_barSelectedId;
}

//: register_avtivity3_nick
+ (NSString *)m_redMessage {
    /* static */ NSString *m_redMessage = nil;
    if (!m_redMessage) {
		NSString *origin = @"17010AE5193C4BF62FEA71646668727364715E6075736875687378325E6D68626A98";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_redMessage = [self StringFromCustomData:value];
    }
    return m_redMessage;
}

//: login_bg
+ (NSString *)appOfFormat {
    /* static */ NSString *appOfFormat = nil;
    if (!appOfFormat) {
		NSString *origin = @"08410513C12B2E26282D1E2126F5";
		NSData *data = [CustomData CustomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appOfFormat = [self StringFromCustomData:value];
    }
    return appOfFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  BirdSEyeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterNickNameViewController.h"
#import "BirdSEyeViewController.h"
//: #import "FFFRegisterAvatarViewController.h"
#import "StyleViewController.h"

//: @interface FFFRegisterNickNameViewController ()<UITextFieldDelegate>
@interface BirdSEyeViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation FFFRegisterNickNameViewController
@implementation BirdSEyeViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[CustomData appOfFormat]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initToss];

}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initToss
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice bearDown]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[CustomData dreamValueModelName]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice bearDown], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [MatronymicPath colorStreetwise:[CustomData notiImageName]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor recordView:[CustomData m_barSelectedId]];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [MatronymicPath colorStreetwise:[CustomData kTableContentData]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor recordView:[CustomData app_normalMessage]];
    //: self.accountTextfield.placeholder = [FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [MatronymicPath colorStreetwise:[CustomData m_redMessage]];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    self.registButton.backgroundColor = [UIColor recordView:[CustomData kDatePath]];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
    self.registButton.layer.shadowColor = [UIColor recordView:[CustomData kDatePath]].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[MatronymicPath colorStreetwise:[CustomData m_processorMsg]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(noRed) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)noRed
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[CustomData m_redMessage]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[CustomData app_grayValueKey]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: FFFRegisterAvatarViewController *vc = [[FFFRegisterAvatarViewController alloc]init];
    StyleViewController *vc = [[StyleViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end