
#import <Foundation/Foundation.h>
typedef struct {
    Byte pillAssumption;
    Byte *birdSEyeView;
    unsigned int whiteGoods;
    Byte utilise;
} FederalData;

NSString *StringFromFederalData(FederalData *data);


//: #F7BA00
FederalData notiTheologicalValue = (FederalData){176, (Byte []){147, 246, 135, 242, 241, 128, 128, 201}, 7, 158};

//: no_friend
FederalData dream_witnessName = (FederalData){178, (Byte []){220, 221, 237, 212, 192, 219, 215, 220, 214, 21}, 9, 154};

//: #999999
FederalData noti_harassmentFormat = (FederalData){232, (Byte []){203, 209, 209, 209, 209, 209, 209, 39}, 7, 161};

//: ic_choose_w
FederalData userUsOpenDalUrl = (FederalData){53, (Byte []){92, 86, 106, 86, 93, 90, 90, 70, 80, 106, 66, 190}, 11, 158};

//: No friends，please add friends
FederalData user_closeFormat = (FederalData){167, (Byte []){233, 200, 135, 193, 213, 206, 194, 201, 195, 212, 72, 27, 43, 215, 203, 194, 198, 212, 194, 135, 198, 195, 195, 135, 193, 213, 206, 194, 201, 195, 212, 209}, 31, 227};

//: select_contact
FederalData m_fortyValue = (FederalData){171, (Byte []){216, 206, 199, 206, 200, 223, 244, 200, 196, 197, 223, 202, 200, 223, 41}, 14, 210};

//: icon_checkbox_selected
FederalData userDrawKey = (FederalData){171, (Byte []){194, 200, 196, 197, 244, 200, 195, 206, 200, 192, 201, 196, 211, 244, 216, 206, 199, 206, 200, 223, 206, 207, 7}, 22, 192};

//: main_activity_choose_least_one
FederalData show_fatePath = (FederalData){69, (Byte []){40, 36, 44, 43, 26, 36, 38, 49, 44, 51, 44, 49, 60, 26, 38, 45, 42, 42, 54, 32, 26, 41, 32, 36, 54, 49, 26, 42, 43, 32, 57}, 30, 253};

//: SelectContactCellID
FederalData app_textThickStopIdent = (FederalData){141, (Byte []){222, 232, 225, 232, 238, 249, 206, 226, 227, 249, 236, 238, 249, 206, 232, 225, 225, 196, 201, 205}, 19, 158};

//: ic_close_b
FederalData kRegionData = (FederalData){78, (Byte []){39, 45, 17, 45, 34, 33, 61, 43, 17, 44, 68}, 10, 194};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingViewController.m
// UserKit
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectViewController.h"
#import "TingViewController.h"
//: #import "FFFContactSelectTabView.h"
#import "ExcerptTipView.h"
//: #import "FFFContactPickedView.h"
#import "DisturbingAssetView.h"
//: #import "FFFGroupedUsrInfo.h"
#import "FFFGroupedUsrInfo.h"
//: #import "UserGroupedData.h"
#import "DateSession.h"
//: #import "FFFContactDataCell.h"
#import "StreetwiseViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSetGroupNameView.h"
#import "ATitleView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "SuccessViewController.h"

//: @interface FFFContactSelectViewController ()<UITableViewDataSource, UITableViewDelegate, FFFContactPickedViewDelegate>{
@interface TingViewController ()<UITableViewDataSource, UITableViewDelegate, SectionDelegate>{
    //: NSMutableArray *_selectecContacts;
    NSMutableArray *_selectecContacts;
}
//: @property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UITableView *tableView;
//: @property(nonatomic, strong) FFFSetGroupNameView *setGroupnameView;
@property(nonatomic, strong) ATitleView *setGroupnameView;
//: @property(nonatomic, strong) UIView *headerview;
@property(nonatomic, strong) UIView *headerview;
//: @property(nonatomic, strong) UIButton *selectedBtn;
@property(nonatomic, strong) UIButton *selectedBtn;
//: @property(nonatomic, strong) UITextField *textfield;
@property(nonatomic, strong) UITextField *textfield;
//: @property(nonatomic, strong) UIImage *headPortrait;
@property(nonatomic, strong) UIImage *headPortrait;

//: @property (strong, nonatomic) FFFContactSelectTabView *selectIndicatorView;
@property (strong, nonatomic) ExcerptTipView *selectIndicatorView;

//: @property (nonatomic, assign) NSInteger maxSelectCount;
@property (nonatomic, assign) NSInteger maxSelectCount;

//: @property(nonatomic, strong) NSDictionary *contentDic;
@property(nonatomic, strong) NSDictionary *contentDic;

//: @property(nonatomic, strong) NSArray *sectionTitles;
@property(nonatomic, strong) NSArray *sectionTitles;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation FFFContactSelectViewController
@implementation TingViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if(self) {
    if(self) {
        //: _maxSelectCount = 9223372036854775807L;
        _maxSelectCount = 9223372036854775807L;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithConfig:(id<FFFContactSelectConfig>) config{
- (instancetype)initWithStreetwiseRequest:(id<TapName>) config{
    //: self = [self initWithNibName:nil bundle:nil];
    self = [self initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: self.config = config;
        self.config = config;
    }
    //: return self;
    return self;
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

//: - (void)viewDidLoad
- (void)viewDidLoad
{
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])) style:UITableViewStylePlain];
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: [self.view addSubview:self.selectIndicatorView];
    [self.view addSubview:self.selectIndicatorView];
    //: [self isshowSelectindicator];
    [self pressColor];

    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;

    //: [self setUpNav];
    [self lengthWith];

    //: self.selectIndicatorView.pickedView.delegate = self;
    self.selectIndicatorView.pickedView.delegate = self;
//    [self.selectIndicatorView.doneButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

//: - (void)setUpNav
- (void)lengthWith
{
    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromFederalData(&kRegionData)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"select_contact"];
    labtitle.text = [MatronymicPath colorStreetwise:StringFromFederalData(&m_fortyValue)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice vg_statusBarHeight]+10, 48, 28);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice bearDown]+10, 48, 28);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    submitButton.backgroundColor = [UIColor recordView:StringFromFederalData(&notiTheologicalValue)];
    //: submitButton.layer.cornerRadius = 14;
    submitButton.layer.cornerRadius = 14;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_choose_w"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromFederalData(&userUsOpenDalUrl)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(imageMargin:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

}

//: - (void)backAction{
- (void)sinceBar{
    //: if (self.presentingViewController) {
    if (self.presentingViewController) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: } else {
    } else {
        //: [self.navigationController popViewControllerAnimated:NO];
        [self.navigationController popViewControllerAnimated:NO];
    }
}

//: - (void)refreshDetailTitle
- (void)endUser
{
    //: UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.detailHeading forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:StringFromFederalData(&userDrawKey)] forState:UIControlStateNormal];
//        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        //: btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        //: btn.frame = CGRectMake(0, 0, 70, 40);
        btn.frame = CGRectMake(0, 0, 70, 40);

    //: }else{
    }else{
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.detailHeading forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:StringFromFederalData(&userDrawKey)] forState:UIControlStateNormal];
        //: btn.frame = CGRectMake(0, 0, 40, 40);
        btn.frame = CGRectMake(0, 0, 40, 40);
    }

//    UILabel *label = (UILabel *)self.navigationItem.rightBarButtonItem.customView;
//    [label setText:self.detailTitle];
//    [label sizeToFit];
}

//: - (NSString *)detailTitle
- (NSString *)detailHeading
{
    //: NSString *detail = @"";
    NSString *detail = @"";
    //: if (_selectecContacts.count > 0)
    if (_selectecContacts.count > 0)
    {
        //: detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
        detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
    }

    //: return detail;
    return detail;
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    UIEdgeInsets safeAreaInsets = self.view.safeAreaInsets;

//    self.selectIndicatorView.nim_width = self.view.nim_width;
//    self.tableView.nim_height = self.view.nim_height - self.selectIndicatorView.nim_height - safeAreaInsets.bottom;
//    self.selectIndicatorView.nim_bottom = self.view.nim_height - safeAreaInsets.bottom;
}

//: - (void)isshowSelectindicator
- (void)pressColor
{
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: self.selectIndicatorView.hidden = NO;
        self.selectIndicatorView.hidden = NO;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64);
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice bearDown])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-64);
    //: }else{
    }else{
        //: self.selectIndicatorView.hidden = YES;
        self.selectIndicatorView.hidden = YES;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]));
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown]));
    }
}

//: - (void)show{
- (void)frame{
    //: UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: vc.modalPresentationStyle = UIModalPresentationFullScreen;
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
    [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
}

//: - (void)setConfig:(id<FFFContactSelectConfig>)config{
- (void)setConfig:(id<TapName>)config{
    //: _config = config;
    _config = config;
    //: if ([config respondsToSelector:@selector(maxSelectedNum)]) {
    if ([config respondsToSelector:@selector(titleComplete)]) {
        //: _maxSelectCount = [config maxSelectedNum];
        _maxSelectCount = [config titleComplete];
        //: _contentDic = @{}.mutableCopy;
        _contentDic = @{}.mutableCopy;
        //: _sectionTitles = @[].mutableCopy;
        _sectionTitles = @[].mutableCopy;
    }
    //: [self makeData];
    [self model];
}

//: - (void)onCancelBtnClick:(id)sender {
- (void)nameClick:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:^() {
    [self dismissViewControllerAnimated:YES completion:^() {
        //: if (self.cancelBlock) {
        if (self.cancelBlock) {
            //: self.cancelBlock();
            self.cancelBlock();
            //: self.cancelBlock = nil;
            self.cancelBlock = nil;
        }
        //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
        if([_delegate respondsToSelector:@selector(mediaTitle)]) {
            //: [_delegate didCancelledSelect];
            [_delegate mediaTitle];
        }
    //: }];
    }];
}

//: - (IBAction)onDoneBtnClick:(id)sender {
- (IBAction)imageMargin:(id)sender {

    //: if (_selectecContacts.count == 0) {
    if (_selectecContacts.count == 0) {
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"main_activity_choose_least_one"]];
        [SVProgressHUD should:[MatronymicPath colorStreetwise:StringFromFederalData(&show_fatePath)]];
        //: return;
        return;
    }


    //: if (self.config.showSelectHeaderview) {
    if (self.config.pressed) {

        //: [self.view addSubview:self.setGroupnameView];
        [self.view addSubview:self.setGroupnameView];
        //: [self.setGroupnameView animationShow];
        [self.setGroupnameView press];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
        self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                //: if (_selectecContacts.count) {
                if (_selectecContacts.count) {
                    //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
                    if ([self.delegate respondsToSelector:@selector(caned:)]) {
                        //: [self.delegate didFinishedSelect:_selectecContacts];
                        [self.delegate caned:_selectecContacts];
                    }

                    //: FFFGroupAvatarViewController *vc = [[FFFGroupAvatarViewController alloc]init];
                    SuccessViewController *vc = [[SuccessViewController alloc]init];
                    //: vc.groupName = groupName;
                    vc.groupName = groupName;
    //                vc.teamListManager = self.teamListManager;
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: vc.speiceBackBlock = ^(UIImage *avater){
                    vc.speiceBackBlock = ^(UIImage *avater){
                        //: [self dismissViewControllerAnimated:YES completion:nil];
                        [self dismissViewControllerAnimated:YES completion:nil];
                                            //: if (self.finshBlock) {
                                            if (self.finshBlock) {

                                                //: self.finshBlock(_selectecContacts, groupName, avater);
                                                self.finshBlock(_selectecContacts, groupName, avater);
                                                //: self.finshBlock = nil;
                                                self.finshBlock = nil;
                                            }
                    //: };
                    };


                }
                //: else {
                else {
                    //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
                    if([_delegate respondsToSelector:@selector(mediaTitle)]) {
                        //: [_delegate didCancelledSelect];
                        [_delegate mediaTitle];
                    }
                    //: if (self.cancelBlock) {
                    if (self.cancelBlock) {
                        //: self.cancelBlock();
                        self.cancelBlock();
                        //: self.cancelBlock = nil;
                        self.cancelBlock = nil;
                    }
                }

        //: };
        };

    //: }else{
    }else{

        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: if (_selectecContacts.count) {
        if (_selectecContacts.count) {
            //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
            if ([self.delegate respondsToSelector:@selector(caned:)]) {
                //: [self.delegate didFinishedSelect:_selectecContacts];
                [self.delegate caned:_selectecContacts];
            }
            //: if (self.finshBlock) {
            if (self.finshBlock) {
                //: self.finshBlock(_selectecContacts, @"", nil);
                self.finshBlock(_selectecContacts, @"", nil);
                //: self.finshBlock = nil;
                self.finshBlock = nil;
            }
        }
        //: else {
        else {
            //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
            if([_delegate respondsToSelector:@selector(mediaTitle)]) {
                //: [_delegate didCancelledSelect];
                [_delegate mediaTitle];
            }
            //: if (self.cancelBlock) {
            if (self.cancelBlock) {
                //: self.cancelBlock();
                self.cancelBlock();
                //: self.cancelBlock = nil;
                self.cancelBlock = nil;
            }
        }
    }
}

//: - (void)makeData{
- (void)model{
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: [self.config getContactData:^(NSDictionary *contentDic, NSArray *titles) {
    [self.config deviceMax:^(NSDictionary *contentDic, NSArray *titles) {
        //: self.contentDic = contentDic;
        self.contentDic = contentDic;
        //: self.sectionTitles = titles;
        self.sectionTitles = titles;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if(self.sectionTitles.count>0){
            if(self.sectionTitles.count>0){
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: [weakSelf.tableView reloadData];
                [weakSelf.tableView reloadData];
            //: }else{
            }else{
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
            }

        //: });
        });
    //: }];
    }];
    //: if ([self.config respondsToSelector:@selector(alreadySelectedMemberId)])
    if ([self.config respondsToSelector:@selector(threadInput)])
    {
        //: _selectecContacts = [[self.config alreadySelectedMemberId] mutableCopy];
        _selectecContacts = [[self.config threadInput] mutableCopy];
    }

    //: _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    //: for (NSString *selectId in _selectecContacts) {
    for (NSString *selectId in _selectecContacts) {
        //: FFFKitInfo *info;
        ViewInfo *info;
        //: info = [self.config getInfoById:selectId];
        info = [self.config name:selectId];
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView point:info];
    }
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.sectionTitles.count;
    return self.sectionTitles.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    //: return arr.count;
    return arr.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> contactItem = arr[indexPath.row];
    id<AlterDate> contactItem = arr[indexPath.row];

    //: FFFContactDataCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectContactCellID"];
    StreetwiseViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromFederalData(&app_textThickStopIdent)];
    //: if (cell == nil) {
    if (cell == nil) {
        //: cell = [[FFFContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SelectContactCellID"];
        cell = [[StreetwiseViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromFederalData(&app_textThickStopIdent)];
    }
    //: cell.accessoryBtn.hidden = NO;
    cell.accessoryBtn.hidden = NO;
    //: cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem memberId]];
    cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem target]];
    //: [cell refreshItem:contactItem];
    [cell language:contactItem];
    //: return cell;
    return cell;
}

//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return [self.sectionTitles mutableCopy];
//}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: return 80;
    return 80;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> member = arr[indexPath.row];
    id<AlterDate> member = arr[indexPath.row];

    //: NSString *memberId = [(id<NIMGroupMemberProtocol>)member memberId];
    NSString *memberId = [(id<AlterDate>)member target];
    //: FFFContactDataCell *cell = (FFFContactDataCell *)[tableView cellForRowAtIndexPath:indexPath];
    StreetwiseViewCell *cell = (StreetwiseViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    //: FFFKitInfo *info;
    ViewInfo *info;
    //: info = [self.config getInfoById:memberId];
    info = [self.config name:memberId];
    //: if([_selectecContacts containsObject:memberId]) {
    if([_selectecContacts containsObject:memberId]) {
        //: [_selectecContacts removeObject:memberId];
        [_selectecContacts removeObject:memberId];
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
        //: [self.selectIndicatorView.pickedView removeMemberInfo:info];
        [self.selectIndicatorView.pickedView month:info];
    //: } else if(_selectecContacts.count >= _maxSelectCount) {
    } else if(_selectecContacts.count >= _maxSelectCount) {
        //: if ([self.config respondsToSelector:@selector(selectedOverFlowTip)]) {
        if ([self.config respondsToSelector:@selector(textUser)]) {
            //: NSString *tip = [self.config selectedOverFlowTip];
            NSString *tip = [self.config textUser];
            //: [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
        }
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
    //: } else {
    } else {
        //: [_selectecContacts addObject:memberId];
        [_selectecContacts addObject:memberId];
        //: cell.accessoryBtn.selected = YES;
        cell.accessoryBtn.selected = YES;
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView point:info];
    }
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    [self refreshDetailTitle];
    //: [self isshowSelectindicator];
    [self pressColor];
}

//: #pragma mark - ContactPickedViewDelegate
#pragma mark - ContactPickedViewDelegate

//: - (void)removeUser:(NSString *)userId {
- (void)user:(NSString *)userId {
    //: [_selectecContacts removeObject:userId];
    [_selectecContacts removeObject:userId];
    //: [_tableView reloadData];
    [_tableView reloadData];
//    [self refreshDetailTitle];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (FFFContactSelectTabView *)selectIndicatorView{
- (ExcerptTipView *)selectIndicatorView{
    //: if (_selectIndicatorView) {
    if (_selectIndicatorView) {
        //: return _selectIndicatorView;
        return _selectIndicatorView;
    }

    //: _selectIndicatorView = [[FFFContactSelectTabView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 64)];
    _selectIndicatorView = [[ExcerptTipView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 64)];
    //: _selectIndicatorView.doneButton.hidden = YES;
    _selectIndicatorView.doneButton.hidden = YES;
    //: return _selectIndicatorView;
    return _selectIndicatorView;
}

//: - (FFFSetGroupNameView *)setGroupnameView{
- (ATitleView *)setGroupnameView{
    //: if(!_setGroupnameView){
    if(!_setGroupnameView){
        //: _setGroupnameView = [[FFFSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _setGroupnameView = [[ATitleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _setGroupnameView;
    return _setGroupnameView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 400)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 400)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        //: defImg.image = [UIImage imageNamed:@"no_friend"];
        defImg.image = [UIImage imageNamed:StringFromFederalData(&dream_witnessName)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:StringFromFederalData(&noti_harassmentFormat)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = @"No friends，please add friends";
        emptyTipLabel.text = StringFromFederalData(&user_closeFormat);


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte *FederalDataToByte(FederalData *data) {
    if (data->utilise < 129) return data->birdSEyeView;
    for (int i = 0; i < data->whiteGoods; i++) {
        data->birdSEyeView[i] ^= data->pillAssumption;
    }
    data->birdSEyeView[data->whiteGoods] = 0;
    data->utilise = 29;
    return data->birdSEyeView;
}

NSString *StringFromFederalData(FederalData *data) {
    return [NSString stringWithUTF8String:(char *)FederalDataToByte(data)];
}
