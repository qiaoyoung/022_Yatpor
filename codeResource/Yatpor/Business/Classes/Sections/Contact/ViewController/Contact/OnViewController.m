
#import <Foundation/Foundation.h>

typedef struct {
    Byte date;
    Byte *ofTagWith;
    unsigned int cocktailLounge;
	int show;
	int eraseBy;
	int infoBackgroundName;
} StructUpData;

@interface UpData : NSObject

@end

@implementation UpData

+ (NSData *)UpDataToData:(NSString *)value {
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

+ (Byte *)UpDataToByte:(StructUpData *)data {
    for (int i = 0; i < data->cocktailLounge; i++) {
        data->ofTagWith[i] ^= data->date;
    }
    data->ofTagWith[data->cocktailLounge] = 0;
	if (data->cocktailLounge >= 3) {
		data->show = data->ofTagWith[0];
		data->eraseBy = data->ofTagWith[1];
		data->infoBackgroundName = data->ofTagWith[2];
	}
    return data->ofTagWith;
}

+ (NSString *)StringFromUpData:(StructUpData *)data {
    return [NSString stringWithUTF8String:(char *)[self UpDataToByte:data]];
}

//: account
+ (NSString *)userBackBeginMsg {
    /* static */ NSString *userBackBeginMsg = nil;
    if (!userBackBeginMsg) {
		NSString *origin = @"787a7a766c776d89";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){25, (Byte *)data.bytes, 7, 31, 53, 224};
        userBackBeginMsg = [self StringFromUpData:&value];
    }
    return userBackBeginMsg;
}

//: add_friend_activity_add_friend
+ (NSString *)noti_containerStateIdent {
    /* static */ NSString *noti_containerStateIdent = nil;
    if (!noti_containerStateIdent) {
		NSString *origin = @"f0f5f5cef7e3f8f4Content5cef0f2e5f8e7f8e5e8cef0f5f5cef7e3f8f4Content54f";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){145, (Byte *)data.bytes, 30, 185, 163, 21};
        noti_containerStateIdent = [self StringFromUpData:&value];
    }
    return noti_containerStateIdent;
}

//: my_qr
+ (NSString *)noti_shareSearchUrl {
    /* static */ NSString *noti_shareSearchUrl = nil;
    if (!noti_shareSearchUrl) {
		NSString *origin = @"4054725c5f01";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){45, (Byte *)data.bytes, 5, 135, 103, 97};
        noti_shareSearchUrl = [self StringFromUpData:&value];
    }
    return noti_shareSearchUrl;
}

//: back_arrow_bl
+ (NSString *)kSearchedMsg {
    /* static */ NSString *kSearchedMsg = nil;
    if (!kSearchedMsg) {
		NSString *origin = @"a7a4a6ae9aa4b7b7aab29aa7a928";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){197, (Byte *)data.bytes, 13, 252, 199, 211};
        kSearchedMsg = [self StringFromUpData:&value];
    }
    return kSearchedMsg;
}

//: data
+ (NSString *)appDateText {
    /* static */ NSString *appDateText = nil;
    if (!appDateText) {
		NSString *origin = @"faffeaff8d";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){158, (Byte *)data.bytes, 4, 248, 197, 98};
        appDateText = [self StringFromUpData:&value];
    }
    return appDateText;
}

//: hot_guys
+ (NSString *)noti_shouldRedContentData {
    /* static */ NSString *noti_shouldRedContentData = nil;
    if (!noti_shouldRedContentData) {
		NSString *origin = @"02051e350d1f131983";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){106, (Byte *)data.bytes, 8, 104, 139, 10};
        noti_shouldRedContentData = [self StringFromUpData:&value];
    }
    return noti_shouldRedContentData;
}

//: request_successful
+ (NSString *)k_beginId {
    /* static */ NSString *k_beginId = nil;
    if (!k_beginId) {
		NSString *origin = @"5e495d59495f58735f594f4f495f5f4a59403e";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){44, (Byte *)data.bytes, 18, 254, 176, 112};
        k_beginId = [self StringFromUpData:&value];
    }
    return k_beginId;
}

//: tuid
+ (NSString *)mRangeTitleName {
    /* static */ NSString *mRangeTitleName = nil;
    if (!mRangeTitleName) {
		NSString *origin = @"656478756f";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){17, (Byte *)data.bytes, 4, 150, 44, 8};
        mRangeTitleName = [self StringFromUpData:&value];
    }
    return mRangeTitleName;
}

//: uid
+ (NSString *)user_lineFormat {
    /* static */ NSString *user_lineFormat = nil;
    if (!user_lineFormat) {
		NSString *origin = @"fce0ed7f";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){137, (Byte *)data.bytes, 3, 113, 112, 24};
        user_lineFormat = [self StringFromUpData:&value];
    }
    return user_lineFormat;
}

//: #2C3042
+ (NSString *)dreamShowDotTitle {
    /* static */ NSString *dreamShowDotTitle = nil;
    if (!dreamShowDotTitle) {
		NSString *origin = @"8899e8989b9f993d";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){171, (Byte *)data.bytes, 7, 12, 208, 153};
        dreamShowDotTitle = [self StringFromUpData:&value];
    }
    return dreamShowDotTitle;
}

//: #333333
+ (NSString *)notiTingFormat {
    /* static */ NSString *notiTingFormat = nil;
    if (!notiTingFormat) {
		NSString *origin = @"7d6d6d6d6d6d6d4c";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){94, (Byte *)data.bytes, 7, 170, 188, 35};
        notiTingFormat = [self StringFromUpData:&value];
    }
    return notiTingFormat;
}

//: add_friend_add_fail
+ (NSString *)dream_contentUserKey {
    /* static */ NSString *dream_contentUserKey = nil;
    if (!dream_contentUserKey) {
		NSString *origin = @"797c7c477e6a717d767c47797c7c477e7971746d";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){24, (Byte *)data.bytes, 19, 30, 176, 147};
        dream_contentUserKey = [self StringFromUpData:&value];
    }
    return dream_contentUserKey;
}

//: ic_scan
+ (NSString *)mBlueRemoveValueId {
    /* static */ NSString *mBlueRemoveValueId = nil;
    if (!mBlueRemoveValueId) {
		NSString *origin = @"f0fac6eafaf8f7e8";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){153, (Byte *)data.bytes, 7, 210, 12, 32};
        mBlueRemoveValueId = [self StringFromUpData:&value];
    }
    return mBlueRemoveValueId;
}

//: /user/checkAddFriendEx
+ (NSString *)m_closeData {
    /* static */ NSString *m_closeData = nil;
    if (!m_closeData) {
		NSString *origin = @"b5efe9ffe8b5f9f2Content9f1dbfefedce8f3Content4fedfe2a4";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){154, (Byte *)data.bytes, 22, 245, 10, 236};
        m_closeData = [self StringFromUpData:&value];
    }
    return m_closeData;
}

//: group_info_activity_number_no
+ (NSString *)main_coverData {
    /* static */ NSString *main_coverData = nil;
    if (!main_coverData) {
		NSString *origin = @"8d98859f9ab583848c85b58b899e839c839e93b5849f87888f98b58485f7";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){234, (Byte *)data.bytes, 29, 195, 163, 141};
        main_coverData = [self StringFromUpData:&value];
    }
    return main_coverData;
}

//: /user/search
+ (NSString *)dream_resourceKey {
    /* static */ NSString *dream_resourceKey = nil;
    if (!dream_resourceKey) {
		NSString *origin = @"cd97918790cd91878390818af4";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){226, (Byte *)data.bytes, 12, 239, 154, 168};
        dream_resourceKey = [self StringFromUpData:&value];
    }
    return dream_resourceKey;
}

//: #EEEEEE
+ (NSString *)m_accountKeyLineStr {
    /* static */ NSString *m_accountKeyLineStr = nil;
    if (!m_accountKeyLineStr) {
		NSString *origin = @"92f4f4f4f4f4f4e9";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){177, (Byte *)data.bytes, 7, 101, 134, 216};
        m_accountKeyLineStr = [self StringFromUpData:&value];
    }
    return m_accountKeyLineStr;
}

//: fuid
+ (NSString *)showResourceData {
    /* static */ NSString *showResourceData = nil;
    if (!showResourceData) {
		NSString *origin = @"d5c6dad757";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){179, (Byte *)data.bytes, 4, 204, 229, 17};
        showResourceData = [self StringFromUpData:&value];
    }
    return showResourceData;
}

//: /user/recommend
+ (NSString *)userMessageTitleUrl {
    /* static */ NSString *userMessageTitleUrl = nil;
    if (!userMessageTitleUrl) {
		NSString *origin = @"0e545244530e5344424e4c4c444f4592";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){33, (Byte *)data.bytes, 15, 49, 252, 176};
        userMessageTitleUrl = [self StringFromUpData:&value];
    }
    return userMessageTitleUrl;
}

//: icon_search_w
+ (NSString *)app_windowStr {
    /* static */ NSString *app_windowStr = nil;
    if (!app_windowStr) {
		NSString *origin = @"48424e4f7e5244405342497e5615";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){33, (Byte *)data.bytes, 13, 167, 223, 113};
        app_windowStr = [self StringFromUpData:&value];
    }
    return app_windowStr;
}

//: please_contact_your_administrator
+ (NSString *)dreamTouchUrl {
    /* static */ NSString *dreamTouchUrl = nil;
    if (!dreamTouchUrl) {
		NSString *origin = @"5e424b4f5d4b714d41405a4f4d5a7157415b5c714f4a434740475d5a5c4f5a415ccf";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){46, (Byte *)data.bytes, 33, 110, 43, 1};
        dreamTouchUrl = [self StringFromUpData:&value];
    }
    return dreamTouchUrl;
}

//: add_friend_activity_input_account
+ (NSString *)mCoverName {
    /* static */ NSString *mCoverName = nil;
    if (!mCoverName) {
		NSString *origin = @"2025251e273328242f251e20223528372835381e282f3134351e2022222e342f354a";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){65, (Byte *)data.bytes, 33, 124, 157, 20};
        mCoverName = [self StringFromUpData:&value];
    }
    return mCoverName;
}

//: #F7BA00
+ (NSString *)k_remoteValue {
    /* static */ NSString *k_remoteValue = nil;
    if (!k_remoteValue) {
		NSString *origin = @"d3b6c7b2b1c0c054";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){240, (Byte *)data.bytes, 7, 144, 215, 101};
        k_remoteValue = [self StringFromUpData:&value];
    }
    return k_remoteValue;
}

//: #FAF8FD
+ (NSString *)m_backgroundName {
    /* static */ NSString *m_backgroundName = nil;
    if (!m_backgroundName) {
		NSString *origin = @"345156512f5153b3";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){23, (Byte *)data.bytes, 7, 1, 178, 148};
        m_backgroundName = [self StringFromUpData:&value];
    }
    return m_backgroundName;
}

//: contact_tag_fragment_add_success
+ (NSString *)show_countValue {
    /* static */ NSString *show_countValue = nil;
    if (!show_countValue) {
		NSString *origin = @"525e5f455052456e4550566e574350565c545f456e5055556e4244525254424248";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){49, (Byte *)data.bytes, 32, 32, 215, 116};
        show_countValue = [self StringFromUpData:&value];
    }
    return show_countValue;
}

//: msg
+ (NSString *)user_touchId {
    /* static */ NSString *user_touchId = nil;
    if (!user_touchId) {
		NSString *origin = @"0e100459";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){99, (Byte *)data.bytes, 3, 20, 81, 81};
        user_touchId = [self StringFromUpData:&value];
    }
    return user_touchId;
}

//: add_friend_request_fail
+ (NSString *)m_commentText {
    /* static */ NSString *m_commentText = nil;
    if (!m_commentText) {
		NSString *origin = @"f8fdfdc6ffebf0fcf7fdc6ebfce8ecfceaedc6Content8f0f59f";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){153, (Byte *)data.bytes, 23, 89, 13, 79};
        m_commentText = [self StringFromUpData:&value];
    }
    return m_commentText;
}

//: code
+ (NSString *)showImageContentId {
    /* static */ NSString *showImageContentId = nil;
    if (!showImageContentId) {
		NSString *origin = @"1e1219185e";
		NSData *data = [UpData UpDataToData:origin];
        StructUpData value = (StructUpData){125, (Byte *)data.bytes, 4, 214, 42, 156};
        showImageContentId = [self StringFromUpData:&value];
    }
    return showImageContentId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendViewController.h"
#import "OnViewController.h"
//: #import "NTESContactAddFriendCell.h"
#import "BrushViewCell.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "LifeStyleViewController.h"
//: #import "SNDevice.h"
#import "NonsolidColourTip.h"
//: #import "CCCLoginManager.h"
#import "AdministratorSend.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "LCQRCodeUtil.h"
#import "IconToMessage.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "CCCContactScanViewController.h"
#import "DisturbingViewController.h"
//: #import "ZMONMyQRcodeView.h"
#import "SizeBeggarMyNeighborStrategyView.h"
//: #import "ZMONFriendCardViewController.h"
#import "ScaleViewController.h"
//: #import "RecommendfriendTableViewCell.h"
#import "VoiceViewCell.h"

//: @interface NTESContactAddFriendViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,RecommendfriendCellDelegate>
@interface OnViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,IconBar>

//: @property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UITextField *textField;
//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic ,strong) UIImageView *qrImgview;
@property (nonatomic ,strong) UIImageView *qrImgview;
//: @property (nonatomic ,strong) UILabel *tipsLabel;
@property (nonatomic ,strong) UILabel *tipsLabel;

//: @property (nonatomic ,strong) ZMONMyQRcodeView *MyQRcodeView;
@property (nonatomic ,strong) SizeBeggarMyNeighborStrategyView *MyQRcodeView;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,copy) NSArray *friendList;
@property (nonatomic,copy) NSArray *friendList;

//: @end
@end

//: @implementation NTESContactAddFriendViewController
@implementation OnViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice bearDown], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(imageShow:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[UpData kSearchedMsg]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

    //: UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice bearDown], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: labNavtitle.textColor = [UIColor blackColor];
    labNavtitle.textColor = [UIColor blackColor];
    //: labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labNavtitle.text = [ContentLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    labNavtitle.text = [MatronymicPath colorStreetwise:[UpData noti_containerStateIdent]];
    //: labNavtitle.textAlignment = NSTextAlignmentCenter;
    labNavtitle.textAlignment = NSTextAlignmentCenter;
    //: [navview addSubview:labNavtitle];
    [navview addSubview:labNavtitle];

    //: UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice vg_statusBarHeight], 40, 40);
    myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice bearDown], 40, 40);
    //: [myQrBtn addTarget:self action:@selector(QRCodeButtnClick) forControlEvents:UIControlEventTouchUpInside];
    [myQrBtn addTarget:self action:@selector(bumpShow) forControlEvents:UIControlEventTouchUpInside];
    //: [myQrBtn setImage:[UIImage imageNamed:@"my_qr"] forState:UIControlStateNormal];
    [myQrBtn setImage:[UIImage imageNamed:[UpData noti_shareSearchUrl]] forState:UIControlStateNormal];
    //: [navview addSubview:myQrBtn];
    [navview addSubview:myQrBtn];


    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 80)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 80)];
    //: topview.backgroundColor = [UIColor whiteColor];
    topview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];


    //: UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: searchView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    searchView.backgroundColor = [UIColor recordView:[UpData m_backgroundName]];
    //: searchView.layer.cornerRadius = 28;
    searchView.layer.cornerRadius = 28;
    //: [topview addSubview:searchView];
    [topview addSubview:searchView];

    //: UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [btnScan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    [btnScan addTarget:self action:@selector(extraValue) forControlEvents:UIControlEventTouchUpInside];
    //: btnScan.frame = CGRectMake(15, 8, 40, 40);
    btnScan.frame = CGRectMake(15, 8, 40, 40);
    //: [btnScan setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [btnScan setImage:[UIImage imageNamed:[UpData mBlueRemoveValueId]] forState:UIControlStateNormal];
    //: [searchView addSubview:btnScan];
    [searchView addSubview:btnScan];


    //: [searchView addSubview:self.textField];
    [searchView addSubview:self.textField];
    //: self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);
    self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);


    //: UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    //: btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    //: [btnSearch setImage:[UIImage imageNamed:@"icon_search_w"] forState:UIControlStateNormal];
    [btnSearch setImage:[UIImage imageNamed:[UpData app_windowStr]] forState:UIControlStateNormal];
    //: [btnSearch addTarget:self action:@selector(doneSearch) forControlEvents:UIControlEventTouchUpInside];
    [btnSearch addTarget:self action:@selector(inputCheck) forControlEvents:UIControlEventTouchUpInside];
    //: btnSearch.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    btnSearch.backgroundColor = [UIColor recordView:[UpData k_remoteValue]];
    //: btnSearch.layer.cornerRadius = 20;
    btnSearch.layer.cornerRadius = 20;
    //: [searchView addSubview:btnSearch];
    [searchView addSubview:btnSearch];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor recordView:[UpData m_accountKeyLineStr]];
    //: [topview addSubview:lineview];
    [topview addSubview:lineview];

    //: UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    //: labRecommended.font = [UIFont systemFontOfSize:14.f];
    labRecommended.font = [UIFont systemFontOfSize:14.f];
    //: labRecommended.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labRecommended.textColor = [UIColor recordView:[UpData dreamShowDotTitle]];
    //: labRecommended.text = [ContentLanguageManager getTextWithKey:@"hot_guys"];
    labRecommended.text = [MatronymicPath colorStreetwise:[UpData noti_shouldRedContentData]];
    //: [self.view addSubview:labRecommended];
    [self.view addSubview:labRecommended];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-110) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-110) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: [self.tableView registerClass:[RecommendfriendTableViewCell class] forCellReuseIdentifier:@"RecommendfriendTableViewCell"];
    [self.tableView registerClass:[VoiceViewCell class] forCellReuseIdentifier:@"VoiceViewCell"];

    //: [self getNetServer];
    [self progressServer];
}

//: - (void)gotoBack:(id)sender {
- (void)imageShow:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)QRCodeButtnClick
- (void)bumpShow
{
//    [self.view addSubview:self.MyQRcodeView];
//    [self.MyQRcodeView animationShow];

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc]init];
    LifeStyleViewController *vc = [[LifeStyleViewController alloc]init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)getNetServer{
- (void)progressServer{

//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/recommend"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[UpData userMessageTitleUrl]] table:nil carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"%@",resultDict);
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[UpData showImageContentId]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: self.friendList = [resultDict valueObjectForKey:@"data"];
            self.friendList = [resultDict arrayMust:[UpData appDateText]];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)extraValue{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    DisturbingViewController *vc = [[DisturbingViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doneSearch{
- (void)inputCheck{
    //: [self goSearch:_textField];
    [self nameKit:_textField];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [self goSearch:textField];
    [self nameKit:textField];
    //: return YES;
    return YES;
}

//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //: return YES;
    return YES;
}

//: -(void)goSearch:(UITextField *)textField{
-(void)nameKit:(UITextField *)textField{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
    //: NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if (userId.length) {
    if (userId.length) {
        //: userId = [userId lowercaseString];
        userId = [userId lowercaseString];
        //: [self addFriend:userId];
        [self color:userId];
    }
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.friendList.count;
    return self.friendList.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 12.f;
    return 12.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return .1f;
    return .1f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: RecommendfriendTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RecommendfriendTableViewCell" forIndexPath:indexPath];
    VoiceViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"VoiceViewCell" forIndexPath:indexPath];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
//    NSString *uId = [dic newStringValueForKey:@"id"];

    //: [cell refreshWithModel:dic];
    [cell aboveCan:dic];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
    //: NSString *uId = [dic newStringValueForKey:@"id"];
    NSString *uId = [dic to:@"id"];

//    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:uId];
//    if (isMyFriend) {
        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        BarViewController *vc = [[BarViewController alloc] initWithScale:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        ScaleViewController *vc = [[ScaleViewController alloc] initWithUserId:uId];
//        [self.navigationController pushViewController:vc animated:YES];
//    }

}

//: - (void)didTouchAdddButton:(NSString *)memberId
- (void)lengthButton:(NSString *)memberId
{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [NameDefaults argument].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = memberId;
    request.userId = memberId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [ContentLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [MatronymicPath colorStreetwise:[UpData show_countValue]];//@"添加成功".
    //: NSString *request_successful = [ContentLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [MatronymicPath colorStreetwise:[UpData k_beginId]];//@"请求成功".
    //: NSString *add_friend_add_fail = [ContentLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [MatronymicPath colorStreetwise:[UpData dream_contentUserKey]];//@"添加失败".
    //: NSString *add_friend_request_fail = [ContentLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [MatronymicPath colorStreetwise:[UpData m_commentText]];//@"请求失败".
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}


//: - (UITextField *)textField{
- (UITextField *)textField{
    //: if(!_textField){
    if(!_textField){
        //: _textField = [[UITextField alloc]init];
        _textField = [[UITextField alloc]init];
        //: _textField.placeholder = [ContentLanguageManager getTextWithKey:@"add_friend_activity_input_account"];
        _textField.placeholder = [MatronymicPath colorStreetwise:[UpData mCoverName]];
        //: _textField.textColor = [UIColor colorWithHexString:@"#333333"];
        _textField.textColor = [UIColor recordView:[UpData notiTingFormat]];
        //: _textField.font = [UIFont systemFontOfSize:14];
        _textField.font = [UIFont systemFontOfSize:14];
        //: _textField.delegate = self;
        _textField.delegate = self;
        //: _textField.returnKeyType = UIReturnKeyDone;
        _textField.returnKeyType = UIReturnKeyDone;
    }
    //: return _textField;
    return _textField;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addFriend:(NSString *)userId
- (void)color:(NSString *)userId
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[UpData userBackBeginMsg]];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[UpData dream_resourceKey]] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[UpData showImageContentId]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:[UpData user_touchId]];

        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[UpData appDateText]];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data to:[UpData user_lineFormat]];
            //: [wself sendAddrequest:uid];
            [wself send:uid];

        //: }else {
        }else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD should:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: -(void)sendAddrequest:(NSString *)uid{
-(void)send:(NSString *)uid{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (users.count) {
        if (users.count) {
            //: [self checkIsAdmin:uid];
            [self off:uid];
        //: }else{
        }else{
            //: if (wself) {
            if (wself) {
                //: [wself.view makeToast:[ContentLanguageManager getTextWithKey:@"group_info_activity_number_no"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[UpData main_coverData]] duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}

//: -(void)checkIsAdmin:(NSString *)userId{
-(void)off:(NSString *)userId{

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fuid"] = [[NIMSDK sharedSDK].loginManager currentAccount];
    dict[[UpData showResourceData]] = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: dict[@"tuid"] = userId;
    dict[[UpData mRangeTitleName]] = userId;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkAddFriendEx"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[UpData m_closeData]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[UpData showImageContentId]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //跳转详情

            //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            //: if (isMyFriend) {
            if (isMyFriend) {
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
                BarViewController *vc = [[BarViewController alloc] initWithScale:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            //: }else{
            }else{
                //: ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:userId];
                ScaleViewController *vc = [[ScaleViewController alloc] initWithHandle:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            }


        //: }else{
        }else{
            //: [wself.view makeToast:[ContentLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
            [wself.view makeToast:[MatronymicPath colorStreetwise:[UpData dreamTouchUrl]] duration:2.0 position:CSToastPositionCenter];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: [wself.view makeToast:[ContentLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
        [wself.view makeToast:[MatronymicPath colorStreetwise:[UpData dreamTouchUrl]] duration:2.0 position:CSToastPositionCenter];
    //: }];
    }];
}

//: - (ZMONMyQRcodeView *)MyQRcodeView
- (SizeBeggarMyNeighborStrategyView *)MyQRcodeView
{
    //: if(!_MyQRcodeView){
    if(!_MyQRcodeView){
        //: _MyQRcodeView = [[ZMONMyQRcodeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _MyQRcodeView = [[SizeBeggarMyNeighborStrategyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _MyQRcodeView;
    return _MyQRcodeView;
}

//: @end
@end
