
#import <Foundation/Foundation.h>

@interface MaturityDateData : NSObject

+ (instancetype)sharedInstance;

//: contact_group
@property (nonatomic, copy) NSString *main_valueMessage;

//: name
@property (nonatomic, copy) NSString *mGrayId;

//: warm_prompt
@property (nonatomic, copy) NSString *user_tableUrl;

//: /group/
@property (nonatomic, copy) NSString *app_commentFormat;

//: data
@property (nonatomic, copy) NSString *dream_showStr;

//: type
@property (nonatomic, copy) NSString *appTeamTingKey;

//: contact_add_friend
@property (nonatomic, copy) NSString *appProcessorMessage;

//: notification
@property (nonatomic, copy) NSString *kDoingName;

//: tag_activity_set
@property (nonatomic, copy) NSString *user_tingNameIdent;

//: tname
@property (nonatomic, copy) NSString *k_buttonTitle;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *noti_touchKey;

//: contact_notice
@property (nonatomic, copy) NSString *user_bubbleMsg;

//: tid
@property (nonatomic, copy) NSString *app_backgroundStr;

//: owner
@property (nonatomic, copy) NSString *user_blueData;

//: #F7BA00
@property (nonatomic, copy) NSString *dreamKeyStr;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *k_closeValue;

//: jpg
@property (nonatomic, copy) NSString *dreamSizePath;

//: /team/create
@property (nonatomic, copy) NSString *notiShowFormat;

//: ic_none_ContactList
@property (nonatomic, copy) NSString *show_contentTitle;

//: group_info_activity_without
@property (nonatomic, copy) NSString *mainDoingFormat;

//: #2C3042
@property (nonatomic, copy) NSString *show_dataCommentTitle;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *showTitleMsg;

//: user_id
@property (nonatomic, copy) NSString *appKitValue;

//: #F7D2F3
@property (nonatomic, copy) NSString *main_buttonId;

//: E3F4AA
@property (nonatomic, copy) NSString *user_searchValue;

//: contact_fragment_friend
@property (nonatomic, copy) NSString *m_shareData;

//: #5D5F66
@property (nonatomic, copy) NSString *dreamRemoveFormat;

//: contact_fragment_group
@property (nonatomic, copy) NSString *appReloadFormat;

//: #F6F6F6
@property (nonatomic, copy) NSString *app_messageValuePath;

//: contact_tag_fragment_friend
@property (nonatomic, copy) NSString *dream_enableCommentMsg;

//: invite_you_group
@property (nonatomic, copy) NSString *mValuePath;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *notiValueTitleData;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *mDotStartContent;

//: code
@property (nonatomic, copy) NSString *k_bluePath;

//: #CCECFC
@property (nonatomic, copy) NSString *k_beginMessage;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *app_collectionId;

//: ids
@property (nonatomic, copy) NSString *appWindowId;

//: #EEEEEE
@property (nonatomic, copy) NSString *user_ofUrl;

//: #999999
@property (nonatomic, copy) NSString *k_beginName;

@end

@implementation MaturityDateData

+ (instancetype)sharedInstance {
    static MaturityDateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MaturityDateDataToData:(NSString *)value {
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

- (Byte *)MaturityDateDataToCache:(Byte *)data {
    int should = data[0];
    Byte upwards = data[1];
    int model = data[2];
    for (int i = model; i < model + should; i++) {
        int value = data[i] - upwards;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[model + should] = 0;
    return data + model;
}

- (NSString *)StringFromMaturityDateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MaturityDateDataToCache:data]];
}

//: #EEEEEE
- (NSString *)user_ofUrl {
    if (!_user_ofUrl) {
		NSString *origin = @"07430648edf7668888888888881c";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_ofUrl = [self StringFromMaturityDateData:value];
    }
    return _user_ofUrl;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)noti_touchKey {
    if (!_noti_touchKey) {
		NSString *origin = @"271105989c86847683707a7f7780707287857a877a858a7086817d807275707287728572837077727a7d767530";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_touchKey = [self StringFromMaturityDateData:value];
    }
    return _noti_touchKey;
}

//: #2C3042
- (NSString *)show_dataCommentTitle {
    if (!_show_dataCommentTitle) {
		NSString *origin = @"07370a24db5b437e44bd5a697a6a676b6940";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_dataCommentTitle = [self StringFromMaturityDateData:value];
    }
    return _show_dataCommentTitle;
}

//: #CCECFC
- (NSString *)k_beginMessage {
    if (!_k_beginMessage) {
		NSString *origin = @"07450aa53d5a844557aa6888888a888b88e9";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_beginMessage = [self StringFromMaturityDateData:value];
    }
    return _k_beginMessage;
}

//: ids
- (NSString *)appWindowId {
    if (!_appWindowId) {
		NSString *origin = @"031a0c0a78659703d78e4443837e8d77";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appWindowId = [self StringFromMaturityDateData:value];
    }
    return _appWindowId;
}

//: #5D5F66
- (NSString *)dreamRemoveFormat {
    if (!_dreamRemoveFormat) {
		NSString *origin = @"073603596b7a6b7c6c6c95";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamRemoveFormat = [self StringFromMaturityDateData:value];
    }
    return _dreamRemoveFormat;
}

//: /team/create
- (NSString *)notiShowFormat {
    if (!_notiShowFormat) {
		NSString *origin = @"0c3a09ba7b7f1c15a969ae9f9ba7699dac9f9bae9f7b";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiShowFormat = [self StringFromMaturityDateData:value];
    }
    return _notiShowFormat;
}

//: warm_prompt
- (NSString *)user_tableUrl {
    if (!_user_tableUrl) {
		NSString *origin = @"0b3705c80dae98a9a496a7a9a6a4a7ab5b";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_tableUrl = [self StringFromMaturityDateData:value];
    }
    return _user_tableUrl;
}

//: tname
- (NSString *)k_buttonTitle {
    if (!_k_buttonTitle) {
		NSString *origin = @"053003a49e919d9565";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_buttonTitle = [self StringFromMaturityDateData:value];
    }
    return _k_buttonTitle;
}

//: #F7BA00
- (NSString *)dreamKeyStr {
    if (!_dreamKeyStr) {
		NSString *origin = @"072b068282e04e71626d6c5b5b4b";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamKeyStr = [self StringFromMaturityDateData:value];
    }
    return _dreamKeyStr;
}

//: #999999
- (NSString *)k_beginName {
    if (!_k_beginName) {
		NSString *origin = @"072108e9c63756f0445a5a5a5a5a5af7";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_beginName = [self StringFromMaturityDateData:value];
    }
    return _k_beginName;
}

//: #F6F6F6
- (NSString *)app_messageValuePath {
    if (!_app_messageValuePath) {
		NSString *origin = @"07570bc779eb5dce31ec977a9d8d9d8d9d8d84";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_messageValuePath = [self StringFromMaturityDateData:value];
    }
    return _app_messageValuePath;
}

//: ic_none_ContactList
- (NSString *)show_contentTitle {
    if (!_show_contentTitle) {
		NSString *origin = @"135e03c7c1bdcccdccc3bda1cdccd2bfc1d2aac7d1d262";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_contentTitle = [self StringFromMaturityDateData:value];
    }
    return _show_contentTitle;
}

//: setting_privacy_camera
- (NSString *)app_collectionId {
    if (!_app_collectionId) {
		NSString *origin = @"160d088b7979fb6080728181767b746c7d7f76836e70866c706e7a727f6e8d";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_collectionId = [self StringFromMaturityDateData:value];
    }
    return _app_collectionId;
}

//: notification
- (NSString *)kDoingName {
    if (!_kDoingName) {
		NSString *origin = @"0c0f0b3930f264576732e87d7e83787578727083787e7d51";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kDoingName = [self StringFromMaturityDateData:value];
    }
    return _kDoingName;
}

//: /group/
- (NSString *)app_commentFormat {
    if (!_app_commentFormat) {
		NSString *origin = @"070b08bbd9e270aa3a727d7a807b3a38";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_commentFormat = [self StringFromMaturityDateData:value];
    }
    return _app_commentFormat;
}

//: team_create_helper_create_failed
- (NSString *)k_closeValue {
    if (!_k_closeValue) {
		NSString *origin = @"2050051822c4b5b1bdafb3c2b5b1c4b5afb8b5bcc0b5c2afb3c2b5b1c4b5afb6b1b9bcb5b443";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_closeValue = [self StringFromMaturityDateData:value];
    }
    return _k_closeValue;
}

//: code
- (NSString *)k_bluePath {
    if (!_k_bluePath) {
		NSString *origin = @"045806610436bbc7bcbdf6";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_bluePath = [self StringFromMaturityDateData:value];
    }
    return _k_bluePath;
}

//: contact_fragment_group
- (NSString *)appReloadFormat {
    if (!_appReloadFormat) {
		NSString *origin = @"163d052b02a0acabb19ea0b19ca3af9ea4aaa2abb19ca4afacb2ad3c";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appReloadFormat = [self StringFromMaturityDateData:value];
    }
    return _appReloadFormat;
}

//: activity_create_group_name_create_group
- (NSString *)mDotStartContent {
    if (!_mDotStartContent) {
		NSString *origin = @"27050a75e67a48eec35b6668796e7b6e797e6468776a66796a646c77747a75647366726a6468776a66796a646c77747a750a";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mDotStartContent = [self StringFromMaturityDateData:value];
    }
    return _mDotStartContent;
}

//: contact_group
- (NSString *)main_valueMessage {
    if (!_main_valueMessage) {
		NSString *origin = @"0d370a7b2236aac660f59aa6a5ab989aab969ea9a6aca762";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_valueMessage = [self StringFromMaturityDateData:value];
    }
    return _main_valueMessage;
}

//: tag_activity_set
- (NSString *)user_tingNameIdent {
    if (!_user_tingNameIdent) {
		NSString *origin = @"104a0b98a219d038eb9f69beabb1a9abadbeb3c0b3bec3a9bdafbe17";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_tingNameIdent = [self StringFromMaturityDateData:value];
    }
    return _user_tingNameIdent;
}

//: contact_tag_fragment_cancel
- (NSString *)notiValueTitleData {
    if (!_notiValueTitleData) {
		NSString *origin = @"1b54088f66242058b7c3c2c8b5b7c8b3c8b5bbb3bac6b5bbc1b9c2c8b3b7b5c2b7b9c074";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiValueTitleData = [self StringFromMaturityDateData:value];
    }
    return _notiValueTitleData;
}

//: type
- (NSString *)appTeamTingKey {
    if (!_appTeamTingKey) {
		NSString *origin = @"043303a7aca398e7";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appTeamTingKey = [self StringFromMaturityDateData:value];
    }
    return _appTeamTingKey;
}

//: jpg
- (NSString *)dreamSizePath {
    if (!_dreamSizePath) {
		NSString *origin = @"032b0887d8dc3bc1959b92e8";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamSizePath = [self StringFromMaturityDateData:value];
    }
    return _dreamSizePath;
}

//: add_friend_activity_add_friend
- (NSString *)showTitleMsg {
    if (!_showTitleMsg) {
		NSString *origin = @"1e310d7b312e6accb76cf14ad49295959097a39a969f95909294a59aa79aa5aa909295959097a39a969f955c";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTitleMsg = [self StringFromMaturityDateData:value];
    }
    return _showTitleMsg;
}

//: contact_tag_fragment_friend
- (NSString *)dream_enableCommentMsg {
    if (!_dream_enableCommentMsg) {
		NSString *origin = @"1b5908496cb13c7dbcc8c7cdbabccdb8cdbac0b8bfcbbac0c6bec7cdb8bfcbc2bec7bd1d";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_enableCommentMsg = [self StringFromMaturityDateData:value];
    }
    return _dream_enableCommentMsg;
}

//: E3F4AA
- (NSString *)user_searchValue {
    if (!_user_searchValue) {
		NSString *origin = @"06310b83f1b2309180a3e57664776572721e";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_searchValue = [self StringFromMaturityDateData:value];
    }
    return _user_searchValue;
}

//: user_id
- (NSString *)appKitValue {
    if (!_appKitValue) {
		NSString *origin = @"07200d107180d9529f9637d0b2959385927f89849b";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appKitValue = [self StringFromMaturityDateData:value];
    }
    return _appKitValue;
}

//: data
- (NSString *)dream_showStr {
    if (!_dream_showStr) {
		NSString *origin = @"0429064d58d78d8a9d8af8";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_showStr = [self StringFromMaturityDateData:value];
    }
    return _dream_showStr;
}

//: contact_fragment_friend
- (NSString *)m_shareData {
    if (!_m_shareData) {
		NSString *origin = @"17630b9b11ba80b101b0c8c6d2d1d7c4c6d7c2c9d5c4cad0c8d1d7c2c9d5ccc8d1c779";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_shareData = [self StringFromMaturityDateData:value];
    }
    return _m_shareData;
}

//: owner
- (NSString *)user_blueData {
    if (!_user_blueData) {
		NSString *origin = @"0504054308737b7269769b";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_blueData = [self StringFromMaturityDateData:value];
    }
    return _user_blueData;
}

//: invite_you_group
- (NSString *)mValuePath {
    if (!_mValuePath) {
		NSString *origin = @"101b0d3f3d58f349a13c47ad8a848991848f807a948a907a828d8a908ba7";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mValuePath = [self StringFromMaturityDateData:value];
    }
    return _mValuePath;
}

//: tid
- (NSString *)app_backgroundStr {
    if (!_app_backgroundStr) {
		NSString *origin = @"03490b13c8b82e01757c50bdb2adf5";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_backgroundStr = [self StringFromMaturityDateData:value];
    }
    return _app_backgroundStr;
}

//: contact_add_friend
- (NSString *)appProcessorMessage {
    if (!_appProcessorMessage) {
		NSString *origin = @"12030c81033cc731ef6a500d66727177646677626467676269756c68716738";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appProcessorMessage = [self StringFromMaturityDateData:value];
    }
    return _appProcessorMessage;
}

//: name
- (NSString *)mGrayId {
    if (!_mGrayId) {
		NSString *origin = @"04250dcc70244806fbd5eba50a9386928ad8";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mGrayId = [self StringFromMaturityDateData:value];
    }
    return _mGrayId;
}

//: group_info_activity_without
- (NSString *)mainDoingFormat {
    if (!_mainDoingFormat) {
		NSString *origin = @"1b3903a0aba8aea998a2a79fa8989a9cada2afa2adb298b0a2ada1a8aead7a";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainDoingFormat = [self StringFromMaturityDateData:value];
    }
    return _mainDoingFormat;
}

//: #F7D2F3
- (NSString *)main_buttonId {
    if (!_main_buttonId) {
		NSString *origin = @"07620d7172aae67c202258f1d285a899a694a89545";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_buttonId = [self StringFromMaturityDateData:value];
    }
    return _main_buttonId;
}

//: contact_notice
- (NSString *)user_bubbleMsg {
    if (!_user_bubbleMsg) {
		NSString *origin = @"0e310d34460fa74d50625d9e5894a09fa59294a5909fa0a59a949606";
		NSData *data = [MaturityDateData MaturityDateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_bubbleMsg = [self StringFromMaturityDateData:value];
    }
    return _user_bubbleMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BankViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "NTESContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "BankViewController.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "NTESSessionViewController.h"
#import "SessionSizeViewController.h"
//: #import "NTESContactUtilItem.h"
#import "DisturbingTool.h"
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"
//: #import "NTESGroupedContacts.h"
#import "BillDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomNotificationDB.h"
#import "TextDb.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+OpenSend.h"
//: #import "NTESContactAddFriendViewController.h"
#import "OnViewController.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactUtilCell.h"
#import "CompleteView.h"
//: #import "NTESContactDataCell.h"
#import "TingDataCell.h"
//: #import "FFFContactSelectViewController.h"
#import "TingViewController.h"
//: #import "NTESUserUtil.h"
#import "TitleName.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESContactSearchViewController.h"
#import "CustomViewController.h"
//: #import "NTESSystemNotificationViewController.h"
#import "ColorViewController.h"
//: #import "CCCBlackListViewController.h"
#import "MenuViewController.h"
//: #import "NTESContactHeaderView.h"
#import "AllowView.h"
//: #import "CCCContactScanViewController.h"
#import "DisturbingViewController.h"
//: #import "NTESContactTableHeader.h"
#import "SumeractionView.h"
//: #import "NTESContactGroupCell.h"
#import "ScaleViewCell.h"
//: #import "CCCAddressBookManager.h"
#import "SizeSendEmpty.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESFriendListTableViewCell.h"
#import "TeamView.h"
//: #import "FFFKitFileLocationHelper.h"
#import "TipTitle.h"

//: static const NSString *contactCellUtilIcon = @"icon";
static const NSString *noti_itemStr = @"icon";
//: static const NSString *contactCellUtilVC = @"vc";
static const NSString *user_nameContent = @"vc";
//: static const NSString *contactCellUtilBadge = @"badge";
static const NSString *user_dateKeyUrl = @"badge";
//: static const NSString *contactCellUtilTitle = @"title";
static const NSString *userSureId = @"title";
//: static const NSString *contactCellUtilUid = @"uid";
static const NSString *mainTouchIconMessage = @"uid";
//: static const NSString *contactCellUtilSelectorName = @"selName";
static const NSString *mErrorMessage = @"selName";


//: @interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface BankViewController ()<NameCompartmentMenu,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: NTESContactUtilCellDelegate,
BarDelegate,
//: FFFContactDataCellDelegate,
ImageDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: NTESContactSearchDelegate> {
NobbleDelegate> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: NTESGroupedContacts *_contacts;
    BillDataCollection *_contacts;
}


//: @property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) NSArray * datas;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnScan;
//: @property (nonatomic,strong) UIButton *btnCreatgroup;
@property (nonatomic,strong) UIButton *btnCreatgroup;


//: @property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,strong) NSArray *advancedTeamArray;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;

//: @property (nonatomic ,strong) NSMutableArray *tempOpenArray;
@property (nonatomic ,strong) NSMutableArray *tempOpenArray;

//: @property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *friendheaderView;
//: @property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) UIView *groupheaderView;
//: @property (nonatomic,strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic,strong) BillView *loadingView;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation BankViewController

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self prepareData];
    [self line];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self valueView];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self load];
}

//: - (void)loadTheView
- (void)load
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts origin]>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }


    //: }else{
    }else{
        //: if(self.advancedTeamArray.count>0){
        if(self.advancedTeamArray.count>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }
    }

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setUpNavItem];
    [self sizeView];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle]; // 索引文字颜色
//        self.tableView.sectionIndexBackgroundColor = [UIColor clearColor]; // 索引背景色
//        self.tableView.sectionIndexTrackingBackgroundColor = [UIColor lightGrayColor]; // 选中时的背景色
    }

//    [self prepareData];
    //: self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];
    self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];

    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-140-(49.0f))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice bearDown]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice bearDown]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[MaturityDateData sharedInstance].show_contentTitle];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:[MaturityDateData sharedInstance].k_beginName];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].mainDoingFormat];


    }
    //: return _defView;
    return _defView;
}

//: -(void)getGroupData{
-(void)data{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[MaturityDateData sharedInstance].app_commentFormat] table:nil carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[MaturityDateData sharedInstance].k_bluePath];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[MaturityDateData sharedInstance].appKitValue];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].dream_enableCommentMsg] forKey:[MaturityDateData sharedInstance].mGrayId];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[MaturityDateData sharedInstance].appWindowId];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict direction:[MaturityDateData sharedInstance].dream_showStr];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];


}

//: - (void)setUpNavItem
- (void)sizeView
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice bearDown]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice bearDown]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].app_messageValuePath];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    _btnfriend.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].dreamKeyStr];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].m_shareData] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(averaged:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor recordView:[MaturityDateData sharedInstance].dreamRemoveFormat] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].appReloadFormat] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(averaged:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].user_ofUrl];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

//: - (void)handleNotice
- (void)noticeFind
{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    ColorViewController *vc = [[ColorViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)line{
    //: _contacts = [[NTESGroupedContacts alloc] init];
    _contacts = [[BillDataCollection alloc] init];
}

//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)domainTeams{
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: - (NSMutableArray *)advancedDidFetchTeams {
- (NSMutableArray *)valueView {
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeAdvanced) {
        if (team.type == NIMTeamTypeAdvanced) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onEnterMyComputer{
- (void)bubbleBy{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)data:(NSString *)teamID text:(NSString *)teamName blueItem_strong:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[MaturityDateData sharedInstance].user_blueData] = currentUserId;
    //: dict[@"type"] = type;
    dict[[MaturityDateData sharedInstance].appTeamTingKey] = type;
    //: dict[@"tname"] = teamName;
    dict[[MaturityDateData sharedInstance].k_buttonTitle] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[MaturityDateData sharedInstance].app_backgroundStr] = teamID;

}

//: - (void)searchAction:(id)sender {
- (void)margin:(id)sender {
    //: NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    CustomViewController *vc = [[CustomViewController alloc] init];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<NameItem> contactItem = (id<NameItem>)[_contacts be:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(managerView)] && [contactItem managerView].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem managerView]);
            //: SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
            SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
        }
        //: else if (contactItem.vcName.length) {
        else if (contactItem.outSize.length) {
            //: Class clazz = NSClassFromString(contactItem.vcName);
            Class clazz = NSClassFromString(contactItem.outSize);
            //: UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }else if([contactItem respondsToSelector:@selector(userId)]){
        }else if([contactItem respondsToSelector:@selector(shouldText)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.shouldText;
            //: [self enterPersonalCard:friendId];
            [self upwardsTitle:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self on:team];
        //: if (session) {
        if (session) {
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<NameItem> contactItem = (id<NameItem>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)on:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts groupCount];
        return [_contacts origin];
    //: }else{
    }else{
        //: return _advancedTeamArray.count;
        return _advancedTeamArray.count;

    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts memberCountOfGroup:section];
        return [_contacts bulgeOut:section];
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
            //: return 30;
            return 30;
        }
        //: return 2.2250738585072014e-308;
        return 2.2250738585072014e-308;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
           //: UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           //: view.backgroundColor = [UIColor whiteColor];
           view.backgroundColor = [UIColor whiteColor];

           //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           //: label.text = [_contacts titleOfGroup:section];
           label.text = [_contacts fullPhaseOfTheMoonWith:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle];
           //: [view addSubview:label];
           [view addSubview:label];

           //: return view;
           return view;
       }
       //: return [[UIView alloc] init];
       return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    TeamView *cell = [TeamView cell:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts be:indexPath];
        //: [cell refreshUser:contactItem];
        [cell viewOn:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell teamNeed:team];
    }

    //: return cell;
    return cell;
}

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts fullPhaseOfTheMoonWith:section];
    //: }else{
    }else{
        //: return @"";
        return @"";
    }
}

//: - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return _contacts.sortedGroupTitles;
        return _contacts.sortedGroupTitles;
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        //: for (int i = 0; i < itemArray.count; i++) {
        for (int i = 0; i < itemArray.count; i++) {
            //: [array addObject:@""];
            [array addObject:@""];
        }
        //: return array;
        return array;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    //: return index + 1;
    return index + 1;
}

//: #pragma mark - NTESUserListCellDelegate
#pragma mark - NameCompartmentMenu
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)contentWith:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESContactSearchDelegate
#pragma mark - NobbleDelegate
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (BOOL)ignoreCase {
- (BOOL)cellBackground {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: #pragma mark - FFFContactDataCellDelegate
#pragma mark - ImageDelegate
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)textBy:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self upwardsTitle:memberId];
}

//: #pragma mark - NTESContactUtilCellDelegate
#pragma mark - BarDelegate
//: - (void)onPressUtilImage:(NSString *)content{
- (void)reloadImage:(NSString *)content{

}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - CheckBottom
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)caned:(NSArray *)selectedContacts{

}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self line];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: if (self.isViewLoaded) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            //: [self prepareData];
            [self line];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self input];
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self input];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self input];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self input];
}

//: - (void)refresh
- (void)input
{
    //: [self prepareData];
    [self line];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate

//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: [ids addObject:event.from];
        [ids addObject:event.from];
    }

    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {

        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<NameItem> contactItem = (id<NameItem>)[_contacts be:indexPath];
        //: if([contactItem respondsToSelector:@selector(userId)]){
        if([contactItem respondsToSelector:@selector(shouldText)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.shouldText;
            //: if ([ids containsObject:friendId]) {
            if ([ids containsObject:friendId]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }
    //: if (indexPaths.count > 0)
    if (indexPaths.count > 0)
    {
        //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
        [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)enterPersonalCard:(NSString *)userId{
- (void)upwardsTitle:(NSString *)userId{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    BarViewController *vc = [[BarViewController alloc] initWithScale:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)sound:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    BottomBar *config = [[BottomBar alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc frame];
}


//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice bearDown]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice bearDown]-64-(49.0f)) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
        UIEdgeInsets separatorInset = self.tableView.separatorInset;
        //: separatorInset.right = 0;
        separatorInset.right = 0;
        //: _tableView.separatorInset = separatorInset;
        _tableView.separatorInset = separatorInset;
        //: _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}


//: #pragma mark - NTESContactHeaderDelegate
#pragma mark - WithText
//: -(void)searchClick{
-(void)tipImage{
    //: [self searchAction:nil];
    [self margin:nil];
}

//: -(void)addFriend{
-(void)centerTitle{
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    OnViewController *vc = [[OnViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)newGroup{
-(void)willKey{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self sound:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView extra];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self color:avater buttonRead:^(NSString *urlString) {

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = name;
            option.name = name;
            //: option.avatarUrl = urlString ? : @"";
            option.avatarUrl = urlString ? : @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].mValuePath];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView animationEnableClose];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self data:teamId text:option.name blueItem_strong:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self behindValueId:option.name session:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].k_closeValue] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)color:(UIImage *)image buttonRead:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image everyBubble:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [TipTitle input:[MaturityDateData sharedInstance].dreamSizePath];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[TipTitle notice] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: if (!error && wself) {
            if (!error && wself) {


            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].noti_touchKey]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }

            //: !complete ? :complete(urlString);
            !complete ? :complete(urlString);
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].noti_touchKey]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)behindValueId:(NSString *)groupName session:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[MaturityDateData sharedInstance].mGrayId] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[MaturityDateData sharedInstance].notiShowFormat] table:dict carteDuJour:NO behindValue:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)extraValue{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    DisturbingViewController *vc = [[DisturbingViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)friendNotification{
-(void)managerView{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    ColorViewController *vc = [[ColorViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)groupNotification{
-(void)accountBar{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    ColorViewController *vc = [[ColorViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: -(void)blackFriendList{
-(void)actionAnd{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    MenuViewController *vc = [[MenuViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)collectList{
-(void)when{

}


//: -(void)sliderButtonClick:(UIButton *)sender
-(void)averaged:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _btnfriend.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].dreamKeyStr];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor recordView:[MaturityDateData sharedInstance].dreamRemoveFormat] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _btngroup.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].dreamKeyStr];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor recordView:[MaturityDateData sharedInstance].dreamRemoveFormat] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self load];

}

//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)readName:(NSArray *)array {

    //: NSError *error = nil;
    NSError *error = nil;
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    //: NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    //: NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //: return jsonTemp;
    return jsonTemp;
}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)videoPress {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        DisturbingViewController *vc = [[DisturbingViewController alloc] init];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            DisturbingViewController *vc = [[DisturbingViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].user_tableUrl] message:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].app_collectionId] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].notiValueTitleData] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].user_tingNameIdent] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
}

//: -(void)creatTeamGroup{
-(void)month{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself sound:^(NSArray *uids, NSString *groupName, UIImage *avater) {
        //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        //: option.name = groupName;
        option.name = groupName;
        //: option.type = NIMTeamTypeAdvanced;
        option.type = NIMTeamTypeAdvanced;
        //: option.joinMode = NIMTeamJoinModeNoAuth;
        option.joinMode = NIMTeamJoinModeNoAuth;
        //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].mValuePath];
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
        [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error) {
            if (!error) {
                //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self data:teamId text:option.name blueItem_strong:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself behindValueId:option.name session:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].k_closeValue] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (ZMONCustomLoadingView *)loadingView
- (BillView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[BillView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}

//: - (UIView *)friendheaderView
- (UIView *)friendheaderView
{
    //: if (!_friendheaderView) {
    if (!_friendheaderView) {
        //: _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].main_buttonId];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(noticeFind)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[MaturityDateData sharedInstance].user_bubbleMsg];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].kDoingName];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].user_searchValue];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(centerTitle)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[MaturityDateData sharedInstance].appProcessorMessage];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].showTitleMsg];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _friendheaderView;
    return _friendheaderView;
}
//: - (UIView *)groupheaderView
- (UIView *)groupheaderView
{
    //: if (!_groupheaderView) {
    if (!_groupheaderView) {
        //: _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].main_buttonId];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(noticeFind)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[MaturityDateData sharedInstance].user_bubbleMsg];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].kDoingName];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor recordView:[MaturityDateData sharedInstance].k_beginMessage];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(willKey)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[MaturityDateData sharedInstance].main_valueMessage];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor recordView:[MaturityDateData sharedInstance].show_dataCommentTitle];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [MatronymicPath colorStreetwise:[MaturityDateData sharedInstance].mDotStartContent];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: @end
@end