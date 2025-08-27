
#import <Foundation/Foundation.h>

@interface KitData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation KitData

+ (instancetype)sharedInstance {
    static KitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)KitDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)KitDataToCache:(Byte *)data {
    int rescueOperation = data[0];
    Byte touchAccount = data[1];
    int upRed = data[2];
    for (int i = upRed; i < upRed + rescueOperation; i++) {
        int value = data[i] + touchAccount;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[upRed + rescueOperation] = 0;
    return data + upRed;
}

- (NSString *)StringFromKitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self KitDataToCache:data]];
}

//: back_arrow_b
- (NSString *)dreamDoingFormat {
    /* static */ NSString *dreamDoingFormat = nil;
    if (!dreamDoingFormat) {
		NSArray<NSNumber *> *origin = @[@12, @56, @8, @82, @85, @217, @154, @141, @42, @41, @43, @51, @39, @41, @58, @58, @55, @63, @39, @42, @183];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDoingFormat = [self StringFromKitData:value];
    }
    return dreamDoingFormat;
}

//: icon_checkbox_selected
- (NSString *)k_frameData {
    /* static */ NSString *k_frameData = nil;
    if (!k_frameData) {
		NSArray<NSNumber *> *origin = @[@22, @68, @11, @61, @22, @138, @18, @232, @22, @211, @224, @37, @31, @43, @42, @27, @31, @36, @33, @31, @39, @30, @43, @52, @27, @47, @33, @40, @33, @31, @48, @33, @32, @172];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_frameData = [self StringFromKitData:value];
    }
    return k_frameData;
}

//: common_bg
- (NSString *)user_tingMsg {
    /* static */ NSString *user_tingMsg = nil;
    if (!user_tingMsg) {
		NSArray<NSNumber *> *origin = @[@9, @62, @8, @80, @224, @79, @121, @239, @37, @49, @47, @47, @49, @48, @33, @36, @41, @68];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_tingMsg = [self StringFromKitData:value];
    }
    return user_tingMsg;
}

//: %lu/400
- (NSString *)noti_userViewData {
    /* static */ NSString *noti_userViewData = nil;
    if (!noti_userViewData) {
		NSArray<NSNumber *> *origin = @[@7, @88, @5, @181, @230, @205, @20, @29, @215, @220, @216, @216, @189];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_userViewData = [self StringFromKitData:value];
    }
    return noti_userViewData;
}

//: report_activity_title
- (NSString *)mainOfContent {
    /* static */ NSString *mainOfContent = nil;
    if (!mainOfContent) {
		NSArray<NSNumber *> *origin = @[@21, @61, @6, @198, @44, @11, @53, @40, @51, @50, @53, @55, @34, @36, @38, @55, @44, @57, @44, @55, @60, @34, @55, @44, @55, @47, @40, @211];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainOfContent = [self StringFromKitData:value];
    }
    return mainOfContent;
}

//: msg
- (NSString *)mainStateDotIdent {
    /* static */ NSString *mainStateDotIdent = nil;
    if (!mainStateDotIdent) {
		NSArray<NSNumber *> *origin = @[@3, @29, @3, @80, @86, @74, @162];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainStateDotIdent = [self StringFromKitData:value];
    }
    return mainStateDotIdent;
}

//: group_info_activity_op_failed
- (NSString *)userResourceMessage {
    /* static */ NSString *userResourceMessage = nil;
    if (!userResourceMessage) {
		NSArray<NSNumber *> *origin = @[@29, @73, @6, @184, @179, @124, @30, @41, @38, @44, @39, @22, @32, @37, @29, @38, @22, @24, @26, @43, @32, @45, @32, @43, @48, @22, @38, @39, @22, @29, @24, @32, @35, @28, @27, @44];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userResourceMessage = [self StringFromKitData:value];
    }
    return userResourceMessage;
}

//: report_info
- (NSString *)main_contentRedId {
    /* static */ NSString *main_contentRedId = nil;
    if (!main_contentRedId) {
		NSArray<NSNumber *> *origin = @[@11, @92, @12, @212, @173, @28, @236, @28, @183, @33, @96, @91, @22, @9, @20, @19, @22, @24, @3, @13, @18, @10, @19, @135];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_contentRedId = [self StringFromKitData:value];
    }
    return main_contentRedId;
}

//: /other/feedback
- (NSString *)userLayerTingTextContent {
    /* static */ NSString *userLayerTingTextContent = nil;
    if (!userLayerTingTextContent) {
		NSArray<NSNumber *> *origin = @[@15, @90, @4, @42, @213, @21, @26, @14, @11, @24, @213, @12, @11, @11, @10, @8, @7, @9, @17, @84];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userLayerTingTextContent = [self StringFromKitData:value];
    }
    return userLayerTingTextContent;
}

//: #999999
- (NSString *)main_customPath {
    /* static */ NSString *main_customPath = nil;
    if (!main_customPath) {
		NSArray<NSNumber *> *origin = @[@7, @56, @12, @90, @198, @31, @247, @56, @15, @101, @229, @195, @235, @1, @1, @1, @1, @1, @1, @7];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_customPath = [self StringFromKitData:value];
    }
    return main_customPath;
}

//: AlbumAddBtn
- (NSString *)show_ofKey {
    /* static */ NSString *show_ofKey = nil;
    if (!show_ofKey) {
		NSArray<NSNumber *> *origin = @[@11, @71, @3, @250, @37, @27, @46, @38, @250, @29, @29, @251, @45, @39, @156];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_ofKey = [self StringFromKitData:value];
    }
    return show_ofKey;
}

//: contact
- (NSString *)mTouchName {
    /* static */ NSString *mTouchName = nil;
    if (!mTouchName) {
		NSArray<NSNumber *> *origin = @[@7, @65, @7, @222, @116, @222, @144, @34, @46, @45, @51, @32, @34, @51, @183];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTouchName = [self StringFromKitData:value];
    }
    return mTouchName;
}

//: public.image
- (NSString *)user_showDotTitle {
    /* static */ NSString *user_showDotTitle = nil;
    if (!user_showDotTitle) {
		NSArray<NSNumber *> *origin = @[@12, @86, @5, @255, @44, @26, @31, @12, @22, @19, @13, @216, @19, @23, @11, @17, @15, @221];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_showDotTitle = [self StringFromKitData:value];
    }
    return user_showDotTitle;
}

//: #612CF9
- (NSString *)user_titleKey {
    /* static */ NSString *user_titleKey = nil;
    if (!user_titleKey) {
		NSArray<NSNumber *> *origin = @[@7, @89, @6, @41, @207, @109, @202, @221, @216, @217, @234, @237, @224, @44];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_titleKey = [self StringFromKitData:value];
    }
    return user_titleKey;
}

//: code
- (NSString *)app_shouldValue {
    /* static */ NSString *app_shouldValue = nil;
    if (!app_shouldValue) {
		NSArray<NSNumber *> *origin = @[@4, @99, @3, @0, @12, @1, @2, @12];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_shouldValue = [self StringFromKitData:value];
    }
    return app_shouldValue;
}

//: #875FFA
- (NSString *)kFrameUrl {
    /* static */ NSString *kFrameUrl = nil;
    if (!kFrameUrl) {
		NSArray<NSNumber *> *origin = @[@7, @45, @9, @222, @63, @236, @45, @155, @217, @246, @11, @10, @8, @25, @25, @20, @145];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kFrameUrl = [self StringFromKitData:value];
    }
    return kFrameUrl;
}

//: image%lu
- (NSString *)mainMessageUrl {
    /* static */ NSString *mainMessageUrl = nil;
    if (!mainMessageUrl) {
		NSArray<NSNumber *> *origin = @[@8, @86, @5, @96, @231, @19, @23, @11, @17, @15, @207, @22, @31, @152];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMessageUrl = [self StringFromKitData:value];
    }
    return mainMessageUrl;
}

//: #A148FF
- (NSString *)showViewName {
    /* static */ NSString *showViewName = nil;
    if (!showViewName) {
		NSArray<NSNumber *> *origin = @[@7, @20, @11, @240, @136, @149, @159, @90, @52, @147, @127, @15, @45, @29, @32, @36, @50, @50, @146];
		NSData *data = [KitData KitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showViewName = [self StringFromKitData:value];
    }
    return showViewName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyWithViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpinionBackViewController.h"
#import "EmptyWithViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "TZTestCell.h"
#import "ReasonViewCell.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "LxGridViewFlowLayout.h"
#import "DateViewLayout.h"
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZGifPhotoPreviewController.h"
#import "TZGifPhotoPreviewController.h"
//: #import "TZAssetCell.h"
#import "TZAssetCell.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>
//: #import "FLAnimatedImage.h"
#import "FLAnimatedImage.h"

//: @interface NTESOpinionBackViewController () <UITextViewDelegate,TZImagePickerControllerDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@interface EmptyWithViewController () <UITextViewDelegate,TZImagePickerControllerDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    //: NSMutableArray *_selectedPhotos;
    NSMutableArray *_selectedPhotos;
    //: NSMutableArray *_selectedAssets;
    NSMutableArray *_selectedAssets;
    //: BOOL _isSelectOriginalPhoto;
    BOOL _isSelectOriginalPhoto;
    //: BOOL _isAllowEditVideo;
    BOOL _isAllowEditVideo;

    //: CGFloat _itemWH;
    CGFloat _itemWH;
    //: CGFloat _margin;
    CGFloat _margin;
}

//: @property (nonatomic ,strong) UITextView *textView;
@property (nonatomic ,strong) UITextView *textView;
//: @property (nonatomic ,strong) UIButton *backButton;
@property (nonatomic ,strong) UIButton *backButton;

//: @property (nonatomic, strong) UIImagePickerController *imagePickerVc;
@property (nonatomic, strong) UIImagePickerController *imagePickerVc;
//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;
//: @property (strong, nonatomic) LxGridViewFlowLayout *layout;
@property (strong, nonatomic) DateViewLayout *layout;

//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation NTESOpinionBackViewController
@implementation EmptyWithViewController

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
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[[KitData sharedInstance] user_tingMsg]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

//    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 375)];
//    bg.image = [UIImage imageNamed:@"chat_top_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[KitData sharedInstance] dreamDoingFormat]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"report_activity_title"];
    labtitle.text = [MatronymicPath colorStreetwise:[[KitData sharedInstance] mainOfContent]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice bearDown]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[[KitData sharedInstance] k_frameData]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(searchionWithClick) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];


//    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [backButton setImage:[UIImage imageNamed:@"btn_submit"] forState:(UIControlStateNormal)];
//    [backButton setFrame:CGRectMake(0, 7, 50, 20)];
//    [backButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    self.backButton = backButton;
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
//    backItem.tintColor = [UIColor whiteColor];
//
//    self.navigationItem.rightBarButtonItem = backItem;
//    self.navigationItem.rightBarButtonItem.enabled = NO;

    //: _textView = [[UITextView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 200)];
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-30, 200)];
    //: _textView.placeholder = [ContentLanguageManager getTextWithKey:@"report_info"];
    _textView.placeholder = [MatronymicPath colorStreetwise:[[KitData sharedInstance] main_contentRedId]];//@"请输入您的举报信息";
    //: _textView.backgroundColor = [UIColor whiteColor];
    _textView.backgroundColor = [UIColor whiteColor];
    //: _textView.delegate = self;
    _textView.delegate = self;
    //: _textView.layer.cornerRadius = 8;
    _textView.layer.cornerRadius = 8;
    //: _textView.layer.masksToBounds = YES;
    _textView.layer.masksToBounds = YES;
    //: _textView.textColor = [UIColor blackColor];
    _textView.textColor = [UIColor blackColor];
    //: _textView.font = [UIFont systemFontOfSize:15];
    _textView.font = [UIFont systemFontOfSize:15];
    //: _textView.textContainerInset = UIEdgeInsetsMake(15, 10, 15, 10);
    _textView.textContainerInset = UIEdgeInsetsMake(15, 10, 15, 10);
    //: [self.view addSubview:_textView];
    [self.view addSubview:_textView];

    //: [self.view addSubview:self.numLabel];
    [self.view addSubview:self.numLabel];
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/400",(unsigned long)_textView.text.length];
    self.numLabel.text = [NSString stringWithFormat:[[KitData sharedInstance] noti_userViewData],(unsigned long)_textView.text.length];
    //: self.numLabel.frame = CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+200+30, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.numLabel.frame = CGRectMake(15, (44.0f + [UIDevice bearDown])+200+30, [[UIScreen mainScreen] bounds].size.width-30, 20);

//    UITextView *textView = [[UITextView alloc] init];
//    textView.font = [UIFont systemFontOfSize:16];
//    textView.placeholder = LangKey(@"report_info");//@"请输入您的举报信息";
//    textView.backgroundColor = [UIColor whiteColor];
//    textView.layer.cornerRadius = 8.f;
//    textView.layer.masksToBounds = YES;
//    textView.textColor = [UIColor blackColor];
//    textView.delegate = self;
//    [self.view addSubview:textView];
//    _textView = textView;
//    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(20);
//        make.right.mas_offset(-20);
//        make.top.mas_offset(SCREEN_TOP_HEIGHT+20);
//        make.height.mas_equalTo(200);
//    }];
//
//    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 256)];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.cornerRadius = 8;
//    [self.view addSubview:contentView];
//    
//    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, SCREEN_WIDTH-60, 226)];
//    self.contentTextView.textColor = [UIColor blackColor];
//    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
//    self.contentTextView.delegate = self;
//    self.contentTextView.placeholder = LangKey(@"Please_enter_content");
//    self.contentTextView.text = self.defaultContent;
//    [contentView addSubview:self.contentTextView];
//
//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",(unsigned long)textView.text.length];
//    self.numLabel.frame = CGRectMake(15, textView.bottom+10, SCREEN_WIDTH-30, 20);


    //: _selectedPhotos = [NSMutableArray array];
    _selectedPhotos = [NSMutableArray array];
    //: _selectedAssets = [NSMutableArray array];
    _selectedAssets = [NSMutableArray array];
    //: [self configCollectionView];
    [self pin];
}

//: - (void)textViewDidChange:(UITextView *)textView; {
- (void)textViewDidChange:(UITextView *)textView; {
//    if (textView.text.length > 10) {
//        self.navigationItem.rightBarButtonItem.enabled = YES;
//    } else {
//        self.navigationItem.rightBarButtonItem.enabled = NO;
//    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
    self.numLabel.text = [NSString stringWithFormat:[[KitData sharedInstance] noti_userViewData],textView.text.length];
}


//: -(void)rightNavButtonClick{
-(void)searchionWithClick{

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"contact"] = _textView.text;
    dict[[[KitData sharedInstance] mTouchName]] = _textView.text;

    //: NSMutableArray *array = @[].mutableCopy;
    NSMutableArray *array = @[].mutableCopy;
    //: NSMutableArray *nameArray = @[].mutableCopy;
    NSMutableArray *nameArray = @[].mutableCopy;

    //: if (_selectedPhotos.count > 0) {
    if (_selectedPhotos.count > 0) {
        //: [_selectedPhotos enumerateObjectsUsingBlock:^(UIImage *image , NSUInteger idx, BOOL * _Nonnull stop) {
        [_selectedPhotos enumerateObjectsUsingBlock:^(UIImage *image , NSUInteger idx, BOOL * _Nonnull stop) {
            //: [array addObject:UIImageJPEGRepresentation(image, 0.3)];
            [array addObject:UIImageJPEGRepresentation(image, 0.3)];
            //: [nameArray addObject:[NSString stringWithFormat:@"image%lu",(unsigned long)(idx+1)]];
            [nameArray addObject:[NSString stringWithFormat:[[KitData sharedInstance] mainMessageUrl],(unsigned long)(idx+1)]];
        //: }];
        }];
    }
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/other/feedback"] parameters:dict images:array imageNames:nameArray progress:^(NSProgress *progress) {
    [TroublingName searchSub:[NSString stringWithFormat:[[KitData sharedInstance] userLayerTingTextContent]] center:dict color:array happeningFailed:nameArray reply:^(NSProgress *progress) {

    //: } success:^(id responseObject) {
    } content:^(id responseObject) {

        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: NSLog(@"%@",responseObject);
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[KitData sharedInstance] app_shouldValue]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:[[KitData sharedInstance] mainStateDotIdent]];
        //: [SVProgressHUD showMessage:msg];
        [SVProgressHUD should:msg];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } heliogram:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: [SVProgressHUD showMessage:[ContentLanguageManager getTextWithKey:@"group_info_activity_op_failed"]];
        [SVProgressHUD should:[MatronymicPath colorStreetwise:[[KitData sharedInstance] userResourceMessage]]];
    //: }];
    }];

    //: return;
    return;

//    [TroublingName getWithUrl:Server_other_feedback params:dict isShow:YES success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        NSString *msg = [resultDict newStringValueForKey:@"msg"];
//        [SVProgressHUD showMessage:msg];
//        if (code.integerValue == 0) {
//            [self.navigationController popToRootViewControllerAnimated:YES];
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];

}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor recordView:[[KitData sharedInstance] main_customPath]];
    }
    //: return _numLabel;
    return _numLabel;
}

//: - (UIImagePickerController *)imagePickerVc {
- (UIImagePickerController *)imagePickerVc {
    //: if (_imagePickerVc == nil) {
    if (_imagePickerVc == nil) {
        //: _imagePickerVc = [[UIImagePickerController alloc] init];
        _imagePickerVc = [[UIImagePickerController alloc] init];
        //: _imagePickerVc.delegate = self;
        _imagePickerVc.delegate = self;
        // set appearance / 改变相册选择页的导航栏外观
        //: _imagePickerVc.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        _imagePickerVc.navigationBar.barTintColor = [UIColor colorWithPatternImage:[GradientHelper inheritSureSingular:[UIColor recordView:[[KitData sharedInstance] kFrameUrl]] front:[UIColor recordView:[[KitData sharedInstance] user_titleKey]] should:SNLinearGradientDirectionLevel]];
        //: _imagePickerVc.navigationBar.tintColor = [UIColor colorWithHexString:@"#A148FF"];
        _imagePickerVc.navigationBar.tintColor = [UIColor recordView:[[KitData sharedInstance] showViewName]];
    }
    //: return _imagePickerVc;
    return _imagePickerVc;
}

//: - (BOOL)prefersStatusBarHidden {
- (BOOL)prefersStatusBarHidden {
    //: return NO;
    return NO;
}

//: - (void)configCollectionView {
- (void)pin {
    // 如不需要长按排序效果，将LxGridViewFlowLayout类改成UICollectionViewFlowLayout即可
    //: _layout = [[LxGridViewFlowLayout alloc] init];
    _layout = [[DateViewLayout alloc] init];
    //: _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:_layout];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:_layout];
    //: CGFloat rgb = 244 / 255.0;
    CGFloat rgb = 244 / 255.0;
    //: _collectionView.alwaysBounceVertical = YES;
    _collectionView.alwaysBounceVertical = YES;
//    _collectionView.backgroundColor = [UIColor colorWithRed:rgb green:rgb blue:rgb alpha:1.0];
    //: _collectionView.backgroundColor = [UIColor clearColor];
    _collectionView.backgroundColor = [UIColor clearColor];
    //: _collectionView.contentInset = UIEdgeInsetsMake(15, 15, 15, 15);
    _collectionView.contentInset = UIEdgeInsetsMake(15, 15, 15, 15);
    //: _collectionView.dataSource = self;
    _collectionView.dataSource = self;
    //: _collectionView.delegate = self;
    _collectionView.delegate = self;
    //: _collectionView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    _collectionView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    //: [self.view addSubview:_collectionView];
    [self.view addSubview:_collectionView];
    //: [_collectionView registerClass:[TZTestCell class] forCellWithReuseIdentifier:@"TZTestCell"];
    [_collectionView registerClass:[ReasonViewCell class] forCellWithReuseIdentifier:@"ReasonViewCell"];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: _margin = 4;
    _margin = 4;
    //: _itemWH = (self.view.tz_width - 2 * _margin - 15*2) / 3 - _margin;
    _itemWH = (self.view.tz_width - 2 * _margin - 15*2) / 3 - _margin;
    //: _layout.itemSize = CGSizeMake(_itemWH, _itemWH);
    _layout.itemSize = CGSizeMake(_itemWH, _itemWH);
    //: _layout.minimumInteritemSpacing = _margin;
    _layout.minimumInteritemSpacing = _margin;
    //: _layout.minimumLineSpacing = _margin;
    _layout.minimumLineSpacing = _margin;
    //: [self.collectionView setCollectionViewLayout:_layout];
    [self.collectionView setCollectionViewLayout:_layout];
    //: self.collectionView.frame = CGRectMake(0, self.textView.y + self.textView.height, self.view.tz_width, self.view.tz_height - self.textView.height);
    self.collectionView.frame = CGRectMake(0, self.textView.sizeButton + self.textView.height, self.view.tz_width, self.view.tz_height - self.textView.height);
}


//: #pragma mark UICollectionView
#pragma mark UICollectionView

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: if (_selectedPhotos.count >= 5) {
    if (_selectedPhotos.count >= 5) {
        //: return _selectedPhotos.count;
        return _selectedPhotos.count;
    }

    //: return _selectedPhotos.count + 1;
    return _selectedPhotos.count + 1;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TZTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TZTestCell" forIndexPath:indexPath];
    ReasonViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ReasonViewCell" forIndexPath:indexPath];
    //: cell.videoImageView.hidden = YES;
    cell.videoImageView.hidden = YES;
    //: cell.layer.cornerRadius = 8;
    cell.layer.cornerRadius = 8;
    //: cell.layer.masksToBounds = YES;
    cell.layer.masksToBounds = YES;
    //: if (indexPath.item == _selectedPhotos.count) {
    if (indexPath.item == _selectedPhotos.count) {
        //: cell.imageView.image = [UIImage imageNamed:@"AlbumAddBtn"];
        cell.imageView.image = [UIImage imageNamed:[[KitData sharedInstance] show_ofKey]];
        //: cell.deleteBtn.hidden = YES;
        cell.deleteBtn.hidden = YES;
        //: cell.gifLable.hidden = YES;
        cell.gifLable.hidden = YES;
    //: } else {
    } else {
        //: cell.imageView.image = _selectedPhotos[indexPath.item];
        cell.imageView.image = _selectedPhotos[indexPath.item];
        //: if (!_isAllowEditVideo) {
        if (!_isAllowEditVideo) {
            //: cell.asset = _selectedAssets[indexPath.item];
            cell.asset = _selectedAssets[indexPath.item];
        }
        //: cell.deleteBtn.hidden = NO;
        cell.deleteBtn.hidden = NO;
    }

    //: cell.deleteBtn.tag = indexPath.item;
    cell.deleteBtn.tag = indexPath.item;
    //: [cell.deleteBtn addTarget:self action:@selector(deleteBtnClik:) forControlEvents:UIControlEventTouchUpInside];
    [cell.deleteBtn addTarget:self action:@selector(blockMenu:) forControlEvents:UIControlEventTouchUpInside];
    //: return cell;
    return cell;
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (indexPath.item == _selectedPhotos.count) {
    if (indexPath.item == _selectedPhotos.count) {
        //: [self pushTZImagePickerController];
        [self nobility];
    //: } else { 
    } else { // preview photos or video / 预览照片或者视频
        //: PHAsset *asset = _selectedAssets[indexPath.item];
        PHAsset *asset = _selectedAssets[indexPath.item];
        //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithSelectedAssets:_selectedAssets selectedPhotos:_selectedPhotos index:indexPath.item];
        TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithSelectedAssets:_selectedAssets selectedPhotos:_selectedPhotos index:indexPath.item];
        //: imagePickerVc.maxImagesCount = 5;
        imagePickerVc.maxImagesCount = 5;
        //: imagePickerVc.allowPickingGif = NO;
        imagePickerVc.allowPickingGif = NO;
        //: imagePickerVc.autoSelectCurrentWhenDone = NO;
        imagePickerVc.autoSelectCurrentWhenDone = NO;
        //: imagePickerVc.allowPickingOriginalPhoto = NO;
        imagePickerVc.allowPickingOriginalPhoto = NO;
        //: imagePickerVc.allowPickingMultipleVideo = NO;
        imagePickerVc.allowPickingMultipleVideo = NO;
        //: imagePickerVc.showSelectedIndex = YES;
        imagePickerVc.showSelectedIndex = YES;
        //: imagePickerVc.isSelectOriginalPhoto = _isSelectOriginalPhoto;
        imagePickerVc.isSelectOriginalPhoto = _isSelectOriginalPhoto;
        //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
        imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
        //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
            //: self->_selectedPhotos = [NSMutableArray arrayWithArray:photos];
            self->_selectedPhotos = [NSMutableArray arrayWithArray:photos];
            //: self->_selectedAssets = [NSMutableArray arrayWithArray:assets];
            self->_selectedAssets = [NSMutableArray arrayWithArray:assets];
            //: self->_isSelectOriginalPhoto = isSelectOriginalPhoto;
            self->_isSelectOriginalPhoto = isSelectOriginalPhoto;
            //: [self->_collectionView reloadData];
            [self->_collectionView reloadData];
            //: self->_collectionView.contentSize = CGSizeMake(0, ((self->_selectedPhotos.count + 2) / 3 ) * (self->_margin + self->_itemWH));
            self->_collectionView.contentSize = CGSizeMake(0, ((self->_selectedPhotos.count + 2) / 3 ) * (self->_margin + self->_itemWH));
        //: }];
        }];
        //: [self presentViewController:imagePickerVc animated:YES completion:nil];
        [self presentViewController:imagePickerVc animated:YES completion:nil];
    }
}

//: #pragma mark - LxGridViewDataSource
#pragma mark - TingSend

/// 以下三个方法为长按排序相关代码
//: - (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
    //: return indexPath.item < _selectedPhotos.count;
    return indexPath.item < _selectedPhotos.count;
}

//: - (BOOL)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)sourceIndexPath canMoveToIndexPath:(NSIndexPath *)destinationIndexPath {
- (BOOL)metadata:(UICollectionView *)collectionView should:(NSIndexPath *)sourceIndexPath max:(NSIndexPath *)destinationIndexPath {
    //: return (sourceIndexPath.item < _selectedPhotos.count && destinationIndexPath.item < _selectedPhotos.count);
    return (sourceIndexPath.item < _selectedPhotos.count && destinationIndexPath.item < _selectedPhotos.count);
}

//: - (void)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)sourceIndexPath didMoveToIndexPath:(NSIndexPath *)destinationIndexPath {
- (void)ting:(UICollectionView *)collectionView teamStop:(NSIndexPath *)sourceIndexPath indexFor:(NSIndexPath *)destinationIndexPath {
    //: UIImage *image = _selectedPhotos[sourceIndexPath.item];
    UIImage *image = _selectedPhotos[sourceIndexPath.item];
    //: [_selectedPhotos removeObjectAtIndex:sourceIndexPath.item];
    [_selectedPhotos removeObjectAtIndex:sourceIndexPath.item];
    //: [_selectedPhotos insertObject:image atIndex:destinationIndexPath.item];
    [_selectedPhotos insertObject:image atIndex:destinationIndexPath.item];

    //: id asset = _selectedAssets[sourceIndexPath.item];
    id asset = _selectedAssets[sourceIndexPath.item];
    //: [_selectedAssets removeObjectAtIndex:sourceIndexPath.item];
    [_selectedAssets removeObjectAtIndex:sourceIndexPath.item];
    //: [_selectedAssets insertObject:asset atIndex:destinationIndexPath.item];
    [_selectedAssets insertObject:asset atIndex:destinationIndexPath.item];

    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController

//: - (void)pushTZImagePickerController {
- (void)nobility {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:self pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:self pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = _isSelectOriginalPhoto;
    imagePickerVc.isSelectOriginalPhoto = _isSelectOriginalPhoto;
    //: imagePickerVc.selectedAssets = _selectedAssets; 
    imagePickerVc.selectedAssets = _selectedAssets; // 目前已经选中的图片数组
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
    //: imagePickerVc.allowPickingOriginalPhoto = NO;
    imagePickerVc.allowPickingOriginalPhoto = NO;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

    // imagePickerVc.minImagesCount = 3;
    // imagePickerVc.alwaysEnableDoneBtn = YES;

    // imagePickerVc.minPhotoWidthSelectable = 3000;
    // imagePickerVc.minPhotoHeightSelectable = 2000;

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

    // 设置拍照时是否需要定位，仅对选择器内部拍照有效，外部拍照的，请拷贝demo时手动把pushImagePickerController里定位方法的调用删掉
    // imagePickerVc.allowCameraLocation = NO;

    // 自定义gif播放方案
    //: [[TZImagePickerConfig sharedInstance] setGifImagePlayBlock:^(TZPhotoPreviewView *view, UIImageView *imageView, NSData *gifData, NSDictionary *info) {
    [[TZImagePickerConfig sharedInstance] setGifImagePlayBlock:^(TZPhotoPreviewView *view, UIImageView *imageView, NSData *gifData, NSDictionary *info) {
        //: FLAnimatedImage *animatedImage = [FLAnimatedImage animatedImageWithGIFData:gifData];
        FLAnimatedImage *animatedImage = [FLAnimatedImage animatedImageWithGIFData:gifData];
        //: FLAnimatedImageView *animatedImageView;
        FLAnimatedImageView *animatedImageView;
        //: for (UIView *subview in imageView.subviews) {
        for (UIView *subview in imageView.subviews) {
            //: if ([subview isKindOfClass:[FLAnimatedImageView class]]) {
            if ([subview isKindOfClass:[FLAnimatedImageView class]]) {
                //: animatedImageView = (FLAnimatedImageView *)subview;
                animatedImageView = (FLAnimatedImageView *)subview;
                //: animatedImageView.frame = imageView.bounds;
                animatedImageView.frame = imageView.bounds;
                //: animatedImageView.animatedImage = nil;
                animatedImageView.animatedImage = nil;
            }
        }
        //: if (!animatedImageView) {
        if (!animatedImageView) {
            //: animatedImageView = [[FLAnimatedImageView alloc] initWithFrame:imageView.bounds];
            animatedImageView = [[FLAnimatedImageView alloc] initWithFrame:imageView.bounds];
            //: animatedImageView.runLoopMode = NSDefaultRunLoopMode;
            animatedImageView.runLoopMode = NSDefaultRunLoopMode;
            //: [imageView addSubview:animatedImageView];
            [imageView addSubview:animatedImageView];
        }
        //: animatedImageView.animatedImage = animatedImage;
        animatedImageView.animatedImage = animatedImage;
    //: }];
    }];


    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];


//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    // You can get the photos by block, the same as by delegate.
    // 你可以通过block或者代理，来得到用户选择的照片.
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: self->_selectedPhotos = [NSMutableArray arrayWithArray:photos];
        self->_selectedPhotos = [NSMutableArray arrayWithArray:photos];
        //: self->_selectedAssets = [NSMutableArray arrayWithArray:assets];
        self->_selectedAssets = [NSMutableArray arrayWithArray:assets];
        //: self->_isSelectOriginalPhoto = isSelectOriginalPhoto;
        self->_isSelectOriginalPhoto = isSelectOriginalPhoto;
        //: [self->_collectionView reloadData];
        [self->_collectionView reloadData];
        //: self->_collectionView.contentSize = CGSizeMake(0, ((self->_selectedPhotos.count + 2) / 3 ) * (self->_margin + self->_itemWH));
        self->_collectionView.contentSize = CGSizeMake(0, ((self->_selectedPhotos.count + 2) / 3 ) * (self->_margin + self->_itemWH));
    //: }];
    }];

    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}


//: #pragma mark - UIImagePickerController
#pragma mark - UIImagePickerController

//: - (void)takePhoto {
- (void)lineBegin {
    //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied) {
    if (authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied) {
        // 无相机权限 做一个友好的提示
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];

    //: } else if (authStatus == AVAuthorizationStatusNotDetermined) {
    } else if (authStatus == AVAuthorizationStatusNotDetermined) {
        // fix issue 466, 防止用户首次拍照拒绝授权时相机页黑屏
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted) {
            if (granted) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self takePhoto];
                    [self lineBegin];
                //: });
                });
            }
        //: }];
        }];
        // 拍照之前还需要检查相册权限
    //: } else if ([PHPhotoLibrary authorizationStatus] == 2) { 
    } else if ([PHPhotoLibrary authorizationStatus] == 2) { // 已被拒绝，没有相册权限，将无法保存拍的照片
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];

    //: } else if ([PHPhotoLibrary authorizationStatus] == 0) { 
    } else if ([PHPhotoLibrary authorizationStatus] == 0) { // 未请求过相册权限
        //: [[TZImageManager manager] requestAuthorizationWithCompletion:^{
        [[TZImageManager manager] requestAuthorizationWithCompletion:^{
            //: [self takePhoto];
            [self lineBegin];
        //: }];
        }];
    //: } else {
    } else {
        //: [self pushImagePickerController];
        [self need];
    }
}

// 调用相机
//: - (void)pushImagePickerController {
- (void)need {

    //: UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    //: if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]) {
    if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]) {
        //: self.imagePickerVc.sourceType = sourceType;
        self.imagePickerVc.sourceType = sourceType;
        //: NSMutableArray *mediaTypes = [NSMutableArray array];
        NSMutableArray *mediaTypes = [NSMutableArray array];
        //: [mediaTypes addObject:(NSString *)kUTTypeImage];
        [mediaTypes addObject:(NSString *)kUTTypeImage];

        //: if (mediaTypes.count) {
        if (mediaTypes.count) {
            //: _imagePickerVc.mediaTypes = mediaTypes;
            _imagePickerVc.mediaTypes = mediaTypes;
        }
        //: [self presentViewController:_imagePickerVc animated:YES completion:nil];
        [self presentViewController:_imagePickerVc animated:YES completion:nil];
    }
}

//: - (void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
- (void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
    //: NSString *type = [info objectForKey:UIImagePickerControllerMediaType];
    NSString *type = [info objectForKey:UIImagePickerControllerMediaType];

    //: TZImagePickerController *tzImagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
    TZImagePickerController *tzImagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
    //: tzImagePickerVc.sortAscendingByModificationDate = YES;
    tzImagePickerVc.sortAscendingByModificationDate = YES;
    //: [tzImagePickerVc showProgressHUD];
    [tzImagePickerVc showProgressHUD];
    //: if ([type isEqualToString:@"public.image"]) {
    if ([type isEqualToString:[[KitData sharedInstance] user_showDotTitle]]) {
        //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
        UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
        //: NSDictionary *meta = [info objectForKey:UIImagePickerControllerMediaMetadata];
        NSDictionary *meta = [info objectForKey:UIImagePickerControllerMediaMetadata];
        // save photo and get asset / 保存图片，获取到asset
        //: [[TZImageManager manager] savePhotoWithImage:image meta:meta location:nil completion:^(PHAsset *asset, NSError *error){
        [[TZImageManager manager] savePhotoWithImage:image meta:meta location:nil completion:^(PHAsset *asset, NSError *error){
            //: [tzImagePickerVc hideProgressHUD];
            [tzImagePickerVc hideProgressHUD];
            //: if (error) {
            if (error) {

            //: } else {
            } else {
                //: TZAssetModel *assetModel = [[TZImageManager manager] createModelWithAsset:asset];
                TZAssetModel *assetModel = [[TZImageManager manager] createModelWithAsset:asset];
                //: [self refreshCollectionViewWithAddedAsset:assetModel.asset image:image];
                [self text:assetModel.asset ting:image];
            }
        //: }];
        }];
    }
}

//: - (void)refreshCollectionViewWithAddedAsset:(PHAsset *)asset image:(UIImage *)image {
- (void)text:(PHAsset *)asset ting:(UIImage *)image {
    //: [_selectedAssets addObject:asset];
    [_selectedAssets addObject:asset];
    //: [_selectedPhotos addObject:image];
    [_selectedPhotos addObject:image];
    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: if ([picker isKindOfClass:[UIImagePickerController class]]) {
    if ([picker isKindOfClass:[UIImagePickerController class]]) {
        //: [picker dismissViewControllerAnimated:YES completion:nil];
        [picker dismissViewControllerAnimated:YES completion:nil];
    }
}

//: - (void)imagePickerController:(TZImagePickerController *)picker didFinishPickingAndEditingVideo:(UIImage *)coverImage outputPath:(NSString *)outputPath error:(NSString *)errorMsg {
- (void)imagePickerController:(TZImagePickerController *)picker didFinishPickingAndEditingVideo:(UIImage *)coverImage outputPath:(NSString *)outputPath error:(NSString *)errorMsg {
    //: _isAllowEditVideo = YES;
    _isAllowEditVideo = YES;
    //: self->_selectedPhotos = [NSMutableArray arrayWithArray:@[coverImage]];
    self->_selectedPhotos = [NSMutableArray arrayWithArray:@[coverImage]];
    //: self->_selectedAssets = [NSMutableArray arrayWithArray:@[[NSURL fileURLWithPath:outputPath]]];
    self->_selectedAssets = [NSMutableArray arrayWithArray:@[[NSURL fileURLWithPath:outputPath]]];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)imagePickerController:(TZImagePickerController *)picker didFinishPickingGifImage:(UIImage *)animatedImage sourceAssets:(PHAsset *)asset {
- (void)imagePickerController:(TZImagePickerController *)picker didFinishPickingGifImage:(UIImage *)animatedImage sourceAssets:(PHAsset *)asset {
    //: _selectedPhotos = [NSMutableArray arrayWithArray:@[animatedImage]];
    _selectedPhotos = [NSMutableArray arrayWithArray:@[animatedImage]];
    //: _selectedAssets = [NSMutableArray arrayWithArray:@[asset]];
    _selectedAssets = [NSMutableArray arrayWithArray:@[asset]];
    //: [_collectionView reloadData];
    [_collectionView reloadData];
}


//: #pragma mark - Click Event
#pragma mark - Click Event

//: - (void)deleteBtnClik:(UIButton *)sender {
- (void)blockMenu:(UIButton *)sender {
    //: if ([self collectionView:self.collectionView numberOfItemsInSection:0] <= _selectedPhotos.count) {
    if ([self collectionView:self.collectionView numberOfItemsInSection:0] <= _selectedPhotos.count) {
        //: [_selectedPhotos removeObjectAtIndex:sender.tag];
        [_selectedPhotos removeObjectAtIndex:sender.tag];
        //: [_selectedAssets removeObjectAtIndex:sender.tag];
        [_selectedAssets removeObjectAtIndex:sender.tag];
        //: [self.collectionView reloadData];
        [self.collectionView reloadData];
        //: return;
        return;
    }

    //: [_selectedPhotos removeObjectAtIndex:sender.tag];
    [_selectedPhotos removeObjectAtIndex:sender.tag];
    //: [_selectedAssets removeObjectAtIndex:sender.tag];
    [_selectedAssets removeObjectAtIndex:sender.tag];
    //: [_collectionView performBatchUpdates:^{
    [_collectionView performBatchUpdates:^{
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForItem:sender.tag inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:sender.tag inSection:0];
        //: [self->_collectionView deleteItemsAtIndexPaths:@[indexPath]];
        [self->_collectionView deleteItemsAtIndexPaths:@[indexPath]];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self->_collectionView reloadData];
        [self->_collectionView reloadData];
    //: }];
    }];
}

//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: @end
@end
