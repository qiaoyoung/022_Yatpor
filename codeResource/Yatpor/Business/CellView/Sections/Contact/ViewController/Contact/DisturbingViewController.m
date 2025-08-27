
#import <Foundation/Foundation.h>

NSString *StringFromOperationData(Byte *data);


//: code
Byte dreamCollectionTitle[] = {75, 4, 10, 14, 49, 152, 105, 114, 119, 118, 46, 221, 197, 185, 109, 121, 110, 111, 95};

//: contact_tag_fragment_cancel
Byte app_valueFormat[] = {96, 27, 88, 5, 214, 187, 199, 198, 204, 185, 187, 204, 183, 204, 185, 191, 183, 190, 202, 185, 191, 197, 189, 198, 204, 183, 187, 185, 198, 187, 189, 196, 176};

//: icon_QR_close
Byte main_upData[] = {93, 13, 82, 9, 72, 71, 121, 209, 26, 187, 181, 193, 192, 177, 163, 164, 177, 181, 190, 193, 197, 183, 39};

//: scan_end_sound.caf
Byte m_tagId[] = {54, 18, 34, 8, 216, 17, 74, 151, 149, 133, 131, 144, 129, 135, 144, 134, 129, 149, 145, 151, 144, 134, 80, 133, 131, 136, 166};

//: tag_activity_set
Byte showBeginPath[] = {19, 16, 62, 14, 12, 224, 223, 71, 205, 214, 251, 230, 100, 218, 178, 159, 165, 157, 159, 161, 178, 167, 180, 167, 178, 183, 157, 177, 163, 178, 91};

//: account
Byte m_stateName[] = {69, 7, 36, 4, 133, 135, 135, 147, 153, 146, 152, 117};

//: /user/search
Byte mainTablePath[] = {25, 12, 96, 12, 248, 149, 252, 159, 61, 183, 46, 59, 143, 213, 211, 197, 210, 143, 211, 197, 193, 210, 195, 200, 92};

//: uid
Byte show_valueContent[] = {17, 3, 75, 10, 254, 80, 179, 139, 232, 191, 192, 180, 175, 182};

//: setting_privacy_camera
Byte app_tingCustomStr[] = {26, 22, 85, 10, 147, 167, 251, 174, 223, 202, 200, 186, 201, 201, 190, 195, 188, 180, 197, 199, 190, 203, 182, 184, 206, 180, 184, 182, 194, 186, 199, 182, 240};

//: data
Byte notiRedRemoveDateUrl[] = {34, 4, 34, 4, 134, 131, 150, 131, 106};

//: msg
Byte notiLineKey[] = {10, 3, 61, 11, 193, 79, 70, 218, 205, 93, 134, 170, 176, 164, 86};

//: warm_prompt
Byte userOperationMessage[] = {15, 11, 75, 5, 62, 194, 172, 189, 184, 170, 187, 189, 186, 184, 187, 191, 62};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisturbingViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "DisturbingViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "ZMONScanToolBar.h"
#import "MenuView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "LifeStyleViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface DisturbingViewController ()<SuccessGlassDelegate, NameStyle, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    TextAsset *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) EnableScanView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) MenuView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation DisturbingViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self windowBlue];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self bankManagerStart];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self windowBlue];
}

//: - (void)start {
- (void)bankManagerStart {
    //: [scanCode startRunning];
    [scanCode flush];
    //: [self.scanView startScanning];
    [self.scanView criticizeScanning];
}

//: - (void)stop {
- (void)windowBlue {
    //: [scanCode stopRunning];
    [scanCode fileWith];
    //: [self.scanView stopScanning];
    [self.scanView handleSession];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self content];

    //: [self configScanCode];
    [self clip];
}

//: - (void)configUI {
- (void)content {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromOperationData(main_upData)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice bearDown], 40, 40);

}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)clip {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[TextAsset alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode circle]) {
        //: return;;
        return;;
    }
    //: scanCode.delegate = self;
    scanCode.delegate = self;
    //: scanCode.sampleBufferDelegate = self;
    scanCode.sampleBufferDelegate = self;
    //: scanCode.preview = self.view;
    scanCode.preview = self.view;
}

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)holder:(TextAsset *)scanCode key:(NSString *)result {
    //: [self stop];
    [self windowBlue];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode brisancePost:StringFromOperationData(m_tagId)];

    //: [self addFriend:result];
    [self selected:result];
//    BarViewController *vc = [[BarViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)device:(TextAsset *)scanCode along:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar corner];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar post];
    }
}

//: - (SGScanView *)scanView {
- (EnableScanView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        DisableConfigure *configure = [[DisableConfigure alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[EnableScanView alloc] initWithRequisiteSum:CGRectMake(x, y, w, h) shirtButton:configure];

        //: CGFloat scan_x = 0;
        CGFloat scan_x = 0;
        //: CGFloat scan_y = 0.18 * self.view.frame.size.height;
        CGFloat scan_y = 0.18 * self.view.frame.size.height;
        //: CGFloat scan_w = self.view.frame.size.width - 2 * x;
        CGFloat scan_w = self.view.frame.size.width - 2 * x;
        //: CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        //: _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);
        _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: _scanView.doubleTapBlock = ^(BOOL selected) {
        _scanView.doubleTapBlock = ^(BOOL selected) {
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (selected) {
            if (selected) {
                //: [strongSelf->scanCode setVideoZoomFactor:4.0];
                [strongSelf->scanCode setSizeOf:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setSizeOf:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (MenuView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[MenuView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar orderedSeries:self travelKit:@selector(requestThread)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar disable:self want:@selector(locationOn)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)requestThread {
    //: [self stop];
    [self windowBlue];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    LifeStyleViewController *vc = [[LifeStyleViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)locationOn {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [ModePermission heliogram:SGPermissionTypePhoto counterval:^(ModePermission * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission redKey:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self untilInfo];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self untilInfo];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[ContentLanguageManager getTextWithKey:@"warm_prompt"] message:[ContentLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(userOperationMessage)] message:[MatronymicPath colorStreetwise:StringFromOperationData(app_tingCustomStr)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(app_valueFormat)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(showBeginPath)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];

        //: } else if (status == SGPermissionStatusRestricted) {
        } else if (status == SGPermissionStatusRestricted) {

//            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//            if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//            }

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[ContentLanguageManager getTextWithKey:@"warm_prompt"] message:[ContentLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(userOperationMessage)] message:[MatronymicPath colorStreetwise:StringFromOperationData(app_tingCustomStr)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(app_valueFormat)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:StringFromOperationData(showBeginPath)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];
        }
    //: }];
    }];
}


//: - (void)_enterImagePickerController {
- (void)untilInfo {
    //: [self stop];
    [self windowBlue];

    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    //: [self presentViewController:imagePicker animated:YES completion:nil];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self bankManagerStart];
}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [scanCode readQRCode:image completion:^(NSString *result) {
    [scanCode user:image tipWith:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self bankManagerStart];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode brisancePost:StringFromOperationData(m_tagId)];
            //: [self addFriend:result];
            [self selected:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                BarViewController *vc = [[BarViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)selected:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:StringFromOperationData(m_stateName)];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:StringFromOperationData(mainTablePath)] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:StringFromOperationData(dreamCollectionTitle)];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:StringFromOperationData(notiLineKey)];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:StringFromOperationData(notiRedRemoveDateUrl)];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data to:StringFromOperationData(show_valueContent)];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                BarViewController *vc = [[BarViewController alloc] initWithScale:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD should:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * OperationDataToCache(Byte *data) {
    int text = data[0];
    int windowKey = data[1];
    Byte off = data[2];
    int dismiss = data[3];
    if (!text) return data + dismiss;
    for (int i = dismiss; i < dismiss + windowKey; i++) {
        int value = data[i] - off;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dismiss + windowKey] = 0;
    return data + dismiss;
}

NSString *StringFromOperationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OperationDataToCache(data)];
}
