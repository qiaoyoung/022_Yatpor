
#import <Foundation/Foundation.h>

typedef struct {
    Byte query;
    Byte *priceTag;
    unsigned int rubric;
	int doing;
} StructAmbitData;

@interface AmbitData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AmbitData

+ (instancetype)sharedInstance {
    static AmbitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AmbitDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AmbitDataToByte:(StructAmbitData *)data {
    for (int i = 0; i < data->rubric; i++) {
        data->priceTag[i] ^= data->query;
    }
    data->priceTag[data->rubric] = 0;
	if (data->rubric >= 1) {
		data->doing = data->priceTag[0];
	}
    return data->priceTag;
}

- (NSString *)StringFromAmbitData:(StructAmbitData *)data {
    return [NSString stringWithUTF8String:(char *)[self AmbitDataToByte:data]];
}

//: group_info_activity_without
- (NSString *)userShareBeginValue {
    /* static */ NSString *userShareBeginValue = nil;
    if (!userShareBeginValue) {
		NSArray<NSString *> *origin = @[@"46", @"59", @"38", @"60", @"57", @"22", @"32", @"39", @"47", @"38", @"22", @"40", @"42", @"61", @"32", @"63", @"32", @"61", @"48", @"22", @"62", @"32", @"61", @"33", @"38", @"60", @"61", @"215"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){73, (Byte *)data.bytes, 27, 171};
        userShareBeginValue = [self StringFromAmbitData:&value];
    }
    return userShareBeginValue;
}

//: discovery
- (NSString *)userMessageTitle {
    /* static */ NSString *userMessageTitle = nil;
    if (!userMessageTitle) {
		NSArray<NSString *> *origin = @[@"127", @"114", @"104", @"120", @"116", @"109", @"126", @"105", @"98", @"228"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){27, (Byte *)data.bytes, 9, 192};
        userMessageTitle = [self StringFromAmbitData:&value];
    }
    return userMessageTitle;
}

//: #fffContent
- (NSString *)mainRestoreKey {
    /* static */ NSString *mainRestoreKey = nil;
    if (!mainRestoreKey) {
		NSArray<NSString *> *origin = @[@"109", @"40", @"40", @"40", @"40", @"40", @"40", @"62"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){78, (Byte *)data.bytes, 7, 178};
        mainRestoreKey = [self StringFromAmbitData:&value];
    }
    return mainRestoreKey;
}

//: #999999
- (NSString *)m_dotMsg {
    /* static */ NSString *m_dotMsg = nil;
    if (!m_dotMsg) {
		NSArray<NSString *> *origin = @[@"39", @"61", @"61", @"61", @"61", @"61", @"61", @"125"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){4, (Byte *)data.bytes, 7, 70};
        m_dotMsg = [self StringFromAmbitData:&value];
    }
    return m_dotMsg;
}

//: chat_top_bg
- (NSString *)notiInfoMessage {
    /* static */ NSString *notiInfoMessage = nil;
    if (!notiInfoMessage) {
		NSArray<NSString *> *origin = @[@"117", @"126", @"119", @"98", @"73", @"98", @"121", @"102", @"73", @"116", @"113", @"51"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){22, (Byte *)data.bytes, 11, 118};
        notiInfoMessage = [self StringFromAmbitData:&value];
    }
    return notiInfoMessage;
}

//: ic_none_LogList
- (NSString *)app_valueStr {
    /* static */ NSString *app_valueStr = nil;
    if (!app_valueStr) {
		NSArray<NSString *> *origin = @[@"64", @"74", @"118", @"71", @"70", @"71", @"76", @"118", @"101", @"70", @"78", @"101", @"64", @"90", @"93", @"50"];
		NSData *data = [AmbitData AmbitDataToData:origin];
        StructAmbitData value = (StructAmbitData){41, (Byte *)data.bytes, 15, 172};
        app_valueStr = [self StringFromAmbitData:&value];
    }
    return app_valueStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "SessionViewController.h"

//: @interface DisCorveyViewController()
@interface SessionViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation SessionViewController

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
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[[AmbitData sharedInstance] notiInfoMessage]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice bearDown], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [MatronymicPath colorStreetwise:[[AmbitData sharedInstance] userMessageTitle]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
    contentView.backgroundColor = [UIColor recordView:[[AmbitData sharedInstance] mainRestoreKey]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[[AmbitData sharedInstance] app_valueStr]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:[[AmbitData sharedInstance] m_dotMsg]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [ContentLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MatronymicPath colorStreetwise:[[AmbitData sharedInstance] userShareBeginValue]];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end
