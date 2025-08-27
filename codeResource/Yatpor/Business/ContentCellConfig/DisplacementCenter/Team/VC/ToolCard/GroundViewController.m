
#import <Foundation/Foundation.h>

typedef struct {
    Byte leadingReleaseImage;
    Byte *buttonDal;
    unsigned int viewManager;
	int hunting;
	int eliminateBorn;
} StructLabourData;

@interface LabourData : NSObject

+ (instancetype)sharedInstance;

//: Group_description
@property (nonatomic, copy) NSString *mBraveWitnessMsg;

//: #999999
@property (nonatomic, copy) NSString *mOthersValue;

//: #F6F7FA
@property (nonatomic, copy) NSString *kNecessityId;

//: #F7BA00
@property (nonatomic, copy) NSString *notiTentIndividualValue;

//: Please_enter_content
@property (nonatomic, copy) NSString *app_ureaPath;

//: back_arrow_bl
@property (nonatomic, copy) NSString *show_nighName;

//: feedback_activity_submit
@property (nonatomic, copy) NSString *app_othersIdent;

@end

@implementation LabourData

+ (instancetype)sharedInstance {
    static LabourData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LabourDataToByte:(StructLabourData *)data {
    for (int i = 0; i < data->viewManager; i++) {
        data->buttonDal[i] ^= data->leadingReleaseImage;
    }
    data->buttonDal[data->viewManager] = 0;
	if (data->viewManager >= 2) {
		data->hunting = data->buttonDal[0];
		data->eliminateBorn = data->buttonDal[1];
	}
    return data->buttonDal;
}

- (NSString *)StringFromLabourData:(StructLabourData *)data {
    return [NSString stringWithUTF8String:(char *)[self LabourDataToByte:data]];
}

//: Group_description
- (NSString *)mBraveWitnessMsg {
    if (!_mBraveWitnessMsg) {
        StructLabourData value = (StructLabourData){227, (Byte []){164, 145, 140, 150, 147, 188, 135, 134, 144, 128, 145, 138, 147, 151, 138, 140, 141, 215}, 17, 119, 137};
        _mBraveWitnessMsg = [self StringFromLabourData:&value];
    }
    return _mBraveWitnessMsg;
}

//: #F7BA00
- (NSString *)notiTentIndividualValue {
    if (!_notiTentIndividualValue) {
        StructLabourData value = (StructLabourData){144, (Byte []){179, 214, 167, 210, 209, 160, 160, 115}, 7, 249, 239};
        _notiTentIndividualValue = [self StringFromLabourData:&value];
    }
    return _notiTentIndividualValue;
}

//: feedback_activity_submit
- (NSString *)app_othersIdent {
    if (!_app_othersIdent) {
        StructLabourData value = (StructLabourData){172, (Byte []){202, 201, 201, 200, 206, 205, 207, 199, 243, 205, 207, 216, 197, 218, 197, 216, 213, 243, 223, 217, 206, 193, 197, 216, 179}, 24, 139, 83};
        _app_othersIdent = [self StringFromLabourData:&value];
    }
    return _app_othersIdent;
}

//: #999999
- (NSString *)mOthersValue {
    if (!_mOthersValue) {
        StructLabourData value = (StructLabourData){36, (Byte []){7, 29, 29, 29, 29, 29, 29, 244}, 7, 7, 165};
        _mOthersValue = [self StringFromLabourData:&value];
    }
    return _mOthersValue;
}

//: Please_enter_content
- (NSString *)app_ureaPath {
    if (!_app_ureaPath) {
        StructLabourData value = (StructLabourData){12, (Byte []){92, 96, 105, 109, 127, 105, 83, 105, 98, 120, 105, 126, 83, 111, 99, 98, 120, 105, 98, 120, 223}, 20, 201, 173};
        _app_ureaPath = [self StringFromLabourData:&value];
    }
    return _app_ureaPath;
}

//: back_arrow_bl
- (NSString *)show_nighName {
    if (!_show_nighName) {
        StructLabourData value = (StructLabourData){127, (Byte []){29, 30, 28, 20, 32, 30, 13, 13, 16, 8, 32, 29, 19, 34}, 13, 49, 28};
        _show_nighName = [self StringFromLabourData:&value];
    }
    return _show_nighName;
}

//: #F6F7FA
- (NSString *)kNecessityId {
    if (!_kNecessityId) {
        StructLabourData value = (StructLabourData){168, (Byte []){139, 238, 158, 238, 159, 238, 233, 89}, 7, 194, 113};
        _kNecessityId = [self StringFromLabourData:&value];
    }
    return _kNecessityId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroundViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTeamIntroduceViewController.h"
#import "GroundViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface ContentTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface GroundViewController ()<UITextFieldDelegate, UITextViewDelegate>


//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic, strong) UIButton *submitButton;
@property (nonatomic, strong) UIButton *submitButton;

//: @property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation ContentTeamIntroduceViewController
@implementation GroundViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[LabourData sharedInstance].kNecessityId];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[LabourData sharedInstance].show_nighName] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [MatronymicPath colorStreetwise:[LabourData sharedInstance].mBraveWitnessMsg];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    //: self.contentTextView.textColor = [UIColor blackColor];
    self.contentTextView.textColor = [UIColor blackColor];
    //: self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [ContentLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [MatronymicPath colorStreetwise:[LabourData sharedInstance].app_ureaPath];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: if (self.canEdit) {
    if (self.canEdit) {
        //: self.contentTextView.editable = YES;
        self.contentTextView.editable = YES;

        //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [submitButton setTitle:[ContentLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
        [submitButton setTitle:[MatronymicPath colorStreetwise:[LabourData sharedInstance].app_othersIdent] forState:UIControlStateNormal];
        //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
        [submitButton addTarget:self action:@selector(teamValue:) forControlEvents:UIControlEventTouchUpInside];
        //: submitButton.layer.cornerRadius = 24;
        submitButton.layer.cornerRadius = 24;
        //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        submitButton.backgroundColor = [UIColor recordView:[LabourData sharedInstance].notiTentIndividualValue];
        //: [self.view addSubview:submitButton];
        [self.view addSubview:submitButton];
    //: }else{
    }else{
        //: self.contentTextView.editable = NO;
        self.contentTextView.editable = NO;
    }

}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)teamValue:(id)sender {
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];

    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //: self.speiceBackBlock(content);
    self.speiceBackBlock(content);

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
//    if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
//        [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
//    }
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
        _numLabel.textColor = [UIColor recordView:[LabourData sharedInstance].mOthersValue];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
