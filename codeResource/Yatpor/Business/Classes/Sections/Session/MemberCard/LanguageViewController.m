
#import <Foundation/Foundation.h>

@interface FundingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FundingData

+ (instancetype)sharedInstance {
    static FundingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FundingDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FundingDataToCache:(Byte *)data {
    int feather = data[0];
    Byte headingText = data[1];
    int contentTeam = data[2];
    for (int i = contentTeam; i < contentTeam + feather; i++) {
        int value = data[i] - headingText;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[contentTeam + feather] = 0;
    return data + contentTeam;
}

- (NSString *)StringFromFundingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FundingDataToCache:data]];
}

//: #ECECEC
- (NSString *)notiSelectedInfoOperationMsg {
    /* static */ NSString *notiSelectedInfoOperationMsg = nil;
    if (!notiSelectedInfoOperationMsg) {
		NSArray<NSNumber *> *origin = @[@7, @56, @8, @211, @126, @156, @71, @195, @91, @125, @123, @125, @123, @125, @123, @197];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiSelectedInfoOperationMsg = [self StringFromFundingData:value];
    }
    return notiSelectedInfoOperationMsg;
}

//: group_info_activity_op_failed
- (NSString *)k_dotId {
    /* static */ NSString *k_dotId = nil;
    if (!k_dotId) {
		NSArray<NSNumber *> *origin = @[@29, @35, @13, @235, @102, @81, @101, @222, @210, @1, @34, @15, @66, @138, @149, @146, @152, @147, @130, @140, @145, @137, @146, @130, @132, @134, @151, @140, @153, @140, @151, @156, @130, @146, @147, @130, @137, @132, @140, @143, @136, @135, @80];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_dotId = [self StringFromFundingData:value];
    }
    return k_dotId;
}

//: account
- (NSString *)mainMessageText {
    /* static */ NSString *mainMessageText = nil;
    if (!mainMessageText) {
		NSArray<NSNumber *> *origin = @[@7, @2, @9, @232, @39, @134, @63, @224, @55, @99, @101, @101, @113, @119, @112, @118, @206];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMessageText = [self StringFromFundingData:value];
    }
    return mainMessageText;
}

//: icon_me_arrow
- (NSString *)mTableLayerText {
    /* static */ NSString *mTableLayerText = nil;
    if (!mTableLayerText) {
		NSArray<NSNumber *> *origin = @[@13, @89, @6, @211, @24, @153, @194, @188, @200, @199, @184, @198, @190, @184, @186, @203, @203, @200, @208, @210];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTableLayerText = [self StringFromFundingData:value];
    }
    return mTableLayerText;
}

//: #8A8E98
- (NSString *)dream_dataEnableContent {
    /* static */ NSString *dream_dataEnableContent = nil;
    if (!dream_dataEnableContent) {
		NSArray<NSNumber *> *origin = @[@7, @63, @13, @52, @245, @155, @17, @169, @27, @56, @137, @33, @200, @98, @119, @128, @119, @132, @120, @119, @237];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_dataEnableContent = [self StringFromFundingData:value];
    }
    return dream_dataEnableContent;
}

//: message_remark_name
- (NSString *)mainContentKey {
    /* static */ NSString *mainContentKey = nil;
    if (!mainContentKey) {
		NSArray<NSNumber *> *origin = @[@19, @50, @12, @57, @174, @168, @59, @73, @222, @116, @71, @113, @159, @151, @165, @165, @147, @153, @151, @145, @164, @151, @159, @147, @164, @157, @145, @160, @147, @159, @151, @125];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainContentKey = [self StringFromFundingData:value];
    }
    return mainContentKey;
}

//: #FF483D
- (NSString *)dreamFrameData {
    /* static */ NSString *dreamFrameData = nil;
    if (!dreamFrameData) {
		NSArray<NSNumber *> *origin = @[@7, @30, @4, @203, @65, @100, @100, @82, @86, @81, @98, @220];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFrameData = [self StringFromFundingData:value];
    }
    return dreamFrameData;
}

//: #F6F7FA
- (NSString *)appTingRangeImageUrl {
    /* static */ NSString *appTingRangeImageUrl = nil;
    if (!appTingRangeImageUrl) {
		NSArray<NSNumber *> *origin = @[@7, @13, @3, @48, @83, @67, @83, @68, @83, @78, @157];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTingRangeImageUrl = [self StringFromFundingData:value];
    }
    return appTingRangeImageUrl;
}

//: 本地不存在
- (NSString *)mAccountKey {
    /* static */ NSString *mAccountKey = nil;
    if (!mAccountKey) {
		NSArray<NSNumber *> *origin = @[@15, @95, @11, @41, @148, @220, @92, @105, @38, @98, @3, @69, @251, @11, @68, @251, @15, @67, @23, @236, @68, @12, @247, @68, @251, @7, @113];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mAccountKey = [self StringFromFundingData:value];
    }
    return mAccountKey;
}

//: /user/detail
- (NSString *)appBubbleKitValue {
    /* static */ NSString *appBubbleKitValue = nil;
    if (!appBubbleKitValue) {
		NSArray<NSNumber *> *origin = @[@12, @39, @11, @112, @174, @89, @52, @48, @8, @135, @230, @86, @156, @154, @140, @153, @86, @139, @140, @155, @136, @144, @147, @60];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBubbleKitValue = [self StringFromFundingData:value];
    }
    return appBubbleKitValue;
}

//: ic_group_lists
- (NSString *)user_viewPath {
    /* static */ NSString *user_viewPath = nil;
    if (!user_viewPath) {
		NSArray<NSNumber *> *origin = @[@14, @83, @7, @132, @152, @242, @121, @188, @182, @178, @186, @197, @194, @200, @195, @178, @191, @188, @198, @199, @198, @179];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_viewPath = [self StringFromFundingData:value];
    }
    return user_viewPath;
}

//: ic_sex_woman
- (NSString *)noti_resourceShouldForUrl {
    /* static */ NSString *noti_resourceShouldForUrl = nil;
    if (!noti_resourceShouldForUrl) {
		NSArray<NSNumber *> *origin = @[@12, @99, @4, @136, @204, @198, @194, @214, @200, @219, @194, @218, @210, @208, @196, @209, @51];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_resourceShouldForUrl = [self StringFromFundingData:value];
    }
    return noti_resourceShouldForUrl;
}

//: code
- (NSString *)notiNameContent {
    /* static */ NSString *notiNameContent = nil;
    if (!notiNameContent) {
		NSArray<NSNumber *> *origin = @[@4, @32, @8, @249, @91, @50, @164, @135, @131, @143, @132, @133, @62];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiNameContent = [self StringFromFundingData:value];
    }
    return notiNameContent;
}

//: data
- (NSString *)userImageOfName {
    /* static */ NSString *userImageOfName = nil;
    if (!userImageOfName) {
		NSArray<NSNumber *> *origin = @[@4, @54, @9, @96, @119, @189, @170, @105, @24, @154, @151, @170, @151, @209];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userImageOfName = [self StringFromFundingData:value];
    }
    return userImageOfName;
}

//: personCard_bg
- (NSString *)appTingMsg {
    /* static */ NSString *appTingMsg = nil;
    if (!appTingMsg) {
		NSArray<NSNumber *> *origin = @[@13, @1, @4, @13, @113, @102, @115, @116, @112, @111, @68, @98, @115, @101, @96, @99, @104, @115];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTingMsg = [self StringFromFundingData:value];
    }
    return appTingMsg;
}

//: #2C3042
- (NSString *)k_contentName {
    /* static */ NSString *k_contentName = nil;
    if (!k_contentName) {
		NSArray<NSNumber *> *origin = @[@7, @59, @9, @34, @216, @224, @44, @91, @51, @94, @109, @126, @110, @107, @111, @109, @149];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_contentName = [self StringFromFundingData:value];
    }
    return k_contentName;
}

//: modify_activity_modify_success
- (NSString *)showTingName {
    /* static */ NSString *showTingName = nil;
    if (!showTingName) {
		NSArray<NSNumber *> *origin = @[@30, @77, @3, @186, @188, @177, @182, @179, @198, @172, @174, @176, @193, @182, @195, @182, @193, @198, @172, @186, @188, @177, @182, @179, @198, @172, @192, @194, @176, @176, @178, @192, @192, @72];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTingName = [self StringFromFundingData:value];
    }
    return showTingName;
}

//: personcart_profile_bg
- (NSString *)show_stateMsg {
    /* static */ NSString *show_stateMsg = nil;
    if (!show_stateMsg) {
		NSArray<NSNumber *> *origin = @[@21, @40, @9, @85, @173, @216, @44, @172, @55, @152, @141, @154, @155, @151, @150, @139, @137, @154, @156, @135, @152, @154, @151, @142, @145, @148, @141, @135, @138, @143, @193];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_stateMsg = [self StringFromFundingData:value];
    }
    return show_stateMsg;
}

//: #F7BA00
- (NSString *)show_onCoverIdent {
    /* static */ NSString *show_onCoverIdent = nil;
    if (!show_onCoverIdent) {
		NSArray<NSNumber *> *origin = @[@7, @82, @3, @117, @152, @137, @148, @147, @130, @130, @41];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_onCoverIdent = [self StringFromFundingData:value];
    }
    return show_onCoverIdent;
}

//: #ffffff
- (NSString *)userVerticalPath {
    /* static */ NSString *userVerticalPath = nil;
    if (!userVerticalPath) {
		NSArray<NSNumber *> *origin = @[@7, @80, @9, @114, @208, @10, @112, @29, @136, @115, @182, @182, @182, @182, @182, @182, @239];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userVerticalPath = [self StringFromFundingData:value];
    }
    return userVerticalPath;
}

//: ic_invite
- (NSString *)noti_titleSizePath {
    /* static */ NSString *noti_titleSizePath = nil;
    if (!noti_titleSizePath) {
		NSArray<NSNumber *> *origin = @[@9, @87, @5, @251, @250, @192, @186, @182, @192, @197, @205, @192, @203, @188, @175];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_titleSizePath = [self StringFromFundingData:value];
    }
    return noti_titleSizePath;
}

//: #EEEEEE
- (NSString *)dream_redNeedFormat {
    /* static */ NSString *dream_redNeedFormat = nil;
    if (!dream_redNeedFormat) {
		NSArray<NSNumber *> *origin = @[@7, @72, @3, @107, @141, @141, @141, @141, @141, @141, @13];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_redNeedFormat = [self StringFromFundingData:value];
    }
    return dream_redNeedFormat;
}

//: group_member_info_activity_mute_msg
- (NSString *)notiUpGrayShouldData {
    /* static */ NSString *notiUpGrayShouldData = nil;
    if (!notiUpGrayShouldData) {
		NSArray<NSNumber *> *origin = @[@35, @58, @12, @135, @183, @102, @105, @84, @39, @64, @218, @174, @161, @172, @169, @175, @170, @153, @167, @159, @167, @156, @159, @172, @153, @163, @168, @160, @169, @153, @155, @157, @174, @163, @176, @163, @174, @179, @153, @167, @175, @174, @159, @153, @167, @173, @161, @10];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiUpGrayShouldData = [self StringFromFundingData:value];
    }
    return notiUpGrayShouldData;
}

//: back_arrow_bl
- (NSString *)user_grayRemoteMsg {
    /* static */ NSString *user_grayRemoteMsg = nil;
    if (!user_grayRemoteMsg) {
		NSArray<NSNumber *> *origin = @[@13, @57, @6, @65, @8, @241, @155, @154, @156, @164, @152, @154, @171, @171, @168, @176, @152, @155, @165, @122];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_grayRemoteMsg = [self StringFromFundingData:value];
    }
    return user_grayRemoteMsg;
}

//: ic_card_edit
- (NSString *)app_viewPath {
    /* static */ NSString *app_viewPath = nil;
    if (!app_viewPath) {
		NSArray<NSNumber *> *origin = @[@12, @58, @3, @163, @157, @153, @157, @155, @172, @158, @153, @159, @158, @163, @174, @77];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_viewPath = [self StringFromFundingData:value];
    }
    return app_viewPath;
}

//: ic_sex_man
- (NSString *)userInfoPath {
    /* static */ NSString *userInfoPath = nil;
    if (!userInfoPath) {
		NSArray<NSNumber *> *origin = @[@10, @44, @10, @207, @226, @157, @55, @157, @251, @129, @149, @143, @139, @159, @145, @164, @139, @153, @141, @154, @19];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userInfoPath = [self StringFromFundingData:value];
    }
    return userInfoPath;
}

//: ic_identity_authentication
- (NSString *)dreamUserContent {
    /* static */ NSString *dreamUserContent = nil;
    if (!dreamUserContent) {
		NSArray<NSNumber *> *origin = @[@26, @35, @4, @75, @140, @134, @130, @140, @135, @136, @145, @151, @140, @151, @156, @130, @132, @152, @151, @139, @136, @145, @151, @140, @134, @132, @151, @140, @146, @145, @227];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamUserContent = [self StringFromFundingData:value];
    }
    return dreamUserContent;
}

//: activity_group_member_info2_inviter
- (NSString *)showTouchTitle {
    /* static */ NSString *showTouchTitle = nil;
    if (!showTouchTitle) {
		NSArray<NSNumber *> *origin = @[@35, @95, @9, @45, @68, @107, @152, @182, @154, @192, @194, @211, @200, @213, @200, @211, @216, @190, @198, @209, @206, @212, @207, @190, @204, @196, @204, @193, @196, @209, @190, @200, @205, @197, @206, @145, @190, @200, @205, @213, @200, @211, @196, @209, @153];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTouchTitle = [self StringFromFundingData:value];
    }
    return showTouchTitle;
}

//: user_id
- (NSString *)userAccountIdent {
    /* static */ NSString *userAccountIdent = nil;
    if (!userAccountIdent) {
		NSArray<NSNumber *> *origin = @[@7, @49, @7, @123, @82, @78, @203, @166, @164, @150, @163, @144, @154, @149, @36];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userAccountIdent = [self StringFromFundingData:value];
    }
    return userAccountIdent;
}

//: head_default
- (NSString *)m_endText {
    /* static */ NSString *m_endText = nil;
    if (!m_endText) {
		NSArray<NSNumber *> *origin = @[@12, @68, @10, @253, @100, @45, @129, @210, @105, @139, @172, @169, @165, @168, @163, @168, @169, @170, @165, @185, @176, @184, @48];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_endText = [self StringFromFundingData:value];
    }
    return m_endText;
}

//: 移出本群
- (NSString *)show_contentKey {
    /* static */ NSString *show_contentKey = nil;
    if (!show_contentKey) {
		NSArray<NSNumber *> *origin = @[@12, @74, @3, @49, @241, @5, @47, @209, @4, @48, @230, @246, @49, @8, @238, @177];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_contentKey = [self StringFromFundingData:value];
    }
    return show_contentKey;
}

//: activity_group_member_info2_shenfen
- (NSString *)show_infoTitle {
    /* static */ NSString *show_infoTitle = nil;
    if (!show_infoTitle) {
		NSArray<NSNumber *> *origin = @[@35, @59, @8, @108, @225, @32, @197, @189, @156, @158, @175, @164, @177, @164, @175, @180, @154, @162, @173, @170, @176, @171, @154, @168, @160, @168, @157, @160, @173, @154, @164, @169, @161, @170, @109, @154, @174, @163, @160, @169, @161, @160, @169, @224];
		NSData *data = [FundingData FundingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_infoTitle = [self StringFromFundingData:value];
    }
    return show_infoTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardViewController.h"
#import "LanguageViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "MenuDelegate.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "FFFTeamCardMemberItem.h"
#import "BarImageEmpty.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "CollectionView.h"
//: #import "FFFKitColorButtonCell.h"
#import "NameViewCell.h"
//: #import "FFFKitSwitcherCell.h"
#import "BarImageViewCell.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "FFFTeamHelper.h"
#import "HandleImageHelper.h"

//: @interface FFFTeamMemberCardViewController ()<NIMUserManagerDelegate>
@interface LanguageViewController ()<NIMUserManagerDelegate>

//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) CollectionView *groupNickNameView;

//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) MenuDelegate *delegator;

//: @property (nonatomic,weak) id <FFFTeamMemberListDataSource> dataSource;
@property (nonatomic,weak) id <HeadingSource> dataSource;

//: @property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) NSArray *data;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;
//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;

//: @end
@end

//: @implementation FFFTeamMemberCardViewController
@implementation LanguageViewController

//: - (void)dealloc {
- (void)dealloc {

}
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
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[[FundingData sharedInstance] appTingRangeImageUrl]];

    //: self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];
    self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];


    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: [scrollView addSubview:self.userView];
    [scrollView addSubview:self.userView];
    //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);
    self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);
    self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);

//    [self refresh];

    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.memberId;
    dict[[[FundingData sharedInstance] userAccountIdent]] = self.memberId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[FundingData sharedInstance] appBubbleKitValue]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[FundingData sharedInstance] notiNameContent]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[FundingData sharedInstance] userImageOfName]];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data to:[[FundingData sharedInstance] mainMessageText]];
//            NSString *avatar = [data newStringValueForKey:@"avatar"];

            //: self.accountId.text = self.userAcount;
            self.accountId.text = self.userAcount;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}


//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)updateTeamNick
- (void)disableOrigin
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView list];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
            [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
                                                   //: newNick:Name
                                                   newNick:Name
                                                    //: inTeam:self.teamListManager.team.teamId
                                                    inTeam:self.teamListManager.team.teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
                //: self.accountNickname.text = Name;
                self.accountNickname.text = Name;
                //: [self.groupNickNameView animationClose];
                [self.groupNickNameView animationEnableClose];
            //: }];
            }];
        //: };
        };
}

//: - (void)updateMute:(UISwitch *)switcher
- (void)reloads:(UISwitch *)switcher
{
    //: BOOL mute = switcher.on;
    BOOL mute = switcher.on;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
    [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                             //: userId:self.memberId
                                             userId:self.memberId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
        //: NSString *msg = nil;
        NSString *msg = nil;
        //: if (!error) {
        if (!error) {
            //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
            msg = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] showTingName]];
        //: }else{
        }else{
            //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
            msg = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] k_dotId]];
            //: switcher.on = !mute;
            switcher.on = !mute;
        }
        //: [self showToastMsg:msg];
        [self toastSession:msg];
     //: }];
     }];
}

//: -(void)removeMember
-(void)pinSort
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
    [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
                                     //: fromTeam:self.teamListManager.team.teamId
                                     fromTeam:self.teamListManager.team.teamId
                                   //: completion:^(NSError *error) {
                                   completion:^(NSError *error) {
        //: [weakSelf.navigationController popViewControllerAnimated:NO];
        [weakSelf.navigationController popViewControllerAnimated:NO];
    //: }];
    }];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)showToastMsg:(NSString *)msg {
- (void)toastSession:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[[FundingData sharedInstance] appTingMsg]];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice vg_statusBarHeight]+44+20, 345, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice bearDown]+44+20, 345, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[[FundingData sharedInstance] show_stateMsg]];
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice bearDown]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[FundingData sharedInstance] m_endText]]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            sexImg.image = [UIImage imageNamed:[[FundingData sharedInstance] userInfoPath]];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            sexImg.image = [UIImage imageNamed:[[FundingData sharedInstance] noti_resourceShouldForUrl]];
        }
        //: [_userView addSubview:sexImg];
        [_userView addSubview:sexImg];

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor recordView:[[FundingData sharedInstance] k_contentName]];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountId];
        [_userView addSubview:self.accountId];

        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[[FundingData sharedInstance] user_grayRemoteMsg]] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice bearDown], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:nameView];
        [contView addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateTeamNick)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(disableOrigin)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[[FundingData sharedInstance] app_viewPath]];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labTitleRemark.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.labTitleRemark.textColor = [UIColor recordView:[[FundingData sharedInstance] k_contentName]];
        //: self.labTitleRemark.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] mainContentKey]];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor recordView:[[FundingData sharedInstance] dream_dataEnableContent]];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[[FundingData sharedInstance] mTableLayerText]];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor recordView:[[FundingData sharedInstance] notiSelectedInfoOperationMsg]];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

        //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box2];
        [contView addSubview:box2];
        //: UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon2.image = [UIImage imageNamed:@"ic_identity_authentication"];
        icon2.image = [UIImage imageNamed:[[FundingData sharedInstance] dreamUserContent]];
        //: [box2 addSubview:icon2];
        [box2 addSubview:icon2];
        //: UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        //: lab2.font = [UIFont systemFontOfSize:14];
        lab2.font = [UIFont systemFontOfSize:14];
        //: lab2.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab2.textColor = [UIColor recordView:[[FundingData sharedInstance] k_contentName]];
        //: lab2.text = [FFFLanguageManager getTextWithKey:@"activity_group_member_info2_shenfen"];
        lab2.text = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] show_infoTitle]];
        //: [box2 addSubview:lab2];
        [box2 addSubview:lab2];
        //: UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        //: sublab2.font = [UIFont systemFontOfSize:12];
        sublab2.font = [UIFont systemFontOfSize:12];
        //: sublab2.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        sublab2.textColor = [UIColor recordView:[[FundingData sharedInstance] show_onCoverIdent]];
        //: sublab2.text = [FFFTeamHelper memberTypeText:self.member.type];
        sublab2.text = [HandleImageHelper message:self.member.type];
        //: [box2 addSubview:sublab2];
        [box2 addSubview:sublab2];
        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow2.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow2.image = [UIImage imageNamed:[[FundingData sharedInstance] mTableLayerText]];
        //: [box2 addSubview:arrow2];
        [box2 addSubview:arrow2];
        //: UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line2.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line2.backgroundColor = [UIColor recordView:[[FundingData sharedInstance] notiSelectedInfoOperationMsg]];
        //: [box2 addSubview:line2];
        [box2 addSubview:line2];

        //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box3];
        [contView addSubview:box3];
        //: UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon3.image = [UIImage imageNamed:@"ic_invite"];
        icon3.image = [UIImage imageNamed:[[FundingData sharedInstance] noti_titleSizePath]];
        //: [box3 addSubview:icon3];
        [box3 addSubview:icon3];
        //: UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        //: lab3.font = [UIFont systemFontOfSize:14];
        lab3.font = [UIFont systemFontOfSize:14];
        //: lab3.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab3.textColor = [UIColor recordView:[[FundingData sharedInstance] k_contentName]];
        //: lab3.text = [FFFLanguageManager getTextWithKey:@"activity_group_member_info2_inviter"];
        lab3.text = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] showTouchTitle]];
        //: [box3 addSubview:lab3];
        [box3 addSubview:lab3];
        //: UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        //: sublab3.font = [UIFont systemFontOfSize:12];
        sublab3.font = [UIFont systemFontOfSize:12];
        //: sublab3.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        sublab3.textColor = [UIColor recordView:[[FundingData sharedInstance] show_onCoverIdent]];
        //: sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : @"本地不存在".nim_localized;
        sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : [[FundingData sharedInstance] mAccountKey].resign;
        //: [box3 addSubview:sublab3];
        [box3 addSubview:sublab3];
        //: UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow3.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow3.image = [UIImage imageNamed:[[FundingData sharedInstance] mTableLayerText]];
        //: [box3 addSubview:arrow3];
        [box3 addSubview:arrow3];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor recordView:[[FundingData sharedInstance] notiSelectedInfoOperationMsg]];
        //: [box3 addSubview:line3];
        [box3 addSubview:line3];

        //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        //: [contView addSubview:box4];
        [contView addSubview:box4];
        //: UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: icon4.image = [UIImage imageNamed:@"ic_group_lists"];
        icon4.image = [UIImage imageNamed:[[FundingData sharedInstance] user_viewPath]];
        //: [box4 addSubview:icon4];
        [box4 addSubview:icon4];
        //: UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        //: lab4.font = [UIFont systemFontOfSize:14];
        lab4.font = [UIFont systemFontOfSize:14];
        //: lab4.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab4.textColor = [UIColor recordView:[[FundingData sharedInstance] k_contentName]];
        //: lab4.text = [FFFLanguageManager getTextWithKey:@"group_member_info_activity_mute_msg"];
        lab4.text = [MatronymicPath colorStreetwise:[[FundingData sharedInstance] notiUpGrayShouldData]];
        //: [box4 addSubview:lab4];
        [box4 addSubview:lab4];
        //: UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        //: [pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#F7BA00"]];
        [pushSwitch setOnTintColor: [UIColor recordView:[[FundingData sharedInstance] show_onCoverIdent]]];
        //: [pushSwitch addTarget:self action:@selector(updateMute:) forControlEvents:UIControlEventValueChanged];
        [pushSwitch addTarget:self action:@selector(reloads:) forControlEvents:UIControlEventValueChanged];
        //: pushSwitch.on = _member.isMuted;
        pushSwitch.on = _member.isMuted;
        //: [box4 addSubview:pushSwitch];
        [box4 addSubview:pushSwitch];


        //: BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
        BOOL canEdit = [TextWithUtil bracketInfo:self.teamListManager.myTeamInfo];
        //: if(canEdit){
        if(canEdit){
            //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            //: self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
            [self.btnDelete setTitleColor:[UIColor recordView:[[FundingData sharedInstance] dreamFrameData]] forState:UIControlStateNormal];
            //: [self.btnDelete setTitle:@"移出本群".nim_localized forState:UIControlStateNormal];
            [self.btnDelete setTitle:[[FundingData sharedInstance] show_contentKey].resign forState:UIControlStateNormal];
            //: [self.btnDelete addTarget:self action:@selector(removeMember) forControlEvents:UIControlEventTouchUpInside];
            [self.btnDelete addTarget:self action:@selector(pinSort) forControlEvents:UIControlEventTouchUpInside];
            //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
            self.btnDelete.backgroundColor = [UIColor recordView:[[FundingData sharedInstance] userVerticalPath]];
            //: self.btnDelete.layer.borderWidth = 1;
            self.btnDelete.layer.borderWidth = 1;
            //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
            self.btnDelete.layer.borderColor = [UIColor recordView:[[FundingData sharedInstance] dream_redNeedFormat]].CGColor;
            //: self.btnDelete.layer.cornerRadius = 24;
            self.btnDelete.layer.cornerRadius = 24;
            //: [_personView addSubview:self.btnDelete];
            [_personView addSubview:self.btnDelete];
        }


    }
    //: return _personView;
    return _personView;
}


//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (CollectionView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[CollectionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}



//: @end
@end