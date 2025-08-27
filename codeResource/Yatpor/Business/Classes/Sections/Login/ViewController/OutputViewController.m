
#import <Foundation/Foundation.h>

@interface VerticalData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation VerticalData

+ (instancetype)sharedInstance {
    static VerticalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VerticalDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)VerticalDataToCache:(Byte *)data {
    int demonstrate = data[0];
    Byte powderFlask = data[1];
    int atHand = data[2];
    for (int i = atHand; i < atHand + demonstrate; i++) {
        int value = data[i] + powderFlask;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[atHand + demonstrate] = 0;
    return data + atHand;
}

- (NSString *)StringFromVerticalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VerticalDataToCache:data]];
}

//: login_nickname
- (NSString *)main_normalStr {
    /* static */ NSString *main_normalStr = nil;
    if (!main_normalStr) {
		NSArray<NSNumber *> *origin = @[@14, @97, @6, @36, @201, @7, @11, @14, @6, @8, @13, @254, @13, @8, @2, @10, @13, @0, @12, @4, @74];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_normalStr = [self StringFromVerticalData:value];
    }
    return main_normalStr;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)app_commentName {
    /* static */ NSString *app_commentName = nil;
    if (!app_commentName) {
		NSArray<NSNumber *> *origin = @[@39, @59, @11, @143, @105, @208, @178, @234, @203, @253, @134, @58, @56, @42, @55, @36, @46, @51, @43, @52, @36, @38, @59, @57, @46, @59, @46, @57, @62, @36, @58, @53, @49, @52, @38, @41, @36, @38, @59, @38, @57, @38, @55, @36, @43, @38, @46, @49, @42, @41, @239];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_commentName = [self StringFromVerticalData:value];
    }
    return app_commentName;
}

//: register_avtivity3_nick
- (NSString *)k_titleName {
    /* static */ NSString *k_titleName = nil;
    if (!k_titleName) {
		NSArray<NSNumber *> *origin = @[@23, @17, @9, @79, @94, @28, @157, @124, @41, @97, @84, @86, @88, @98, @99, @84, @97, @78, @80, @101, @99, @88, @101, @88, @99, @104, @34, @78, @93, @88, @82, @90, @193];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_titleName = [self StringFromVerticalData:value];
    }
    return k_titleName;
}

//: hant
- (NSString *)noti_touchSearchUserStr {
    /* static */ NSString *noti_touchSearchUserStr = nil;
    if (!noti_touchSearchUserStr) {
		NSArray<NSNumber *> *origin = @[@4, @90, @10, @247, @246, @162, @176, @2, @122, @147, @14, @7, @20, @26, @251];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_touchSearchUserStr = [self StringFromVerticalData:value];
    }
    return noti_touchSearchUserStr;
}

//: zh-Hans
- (NSString *)app_containerStr {
    /* static */ NSString *app_containerStr = nil;
    if (!app_containerStr) {
		NSArray<NSNumber *> *origin = @[@7, @78, @9, @117, @15, @12, @10, @134, @48, @44, @26, @223, @250, @19, @32, @37, @248];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_containerStr = [self StringFromVerticalData:value];
    }
    return app_containerStr;
}

//: nickname_same_account
- (NSString *)show_normalPath {
    /* static */ NSString *show_normalPath = nil;
    if (!show_normalPath) {
		NSArray<NSNumber *> *origin = @[@21, @79, @8, @78, @40, @217, @53, @186, @31, @26, @20, @28, @31, @18, @30, @22, @16, @36, @18, @30, @22, @16, @18, @20, @20, @32, @38, @31, @37, @230];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_normalPath = [self StringFromVerticalData:value];
    }
    return show_normalPath;
}

//: login_bg
- (NSString *)noti_enableFormat {
    /* static */ NSString *noti_enableFormat = nil;
    if (!noti_enableFormat) {
		NSArray<NSNumber *> *origin = @[@8, @18, @10, @181, @156, @35, @159, @84, @205, @54, @90, @93, @85, @87, @92, @77, @80, @85, @63];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_enableFormat = [self StringFromVerticalData:value];
    }
    return noti_enableFormat;
}

//: photo_account_def
- (NSString *)app_startFormat {
    /* static */ NSString *app_startFormat = nil;
    if (!app_startFormat) {
		NSArray<NSNumber *> *origin = @[@17, @93, @12, @189, @251, @173, @28, @65, @45, @26, @183, @131, @19, @11, @18, @23, @18, @2, @4, @6, @6, @18, @24, @17, @23, @2, @7, @8, @9, @159];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_startFormat = [self StringFromVerticalData:value];
    }
    return app_startFormat;
}

//: tag_activity_set
- (NSString *)k_commentTextPath {
    /* static */ NSString *k_commentTextPath = nil;
    if (!k_commentTextPath) {
		NSArray<NSNumber *> *origin = @[@16, @19, @5, @31, @226, @97, @78, @84, @76, @78, @80, @97, @86, @99, @86, @97, @102, @76, @96, @82, @97, @6];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_commentTextPath = [self StringFromVerticalData:value];
    }
    return k_commentTextPath;
}

//: #999999
- (NSString *)app_releaseFormat {
    /* static */ NSString *app_releaseFormat = nil;
    if (!app_releaseFormat) {
		NSArray<NSNumber *> *origin = @[@7, @69, @6, @170, @105, @231, @222, @244, @244, @244, @244, @244, @244, @169];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_releaseFormat = [self StringFromVerticalData:value];
    }
    return app_releaseFormat;
}

//: register_avtivity3_avatar
- (NSString *)mShouldMsg {
    /* static */ NSString *mShouldMsg = nil;
    if (!mShouldMsg) {
		NSArray<NSNumber *> *origin = @[@25, @90, @5, @157, @74, @24, @11, @13, @15, @25, @26, @11, @24, @5, @7, @28, @26, @15, @28, @15, @26, @31, @217, @5, @7, @28, @7, @26, @7, @24, @154];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mShouldMsg = [self StringFromVerticalData:value];
    }
    return mShouldMsg;
}

//: icon_photo
- (NSString *)show_kitUrl {
    /* static */ NSString *show_kitUrl = nil;
    if (!show_kitUrl) {
		NSArray<NSNumber *> *origin = @[@10, @6, @3, @99, @93, @105, @104, @89, @106, @98, @105, @110, @105, @52];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_kitUrl = [self StringFromVerticalData:value];
    }
    return show_kitUrl;
}

//: register_good_nick
- (NSString *)userGlobalValue {
    /* static */ NSString *userGlobalValue = nil;
    if (!userGlobalValue) {
		NSArray<NSNumber *> *origin = @[@18, @25, @5, @87, @184, @89, @76, @78, @80, @90, @91, @76, @89, @70, @78, @86, @86, @75, @70, @85, @80, @74, @82, @246];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userGlobalValue = [self StringFromVerticalData:value];
    }
    return userGlobalValue;
}

//: #5D5F66
- (NSString *)dream_keyMessage {
    /* static */ NSString *dream_keyMessage = nil;
    if (!dream_keyMessage) {
		NSArray<NSNumber *> *origin = @[@7, @66, @12, @181, @182, @128, @161, @121, @235, @176, @93, @41, @225, @243, @2, @243, @4, @244, @244, @135];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_keyMessage = [self StringFromVerticalData:value];
    }
    return dream_keyMessage;
}

//: jpg
- (NSString *)userBeginData {
    /* static */ NSString *userBeginData = nil;
    if (!userBeginData) {
		NSArray<NSNumber *> *origin = @[@3, @86, @5, @231, @4, @20, @26, @17, @173];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBeginData = [self StringFromVerticalData:value];
    }
    return userBeginData;
}

//: warm_prompt
- (NSString *)showEndContent {
    /* static */ NSString *showEndContent = nil;
    if (!showEndContent) {
		NSArray<NSNumber *> *origin = @[@11, @39, @8, @126, @111, @41, @225, @91, @80, @58, @75, @70, @56, @73, @75, @72, @70, @73, @77, @228];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEndContent = [self StringFromVerticalData:value];
    }
    return showEndContent;
}

//: #F6F6F6
- (NSString *)main_onUrl {
    /* static */ NSString *main_onUrl = nil;
    if (!main_onUrl) {
		NSArray<NSNumber *> *origin = @[@7, @33, @13, @103, @115, @95, @23, @138, @214, @140, @232, @119, @137, @2, @37, @21, @37, @21, @37, @21, @167];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_onUrl = [self StringFromVerticalData:value];
    }
    return main_onUrl;
}

//: #ffffff
- (NSString *)k_singleStr {
    /* static */ NSString *k_singleStr = nil;
    if (!k_singleStr) {
		NSArray<NSNumber *> *origin = @[@7, @26, @9, @130, @13, @99, @230, @176, @210, @9, @76, @76, @76, @76, @76, @76, @77];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_singleStr = [self StringFromVerticalData:value];
    }
    return k_singleStr;
}

//: spa
- (NSString *)mContentText {
    /* static */ NSString *mContentText = nil;
    if (!mContentText) {
		NSArray<NSNumber *> *origin = @[@3, @81, @7, @103, @52, @167, @145, @34, @31, @16, @121];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mContentText = [self StringFromVerticalData:value];
    }
    return mContentText;
}

//: group_info_activity_update_failed
- (NSString *)main_viewOfMessageValue {
    /* static */ NSString *main_viewOfMessageValue = nil;
    if (!main_viewOfMessageValue) {
		NSArray<NSNumber *> *origin = @[@33, @45, @10, @187, @198, @150, @168, @97, @111, @106, @58, @69, @66, @72, @67, @50, @60, @65, @57, @66, @50, @52, @54, @71, @60, @73, @60, @71, @76, @50, @72, @67, @55, @52, @71, @56, @50, @57, @52, @60, @63, @56, @55, @210];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_viewOfMessageValue = [self StringFromVerticalData:value];
    }
    return main_viewOfMessageValue;
}

//: activity_login_login
- (NSString *)dream_viewMsg {
    /* static */ NSString *dream_viewMsg = nil;
    if (!dream_viewMsg) {
		NSArray<NSNumber *> *origin = @[@20, @67, @4, @252, @30, @32, @49, @38, @51, @38, @49, @54, @28, @41, @44, @36, @38, @43, @28, @41, @44, @36, @38, @43, @189];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_viewMsg = [self StringFromVerticalData:value];
    }
    return dream_viewMsg;
}

//: message_send_album
- (NSString *)mainMessageName {
    /* static */ NSString *mainMessageName = nil;
    if (!mainMessageName) {
		NSArray<NSNumber *> *origin = @[@18, @87, @7, @121, @10, @13, @51, @22, @14, @28, @28, @10, @16, @14, @8, @28, @14, @23, @13, @8, @10, @21, @11, @30, @22, @224];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMessageName = [self StringFromVerticalData:value];
    }
    return mainMessageName;
}

//: contact_tag_fragment_cancel
- (NSString *)userMessageSizeUrl {
    /* static */ NSString *userMessageSizeUrl = nil;
    if (!userMessageSizeUrl) {
		NSArray<NSNumber *> *origin = @[@27, @57, @13, @112, @103, @237, @41, @236, @19, @86, @249, @52, @132, @42, @54, @53, @59, @40, @42, @59, @38, @59, @40, @46, @38, @45, @57, @40, @46, @52, @44, @53, @59, @38, @42, @40, @53, @42, @44, @51, @58];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMessageSizeUrl = [self StringFromVerticalData:value];
    }
    return userMessageSizeUrl;
}

//: setting_privacy_camera
- (NSString *)kStartTitle {
    /* static */ NSString *kStartTitle = nil;
    if (!kStartTitle) {
		NSArray<NSNumber *> *origin = @[@22, @43, @11, @220, @163, @234, @20, @153, @107, @202, @145, @72, @58, @73, @73, @62, @67, @60, @52, @69, @71, @62, @75, @54, @56, @78, @52, @56, @54, @66, @58, @71, @54, @160];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kStartTitle = [self StringFromVerticalData:value];
    }
    return kStartTitle;
}

//: contact_list_activity_complete
- (NSString *)m_backgroundMsg {
    /* static */ NSString *m_backgroundMsg = nil;
    if (!m_backgroundMsg) {
		NSArray<NSNumber *> *origin = @[@30, @6, @12, @143, @244, @237, @43, @207, @79, @8, @26, @81, @93, @105, @104, @110, @91, @93, @110, @89, @102, @99, @109, @110, @89, @91, @93, @110, @99, @112, @99, @110, @115, @89, @93, @105, @103, @106, @102, @95, @110, @95, @85];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_backgroundMsg = [self StringFromVerticalData:value];
    }
    return m_backgroundMsg;
}

//: nickname
- (NSString *)m_valueName {
    /* static */ NSString *m_valueName = nil;
    if (!m_valueName) {
		NSArray<NSNumber *> *origin = @[@8, @65, @4, @88, @45, @40, @34, @42, @45, @32, @44, @36, @119];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_valueName = [self StringFromVerticalData:value];
    }
    return m_valueName;
}

//: ic_close_b
- (NSString *)kOperationButtonData {
    /* static */ NSString *kOperationButtonData = nil;
    if (!kOperationButtonData) {
		NSArray<NSNumber *> *origin = @[@10, @57, @11, @176, @174, @186, @126, @40, @234, @242, @63, @48, @42, @38, @42, @51, @54, @58, @44, @38, @41, @179];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kOperationButtonData = [self StringFromVerticalData:value];
    }
    return kOperationButtonData;
}

//: #F7BA00
- (NSString *)user_touchTitle {
    /* static */ NSString *user_touchTitle = nil;
    if (!user_touchTitle) {
		NSArray<NSNumber *> *origin = @[@7, @5, @7, @129, @84, @99, @177, @30, @65, @50, @61, @60, @43, @43, @193];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_touchTitle = [self StringFromVerticalData:value];
    }
    return user_touchTitle;
}

//: ko-KP
- (NSString *)mTeamKitMessage {
    /* static */ NSString *mTeamKitMessage = nil;
    if (!mTeamKitMessage) {
		NSArray<NSNumber *> *origin = @[@5, @73, @8, @20, @99, @47, @245, @48, @34, @38, @228, @2, @7, @169];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTeamKitMessage = [self StringFromVerticalData:value];
    }
    return mTeamKitMessage;
}

//: setting_privacy
- (NSString *)kBarTagId {
    /* static */ NSString *kBarTagId = nil;
    if (!kBarTagId) {
		NSArray<NSNumber *> *origin = @[@15, @86, @10, @110, @222, @108, @38, @169, @225, @129, @29, @15, @30, @30, @19, @24, @17, @9, @26, @28, @19, @32, @11, @13, @35, @110];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kBarTagId = [self StringFromVerticalData:value];
    }
    return kBarTagId;
}

//: activity_register_account_has_account
- (NSString *)notiBarText {
    /* static */ NSString *notiBarText = nil;
    if (!notiBarText) {
		NSArray<NSNumber *> *origin = @[@37, @82, @4, @119, @15, @17, @34, @23, @36, @23, @34, @39, @13, @32, @19, @21, @23, @33, @34, @19, @32, @13, @15, @17, @17, @29, @35, @28, @34, @13, @22, @15, @33, @13, @15, @17, @17, @29, @35, @28, @34, @168];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBarText = [self StringFromVerticalData:value];
    }
    return notiBarText;
}

//: zh-Hant
- (NSString *)userByFormat {
    /* static */ NSString *userByFormat = nil;
    if (!userByFormat) {
		NSArray<NSNumber *> *origin = @[@7, @79, @10, @40, @109, @69, @147, @235, @223, @155, @43, @25, @222, @249, @18, @31, @37, @88];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userByFormat = [self StringFromVerticalData:value];
    }
    return userByFormat;
}

//: #333333
- (NSString *)main_valueImageMessage {
    /* static */ NSString *main_valueImageMessage = nil;
    if (!main_valueImageMessage) {
		NSArray<NSNumber *> *origin = @[@7, @64, @6, @175, @204, @50, @227, @243, @243, @243, @243, @243, @243, @66];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_valueImageMessage = [self StringFromVerticalData:value];
    }
    return main_valueImageMessage;
}

//: nickname_tip
- (NSString *)dreamBackUserShowFormat {
    /* static */ NSString *dreamBackUserShowFormat = nil;
    if (!dreamBackUserShowFormat) {
		NSArray<NSNumber *> *origin = @[@12, @79, @7, @197, @165, @101, @67, @31, @26, @20, @28, @31, @18, @30, @22, @16, @37, @26, @33, @90];
		NSData *data = [VerticalData VerticalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamBackUserShowFormat = [self StringFromVerticalData:value];
    }
    return dreamBackUserShowFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OutputViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "OutputViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "NTESRegistConfigManager.h"
#import "LengthOff.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"

//: @interface RegisterInfoViewController ()
@interface OutputViewController ()

//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;

//: @property (nonatomic, strong) NSString *avaterUrl;
@property (nonatomic, strong) NSString *avaterUrl;

//: @end
@end

//: @implementation RegisterInfoViewController
@implementation OutputViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[VerticalData sharedInstance] noti_enableFormat]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initPress];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)initUI
- (void)initPress
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice bearDown]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[[VerticalData sharedInstance] kOperationButtonData]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [MatronymicPath colorStreetwise:[[VerticalData sharedInstance] userGlobalValue]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor recordView:[[VerticalData sharedInstance] dream_keyMessage]];
    //: labtitle.font = [UIFont systemFontOfSize:14];
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.image = [UIImage imageNamed:[[VerticalData sharedInstance] app_startFormat]];
    //: self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.cornerRadius = 70;
    //: self.aratarImgView.layer.masksToBounds = YES;
    self.aratarImgView.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.aratarImgView];
    [avaterView addSubview:self.aratarImgView];
    //: self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    //: self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.cornerRadius = 24;
    //: self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.layer.masksToBounds = YES;
    //: self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    //: [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto setImage:[UIImage imageNamed:[[VerticalData sharedInstance] show_kitUrl]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(holderPress) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor recordView:[[VerticalData sharedInstance] main_onUrl]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[[VerticalData sharedInstance] main_normalStr]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor recordView:[[VerticalData sharedInstance] main_valueImageMessage]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] dreamBackUserShowFormat]] attributes:@{NSForegroundColorAttributeName:[UIColor recordView:[[VerticalData sharedInstance] app_releaseFormat]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] m_backgroundMsg]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(noRed) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    _loginButton.backgroundColor = [UIColor recordView:[[VerticalData sharedInstance] user_touchTitle]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice bearDown]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    _registerButton.backgroundColor = [UIColor recordView:[[VerticalData sharedInstance] user_touchTitle]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor recordView:[[VerticalData sharedInstance] k_singleStr]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[FFFLanguageManager getTextWithKey:@"activity_register_account_has_account"],[FFFLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] notiBarText]],[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] dream_viewMsg]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(fileGotologin) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}


//: - (void)requestAuthorizationForVideo {
- (void)videoPress {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [self pushTZImagePickerControllerWithAsset:nil];
                        [self enable:nil];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [self pushTZImagePickerControllerWithAsset:nil];
            [self enable:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] showEndContent]] message:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] kStartTitle]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] userMessageSizeUrl]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] k_commentTextPath]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)anTool
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self pushTZImagePickerControllerWithAsset:nil];
                    [self enable:nil];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self enable:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] showEndContent]] message:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] kBarTagId]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] userMessageSizeUrl]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] k_commentTextPath]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}







//: - (void)showPicker {
- (void)holderPress {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] mainMessageName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self anTool];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] userMessageSizeUrl]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


//    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)enable:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

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
    //: NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger widthHeight = self.view.width - 2 * left;
    //: NSInteger top = (self.view.height - widthHeight) / 2;
    NSInteger top = (self.view.height - widthHeight) / 2;
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
        preferredlang = [[VerticalData sharedInstance] mTeamKitMessage];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[VerticalData sharedInstance] mContentText]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [[VerticalData sharedInstance] app_containerStr];
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
    }else if ([langType containsString:[[VerticalData sharedInstance] noti_touchSearchUserStr]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [[VerticalData sharedInstance] userByFormat];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];

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
//            [self uploadImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)imageGroup:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image everyBubble:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [BottomObjectHelper factoid:[[VerticalData sharedInstance] userBeginData]];
    //: NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[BottomObjectHelper year] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error && wself) {
            if (!error && wself) {
                //: NSLog(@"urlString：%@",urlString);
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] app_commentName]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] main_viewOfMessageValue]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}


//: - (void)gotologin
- (void)fileGotologin
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}
//: - (void)nextButtonClick
- (void)noRed
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] k_titleName]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] show_normalPath]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    LengthOff *manager = [LengthOff lipogramManager];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD should:[MatronymicPath colorStreetwise:[[VerticalData sharedInstance] mShouldMsg]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[[VerticalData sharedInstance] m_valueName]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [LengthOff pin:self.navigationController];
}

//: @end
@end