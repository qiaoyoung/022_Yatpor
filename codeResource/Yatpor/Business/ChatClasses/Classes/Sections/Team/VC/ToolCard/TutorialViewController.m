
#import <Foundation/Foundation.h>
typedef struct {
    Byte personOfColour;
    Byte *ridiculousCoverage;
    unsigned int edibleFruit;
    Byte marquee;
	int reloadcy;
	int textScan;
} KillerData;

NSString *StringFromKillerData(KillerData *data);


//: back_arrow_bl
KillerData show_beginCalculationFormat = (KillerData){45, (Byte []){79, 76, 78, 70, 114, 76, 95, 95, 66, 90, 114, 79, 65, 132}, 13, 182, 186, 97};

//: Group_description
KillerData notiTextData = (KillerData){64, (Byte []){7, 50, 47, 53, 48, 31, 36, 37, 51, 35, 50, 41, 48, 52, 41, 47, 46, 148}, 17, 180, 121, 131};

//: Announcement_title
KillerData app_holderMessage = (KillerData){180, (Byte []){245, 218, 218, 219, 193, 218, 215, 209, 217, 209, 218, 192, 235, 192, 221, 192, 216, 209, 148}, 18, 241, 135, 11};

//: feedback_activity_submit
KillerData userExecutionPath = (KillerData){149, (Byte []){243, 240, 240, 241, 247, 244, 246, 254, 202, 244, 246, 225, 252, 227, 252, 225, 236, 202, 230, 224, 247, 248, 252, 225, 198}, 24, 184, 109, 124};

//: #F6F7FA
KillerData userManufacturerHormoneTitle = (KillerData){224, (Byte []){195, 166, 214, 166, 215, 166, 161, 238}, 7, 224, 114, 245};

//: #EEEEEE
KillerData userAnythingBallotTitleFormat = (KillerData){26, (Byte []){57, 95, 95, 95, 95, 95, 95, 125}, 7, 212, 112, 112};

//: #2B2F36
KillerData main_retailId = (KillerData){213, (Byte []){246, 231, 151, 231, 147, 230, 227, 241}, 7, 212, 228, 6};

//: #999999
KillerData mainQualityTagValue = (KillerData){82, (Byte []){113, 107, 107, 107, 107, 107, 107, 56}, 7, 183, 16, 48};

//: #F7BA00
KillerData mainWitnessPaneData = (KillerData){210, (Byte []){241, 148, 229, 144, 147, 226, 226, 170}, 7, 229, 97, 189};

//: Please_enter_content
KillerData notiRegionData = (KillerData){142, (Byte []){222, 226, 235, 239, 253, 235, 209, 235, 224, 250, 235, 252, 209, 237, 225, 224, 250, 235, 224, 250, 65}, 20, 188, 103, 10};

//: 2B2F36
KillerData showCustomText = (KillerData){123, (Byte []){73, 57, 73, 61, 72, 77, 111}, 6, 152, 76, 59};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCreateTeamAnnouncement.h"
#import "TutorialViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitKeyboardInfo.h"
#import "SuccessToolInfo.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface FFFCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface TutorialViewController () <UITextFieldDelegate, UITextViewDelegate>
//: @property (strong, nonatomic) UITextField *titleTextField;
@property (strong, nonatomic) UITextField *titleTextField;
//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation FFFCreateTeamAnnouncement
@implementation TutorialViewController

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
    self.view.backgroundColor = [UIColor recordView:StringFromKillerData(&userManufacturerHormoneTitle)];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromKillerData(&show_beginCalculationFormat)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [MatronymicPath colorStreetwise:StringFromKillerData(&notiTextData)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];



//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];


//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 50)];
////    titleView.backgroundColor = [UIColor whiteColor];
////    titleView.layer.cornerRadius = 8;
//    [self.view addSubview:titleView];
//    titleView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    titleView.layer.cornerRadius = 8;
//    titleView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    titleView.layer.shadowOffset = CGSizeMake(0,3);
//    titleView.layer.shadowOpacity = 1;
//    titleView.layer.shadowRadius = 0;




    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
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

    //: self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    //: self.titleTextField.placeholder = [FFFLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [MatronymicPath colorStreetwise:StringFromKillerData(&app_holderMessage)];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor recordView:StringFromKillerData(&showCustomText)];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor recordView:StringFromKillerData(&userAnythingBallotTitleFormat)];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor recordView:StringFromKillerData(&main_retailId)];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [FFFLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [MatronymicPath colorStreetwise:StringFromKillerData(&notiRegionData)];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [submitButton setTitle:[FFFLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[MatronymicPath colorStreetwise:StringFromKillerData(&userExecutionPath)] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(teamValue:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    submitButton.backgroundColor = [UIColor recordView:StringFromKillerData(&mainWitnessPaneData)];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



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
    //: [self.titleTextField endEditing:YES];
    [self.titleTextField endEditing:YES];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
    //: if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
    if([self.delegate respondsToSelector:@selector(mustTitle:timeConstant:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate mustTitle:title timeConstant:content];
    }
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
        _numLabel.textColor = [UIColor recordView:StringFromKillerData(&mainQualityTagValue)];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end

Byte *KillerDataToByte(KillerData *data) {
    if (data->marquee < 118) return data->ridiculousCoverage;
    for (int i = 0; i < data->edibleFruit; i++) {
        data->ridiculousCoverage[i] ^= data->personOfColour;
    }
    data->ridiculousCoverage[data->edibleFruit] = 0;
    data->marquee = 3;
	if (data->edibleFruit >= 2) {
		data->reloadcy = data->ridiculousCoverage[0];
		data->textScan = data->ridiculousCoverage[1];
	}
    return data->ridiculousCoverage;
}

NSString *StringFromKillerData(KillerData *data) {
    return [NSString stringWithUTF8String:(char *)KillerDataToByte(data)];
}
