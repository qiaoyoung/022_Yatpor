
#import <Foundation/Foundation.h>

@interface BlueUpData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation BlueUpData

+ (instancetype)sharedInstance {
    static BlueUpData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BlueUpDataToData:(NSString *)value {
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

- (Byte *)BlueUpDataToCache:(Byte *)data {
    int refresh = data[0];
    Byte tot = data[1];
    int showInfo = data[2];
    for (int i = showInfo; i < showInfo + refresh; i++) {
        int value = data[i] + tot;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[showInfo + refresh] = 0;
    return data + showInfo;
}

- (NSString *)StringFromBlueUpData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BlueUpDataToCache:data]];
}

//: #BCC1C8
- (NSString *)app_messageIdent {
    /* static */ NSString *app_messageIdent = nil;
    if (!app_messageIdent) {
		NSString *origin = @"071b068cdece0827282816281d51";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_messageIdent = [self StringFromBlueUpData:value];
    }
    return app_messageIdent;
}

//: #F7BA00
- (NSString *)dreamWindowStr {
    /* static */ NSString *dreamWindowStr = nil;
    if (!dreamWindowStr) {
		NSString *origin = @"0725073730c2a3fe21121d1c0b0ba1";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamWindowStr = [self StringFromBlueUpData:value];
    }
    return dreamWindowStr;
}

//: safe_bind_phone_icon
- (NSString *)noti_touchMessageIdent {
    /* static */ NSString *noti_touchMessageIdent = nil;
    if (!noti_touchMessageIdent) {
		NSString *origin = @"141a07da63dfc159474c4b45484f544a45564e55544b454f49555452";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_touchMessageIdent = [self StringFromBlueUpData:value];
    }
    return noti_touchMessageIdent;
}

//: get_pay_psw_activity_input_psw
- (NSString *)k_accountText {
    /* static */ NSString *k_accountText = nil;
    if (!k_accountText) {
		NSString *origin = @"1e3d089bb7de06a92a28372233243c2233363a222426372c392c373c222c313338372233363ad8";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_accountText = [self StringFromBlueUpData:value];
    }
    return k_accountText;
}

//: #EEEEEE
- (NSString *)k_remoteMsg {
    /* static */ NSString *k_remoteMsg = nil;
    if (!k_remoteMsg) {
		NSString *origin = @"075303d0f2f2f2f2f2f226";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_remoteMsg = [self StringFromBlueUpData:value];
    }
    return k_remoteMsg;
}

//: ic-delete_account
- (NSString *)app_contentText {
    /* static */ NSString *app_contentText = nil;
    if (!app_contentText) {
		NSString *origin = @"11330ba4e19d1069b0a5613630fa3132393241322c2e30303c423b41e9";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_contentText = [self StringFromBlueUpData:value];
    }
    return app_contentText;
}

//: #5D5F66
- (NSString *)userLineOfBarFormat {
    /* static */ NSString *userLineOfBarFormat = nil;
    if (!userLineOfBarFormat) {
		NSString *origin = @"075a0bebb967286d6c9feac9dbeadbecdcdcbf";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userLineOfBarFormat = [self StringFromBlueUpData:value];
    }
    return userLineOfBarFormat;
}

//: Complete_operation
- (NSString *)noti_endIdent {
    /* static */ NSString *noti_endIdent = nil;
    if (!noti_endIdent) {
		NSString *origin = @"123007f96ce8ed133f3d403c3544352f3f4035423144393f3e7c";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_endIdent = [self StringFromBlueUpData:value];
    }
    return noti_endIdent;
}

//: Vertify_login_password
- (NSString *)appDotName {
    /* static */ NSString *appDotName = nil;
    if (!appDotName) {
		NSString *origin = @"162006be3ad2364552544946593f4c4f47494e3f50415353574f52448e";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDotName = [self StringFromBlueUpData:value];
    }
    return appDotName;
}

//: Read_agree_agreement
- (NSString *)appTableId {
    /* static */ NSString *appTableId = nil;
    if (!appTableId) {
		NSString *origin = @"144906b9c817091c181b16181e291c1c16181e291c1c241c252b9b";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTableId = [self StringFromBlueUpData:value];
    }
    return appTableId;
}

//: contact_tag_fragment_sure
- (NSString *)kProcessorLabUpMessage {
    /* static */ NSString *kProcessorLabUpMessage = nil;
    if (!kProcessorLabUpMessage) {
		NSString *origin = @"19290508cc3a46454b383a4b364b383e363d49383e443c454b364a4c493cf8";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kProcessorLabUpMessage = [self StringFromBlueUpData:value];
    }
    return kProcessorLabUpMessage;
}

//: #FF483D
- (NSString *)notiNeedCustomName {
    /* static */ NSString *notiNeedCustomName = nil;
    if (!notiNeedCustomName) {
		NSString *origin = @"071d0d7d82526ca12b77aef9dd062929171b1627f0";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiNeedCustomName = [self StringFromBlueUpData:value];
    }
    return notiNeedCustomName;
}

//: safe_arrow_next
- (NSString *)mCollectionKey {
    /* static */ NSString *mCollectionKey = nil;
    if (!mCollectionKey) {
		NSString *origin = @"0f52088838e682f8210f14130d0f20201d250d1c13262290";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCollectionKey = [self StringFromBlueUpData:value];
    }
    return mCollectionKey;
}

//: wrong_password
- (NSString *)showOpenWithMessage {
    /* static */ NSString *showOpenWithMessage = nil;
    if (!showOpenWithMessage) {
		NSString *origin = @"0e4f06e1e2d32823201f18102112242428202315ed";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showOpenWithMessage = [self StringFromBlueUpData:value];
    }
    return showOpenWithMessage;
}

//: safe_success_step
- (NSString *)user_dotMsg {
    /* static */ NSString *user_dotMsg = nil;
    if (!user_dotMsg) {
		NSString *origin = @"112405d0944f3d42413b4f513f3f414f4f3b4f50414cbc";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_dotMsg = [self StringFromBlueUpData:value];
    }
    return user_dotMsg;
}

//: contact_tag_fragment_cancel
- (NSString *)userBubbleName {
    /* static */ NSString *userBubbleName = nil;
    if (!userBubbleName) {
		NSString *origin = @"1b0e0a5f6a31746a8a06556160665355665166535951586453595f5760665155536055575e21";
		NSData *data = [BlueUpData BlueUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBubbleName = [self StringFromBlueUpData:value];
    }
    return userBubbleName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SightView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountNextView.h"
#import "SightView.h"

//: @interface ZMONDeactivateAccountNextView ()<UITextFieldDelegate>
@interface SightView ()<UITextFieldDelegate>

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;

//: @end
@end

//: @implementation ZMONDeactivateAccountNextView
@implementation SightView

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
        [self initImage];

    }
    //: return self;
    return self;
}


//: - (void)initUI
- (void)initImage
{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);
    self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);

//    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, SCREEN_WIDTH-70, 30)];
//    labtitle.font = [UIFont systemFontOfSize:14.f];
//    labtitle.textColor = [UIColor blackColor];
//    labtitle.text = @"Confirm Account Deactivation?";
//    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, self.img.bottom+20, SCREEN_WIDTH-70, 54);

        //: [_box addSubview:self.searchView];
        [_box addSubview:self.searchView];
        //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);
        self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)smart:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname{
- (void)sendLimit{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: NSString *pcode = [NIMUserDefaults standardUserDefaults].pCode?:@"";
    NSString *pcode = [NameDefaults argument].pCode?:@"";
    //: if([pcode isEqualToString:self.searchField.text]){
    if([pcode isEqualToString:self.searchField.text]){
        //: self.speiceBackBlock(self.searchField.text);
        self.speiceBackBlock(self.searchField.text);

    //: }else{
    }else{

        //: [self makeToast:[ContentLanguageManager getTextWithKey:@"wrong_password"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] showOpenWithMessage]] duration:2.0 position:CSToastPositionCenter];
    }


}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
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
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[BlueUpData sharedInstance] app_contentText]]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:[[BlueUpData sharedInstance] user_dotMsg]];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];
//        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
//        numView1.backgroundColor = ThemeColor;
//        numView1.layer.cornerRadius = 10;
//        numView1.layer.masksToBounds = YES;
//        [view1 addSubview:numView1];
//        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
//        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
//        labtitlenum1.textColor = [UIColor whiteColor];
//        labtitlenum1.text = @"1";
//        labtitlenum1.textAlignment = NSTextAlignmentCenter;
//        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [ContentLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] appTableId]];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        numView2.backgroundColor = [UIColor recordView:[[BlueUpData sharedInstance] dreamWindowStr]];
        //: numView2.layer.cornerRadius = 10;
        numView2.layer.cornerRadius = 10;
        //: numView2.layer.masksToBounds = YES;
        numView2.layer.masksToBounds = YES;
        //: [view2 addSubview:numView2];
        [view2 addSubview:numView2];
        //: UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum2.textColor = [UIColor whiteColor];
        labtitlenum2.textColor = [UIColor whiteColor];
        //: labtitlenum2.text = @"2";
        labtitlenum2.text = @"2";
        //: labtitlenum2.textAlignment = NSTextAlignmentCenter;
        labtitlenum2.textAlignment = NSTextAlignmentCenter;
        //: [numView2 addSubview:labtitlenum2];
        [numView2 addSubview:labtitlenum2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [ContentLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] appDotName]];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView3.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView3.backgroundColor = [UIColor recordView:[[BlueUpData sharedInstance] app_messageIdent]];
        //: numView3.layer.cornerRadius = 10;
        numView3.layer.cornerRadius = 10;
        //: numView3.layer.masksToBounds = YES;
        numView3.layer.masksToBounds = YES;
        //: [view3 addSubview:numView3];
        [view3 addSubview:numView3];
        //: UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum3.textColor = [UIColor whiteColor];
        labtitlenum3.textColor = [UIColor whiteColor];
        //: labtitlenum3.text = @"3";
        labtitlenum3.text = @"3";
        //: labtitlenum3.textAlignment = NSTextAlignmentCenter;
        labtitlenum3.textAlignment = NSTextAlignmentCenter;
        //: [numView3 addSubview:labtitlenum3];
        [numView3 addSubview:labtitlenum3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle3.textColor = [UIColor recordView:[[BlueUpData sharedInstance] userLineOfBarFormat]];
        //: labtitle3.text = [ContentLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] noti_endIdent]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[[BlueUpData sharedInstance] mCollectionKey]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[[BlueUpData sharedInstance] mCollectionKey]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}


//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.layer.borderWidth = 1;
        _searchView.layer.borderWidth = 1;
        //: _searchView.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        _searchView.layer.borderColor = [UIColor recordView:[[BlueUpData sharedInstance] k_remoteMsg]].CGColor;
        //: _searchView.backgroundColor = [UIColor whiteColor];
        _searchView.backgroundColor = [UIColor whiteColor];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;

        //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
        imgname.image = [UIImage imageNamed:[[BlueUpData sharedInstance] noti_touchMessageIdent]];
        //: [_searchView addSubview:imgname];
        [_searchView addSubview:imgname];

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        //: _searchField.placeholder = [ContentLanguageManager getTextWithKey:@"get_pay_psw_activity_input_psw"];
        _searchField.placeholder = [MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] k_accountText]];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
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
        [_closeBtn setTitleColor:[UIColor recordView:[[BlueUpData sharedInstance] userLineOfBarFormat]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] userBubbleName]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(sendLimit) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[[BlueUpData sharedInstance] kProcessorLabUpMessage]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor recordView:[[BlueUpData sharedInstance] notiNeedCustomName]];
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
- (void)disableNameShow
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end
