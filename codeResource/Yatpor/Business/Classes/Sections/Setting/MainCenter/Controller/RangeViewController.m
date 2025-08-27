
#import <Foundation/Foundation.h>

typedef struct {
    Byte tableOfContents;
    Byte *showWindow;
    unsigned int singleGrayBlue;
} StructCeaseData;

@interface CeaseData : NSObject

@end

@implementation CeaseData

+ (NSData *)CeaseDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)CeaseDataToByte:(StructCeaseData *)data {
    for (int i = 0; i < data->singleGrayBlue; i++) {
        data->showWindow[i] ^= data->tableOfContents;
    }
    data->showWindow[data->singleGrayBlue] = 0;
    return data->showWindow;
}

+ (NSString *)StringFromCeaseData:(StructCeaseData *)data {
    return [NSString stringWithUTF8String:(char *)[self CeaseDataToByte:data]];
}

//: https://www.tiktok.com/foryou
+ (NSString *)userVerticalEraseFormat {
    /* static */ NSString *userVerticalEraseFormat = nil;
    if (!userVerticalEraseFormat) {
		NSArray<NSString *> *origin = @[@"147", @"143", @"143", @"139", @"136", @"193", @"212", @"212", @"140", @"140", @"140", @"213", @"143", @"146", @"144", @"143", @"148", @"144", @"213", @"152", @"148", @"150", @"212", @"157", @"148", @"137", @"130", @"148", @"142", @"162"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){251, (Byte *)data.bytes, 29};
        userVerticalEraseFormat = [self StringFromCeaseData:&value];
    }
    return userVerticalEraseFormat;
}

//: #5D5F66
+ (NSString *)app_showTouchValue {
    /* static */ NSString *app_showTouchValue = nil;
    if (!app_showTouchValue) {
		NSArray<NSString *> *origin = @[@"99", @"117", @"4", @"117", @"6", @"118", @"118", @"192"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){64, (Byte *)data.bytes, 7};
        app_showTouchValue = [self StringFromCeaseData:&value];
    }
    return app_showTouchValue;
}

//: title
+ (NSString *)noti_searchMessage {
    /* static */ NSString *noti_searchMessage = nil;
    if (!noti_searchMessage) {
		NSArray<NSString *> *origin = @[@"229", @"248", @"229", @"253", @"244", @"106"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){145, (Byte *)data.bytes, 5};
        noti_searchMessage = [self StringFromCeaseData:&value];
    }
    return noti_searchMessage;
}

//: #875FFA
+ (NSString *)mTeamName {
    /* static */ NSString *mTeamName = nil;
    if (!mTeamName) {
		NSArray<NSString *> *origin = @[@"65", @"90", @"85", @"87", @"36", @"36", @"35", @"189"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){98, (Byte *)data.bytes, 7};
        mTeamName = [self StringFromCeaseData:&value];
    }
    return mTeamName;
}

//: TikTok
+ (NSString *)noti_operationStr {
    /* static */ NSString *noti_operationStr = nil;
    if (!noti_operationStr) {
		NSArray<NSString *> *origin = @[@"139", @"182", @"180", @"139", @"176", @"180", @"149"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){223, (Byte *)data.bytes, 6};
        noti_operationStr = [self StringFromCeaseData:&value];
    }
    return noti_operationStr;
}

//: Triller
+ (NSString *)appInfoLabFormat {
    /* static */ NSString *appInfoLabFormat = nil;
    if (!appInfoLabFormat) {
		NSArray<NSString *> *origin = @[@"138", @"172", @"183", @"178", @"178", @"187", @"172", @"105"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){222, (Byte *)data.bytes, 7};
        appInfoLabFormat = [self StringFromCeaseData:&value];
    }
    return appInfoLabFormat;
}

//: https://triller.co/m
+ (NSString *)m_windowMsg {
    /* static */ NSString *m_windowMsg = nil;
    if (!m_windowMsg) {
		NSArray<NSString *> *origin = @[@"252", @"224", @"224", @"228", @"231", @"174", @"187", @"187", @"224", @"230", @"253", @"248", @"248", @"241", @"230", @"186", @"247", @"251", @"187", @"249", @"251"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){148, (Byte *)data.bytes, 20};
        m_windowMsg = [self StringFromCeaseData:&value];
    }
    return m_windowMsg;
}

//: https://www.kwai.com/foryou
+ (NSString *)dream_operationMessage {
    /* static */ NSString *dream_operationMessage = nil;
    if (!dream_operationMessage) {
		NSArray<NSString *> *origin = @[@"235", @"247", @"247", @"243", @"240", @"185", @"172", @"172", @"244", @"244", @"244", @"173", @"232", @"244", @"226", @"234", @"173", @"224", @"236", @"238", @"172", @"229", @"236", @"241", @"250", @"236", @"246", @"63"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){131, (Byte *)data.bytes, 27};
        dream_operationMessage = [self StringFromCeaseData:&value];
    }
    return dream_operationMessage;
}

//: estimatedProgress
+ (NSString *)user_infoData {
    /* static */ NSString *user_infoData = nil;
    if (!user_infoData) {
		NSArray<NSString *> *origin = @[@"115", @"101", @"98", @"127", @"123", @"119", @"98", @"115", @"114", @"70", @"100", @"121", @"113", @"100", @"115", @"101", @"101", @"149"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){22, (Byte *)data.bytes, 17};
        user_infoData = [self StringFromCeaseData:&value];
    }
    return user_infoData;
}

//: Kwai
+ (NSString *)showViewResourceTitle {
    /* static */ NSString *showViewResourceTitle = nil;
    if (!showViewResourceTitle) {
		NSArray<NSString *> *origin = @[@"159", @"163", @"181", @"189", @"171"];
		NSData *data = [CeaseData CeaseDataToData:origin];
        StructCeaseData value = (StructCeaseData){212, (Byte *)data.bytes, 4};
        showViewResourceTitle = [self StringFromCeaseData:&value];
    }
    return showViewResourceTitle;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideoListViewController.h"
#import "RangeViewController.h"
//: #import "NTESVideolistCollectionViewCell.h"
#import "ModeView.h"
//: #import "NSString+NTES.h"
#import "NSString+StyleTool.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>

//: @interface NTESVideoListViewController ()<WKNavigationDelegate,WKUIDelegate>
@interface RangeViewController ()<WKNavigationDelegate,WKUIDelegate>

//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;
//: @property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) UIProgressView *progressView;

//: @property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) UICollectionView *collectionView;
//: @property (nonatomic,strong) NSArray *videosList;
@property (nonatomic,strong) NSArray *videosList;

//: @property (strong, nonatomic) UIButton *tikBtn;
@property (strong, nonatomic) UIButton *tikBtn;
//: @property (strong, nonatomic) UIButton *kwaiBtn;
@property (strong, nonatomic) UIButton *kwaiBtn;
//: @property (strong, nonatomic) UIButton *TrillerBtn;
@property (strong, nonatomic) UIButton *TrillerBtn;

//: @property (nonatomic,strong) NSString *urlString;
@property (nonatomic,strong) NSString *urlString;

//: @end
@end

//: @implementation NTESVideoListViewController
@implementation RangeViewController

//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//
//    }
//    return self;
//}

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
    //: self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
    self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];

    //: UIView *typeview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *typeview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice bearDown], [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
//    typeview.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
//    typeview.layer.cornerRadius = 30;
//    typeview.userInteractionEnabled = YES;
    //: [self.view addSubview:typeview];
    [self.view addSubview:typeview];

    //: CGFloat spacing1 = 15;
    CGFloat spacing1 = 15;//行、列 间距
    //: int totalloc1 = 3;
    int totalloc1 = 3;//列数
    //: CGFloat appvieww1 = ([[UIScreen mainScreen] bounds].size.width - spacing1*4)/totalloc1;
    CGFloat appvieww1 = ([[UIScreen mainScreen] bounds].size.width - spacing1*4)/totalloc1;

    //: _tikBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _tikBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _tikBtn.frame = CGRectMake(spacing1, 7, appvieww1, 30);
    _tikBtn.frame = CGRectMake(spacing1, 7, appvieww1, 30);
    //: _tikBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _tikBtn.backgroundColor = [UIColor recordView:[CeaseData mTeamName]];
    //: _tikBtn.layer.cornerRadius = 15;
    _tikBtn.layer.cornerRadius = 15;
    //: _tikBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _tikBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_tikBtn setTitle:@"TikTok" forState:UIControlStateNormal];
    [_tikBtn setTitle:[CeaseData noti_operationStr] forState:UIControlStateNormal];
    //: [_tikBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_tikBtn addTarget:self action:@selector(highGround:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_tikBtn];
    [typeview addSubview:_tikBtn];

    //: _kwaiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _kwaiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _kwaiBtn.frame = CGRectMake(spacing1*2+appvieww1, 7, appvieww1, 30);
    _kwaiBtn.frame = CGRectMake(spacing1*2+appvieww1, 7, appvieww1, 30);
    //: _kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    _kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: _kwaiBtn.layer.cornerRadius = 15;
    _kwaiBtn.layer.cornerRadius = 15;
    //: _kwaiBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _kwaiBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_kwaiBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];
//    [_kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_kwaiBtn setTitle:@"Kwai" forState:UIControlStateNormal];
    [_kwaiBtn setTitle:[CeaseData showViewResourceTitle] forState:UIControlStateNormal];
    //: [_kwaiBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_kwaiBtn addTarget:self action:@selector(highGround:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_kwaiBtn];
    [typeview addSubview:_kwaiBtn];

    //: _TrillerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _TrillerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _TrillerBtn.frame = CGRectMake(spacing1*3+appvieww1*2, 7, appvieww1, 30);
    _TrillerBtn.frame = CGRectMake(spacing1*3+appvieww1*2, 7, appvieww1, 30);
    //: _TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    _TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: _TrillerBtn.layer.cornerRadius = 15;
    _TrillerBtn.layer.cornerRadius = 15;
    //: _TrillerBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _TrillerBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_TrillerBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];
    //: [_TrillerBtn setTitle:@"Triller" forState:UIControlStateNormal];
    [_TrillerBtn setTitle:[CeaseData appInfoLabFormat] forState:UIControlStateNormal];
    //: [_TrillerBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_TrillerBtn addTarget:self action:@selector(highGround:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_TrillerBtn];
    [typeview addSubview:_TrillerBtn];

//    CGFloat spacing = 15;//行、列 间距
//    int totalloc = 2;//列数
//    CGFloat appvieww = (SCREEN_WIDTH - spacing*3)/totalloc;
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    flowLayout.itemSize = CGSizeMake(appvieww, appvieww*1.3 + 50);
//    CGFloat lineSpacing = 15;
//    flowLayout.minimumLineSpacing = 15;
//    flowLayout.minimumInteritemSpacing = lineSpacing;
//    flowLayout.sectionInset = UIEdgeInsetsMake(10, 5, 10, 5);
//
//    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT) collectionViewLayout:flowLayout];
//    self.collectionView.backgroundColor = [UIColor clearColor];
//    self.collectionView.dataSource = self;
//    self.collectionView.delegate = self;
//
////    [self.collectionView registerClass:[ModeView class] forCellWithReuseIdentifier:NSStringFromClass([ModeView class])];
//    [self.collectionView registerClass:[ModeView class] forCellWithReuseIdentifier:@"TZVideoCell"];
//    [self.view addSubview:self.collectionView];
//
//    [self.collectionView reloadData];

    //: self.urlString = @"https://www.tiktok.com/foryou";
    self.urlString = [CeaseData userVerticalEraseFormat];
    //: [self initUI];
    [self initRecent];
    //: [self reloadWebView];
    [self sumeract];

}

//: - (void)handlerTopBtn:(UIButton *)sender
- (void)highGround:(UIButton *)sender
{
    //: if(sender == self.tikBtn){
    if(sender == self.tikBtn){
        //: self.urlString = @"https://www.tiktok.com/foryou";
        self.urlString = [CeaseData userVerticalEraseFormat];
        //: self.tikBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.tikBtn.backgroundColor = [UIColor recordView:[CeaseData mTeamName]];
        //: [self.tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];

        //: self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];

    }
    //: else if (sender == self.kwaiBtn){
    else if (sender == self.kwaiBtn){
        //: self.urlString = @"https://www.kwai.com/foryou";
        self.urlString = [CeaseData dream_operationMessage];
        //: self.kwaiBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.kwaiBtn.backgroundColor = [UIColor recordView:[CeaseData mTeamName]];
        //: [self.kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.tikBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];

        //: self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];
    }
    //: else if (sender == self.TrillerBtn){
    else if (sender == self.TrillerBtn){
        //: self.urlString = @"https://triller.co/m";
        self.urlString = [CeaseData m_windowMsg];
        //: self.TrillerBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.TrillerBtn.backgroundColor = [UIColor recordView:[CeaseData mTeamName]];
        //: [self.TrillerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];

        //: self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.tikBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor recordView:[CeaseData app_showTouchValue]] forState:UIControlStateNormal];
    }

    //: [self reloadWebView];
    [self sumeract];
}
//: - (void)dealloc {
- (void)dealloc {
    //: [_webView removeObserver:self forKeyPath:@"estimatedProgress"];
    [_webView removeObserver:self forKeyPath:[CeaseData user_infoData]];
}

//: - (void)initUI{
- (void)initRecent{

    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
//    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: config.allowsInlineMediaPlayback = YES;
    config.allowsInlineMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
//    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+2, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f)-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-2) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+2, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-(49.0f)-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-2) configuration:config];
    //: [self.view addSubview:_webView];
    [self.view addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;


    //: self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 2)];
    self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 2)];
    //: self.progressView.backgroundColor = [UIColor clearColor];
    self.progressView.backgroundColor = [UIColor clearColor];
    //设置进度条的高度，下面这句代码表示进度条的宽度变为原来的1倍，高度变为原来的1.5倍.
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //: [self.view addSubview:self.progressView];
    [self.view addSubview:self.progressView];


//    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.top.mas_equalTo(self.view).mas_offset(SCREEN_TOP_HEIGHT+2);
//        make.right.mas_offset(0);
//        make.bottom.mas_offset(SCREEN_TABBAR_HEIGHT);
//    }];

//    [self.progressView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_offset(SCREEN_TOP_HEIGHT);
//        make.height.mas_equalTo(2);
//    }];

     //*3.添加KVO，WKWebView有一个属性estimatedProgress，就是当前网页加载的进度，所以监听这个属性。
    //: [_webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    [_webView addObserver:self forKeyPath:[CeaseData user_infoData] options:NSKeyValueObservingOptionNew context:nil];
    //[_webView addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:NULL];

}

//: - (void)reloadWebView{
- (void)sumeract{

    /* 加载服务器url的方法*/
    //: NSString *urlString = _urlString;
    NSString *urlString = _urlString;
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];

}

//: #pragma mark - WKNavigationDelegate
#pragma mark - WKNavigationDelegate

/* 页面开始加载 */
//: - (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

    //: self.progressView.hidden = NO;
    self.progressView.hidden = NO;
    //开始加载网页的时候将progressView的Height恢复为1.5倍
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //防止progressView被网页挡住
    //: [self.view bringSubviewToFront:self.progressView];
    [self.view bringSubviewToFront:self.progressView];


}

/* 开始返回内容 */
//: - (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{

}

/* 页面加载完成 */
//: - (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 页面加载失败 */
//: - (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
- (void)mode:(WKWebView *)webView table:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 在发送请求之前，决定是否跳转 */
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    //允许跳转
    //: decisionHandler(WKNavigationActionPolicyAllow);
    decisionHandler(WKNavigationActionPolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationActionPolicyCancel);

}

/* 在收到响应后，决定是否跳转 */
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{

    //: NSLog(@"%@",navigationResponse.response.URL.absoluteString);
    //允许跳转
    //: decisionHandler(WKNavigationResponsePolicyAllow);
    decisionHandler(WKNavigationResponsePolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationResponsePolicyCancel);
}


//: #pragma mark - 监听加载进度
#pragma mark - 监听加载进度

/*
 *4.在监听方法中获取网页加载的进度，并将进度赋给progressView.progress
 */

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {

    //: if (object == self.webView && [keyPath isEqualToString:@"title"]) {
    if (object == self.webView && [keyPath isEqualToString:[CeaseData noti_searchMessage]]) {
//        self.navigationItem.title = self.webView.title;
//        [NameDefaults standardUserDefaults].webViewTitle = self.webView.title;
    //: }else if (object == self.webView && [keyPath isEqualToString:@"estimatedProgress"]) {
    }else if (object == self.webView && [keyPath isEqualToString:[CeaseData user_infoData]]) {
        //: CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        //: self.progressView.alpha = 1.0f;
        self.progressView.alpha = 1.0f;
        //: [self.progressView setProgress:newprogress animated:YES];
        [self.progressView setProgress:newprogress animated:YES];
        //: if (newprogress >= 1.0f) {
        if (newprogress >= 1.0f) {

            /*
             *添加一个简单的动画，将progressView的Height变为1.4倍
             *动画时长0.25s，延时0.3s后开始动画
             *动画结束后将progressView隐藏
             */
            //: __weak typeof (self)weakSelf = self;
            __weak typeof (self)weakSelf = self;
            //: [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
            [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
                //: weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
                weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: weakSelf.progressView.hidden = YES;
                weakSelf.progressView.hidden = YES;

            //: }];
            }];
        }

    //: } else {
    } else {
        //: [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }


}



//#pragma mark -- UICollectionViewDataSource
////返回分区个数
//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
//    return 1;
//}
////返回每个分区的item个数
//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return 10;
//}
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
////    EDLCerBrandList *model = self.brandList[indexPath.row];
//
//    ModeView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TZVideoCell" forIndexPath:indexPath];
//
//
//    return cell;
//}
//
//#pragma mark -- UICollectionViewDelegate
//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
//
//}


//: @end
@end