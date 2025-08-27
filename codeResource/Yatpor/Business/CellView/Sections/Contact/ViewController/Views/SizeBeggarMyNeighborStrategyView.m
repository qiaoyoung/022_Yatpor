
#import <Foundation/Foundation.h>

@interface OfData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OfData

+ (instancetype)sharedInstance {
    static OfData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)OfDataToData:(NSString *)value {
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

- (Byte *)OfDataToCache:(Byte *)data {
    int customRed = data[0];
    Byte draft = data[1];
    int troponymy = data[2];
    for (int i = troponymy; i < troponymy + customRed; i++) {
        int value = data[i] + draft;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[troponymy + customRed] = 0;
    return data + troponymy;
}

- (NSString *)StringFromOfData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OfDataToCache:data]];
}

//: activity_qrcode_save_code
- (NSString *)m_remoteData {
    /* static */ NSString *m_remoteData = nil;
    if (!m_remoteData) {
		NSString *origin = @"19320ce3e213d9cb4d106bed2f314237443742472d3f40313d32332d412f44332d313d3233c6";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_remoteData = [self StringFromOfData:value];
    }
    return m_remoteData;
}

//: #999999
- (NSString *)mainDismissUrl {
    /* static */ NSString *mainDismissUrl = nil;
    if (!mainDismissUrl) {
		NSString *origin = @"0761071c72f698c2d8d8d8d8d8d89f";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDismissUrl = [self StringFromOfData:value];
    }
    return mainDismissUrl;
}

//: activity_qrcode_scan_me
- (NSString *)main_messageIdent {
    /* static */ NSString *main_messageIdent = nil;
    if (!main_messageIdent) {
		NSString *origin = @"17410a44fc016d5a985220223328352833381e3031222e23241e3222202d1e2c24a1";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_messageIdent = [self StringFromOfData:value];
    }
    return main_messageIdent;
}

//: group_info_activity_update_failed
- (NSString *)noti_normalWindowValue {
    /* static */ NSString *noti_normalWindowValue = nil;
    if (!noti_normalWindowValue) {
		NSString *origin = @"211f0950ab589cefc64853505651404a4f4750404244554a574a555a405651454255464047424a4d4645f9";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_normalWindowValue = [self StringFromOfData:value];
    }
    return noti_normalWindowValue;
}

//: ic_close
- (NSString *)m_searchFormat {
    /* static */ NSString *m_searchFormat = nil;
    if (!m_searchFormat) {
		NSString *origin = @"0862077c63d9bb0701fd010a0d110310";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_searchFormat = [self StringFromOfData:value];
    }
    return m_searchFormat;
}

//: ic_down
- (NSString *)show_backgroundMsg {
    /* static */ NSString *show_backgroundMsg = nil;
    if (!show_backgroundMsg) {
		NSString *origin = @"07180c08655c48c83218d13c514b474c575f5698";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_backgroundMsg = [self StringFromOfData:value];
    }
    return show_backgroundMsg;
}

//: #F7BA00
- (NSString *)dream_singleMsg {
    /* static */ NSString *dream_singleMsg = nil;
    if (!dream_singleMsg) {
		NSString *origin = @"07080d390f9a6dd8d7bd976d041b3e2f3a39282857";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_singleMsg = [self StringFromOfData:value];
    }
    return dream_singleMsg;
}

//: chat_bg
- (NSString *)kDoingInfoId {
    /* static */ NSString *kDoingInfoId = nil;
    if (!kDoingInfoId) {
		NSString *origin = @"071d087e79d70ca8464b445742454a1a";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDoingInfoId = [self StringFromOfData:value];
    }
    return kDoingInfoId;
}

//: group_info_activity_update_success
- (NSString *)showGlobalName {
    /* static */ NSString *showGlobalName = nil;
    if (!showGlobalName) {
		NSString *origin = @"220c0bb629341c884d105c5b66636964535d625a63535557685d6a5d686d53696458556859536769575759676762";
		NSData *data = [OfData OfDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showGlobalName = [self StringFromOfData:value];
    }
    return showGlobalName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeBeggarMyNeighborStrategyView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONMyQRcodeView.h"
#import "SizeBeggarMyNeighborStrategyView.h"
//: #import "LCQRCodeUtil.h"
#import "IconToMessage.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

//: @interface ZMONMyQRcodeView ()
@interface SizeBeggarMyNeighborStrategyView ()

//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONMyQRcodeView
@implementation SizeBeggarMyNeighborStrategyView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initText];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initText{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-494)/2, [[UIScreen mainScreen] bounds].size.width-40, 494)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-494)/2, [[UIScreen mainScreen] bounds].size.width-40, 494)];
//    _box.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chat_bg"]];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.box.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.box.bounds];
    //: bg.image = [UIImage imageNamed:@"chat_bg"];
    bg.image = [UIImage imageNamed:[[OfData sharedInstance] kDoingInfoId]];
    //: [_box addSubview:bg];
    [_box addSubview:bg];

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ViewInfo *info = [[UserKit totalSend] color:userID image:nil];

    //: [_box addSubview:self.iconImageView];
    [_box addSubview:self.iconImageView];
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    //: self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-60)/2, 24, 60, 60);
    self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-60)/2, 24, 60, 60);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-244)/2, self.titleLabel.bottom+20, 244, 244)];
    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-244)/2, self.titleLabel.bottom+20, 244, 244)];
    //: [_box addSubview:qrView];
    [_box addSubview:qrView];
    //: qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: qrView.layer.borderWidth = 1;
    qrView.layer.borderWidth = 1;
    //: qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: qrView.layer.cornerRadius = 8;
    qrView.layer.cornerRadius = 8;
    //: qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: qrView.layer.shadowOffset = CGSizeMake(0,3);
    qrView.layer.shadowOffset = CGSizeMake(0,3);
    //: qrView.layer.shadowOpacity = 1;
    qrView.layer.shadowOpacity = 1;
    //: qrView.layer.shadowRadius = 0;
    qrView.layer.shadowRadius = 0;

    //: UIImage *qrImage = [LCQRCodeUtil createQRimageString:[[NIMSDK sharedSDK].loginManager currentAccount] sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImage *qrImage = [IconToMessage message:[[NIMSDK sharedSDK].loginManager currentAccount] writeInColor:220 size:[UIColor blackColor]];
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
    contentLabel.textColor = [UIColor recordView:[[OfData sharedInstance] mainDismissUrl]];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [ContentLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [MatronymicPath colorStreetwise:[[OfData sharedInstance] main_messageIdent]];//@"扫描二维码，加我为好友";
    //: [_box addSubview:contentLabel];
    [_box addSubview:contentLabel];



    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-32-10, 10, 32, 32);
    self.closeBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-32-10, 10, 32, 32);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-265)/2, 494-40-24, 265, 40);
    self.sureBtn.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-265)/2, 494-40-24, 265, 40);

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
        //: _iconImageView.layer.cornerRadius = 30;
        _iconImageView.layer.cornerRadius = 30;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationEnableClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"ic_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[[OfData sharedInstance] m_searchFormat]] forState:UIControlStateNormal];
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(pastSearched) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[ContentLanguageManager getTextWithKey:@"activity_qrcode_save_code"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[[OfData sharedInstance] m_remoteData]] forState:UIControlStateNormal];
        //: [_sureBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[[OfData sharedInstance] show_backgroundMsg]] forState:UIControlStateNormal];
        //: [_sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_sureBtn backgroundSpace:(MKButtonEdgeInsetsStyleLeft) at:10];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _sureBtn.backgroundColor = [UIColor recordView:[[OfData sharedInstance] dream_singleMsg]];
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
        _sureBtn.layer.shadowColor = [UIColor recordView:[[OfData sharedInstance] dream_singleMsg]].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: -(void)saveQcImage{
-(void)pastSearched{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self change:rect];

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
                  //: NSString *failed = [ContentLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [MatronymicPath colorStreetwise:[[OfData sharedInstance] noti_normalWindowValue]];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD should:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [ContentLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [MatronymicPath colorStreetwise:[[OfData sharedInstance] showGlobalName]];//保存成功
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
-(UIImage *)change:(CGRect)rect{

    //: UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.box.frame.size.width, self.box.frame.size.height), YES, 0);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.box.frame.size.width, self.box.frame.size.height), YES, 0);
    //设置截屏大小
    //: [[self.box layer] renderInContext:UIGraphicsGetCurrentContext()];
    [[self.box layer] renderInContext:UIGraphicsGetCurrentContext()];
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


//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)sizeShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
