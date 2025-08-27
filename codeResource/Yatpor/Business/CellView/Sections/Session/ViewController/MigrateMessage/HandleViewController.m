
#import <Foundation/Foundation.h>

@interface DotFellowData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DotFellowData

+ (instancetype)sharedInstance {
    static DotFellowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DotFellowDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DotFellowDataToCache:(Byte *)data {
    int lestComfortable = data[0];
    Byte toiletKit = data[1];
    int orange = data[2];
    for (int i = orange; i < orange + lestComfortable; i++) {
        int value = data[i] - toiletKit;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[orange + lestComfortable] = 0;
    return data + orange;
}

- (NSString *)StringFromDotFellowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DotFellowDataToCache:data]];
}

//: 重新导出
- (NSString *)dream_usKey {
    /* static */ NSString *dream_usKey = nil;
    if (!dream_usKey) {
		NSArray<NSNumber *> *origin = @[@12, @81, @13, @92, @215, @218, @119, @85, @77, @169, @137, @103, @94, @58, @216, @222, @55, @231, @1, @54, @0, @13, @54, @216, @11, @95];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_usKey = [self StringFromDotFellowData:value];
    }
    return dream_usKey;
}

//: 确定要取消导出?
- (NSString *)mStereoIdent {
    /* static */ NSString *mStereoIdent = nil;
    if (!mStereoIdent) {
		NSArray<NSNumber *> *origin = @[@22, @59, @3, @34, @220, @233, @32, @233, @213, @35, @225, @188, @32, @202, @209, @33, @241, @195, @32, @234, @247, @32, @194, @245, @122, @136];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mStereoIdent = [self StringFromDotFellowData:value];
    }
    return mStereoIdent;
}

//: 继续导出
- (NSString *)mainButtonValue {
    /* static */ NSString *mainButtonValue = nil;
    if (!mainButtonValue) {
		NSArray<NSNumber *> *origin = @[@12, @30, @6, @224, @26, @54, @5, @217, @197, @5, @217, @203, @3, @205, @218, @3, @165, @216, @205];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainButtonValue = [self StringFromDotFellowData:value];
    }
    return mainButtonValue;
}

//: 本地消息格式化导出失败
- (NSString *)m_windowInfoFormat {
    /* static */ NSString *m_windowInfoFormat = nil;
    if (!m_windowInfoFormat) {
		NSArray<NSNumber *> *origin = @[@33, @98, @11, @252, @120, @181, @72, @43, @182, @162, @110, @72, @254, @14, @71, @254, @18, @72, @24, @234, @72, @227, @17, @72, @2, @30, @71, @30, @241, @71, @238, @248, @71, @17, @30, @71, @233, @28, @71, @6, @19, @74, @22, @7, @156];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_windowInfoFormat = [self StringFromDotFellowData:value];
    }
    return m_windowInfoFormat;
}

//: 本地消息导出成功，请在新设备上点击导入吧
- (NSString *)k_viewerValue {
    /* static */ NSString *k_viewerValue = nil;
    if (!k_viewerValue) {
		NSArray<NSNumber *> *origin = @[@60, @43, @3, @17, @199, @215, @16, @199, @219, @17, @225, @179, @17, @172, @218, @16, @218, @231, @16, @178, @229, @17, @179, @187, @16, @181, @202, @26, @231, @183, @19, @218, @226, @16, @199, @211, @17, @193, @219, @19, @217, @233, @16, @207, @178, @15, @227, @181, @18, @173, @228, @16, @178, @230, @16, @218, @231, @16, @176, @208, @16, @187, @210, @116];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_viewerValue = [self StringFromDotFellowData:value];
    }
    return k_viewerValue;
}

//: 恭喜你
- (NSString *)kSmokeBurdenMsg {
    /* static */ NSString *kSmokeBurdenMsg = nil;
    if (!kSmokeBurdenMsg) {
		NSArray<NSNumber *> *origin = @[@9, @79, @5, @107, @39, @53, @208, @252, @52, @229, @235, @51, @12, @239, @219];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSmokeBurdenMsg = [self StringFromDotFellowData:value];
    }
    return kSmokeBurdenMsg;
}

//: 可导出的消息记录总数为空
- (NSString *)dreamGoProposalFormat {
    /* static */ NSString *dreamGoProposalFormat = nil;
    if (!dreamGoProposalFormat) {
		NSArray<NSNumber *> *origin = @[@36, @30, @5, @91, @108, @3, @173, @205, @3, @205, @218, @3, @165, @216, @5, @184, @162, @4, @212, @166, @4, @159, @205, @6, @204, @206, @3, @219, @179, @4, @158, @217, @4, @179, @206, @2, @214, @216, @5, @199, @216, @27];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamGoProposalFormat = [self StringFromDotFellowData:value];
    }
    return dreamGoProposalFormat;
}

//: 导出本地消息需要较长时间，请耐心等待
- (NSString *)user_frameUrl {
    /* static */ NSString *user_frameUrl = nil;
    if (!user_frameUrl) {
		NSArray<NSNumber *> *origin = @[@54, @33, @3, @6, @208, @221, @6, @168, @219, @7, @189, @205, @6, @189, @209, @7, @215, @169, @7, @162, @208, @10, @189, @161, @9, @199, @162, @9, @223, @164, @10, @182, @224, @7, @184, @215, @10, @184, @213, @16, @221, @173, @9, @208, @216, @9, @161, @177, @6, @224, @164, @8, @206, @170, @6, @223, @166, @56];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_frameUrl = [self StringFromDotFellowData:value];
    }
    return user_frameUrl;
}

//: 导出失败!
- (NSString *)showViewData {
    /* static */ NSString *showViewData = nil;
    if (!showViewData) {
		NSArray<NSNumber *> *origin = @[@13, @71, @4, @155, @44, @246, @3, @44, @206, @1, @44, @235, @248, @47, @251, @236, @104, @88];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showViewData = [self StringFromDotFellowData:value];
    }
    return showViewData;
}

//: 取消导出
- (NSString *)app_commentMsg {
    /* static */ NSString *app_commentMsg = nil;
    if (!app_commentMsg) {
		NSArray<NSNumber *> *origin = @[@12, @56, @8, @234, @79, @56, @110, @56, @29, @199, @206, @30, @238, @192, @29, @231, @244, @29, @191, @242, @111];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_commentMsg = [self StringFromDotFellowData:value];
    }
    return app_commentMsg;
}

//: 本地消息导出
- (NSString *)m_ofKey {
    /* static */ NSString *m_ofKey = nil;
    if (!m_ofKey) {
		NSArray<NSNumber *> *origin = @[@18, @30, @7, @161, @198, @64, @90, @4, @186, @202, @3, @186, @206, @4, @212, @166, @4, @159, @205, @3, @205, @218, @3, @165, @216, @199];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_ofKey = [self StringFromDotFellowData:value];
    }
    return m_ofKey;
}

//: aes256
- (NSString *)main_coverKey {
    /* static */ NSString *main_coverKey = nil;
    if (!main_coverKey) {
		NSArray<NSNumber *> *origin = @[@6, @46, @11, @122, @118, @187, @65, @84, @250, @12, @227, @143, @147, @161, @96, @99, @100, @62];
		NSData *data = [DotFellowData DotFellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_coverKey = [self StringFromDotFellowData:value];
    }
    return main_coverKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "HandleViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "HeavyLiftingEmissionView.h"
//: #import "NTESMigrateCompleteView.h"
#import "DateView.h"
//: #import "NSString+NTES.h"
#import "NSString+StyleTool.h"
//: #import "NSData+NTES.h"
#import "NSData+StyleTool.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "EmptyDelegateImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const show_commentId = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface HandleViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation HandleViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = [[DotFellowData sharedInstance] m_ofKey].with;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    HeavyLiftingEmissionView *progressView = [[HeavyLiftingEmissionView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(shoulded:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [[DotFellowData sharedInstance] user_frameUrl].with;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self scoopInfos];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)scoopInfos {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    EmptyDelegateImpl *exportImpl = [[EmptyDelegateImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[HeavyLiftingEmissionView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            HeavyLiftingEmissionView *progressView = (HeavyLiftingEmissionView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self clean:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self flush:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self success:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)shoulded:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[[DotFellowData sharedInstance] mStereoIdent].with message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[[DotFellowData sharedInstance] app_commentMsg].with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[[DotFellowData sharedInstance] mainButtonValue].with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];

    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)languaged:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)flush:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[[DotFellowData sharedInstance] showViewData].with message:[[DotFellowData sharedInstance] m_windowInfoFormat].with preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[[DotFellowData sharedInstance] dream_usKey].with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self scoopInfos];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)success:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self filePath:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self individual:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self tool:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)clean:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = [[DotFellowData sharedInstance] dreamGoProposalFormat].with;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)terminal:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self flush:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)noneLocalSuccess {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DateView *completeView = [[DateView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [[DotFellowData sharedInstance] kSmokeBurdenMsg].with;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = [[DotFellowData sharedInstance] k_viewerValue].with;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".with forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(languaged:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)filePath:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)individual:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString selection:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data greenDate:aesKey status:show_commentId];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[[DotFellowData sharedInstance] main_coverKey]];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)tool:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self terminal:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self elect:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)elect:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self terminal:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self noneLocalSuccess];
        }
    //: }];
    }];
}

//: @end
@end