
#import <Foundation/Foundation.h>
typedef struct {
    Byte straw;
    Byte *valueRelease;
    unsigned int titleTing;
    Byte mentalPicture;
} ByData;

NSString *StringFromByData(ByData *data);


//: wc_scan_torch
ByData main_tingInfoTitle = (ByData){81, (Byte []){38, 50, 14, 34, 50, 48, 63, 14, 37, 62, 35, 50, 57, 245}, 13, 189};

//: activity_qrcode_scan_me
ByData main_bubbleKey = (ByData){147, (Byte []){242, 240, 231, 250, 229, 250, 231, 234, 204, 226, 225, 240, 252, 247, 246, 204, 224, 240, 242, 253, 204, 254, 246, 42}, 23, 249};

//: message_send_album
ByData appLineName = (ByData){176, (Byte []){221, 213, 195, 195, 209, 215, 213, 239, 195, 213, 222, 212, 239, 209, 220, 210, 197, 221, 238}, 18, 164};

//: wc_scan_album
ByData k_tagNeedStatePath = (ByData){233, (Byte []){158, 138, 182, 154, 138, 136, 135, 182, 136, 133, 139, 156, 132, 59}, 13, 212};

//: wc_scan_torch_hl
ByData app_remoteMessage = (ByData){226, (Byte []){149, 129, 189, 145, 129, 131, 140, 189, 150, 141, 144, 129, 138, 189, 138, 142, 124}, 16, 215};

//: qrcode_activity_title
ByData mainStateTitle = (ByData){212, (Byte []){165, 166, 183, 187, 176, 177, 139, 181, 183, 160, 189, 162, 189, 160, 173, 139, 160, 189, 160, 184, 177, 193}, 21, 215};

//: wc_scan_mine_qrcode
ByData showInfoData = (ByData){253, (Byte []){138, 158, 162, 142, 158, 156, 147, 162, 144, 148, 147, 152, 162, 140, 143, 158, 146, 153, 152, 8}, 19, 192};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONScanToolBar.h"
#import "MenuView.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"

//: @interface ZMONScanToolBar ()
@interface MenuView ()
//: @property (nonatomic, strong) UIButton *torchBtn;
@property (nonatomic, strong) UIButton *torchBtn;
//: @property (nonatomic, strong) UILabel *tipsLab;
@property (nonatomic, strong) UILabel *tipsLab;
//: @property (nonatomic, strong) UIImageView *qrcodeImgView;
@property (nonatomic, strong) UIImageView *qrcodeImgView;
//: @property (nonatomic, strong) UILabel *qrcodeLab;
@property (nonatomic, strong) UILabel *qrcodeLab;
//: @property (nonatomic, strong) UIImageView *albumImgView;
@property (nonatomic, strong) UIImageView *albumImgView;
//: @property (nonatomic, strong) UILabel *albumLab;
@property (nonatomic, strong) UILabel *albumLab;
//: @end
@end

//: @implementation ZMONScanToolBar
@implementation MenuView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {

        //: [self addSubview:self.torchBtn];
        [self addSubview:self.torchBtn];

        //: [self addSubview:self.tipsLab];
        [self addSubview:self.tipsLab];

        //: [self addSubview:self.qrcodeImgView];
        [self addSubview:self.qrcodeImgView];

        //: [self addSubview:self.qrcodeLab];
        [self addSubview:self.qrcodeLab];

        //: [self addSubview:self.albumImgView];
        [self addSubview:self.albumImgView];

        //: [self addSubview:self.albumLab];
        [self addSubview:self.albumLab];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGFloat tBtn_w = 50;
    CGFloat tBtn_w = 50;
    //: CGFloat tBtn_h = 70;
    CGFloat tBtn_h = 70;
    //: CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    //: CGFloat tBtn_y = 0;
    CGFloat tBtn_y = 0;
    //: self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);
    self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);

    //: CGFloat tipsLab_w = self.frame.size.width;
    CGFloat tipsLab_w = self.frame.size.width;
    //: CGFloat tipsLab_h = 15;
    CGFloat tipsLab_h = 15;
    //: CGFloat tipsLab_x = 0;
    CGFloat tipsLab_x = 0;
    //: CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    //: self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);
    self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);

    //: CGFloat qrLab_w = 150;
    CGFloat qrLab_w = 150;
    //: CGFloat qrLab_h = 12;
    CGFloat qrLab_h = 12;
    //: CGFloat qrLab_x = 0;
    CGFloat qrLab_x = 0;
    //: CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    //: self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);
    self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);

    //: CGFloat qrImgView_w = 50;
    CGFloat qrImgView_w = 50;
    //: CGFloat qrImgView_h = 50;
    CGFloat qrImgView_h = 50;
    //: CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    //: CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    //: self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);
    self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);

    //: CGFloat alLab_w = qrLab_w;
    CGFloat alLab_w = qrLab_w;
    //: CGFloat alLab_h = qrLab_h;
    CGFloat alLab_h = qrLab_h;
    //: CGFloat alLab_x = self.frame.size.width - alLab_w;
    CGFloat alLab_x = self.frame.size.width - alLab_w;
    //: CGFloat alLab_y = qrLab_y;
    CGFloat alLab_y = qrLab_y;
    //: self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);
    self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);

    //: CGFloat alImgView_w = qrImgView_w;
    CGFloat alImgView_w = qrImgView_w;
    //: CGFloat alImgView_h = qrImgView_h;
    CGFloat alImgView_h = qrImgView_h;
    //: CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    //: CGFloat alImgView_y = qrImgView_y;
    CGFloat alImgView_y = qrImgView_y;
    //: self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);
    self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);

    //: self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    //: self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
}

//: - (UIButton *)torchBtn {
- (UIButton *)torchBtn {
    //: if (!_torchBtn) {
    if (!_torchBtn) {
        //: _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_torchBtn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [_torchBtn setBackgroundImage:[UIImage imageNamed:StringFromByData(&main_tingInfoTitle)] forState:(UIControlStateNormal)];
        //: [_torchBtn addTarget:self action:@selector(torchBtn_action:) forControlEvents:(UIControlEventTouchUpInside)];
        [_torchBtn addTarget:self action:@selector(texts:) forControlEvents:(UIControlEventTouchUpInside)];
        //: _torchBtn.hidden = YES;
        _torchBtn.hidden = YES;
    }
    //: return _torchBtn;
    return _torchBtn;
}

//: - (void)torchBtn_action:(UIButton *)btn {
- (void)texts:(UIButton *)btn {
    //: if (btn.selected) {
    if (btn.selected) {
        //: btn.selected = NO;
        btn.selected = NO;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromByData(&main_tingInfoTitle)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOffTorch];
        [MenuSizeTing date];
    //: } else {
    } else {
        //: btn.selected = YES;
        btn.selected = YES;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch_hl"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromByData(&app_remoteMessage)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOnTorch];
        [MenuSizeTing viewShould];
    }
}

//: - (UILabel *)tipsLab {
- (UILabel *)tipsLab {
    //: if (!_tipsLab) {
    if (!_tipsLab) {
        //: _tipsLab = [[UILabel alloc] init];
        _tipsLab = [[UILabel alloc] init];
        //: _tipsLab.text = [FFFLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
        _tipsLab.text = [MatronymicPath colorStreetwise:StringFromByData(&main_bubbleKey)];
//        _tipsLab.text = @"将二维码放入扫面框内";
        //: _tipsLab.textAlignment = NSTextAlignmentCenter;
        _tipsLab.textAlignment = NSTextAlignmentCenter;
        //: _tipsLab.textColor = [UIColor whiteColor];
        _tipsLab.textColor = [UIColor whiteColor];
        //: _tipsLab.font = [UIFont systemFontOfSize:17];
        _tipsLab.font = [UIFont systemFontOfSize:17];
    }
    //: return _tipsLab;
    return _tipsLab;
}

//: - (UIImageView *)qrcodeImgView {
- (UIImageView *)qrcodeImgView {
    //: if (!_qrcodeImgView) {
    if (!_qrcodeImgView) {
        //: _qrcodeImgView = [[UIImageView alloc] init];
        _qrcodeImgView = [[UIImageView alloc] init];
        //: _qrcodeImgView.userInteractionEnabled = YES;
        _qrcodeImgView.userInteractionEnabled = YES;
        //: _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _qrcodeImgView.image = [UIImage imageNamed:@"wc_scan_mine_qrcode"];
        _qrcodeImgView.image = [UIImage imageNamed:StringFromByData(&showInfoData)];
    }
    //: return _qrcodeImgView;
    return _qrcodeImgView;
}

//: - (UILabel *)qrcodeLab {
- (UILabel *)qrcodeLab {
    //: if (!_qrcodeLab) {
    if (!_qrcodeLab) {
        //: _qrcodeLab = [[UILabel alloc] init];
        _qrcodeLab = [[UILabel alloc] init];
        //: _qrcodeLab.text = [FFFLanguageManager getTextWithKey:@"qrcode_activity_title"];
        _qrcodeLab.text = [MatronymicPath colorStreetwise:StringFromByData(&mainStateTitle)];
        //: _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        //: _qrcodeLab.textColor = [UIColor whiteColor];
        _qrcodeLab.textColor = [UIColor whiteColor];
        //: _qrcodeLab.font = [UIFont systemFontOfSize:13];
        _qrcodeLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _qrcodeLab;
    return _qrcodeLab;
}

//: - (UIImageView *)albumImgView {
- (UIImageView *)albumImgView {
    //: if (!_albumImgView) {
    if (!_albumImgView) {
        //: _albumImgView = [[UIImageView alloc] init];
        _albumImgView = [[UIImageView alloc] init];
        //: _albumImgView.userInteractionEnabled = YES;
        _albumImgView.userInteractionEnabled = YES;
        //: _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _albumImgView.image = [UIImage imageNamed:@"wc_scan_album"];
        _albumImgView.image = [UIImage imageNamed:StringFromByData(&k_tagNeedStatePath)];
    }
    //: return _albumImgView;
    return _albumImgView;
}

//: - (UILabel *)albumLab {
- (UILabel *)albumLab {
    //: if (!_albumLab) {
    if (!_albumLab) {
        //: _albumLab = [[UILabel alloc] init];
        _albumLab = [[UILabel alloc] init];
        //: _albumLab.text = [FFFLanguageManager getTextWithKey:@"message_send_album"];
        _albumLab.text = [MatronymicPath colorStreetwise:StringFromByData(&appLineName)];
        //: _albumLab.textAlignment = NSTextAlignmentCenter;
        _albumLab.textAlignment = NSTextAlignmentCenter;
        //: _albumLab.textColor = [UIColor whiteColor];
        _albumLab.textColor = [UIColor whiteColor];
        //: _albumLab.font = [UIFont systemFontOfSize:13];
        _albumLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _albumLab;
    return _albumLab;
}

//: - (void)showTorch {
- (void)corner {
    //: self.torchBtn.hidden = NO;
    self.torchBtn.hidden = NO;
    //: self.tipsLab.hidden = YES;
    self.tipsLab.hidden = YES;
}
//: - (void)dismissTorch {
- (void)post {
    //: if (!self.torchBtn.isSelected) {
    if (!self.torchBtn.isSelected) {
        //: self.torchBtn.hidden = YES;
        self.torchBtn.hidden = YES;
        //: self.tipsLab.hidden = NO;
        self.tipsLab.hidden = NO;
    }
}

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction {
- (void)orderedSeries:(id)aTarget travelKit:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.qrcodeImgView addGestureRecognizer:tap];
    [self.qrcodeImgView addGestureRecognizer:tap];
}
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction {
- (void)disable:(id)aTarget want:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.albumImgView addGestureRecognizer:tap];
    [self.albumImgView addGestureRecognizer:tap];
}

//: @end
@end

Byte *ByDataToByte(ByData *data) {
    if (data->mentalPicture < 120) return data->valueRelease;
    for (int i = 0; i < data->titleTing; i++) {
        data->valueRelease[i] ^= data->straw;
    }
    data->valueRelease[data->titleTing] = 0;
    data->mentalPicture = 41;
    return data->valueRelease;
}

NSString *StringFromByData(ByData *data) {
    return [NSString stringWithUTF8String:(char *)ByDataToByte(data)];
}
