
#import <Foundation/Foundation.h>

@interface RelationShareData : NSObject

@end

@implementation RelationShareData

+ (NSData *)RelationShareDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)RelationShareDataToCache:(Byte *)data {
    int dataFormat = data[0];
    Byte remoteRange = data[1];
    int backOn = data[2];
    for (int i = backOn; i < backOn + dataFormat; i++) {
        int value = data[i] + remoteRange;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[backOn + dataFormat] = 0;
    return data + backOn;
}

+ (NSString *)StringFromRelationShareData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RelationShareDataToCache:data]];
}

//: 确定要取消导入？
+ (NSString *)notiMessageFormat {
    /* static */ NSString *notiMessageFormat = nil;
    if (!notiMessageFormat) {
		NSArray<NSString *> *origin = @[@"24", @"87", @"3", @"144", @"74", @"87", @"142", @"87", @"67", @"145", @"79", @"42", @"142", @"56", @"63", @"143", @"95", @"49", @"142", @"88", @"101", @"142", @"46", @"78", @"152", @"101", @"72", @"50"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMessageFormat = [self StringFromRelationShareData:value];
    }
    return notiMessageFormat;
}

//: 返回会话列表
+ (NSString *)notiStereoIdent {
    /* static */ NSString *notiStereoIdent = nil;
    if (!notiStereoIdent) {
		NSArray<NSString *> *origin = @[@"18", @"35", @"3", @"197", @"156", @"113", @"194", @"120", @"123", @"193", @"153", @"119", @"197", @"140", @"122", @"194", @"101", @"116", @"197", @"126", @"133", @"227"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiStereoIdent = [self StringFromRelationShareData:value];
    }
    return notiStereoIdent;
}

//: 恭喜你
+ (NSString *)m_dismissDateFormat {
    /* static */ NSString *m_dismissDateFormat = nil;
    if (!m_dismissDateFormat) {
		NSArray<NSString *> *origin = @[@"9", @"94", @"11", @"171", @"76", @"151", @"88", @"151", @"252", @"253", @"150", @"136", @"35", @"79", @"135", @"56", @"62", @"134", @"95", @"66", @"39"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_dismissDateFormat = [self StringFromRelationShareData:value];
    }
    return m_dismissDateFormat;
}

//: NIM
+ (NSString *)mainTagData {
    /* static */ NSString *mainTagData = nil;
    if (!mainTagData) {
		NSArray<NSString *> *origin = @[@"3", @"37", @"4", @"194", @"41", @"36", @"40", @"68"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTagData = [self StringFromRelationShareData:value];
    }
    return mainTagData;
}

//: 继续导入
+ (NSString *)noti_flameContent {
    /* static */ NSString *noti_flameContent = nil;
    if (!noti_flameContent) {
		NSArray<NSString *> *origin = @[@"12", @"69", @"6", @"83", @"75", @"70", @"162", @"118", @"98", @"162", @"118", @"104", @"160", @"106", @"119", @"160", @"64", @"96", @"134"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_flameContent = [self StringFromRelationShareData:value];
    }
    return noti_flameContent;
}

//: 合并失败
+ (NSString *)user_viewContent {
    /* static */ NSString *user_viewContent = nil;
    if (!user_viewContent) {
		NSArray<NSString *> *origin = @[@"12", @"4", @"5", @"164", @"219", @"225", @"140", @"132", @"225", @"181", @"178", @"225", @"160", @"173", @"228", @"176", @"161", @"153"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_viewContent = [self StringFromRelationShareData:value];
    }
    return user_viewContent;
}

//: 本地消息导入
+ (NSString *)m_toiletText {
    /* static */ NSString *m_toiletText = nil;
    if (!m_toiletText) {
		NSArray<NSString *> *origin = @[@"18", @"78", @"5", @"46", @"43", @"152", @"78", @"94", @"151", @"78", @"98", @"152", @"104", @"58", @"152", @"51", @"97", @"151", @"97", @"110", @"151", @"55", @"87", @"134"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_toiletText = [self StringFromRelationShareData:value];
    }
    return m_toiletText;
}

//: 重新导入
+ (NSString *)user_collectionStr {
    /* static */ NSString *user_collectionStr = nil;
    if (!user_collectionStr) {
		NSArray<NSString *> *origin = @[@"12", @"7", @"6", @"24", @"6", @"87", @"226", @"128", @"134", @"223", @"143", @"169", @"222", @"168", @"181", @"222", @"126", @"158", @"11"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_collectionStr = [self StringFromRelationShareData:value];
    }
    return user_collectionStr;
}

//: 解压失败
+ (NSString *)user_scaleFormat {
    /* static */ NSString *user_scaleFormat = nil;
    if (!user_scaleFormat) {
		NSArray<NSString *> *origin = @[@"12", @"22", @"5", @"80", @"209", @"210", @"145", @"141", @"207", @"120", @"117", @"207", @"142", @"155", @"210", @"158", @"143", @"128"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_scaleFormat = [self StringFromRelationShareData:value];
    }
    return user_scaleFormat;
}

//: 下载消息文件失败
+ (NSString *)k_creasedSelectedId {
    /* static */ NSString *k_creasedSelectedId = nil;
    if (!k_creasedSelectedId) {
		NSArray<NSString *> *origin = @[@"24", @"67", @"3", @"161", @"117", @"72", @"165", @"122", @"122", @"163", @"115", @"69", @"163", @"62", @"108", @"163", @"83", @"68", @"161", @"120", @"115", @"162", @"97", @"110", @"165", @"113", @"98", @"13"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_creasedSelectedId = [self StringFromRelationShareData:value];
    }
    return k_creasedSelectedId;
}

//: 取消导入
+ (NSString *)show_stereoName {
    /* static */ NSString *show_stereoName = nil;
    if (!show_stereoName) {
		NSArray<NSString *> *origin = @[@"12", @"30", @"4", @"122", @"199", @"113", @"120", @"200", @"152", @"106", @"199", @"145", @"158", @"199", @"103", @"135", @"214"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_stereoName = [self StringFromRelationShareData:value];
    }
    return show_stereoName;
}

//: decryped
+ (NSString *)app_budgeValue {
    /* static */ NSString *app_budgeValue = nil;
    if (!app_budgeValue) {
		NSArray<NSString *> *origin = @[@"8", @"72", @"13", @"95", @"56", @"247", @"63", @"103", @"245", @"221", @"154", @"68", @"26", @"28", @"29", @"27", @"42", @"49", @"40", @"29", @"28", @"254"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_budgeValue = [self StringFromRelationShareData:value];
    }
    return app_budgeValue;
}

//: zip
+ (NSString *)showUpData {
    /* static */ NSString *showUpData = nil;
    if (!showUpData) {
		NSArray<NSString *> *origin = @[@"3", @"17", @"6", @"46", @"215", @"246", @"105", @"88", @"95", @"13"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showUpData = [self StringFromRelationShareData:value];
    }
    return showUpData;
}

//: unzip
+ (NSString *)mainTitleMessage {
    /* static */ NSString *mainTitleMessage = nil;
    if (!mainTitleMessage) {
		NSArray<NSString *> *origin = @[@"5", @"18", @"11", @"240", @"236", @"164", @"255", @"184", @"48", @"26", @"78", @"99", @"92", @"104", @"87", @"94", @"37"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTitleMessage = [self StringFromRelationShareData:value];
    }
    return mainTitleMessage;
}

//: iOS-zip-aes256
+ (NSString *)notiSumernCoverName {
    /* static */ NSString *notiSumernCoverName = nil;
    if (!notiSumernCoverName) {
		NSArray<NSString *> *origin = @[@"14", @"24", @"5", @"152", @"159", @"81", @"55", @"59", @"21", @"98", @"81", @"88", @"21", @"73", @"77", @"91", @"26", @"29", @"30", @"106"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiSumernCoverName = [self StringFromRelationShareData:value];
    }
    return notiSumernCoverName;
}

//: 消息导入成功
+ (NSString *)user_kitFormat {
    /* static */ NSString *user_kitFormat = nil;
    if (!user_kitFormat) {
		NSArray<NSString *> *origin = @[@"18", @"69", @"13", @"232", @"146", @"16", @"104", @"135", @"112", @"182", @"171", @"108", @"134", @"161", @"113", @"67", @"161", @"60", @"106", @"160", @"106", @"119", @"160", @"64", @"96", @"161", @"67", @"75", @"160", @"69", @"90", @"237"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_kitFormat = [self StringFromRelationShareData:value];
    }
    return user_kitFormat;
}

//: 导入本地消息需要较长时间，请耐心等待
+ (NSString *)mainDateFormat {
    /* static */ NSString *mainDateFormat = nil;
    if (!mainDateFormat) {
		NSArray<NSString *> *origin = @[@"54", @"75", @"12", @"74", @"204", @"30", @"25", @"230", @"74", @"227", @"110", @"22", @"154", @"100", @"113", @"154", @"58", @"90", @"155", @"81", @"97", @"154", @"81", @"101", @"155", @"107", @"61", @"155", @"54", @"100", @"158", @"81", @"53", @"157", @"91", @"54", @"157", @"115", @"56", @"158", @"74", @"116", @"155", @"76", @"107", @"158", @"76", @"105", @"164", @"113", @"65", @"157", @"100", @"108", @"157", @"53", @"69", @"154", @"116", @"56", @"156", @"98", @"62", @"154", @"115", @"58", @"18"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDateFormat = [self StringFromRelationShareData:value];
    }
    return mainDateFormat;
}

//: 导入失败！
+ (NSString *)mSymptomFormat {
    /* static */ NSString *mSymptomFormat = nil;
    if (!mSymptomFormat) {
		NSArray<NSString *> *origin = @[@"15", @"2", @"12", @"55", @"87", @"162", @"223", @"224", @"29", @"234", @"13", @"91", @"227", @"173", @"186", @"227", @"131", @"163", @"227", @"162", @"175", @"230", @"178", @"163", @"237", @"186", @"127", @"45"];
		NSData *data = [RelationShareData RelationShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSymptomFormat = [self StringFromRelationShareData:value];
    }
    return mSymptomFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathPacketViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "PathPacketViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "HeavyLiftingEmissionView.h"
//: #import "NTESMigrateCompleteView.h"
#import "DateView.h"
//: #import "NSData+NTES.h"
#import "NSData+StyleTool.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "SessionScale.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "QuickViewController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const show_commentId = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface PathPacketViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation PathPacketViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = [RelationShareData m_toiletText].with;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    HeavyLiftingEmissionView *progressView = [[HeavyLiftingEmissionView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(shoulded:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [RelationShareData mainDateFormat].with;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self visualCommunication];
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

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)shoulded:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[RelationShareData notiMessageFormat].with message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[RelationShareData show_stereoName].with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[RelationShareData noti_flameContent].with style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    QuickViewController *tabController = [QuickViewController on];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)sendDown:(NSError *)error darkGreen:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[RelationShareData mSymptomFormat].with message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[RelationShareData user_collectionStr].with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self visualCommunication];
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

//: - (void)onImportSuccess {
- (void)progress {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DateView *completeView = [[DateView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [RelationShareData m_dismissDateFormat].with;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = [RelationShareData user_kitFormat].with;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:[RelationShareData notiStereoIdent].with forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(languaged:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)visualCommunication {
    //: [self removeTempFiles];
    [self procrusteanBed];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self tinkle];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self sendDown:error darkGreen:[RelationShareData k_creasedSelectedId].with];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self down:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self picture:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self canMessage:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)down:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data color:aesKey radius:show_commentId];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:[RelationShareData app_budgeValue]];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:[RelationShareData showUpData]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)picture:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:[RelationShareData mainTitleMessage]];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)canMessage:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self sendDown:nil darkGreen:[RelationShareData user_scaleFormat].with];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    SessionScale *importImpl = [[SessionScale alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        HeavyLiftingEmissionView *progressView = (HeavyLiftingEmissionView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[HeavyLiftingEmissionView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self sendDown:error darkGreen:[RelationShareData user_viewContent].with];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self progress];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)tinkle {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:[RelationShareData mainTagData]];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:[RelationShareData notiSumernCoverName]];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)procrusteanBed {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self tinkle] error:nil];
}

//: @end
@end