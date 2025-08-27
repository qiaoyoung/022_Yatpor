
#import <Foundation/Foundation.h>

@interface ValueRangeData : NSObject

@end

@implementation ValueRangeData

+ (NSData *)ValueRangeDataToData:(NSString *)value {
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

+ (Byte *)ValueRangeDataToCache:(Byte *)data {
    int red = data[0];
    Byte frameTouch = data[1];
    int textWith = data[2];
    for (int i = textWith; i < textWith + red; i++) {
        int value = data[i] - frameTouch;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[textWith + red] = 0;
    return data + textWith;
}

+ (NSString *)StringFromValueRangeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ValueRangeDataToCache:data]];
}

//: #999999
+ (NSString *)showMessageContent {
    /* static */ NSString *showMessageContent = nil;
    if (!showMessageContent) {
		NSString *origin = @"074307688330e1667c7c7c7c7c7c60";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMessageContent = [self StringFromValueRangeData:value];
    }
    return showMessageContent;
}

//: ic_share
+ (NSString *)app_touchMessageUrl {
    /* static */ NSString *app_touchMessageUrl = nil;
    if (!app_touchMessageUrl) {
		NSString *origin = @"083d03a6a09cb0a59eafa2b2";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_touchMessageUrl = [self StringFromValueRangeData:value];
    }
    return app_touchMessageUrl;
}

//: back_arrow_bl
+ (NSString *)main_titleTableData {
    /* static */ NSString *main_titleTableData = nil;
    if (!main_titleTableData) {
		NSString *origin = @"0d5503b7b6b8c0b4b6c7c7c4ccb4b7c17a";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_titleTableData = [self StringFromValueRangeData:value];
    }
    return main_titleTableData;
}

//: head_default
+ (NSString *)dream_labName {
    /* static */ NSString *dream_labName = nil;
    if (!dream_labName) {
		NSString *origin = @"0c15041d7d7a767974797a7b768a818989";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_labName = [self StringFromValueRangeData:value];
    }
    return dream_labName;
}

//: common_bg
+ (NSString *)app_messageData {
    /* static */ NSString *app_messageData = nil;
    if (!app_messageData) {
		NSString *origin = @"095c0450bfcbc9c9cbcabbbec301";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_messageData = [self StringFromValueRangeData:value];
    }
    return app_messageData;
}

//: #F7BA00
+ (NSString *)k_onMsg {
    /* static */ NSString *k_onMsg = nil;
    if (!k_onMsg) {
		NSString *origin = @"075a07dc8d4f617da0919c9b8a8a95";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_onMsg = [self StringFromValueRangeData:value];
    }
    return k_onMsg;
}

//: activity_qrcode_scan_me
+ (NSString *)user_layerUrl {
    /* static */ NSString *user_layerUrl = nil;
    if (!user_layerUrl) {
		NSString *origin = @"175f03c0c2d3c8d5c8d3d8bed0d1c2cec3c4bed2c2c0cdbeccc435";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_layerUrl = [self StringFromValueRangeData:value];
    }
    return user_layerUrl;
}

//: head_default_group
+ (NSString *)showRemoteCustomData {
    /* static */ NSString *showRemoteCustomData = nil;
    if (!showRemoteCustomData) {
		NSString *origin = @"12570b784651119eff4306bfbcb8bbb6bbbcbdb8ccc3cbb6bec9c6ccc78f";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showRemoteCustomData = [self StringFromValueRangeData:value];
    }
    return showRemoteCustomData;
}

//: group_info_activity_update_success
+ (NSString *)showTingId {
    /* static */ NSString *showTingId = nil;
    if (!showTingId) {
		NSString *origin = @"224003a7b2afb5b09fa9aea6af9fa1a3b4a9b6a9b4b99fb5b0a4a1b4a59fb3b5a3a3a5b3b366";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTingId = [self StringFromValueRangeData:value];
    }
    return showTingId;
}

//: group_info_activity_update_failed
+ (NSString *)mainTableIdent {
    /* static */ NSString *mainTableIdent = nil;
    if (!mainTableIdent) {
		NSString *origin = @"214f0ab2de121e4109b6b6c1bec4bfaeb8bdb5beaeb0b2c3b8c5b8c3c8aec4bfb3b0c3b4aeb5b0b8bbb4b3d3";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTableIdent = [self StringFromValueRangeData:value];
    }
    return mainTableIdent;
}

//: #DCCCFF
+ (NSString *)show_backgroundRemoveStr {
    /* static */ NSString *show_backgroundRemoveStr = nil;
    if (!show_backgroundRemoveStr) {
		NSString *origin = @"07320c8281a99e323402d95755767575757878e1";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_backgroundRemoveStr = [self StringFromValueRangeData:value];
    }
    return show_backgroundRemoveStr;
}

//: ic_down
+ (NSString *)main_searchFormat {
    /* static */ NSString *main_searchFormat = nil;
    if (!main_searchFormat) {
		NSString *origin = @"07030d2090822e28b5db41cda96c666267727a7135";
		NSData *data = [ValueRangeData ValueRangeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_searchFormat = [self StringFromValueRangeData:value];
    }
    return main_searchFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LifeStyleViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserQRCodeViewController.h"
#import "LifeStyleViewController.h"
//: #import "LCQRCodeUtil.h"
#import "IconToMessage.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "NTESShareCardAttachment.h"
#import "LengthAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"

//: @interface NTESUserQRCodeViewController ()
@interface LifeStyleViewController ()

//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *downBtn;
@property (nonatomic,strong) UIButton *downBtn;
//: @property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UIButton *shareBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end

//: @implementation NTESUserQRCodeViewController
@implementation LifeStyleViewController

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

//: - (void)gotoBack:(id)sender {
- (void)imageShow:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[ValueRangeData app_messageData]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

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
    [backBtn setImage:[UIImage imageNamed:[ValueRangeData main_titleTableData]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

//    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
//    labNavtitle.textColor = [UIColor blackColor];
//    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
//    labNavtitle.text = LangKey(@"qrcode_activity_title");
//    labNavtitle.textAlignment = NSTextAlignmentCenter;
//    [navview addSubview:labNavtitle];

    //: [self initUI];
    [self initPerspicuous];
}

//: -(void)initUI{
-(void)initPerspicuous{

    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: UIImage *defImg = [UIImage imageNamed:@"head_default"];
    UIImage *defImg = [UIImage imageNamed:[ValueRangeData dream_labName]];
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: defImg = [UIImage imageNamed:@"head_default_group"];
        defImg = [UIImage imageNamed:[ValueRangeData showRemoteCustomData]];
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;

    }



    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice bearDown])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#DCCCFF"];
    contentView.backgroundColor = [UIColor recordView:[ValueRangeData show_backgroundRemoveStr]];
    //: contentView.layer.cornerRadius = 32;
    contentView.layer.cornerRadius = 32;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [contentView addSubview:self.iconImageView];
    [contentView addSubview:self.iconImageView];
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    //: self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);
    self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);

    //: [contentView addSubview:self.titleLabel];
    [contentView addSubview:self.titleLabel];
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
    //: self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    //: [contentView addSubview:qrView];
    [contentView addSubview:qrView];
    //: qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    qrView.layer.borderWidth = 1;
//    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: qrView.layer.cornerRadius = 32;
    qrView.layer.cornerRadius = 32;
//    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    qrView.layer.shadowOffset = CGSizeMake(0,3);
//    qrView.layer.shadowOpacity = 1;
//    qrView.layer.shadowRadius = 0;

    //: UIImage *qrImage = [LCQRCodeUtil createQRimageString:_userID sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImage *qrImage = [IconToMessage message:_userID writeInColor:220 size:[UIColor blackColor]];
    //: UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    //: qrImageView.image = qrImage;
    qrImageView.image = qrImage;
    //: [qrView addSubview:qrImageView];
    [qrView addSubview:qrImageView];

    //: UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: contentLabel.font = [UIFont systemFontOfSize:12];
    contentLabel.font = [UIFont systemFontOfSize:12];
    //: contentLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    contentLabel.textColor = [UIColor recordView:[ValueRangeData showMessageContent]];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [FFFLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [MatronymicPath colorStreetwise:[ValueRangeData user_layerUrl]];//@"扫描二维码，加我为好友";
    //: [contentView addSubview:contentLabel];
    [contentView addSubview:contentLabel];

//    CGFloat width = (SCREEN_WIDTH-60)/2;
//    [self.view addSubview:self.shareBtn];
//    self.shareBtn.frame = CGRectMake(20, contentView.bottom+20, width, 48);
    //: [self.view addSubview:self.downBtn];
    [self.view addSubview:self.downBtn];
    //: self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 50;
        _iconImageView.layer.cornerRadius = 50;
        //: _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        //: _iconImageView.layer.borderWidth = 1;
        _iconImageView.layer.borderWidth = 1;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}



//: - (UIButton *)downBtn {
- (UIButton *)downBtn {
    //: if (!_downBtn) {
    if (!_downBtn) {
        //: _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_downBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_downBtn addTarget:self action:@selector(pastSearched) forControlEvents:UIControlEventTouchUpInside];
        //: [_downBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_downBtn setImage:[UIImage imageNamed:[ValueRangeData main_searchFormat]] forState:UIControlStateNormal];
        //: _downBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _downBtn.backgroundColor = [UIColor recordView:[ValueRangeData k_onMsg]];
        //: _downBtn.layer.cornerRadius = 24;
        _downBtn.layer.cornerRadius = 24;

    }
    //: return _downBtn;
    return _downBtn;
}
//: - (UIButton *)shareBtn {
- (UIButton *)shareBtn {
    //: if (!_shareBtn) {
    if (!_shareBtn) {
        //: _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_shareBtn addTarget:self action:@selector(shareQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_shareBtn addTarget:self action:@selector(mentalPicture) forControlEvents:UIControlEventTouchUpInside];
        //: [_shareBtn setImage:[UIImage imageNamed:@"ic_share"] forState:UIControlStateNormal];
        [_shareBtn setImage:[UIImage imageNamed:[ValueRangeData app_touchMessageUrl]] forState:UIControlStateNormal];
        //: _shareBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _shareBtn.backgroundColor = [UIColor recordView:[ValueRangeData k_onMsg]];
        //: _shareBtn.layer.cornerRadius = 24;
        _shareBtn.layer.cornerRadius = 24;

    }
    //: return _shareBtn;
    return _shareBtn;
}

//: - (void)shareQcImage
- (void)mentalPicture
{
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: type = @"1";
        type = @"1";
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;
        //: type = @"0";
        type = @"0";
    }

    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    LengthAttachment *attachment = [[LengthAttachment alloc] init];
    //: attachment.title = name;
    attachment.title = name;
    //: attachment.type = type;
    attachment.type = type;
    //: attachment.personCardId = self.userID;
    attachment.personCardId = self.userID;
    //: attachment.content = self.userID;
    attachment.content = self.userID;
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [TingEmptyBubble compartmentCard:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    TipViewController *vc = [[TipViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)saveQcImage{
-(void)pastSearched{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self background:rect];

    //: [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
    [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
          //: [PHAssetChangeRequest creationRequestForAssetFromImage:image];
          [PHAssetChangeRequest creationRequestForAssetFromImage:image];
      //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
      } completionHandler:^(BOOL success, NSError * _Nullable error) {
          //: if (error) {
          if (error) {
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: NSString *failed = [FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [MatronymicPath colorStreetwise:[ValueRangeData mainTableIdent]];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD should:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [MatronymicPath colorStreetwise:[ValueRangeData showTingId]];//保存成功
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: [SVProgressHUD showMessage:success];
                  [SVProgressHUD should:success];
              //: });
              });
          }
      //: }];
      }];
}

//: -(UIImage *)takeScreenshot:(CGRect)rect{
-(UIImage *)background:(CGRect)rect{

    //: UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    //设置截屏大小
    //: [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: CGImageRef imageRef = viewImage.CGImage;
    CGImageRef imageRef = viewImage.CGImage;
    //CGRect rect = CGRectMake(0, 0, 300, 300);//这里可以设置想要截图的区域
    //: CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    //: UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    //: CGImageRelease(imageRefRect);
    CGImageRelease(imageRefRect);
    //: return sendImage;
    return sendImage;


}

//: @end
@end