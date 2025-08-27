
#import <Foundation/Foundation.h>

@interface SpendingUpData : NSObject

@end

@implementation SpendingUpData

+ (NSData *)SpendingUpDataToData:(NSString *)value {
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

+ (Byte *)SpendingUpDataToCache:(Byte *)data {
    int reply = data[0];
    Byte grayModel = data[1];
    int army = data[2];
    for (int i = army; i < army + reply; i++) {
        int value = data[i] - grayModel;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[army + reply] = 0;
    return data + army;
}

+ (NSString *)StringFromSpendingUpData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SpendingUpDataToCache:data]];
}

//: zh-Hans
+ (NSString *)showFlushValue {
    /* static */ NSString *showFlushValue = nil;
    if (!showFlushValue) {
		NSString *origin = @"07590CA070E730759D91C402D3C186A1BAC7CC14";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showFlushValue = [self StringFromSpendingUpData:value];
    }
    return showFlushValue;
}

//: spa
+ (NSString *)noti_touchData {
    /* static */ NSString *noti_touchData = nil;
    if (!noti_touchData) {
		NSString *origin = @"035208A9862B7402C5C2B34B";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_touchData = [self StringFromSpendingUpData:value];
    }
    return noti_touchData;
}

//: zh-Hant
+ (NSString *)dreamLineStr {
    /* static */ NSString *dreamLineStr = nil;
    if (!dreamLineStr) {
		NSString *origin = @"073904BDB3A166819AA7ADF9";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamLineStr = [self StringFromSpendingUpData:value];
    }
    return dreamLineStr;
}

//: #FAF8FD
+ (NSString *)dreamUsFlameMsg {
    /* static */ NSString *dreamUsFlameMsg = nil;
    if (!dreamUsFlameMsg) {
		NSString *origin = @"071D0AAEDCCFA24281B440635E63556361C5";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamUsFlameMsg = [self StringFromSpendingUpData:value];
    }
    return dreamUsFlameMsg;
}

//: head_default
+ (NSString *)dream_releaseUrl {
    /* static */ NSString *dream_releaseUrl = nil;
    if (!dream_releaseUrl) {
		NSString *origin = @"0C63044ECBC8C4C7C2C7C8C9C4D8CFD7A4";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_releaseUrl = [self StringFromSpendingUpData:value];
    }
    return dream_releaseUrl;
}

//: hant
+ (NSString *)main_searchData {
    /* static */ NSString *main_searchData = nil;
    if (!main_searchData) {
		NSString *origin = @"0417037F78858B43";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_searchData = [self StringFromSpendingUpData:value];
    }
    return main_searchData;
}

//: #F7BA00
+ (NSString *)mainProcessorIdent {
    /* static */ NSString *mainProcessorIdent = nil;
    if (!mainProcessorIdent) {
		NSString *origin = @"075A04157DA0919C9B8A8A5B";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainProcessorIdent = [self StringFromSpendingUpData:value];
    }
    return mainProcessorIdent;
}

//: ko-KP
+ (NSString *)mTraditionalData {
    /* static */ NSString *mTraditionalData = nil;
    if (!mTraditionalData) {
		NSString *origin = @"0552087FCB4A103FBDC17F9DA2C8";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTraditionalData = [self StringFromSpendingUpData:value];
    }
    return mTraditionalData;
}

//: contact_list_activity_complete
+ (NSString *)notiSymptomMsg {
    /* static */ NSString *notiSymptomMsg = nil;
    if (!notiSymptomMsg) {
		NSString *origin = @"1E2E04BC919D9CA28F91A28D9A97A1A28D8F91A297A497A2A78D919D9B9E9A93A29357";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiSymptomMsg = [self StringFromSpendingUpData:value];
    }
    return notiSymptomMsg;
}

//: #F6F7FA
+ (NSString *)appTingFellowUrl {
    /* static */ NSString *appTingFellowUrl = nil;
    if (!appTingFellowUrl) {
		NSString *origin = @"071D0BAD2964F444F6FBC84063536354635E6B";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTingFellowUrl = [self StringFromSpendingUpData:value];
    }
    return appTingFellowUrl;
}

//: #000000
+ (NSString *)noti_etherIdent {
    /* static */ NSString *noti_etherIdent = nil;
    if (!noti_etherIdent) {
		NSString *origin = @"074A04026D7A7A7A7A7A7A10";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_etherIdent = [self StringFromSpendingUpData:value];
    }
    return noti_etherIdent;
}

//: back_arrow_bl
+ (NSString *)user_symptomText {
    /* static */ NSString *user_symptomText = nil;
    if (!user_symptomText) {
		NSString *origin = @"0D370B21E1BEED2A93821A99989AA29698A9A9A6AE9699A331";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_symptomText = [self StringFromSpendingUpData:value];
    }
    return user_symptomText;
}

//: register_good_avater
+ (NSString *)notiBubbleGuyStr {
    /* static */ NSString *notiBubbleGuyStr = nil;
    if (!notiBubbleGuyStr) {
		NSString *origin = @"14100637914282757779838475826F777F7F746F7186718475825B";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBubbleGuyStr = [self StringFromSpendingUpData:value];
    }
    return notiBubbleGuyStr;
}

//: set_group_avater
+ (NSString *)main_shouldTitle {
    /* static */ NSString *main_shouldTitle = nil;
    if (!main_shouldTitle) {
		NSString *origin = @"10320B8C85103491B4B5E5A597A69199A4A1A7A29193A893A697A42A";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_shouldTitle = [self StringFromSpendingUpData:value];
    }
    return main_shouldTitle;
}

//: icon_photo
+ (NSString *)k_creasedText {
    /* static */ NSString *k_creasedText = nil;
    if (!k_creasedText) {
		NSString *origin = @"0A4C08811FDDBB28B5AFBBBAABBCB4BBC0BBA1";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_creasedText = [self StringFromSpendingUpData:value];
    }
    return k_creasedText;
}

//: #5D5F66
+ (NSString *)mainLestWithJurisdictionUrl {
    /* static */ NSString *mainLestWithJurisdictionUrl = nil;
    if (!mainLestWithJurisdictionUrl) {
		NSString *origin = @"073E072AA653E76173827384747466";
		NSData *data = [SpendingUpData SpendingUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainLestWithJurisdictionUrl = [self StringFromSpendingUpData:value];
    }
    return mainLestWithJurisdictionUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SuccessViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupAvatarViewController.h"
#import "SuccessViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+OpenSend.h"
//: #import "KEKESetNickNameView.h"
#import "ReplacementTapView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "LengthOff.h"
//: #import "FFFKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "NSSetAvater.h"
#import "HandleView.h"

//: @interface FFFGroupAvatarViewController ()<NTESCustomUIAlertDelegate>
@interface SuccessViewController ()<HijabDoingDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) HandleView *aleartView;

//: @end
@end

//: @implementation FFFGroupAvatarViewController
@implementation SuccessViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[SpendingUpData appTingFellowUrl]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[SpendingUpData user_symptomText]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice bearDown], 40, 40);

    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice bearDown], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:16];
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"set_group_avater"];
    titleLabel.text = [MatronymicPath colorStreetwise:[SpendingUpData main_shouldTitle]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: [self initUI];
    [self initTelephoneMessage];




}
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

//: - (void)initUI
- (void)initTelephoneMessage
{
    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown]))];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    bodyView.backgroundColor = [UIColor recordView:[SpendingUpData dreamUsFlameMsg]];
    //: [self.view addSubview:bodyView];
    [self.view addSubview:bodyView];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor recordView:[SpendingUpData mainLestWithJurisdictionUrl]];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [MatronymicPath colorStreetwise:[SpendingUpData notiBubbleGuyStr]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [bodyView addSubview:self.accountLabel];
    [bodyView addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    //: [bodyView addSubview:imgView];
    [bodyView addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 70;
    _aratarImgView.layer.cornerRadius = 70;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[SpendingUpData dream_releaseUrl]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
//    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[SpendingUpData k_creasedText]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(holderPress) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.groupName;
    tita.text = self.groupName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor recordView:[SpendingUpData noti_etherIdent]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:20];
    tita.font = [UIFont systemFontOfSize:20];
    //: [bodyView addSubview:tita];
    [bodyView addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    self.registButton.backgroundColor = [UIColor recordView:[SpendingUpData mainProcessorIdent]];
    //: self.registButton.layer.masksToBounds = YES;
    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 24;
    self.registButton.layer.cornerRadius = 24;
//    self.registButton.layer.shadowColor = DeepBtnColor.CGColor;
//    self.registButton.layer.shadowOpacity = 1;
//    self.registButton.layer.shadowRadius = 0;
//    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[MatronymicPath colorStreetwise:[SpendingUpData notiSymptomMsg]] forState:UIControlStateNormal];
    //: [bodyView addSubview:self.registButton];
    [bodyView addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(noRed) forControlEvents:UIControlEventTouchUpInside];


}

//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)cured:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
//        [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self sessionAsset:nil];
    //: }else if (tag == 102){
    }else if (tag == 102){
//        [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self sessionAsset:nil];
    }
}

//: - (void)showPicker {
- (void)holderPress {

    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView green];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//            }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
//
//    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)sessionAsset:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = leftEvent([NameDefaults argument].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [SpendingUpData mTraditionalData];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[SpendingUpData noti_touchData]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [SpendingUpData showFlushValue];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[SpendingUpData main_searchData]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [SpendingUpData dreamLineStr];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)noRed{

    //: self.speiceBackBlock(self.headerImage);
    self.speiceBackBlock(self.headerImage);

//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [EmptyEffectView show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [EmptyEffectView dismiss];
//            if (!error) {
//                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
//                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
//                [sdManager.imageCache storeImage:imageForAvatarUpload
//                                       imageData:data
//                                          forKey:urlString
//                                       cacheType:SDImageCacheTypeAll
//                                      completion:nil];
//                [wself.navigationController popViewControllerAnimated:NO];
//            }
////            [wself showToastMsg:msg];
//        }];
//    }

}

//: - (NSSetAvater *)aleartView{
- (HandleView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[HandleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end