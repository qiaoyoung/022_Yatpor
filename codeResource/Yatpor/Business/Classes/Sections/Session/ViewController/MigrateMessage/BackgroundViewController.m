
#import <Foundation/Foundation.h>

@interface FellowData : NSObject

@end

@implementation FellowData

+ (NSData *)FellowDataToData:(NSString *)value {
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

+ (Byte *)FellowDataToCache:(Byte *)data {
    int athlete = data[0];
    int nameNeed = data[1];
    for (int i = 0; i < athlete / 2; i++) {
        int begin = nameNeed + i;
        int end = nameNeed + athlete - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[nameNeed + athlete] = 0;
    return data + nameNeed;
}

+ (NSString *)StringFromFellowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FellowDataToCache:data]];
}  

//: 本地消息导出
+ (NSString *)show_valuePath {
    /* static */ NSString *show_valuePath = nil;
    if (!show_valuePath) {
		NSString *origin = @"12035CBA87E5BCAFE5AF81E688B6E6B09CE5AC9CE6AE";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_valuePath = [self StringFromFellowData:value];
    }
    return show_valuePath;
}

//: action
+ (NSString *)dream_collectionStr {
    /* static */ NSString *dream_collectionStr = nil;
    if (!dream_collectionStr) {
		NSString *origin = @"0608EBBDD32FA2F76E6F69746361B4";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_collectionStr = [self StringFromFellowData:value];
    }
    return dream_collectionStr;
}

//: onTouchImportLocalMessages:
+ (NSString *)main_accountIdent {
    /* static */ NSString *main_accountIdent = nil;
    if (!main_accountIdent) {
		NSString *origin = @"1B03F13A736567617373654D6C61636F4C74726F706D496863756F546E6FA4";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_accountIdent = [self StringFromFellowData:value];
    }
    return main_accountIdent;
}

//: title
+ (NSString *)notiDotFormat {
    /* static */ NSString *notiDotFormat = nil;
    if (!notiDotFormat) {
		NSString *origin = @"05063BEDAF6D656C746974A2";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiDotFormat = [self StringFromFellowData:value];
    }
    return notiDotFormat;
}

//: row
+ (NSString *)m_toiletSizePath {
    /* static */ NSString *m_toiletSizePath = nil;
    if (!m_toiletSizePath) {
		NSString *origin = @"03085CE38D0E655F776F723E";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_toiletSizePath = [self StringFromFellowData:value];
    }
    return m_toiletSizePath;
}

//: 本地消息将存至云端，会耗费较长时间
+ (NSString *)mainToiletUpgradeId {
    /* static */ NSString *mainToiletUpgradeId = nil;
    if (!mainToiletUpgradeId) {
		NSString *origin = @"33054CB420B497E9B697E6BF95E983BEE8B9B4E89780E89ABCE48CBCEFAFABE791BAE4B387E898ADE586B0E5AF81E688B6E6B09CE5AC9CE6C4";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainToiletUpgradeId = [self StringFromFellowData:value];
    }
    return mainToiletUpgradeId;
}

//: headerTitle
+ (NSString *)dream_valueRemoveId {
    /* static */ NSString *dream_valueRemoveId = nil;
    if (!dream_valueRemoveId) {
		NSString *origin = @"0B0A1FF7D01DF50943F4656C7469547265646165686C";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_valueRemoveId = [self StringFromFellowData:value];
    }
    return dream_valueRemoveId;
}

//: 本地消息导入
+ (NSString *)showUsPath {
    /* static */ NSString *showUsPath = nil;
    if (!showUsPath) {
		NSString *origin = @"120A08E6CD506D250D7EA585E5BCAFE5AF81E688B6E6B09CE5AC9CE66F";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showUsPath = [self StringFromFellowData:value];
    }
    return showUsPath;
}

//: 本地消息迁移
+ (NSString *)notiBackMessage {
    /* static */ NSString *notiBackMessage = nil;
    if (!notiBackMessage) {
		NSString *origin = @"1202BBA7E781BFE8AF81E688B6E6B09CE5AC9CE672";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBackMessage = [self StringFromFellowData:value];
    }
    return notiBackMessage;
}

//: 继续导出
+ (NSString *)showLabTextKey {
    /* static */ NSString *showLabTextKey = nil;
    if (!showLabTextKey) {
		NSString *origin = @"0C07EA01698E8FBA87E5BCAFE5ADBBE7A7BBE738";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showLabTextKey = [self StringFromFellowData:value];
    }
    return showLabTextKey;
}

//: 未找到消息备份。请先在旧设备上导出消息记录
+ (NSString *)appToiletCoverJurisdictionUrl {
    /* static */ NSString *appToiletCoverJurisdictionUrl = nil;
    if (!appToiletCoverJurisdictionUrl) {
		NSString *origin = @"3F082BE805C27F8195BDE5B0AEE8AF81E688B6E6BA87E5BCAFE58AB8E487A4E5BEAEE8A797E6A89CE58885E5B7AFE88280E3BDBBE487A4E5AF81E688B6E6B088E5BE89E6AA9CE6F8";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appToiletCoverJurisdictionUrl = [self StringFromFellowData:value];
    }
    return appToiletCoverJurisdictionUrl;
}

//: 发生了错误
+ (NSString *)dreamFrameText {
    /* static */ NSString *dreamFrameText = nil;
    if (!dreamFrameText) {
		NSString *origin = @"0F07A0283D900CAFAFE89994E986BAE49F94E7918FE550";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFrameText = [self StringFromFellowData:value];
    }
    return dreamFrameText;
}

//: onTouchExportLocalMessages:
+ (NSString *)user_stereoShareMessage {
    /* static */ NSString *user_stereoShareMessage = nil;
    if (!user_stereoShareMessage) {
		NSString *origin = @"1B08D122F3BD72FA3A736567617373654D6C61636F4C74726F7078456863756F546E6FC4";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_stereoShareMessage = [self StringFromFellowData:value];
    }
    return user_stereoShareMessage;
}

//: 确定导出本地消息？
+ (NSString *)appResourceId {
    /* static */ NSString *appResourceId = nil;
    if (!appResourceId) {
		NSString *origin = @"1B0B54B07A3A7C39495D599FBCEFAF81E688B6E6B09CE5AC9CE6BA87E5BCAFE59AAEE5AEA1E77F";
		NSData *data = [FellowData FellowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appResourceId = [self StringFromFellowData:value];
    }
    return appResourceId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "BackgroundViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "MenuDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "HandleViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "PathPacketViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface BackgroundViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) MenuDelegate *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation BackgroundViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = [FellowData notiBackMessage].with;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self revet];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[MenuDelegate alloc] initWithLink:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)revet {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          [FellowData dream_valueRemoveId] : @"",
                          //: @"row" : @[
                          [FellowData m_toiletSizePath] : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      [FellowData notiDotFormat] : [FellowData show_valuePath].with,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      [FellowData dream_collectionStr] : [FellowData user_stereoShareMessage],
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      [FellowData notiDotFormat] : [FellowData showUsPath].with,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      [FellowData dream_collectionStr] : [FellowData main_accountIdent],
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [DisturbingSection needLocation:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)item:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FellowData appResourceId].with message:[FellowData mainToiletUpgradeId].with preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:[FellowData showLabTextKey].with style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        HandleViewController *exportController = [[HandleViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)basket:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self color:[FellowData dreamFrameText].with];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self color:[FellowData appToiletCoverJurisdictionUrl].with];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self streetwise:remoteFilePath image_strong:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)streetwise:(NSString *)remotePath image_strong:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    PathPacketViewController *importController = [[PathPacketViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)color:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end