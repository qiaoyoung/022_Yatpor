
#import <Foundation/Foundation.h>

typedef struct {
    Byte formation;
    Byte *grayBegin;
    unsigned int eparchy;
	int buttonBackground;
	int tableVerticalRelease;
} StructGrayData;

@interface GrayData : NSObject

@end

@implementation GrayData

+ (NSData *)GrayDataToData:(NSString *)value {
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

+ (Byte *)GrayDataToByte:(StructGrayData *)data {
    for (int i = 0; i < data->eparchy; i++) {
        data->grayBegin[i] ^= data->formation;
    }
    data->grayBegin[data->eparchy] = 0;
	if (data->eparchy >= 2) {
		data->buttonBackground = data->grayBegin[0];
		data->tableVerticalRelease = data->grayBegin[1];
	}
    return data->grayBegin;
}

+ (NSString *)StringFromGrayData:(StructGrayData *)data {
    return [NSString stringWithUTF8String:(char *)[self GrayDataToByte:data]];
}

//: ic_card_black
+ (NSString *)appShouldData {
    /* static */ NSString *appShouldData = nil;
    if (!appShouldData) {
		NSString *origin = @"0F05390507140239040A07050D05";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){102, (Byte *)data.bytes, 13, 33, 194};
        appShouldData = [self StringFromGrayData:&value];
    }
    return appShouldData;
}

//: account
+ (NSString *)show_layerQuantityValue {
    /* static */ NSString *show_layerQuantityValue = nil;
    if (!show_layerQuantityValue) {
		NSString *origin = @"4A4848445E455FA7";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){43, (Byte *)data.bytes, 7, 160, 58};
        show_layerQuantityValue = [self StringFromGrayData:&value];
    }
    return show_layerQuantityValue;
}

//: group_id
+ (NSString *)main_commentText {
    /* static */ NSString *main_commentText = nil;
    if (!main_commentText) {
		NSString *origin = @"B8ADB0AAAF80B6BBF5";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){223, (Byte *)data.bytes, 8, 147, 57};
        main_commentText = [self StringFromGrayData:&value];
    }
    return main_commentText;
}

//: #F7BA00
+ (NSString *)main_customFormat {
    /* static */ NSString *main_customFormat = nil;
    if (!main_customFormat) {
		NSString *origin = @"9EFB8AFFFC8D8D41";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){189, (Byte *)data.bytes, 7, 189, 30};
        main_customFormat = [self StringFromGrayData:&value];
    }
    return main_customFormat;
}

//: user_profile_avtivity_remove_friend
+ (NSString *)mCollectionText {
    /* static */ NSString *mCollectionText = nil;
    if (!mCollectionText) {
		NSString *origin = @"97918790BD92908D848B8E87BD8394968B948B969BBD90878F8D9487BD84908B878C8693";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){226, (Byte *)data.bytes, 35, 122, 125};
        mCollectionText = [self StringFromGrayData:&value];
    }
    return mCollectionText;
}

//: /group/getgroups
+ (NSString *)noti_layerShouldIdent {
    /* static */ NSString *noti_layerShouldIdent = nil;
    if (!noti_layerShouldIdent) {
		NSString *origin = @"C98194899396C9818392819489939695A3";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){230, (Byte *)data.bytes, 16, 248, 195};
        noti_layerShouldIdent = [self StringFromGrayData:&value];
    }
    return noti_layerShouldIdent;
}

//: ic_card_report
+ (NSString *)k_onRemoteName {
    /* static */ NSString *k_onRemoteName = nil;
    if (!k_onRemoteName) {
		NSString *origin = @"020834080A190F34190E1B04191F98";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){107, (Byte *)data.bytes, 14, 17, 212};
        k_onRemoteName = [self StringFromGrayData:&value];
    }
    return k_onRemoteName;
}

//: request_successful
+ (NSString *)userLabPath {
    /* static */ NSString *userLabPath = nil;
    if (!userLabPath) {
		NSString *origin = @"465145415147406B4741575751474752415831";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){52, (Byte *)data.bytes, 18, 136, 138};
        userLabPath = [self StringFromGrayData:&value];
    }
    return userLabPath;
}

//: black_list_activity_remove_black_failed
+ (NSString *)mTextTingMsg {
    /* static */ NSString *mTextTingMsg = nil;
    if (!mTextTingMsg) {
		NSString *origin = @"363835373F0B383D27200B3537203D223D202D0B2631393B22310B363835373F0B32353D38313080";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){84, (Byte *)data.bytes, 39, 102, 132};
        mTextTingMsg = [self StringFromGrayData:&value];
    }
    return mTextTingMsg;
}

//: Group_chat
+ (NSString *)userImageMsg {
    /* static */ NSString *userImageMsg = nil;
    if (!userImageMsg) {
		NSString *origin = @"7A4F52484D625E555C496B";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){61, (Byte *)data.bytes, 10, 108, 56};
        userImageMsg = [self StringFromGrayData:&value];
    }
    return userImageMsg;
}

//: #ECECEC
+ (NSString *)k_redLineValue {
    /* static */ NSString *k_redLineValue = nil;
    if (!k_redLineValue) {
		NSString *origin = @"ABCDCBCDCBCDCBC6";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){136, (Byte *)data.bytes, 7, 165, 127};
        k_redLineValue = [self StringFromGrayData:&value];
    }
    return k_redLineValue;
}

//: ic_card_edit
+ (NSString *)notiShareName {
    /* static */ NSString *notiShareName = nil;
    if (!notiShareName) {
		NSString *origin = @"FBF1CDF1F3E0F6CDF7F6FBE602";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){146, (Byte *)data.bytes, 12, 232, 23};
        notiShareName = [self StringFromGrayData:&value];
    }
    return notiShareName;
}

//: user_id
+ (NSString *)m_removeName {
    /* static */ NSString *m_removeName = nil;
    if (!m_removeName) {
		NSString *origin = @"B6B0A6B19CAAA793";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){195, (Byte *)data.bytes, 7, 234, 91};
        m_removeName = [self StringFromGrayData:&value];
    }
    return m_removeName;
}

//: type
+ (NSString *)mCommentName {
    /* static */ NSString *mCommentName = nil;
    if (!mCommentName) {
		NSString *origin = @"EAE7EEFBAA";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){158, (Byte *)data.bytes, 4, 155, 126};
        mCommentName = [self StringFromGrayData:&value];
    }
    return mCommentName;
}

//: contact
+ (NSString *)appVerticalStr {
    /* static */ NSString *appVerticalStr = nil;
    if (!appVerticalStr) {
		NSString *origin = @"FAF6F7EDF8FAED48";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){153, (Byte *)data.bytes, 7, 213, 228};
        appVerticalStr = [self StringFromGrayData:&value];
    }
    return appVerticalStr;
}

//: report_activity_title
+ (NSString *)mainBlueMsg {
    /* static */ NSString *mainBlueMsg = nil;
    if (!mainBlueMsg) {
		NSString *origin = @"392E3B24393F142A283F223D223F32143F223F272EC4";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){75, (Byte *)data.bytes, 21, 215, 131};
        mainBlueMsg = [self StringFromGrayData:&value];
    }
    return mainBlueMsg;
}

//: ic_sex_woman
+ (NSString *)user_labEnableNameKey {
    /* static */ NSString *user_labEnableNameKey = nil;
    if (!user_labEnableNameKey) {
		NSString *origin = @"C1CBF7DBCDD0F7DFC7C5C9C639";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){168, (Byte *)data.bytes, 12, 60, 204};
        user_labEnableNameKey = [self StringFromGrayData:&value];
    }
    return user_labEnableNameKey;
}

//: black_list_activity_remove_black
+ (NSString *)showTeamName {
    /* static */ NSString *showTeamName = nil;
    if (!showTeamName) {
		NSString *origin = @"D5DBD6D4DCE8DBDEC4C3E8D6D4C3DEC1DEC3CEE8C5D2DAD8C1D2E8D5DBD6D4DC20";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){183, (Byte *)data.bytes, 32, 229, 113};
        showTeamName = [self StringFromGrayData:&value];
    }
    return showTeamName;
}

//: message_remark_name
+ (NSString *)notiSizeKey {
    /* static */ NSString *notiSizeKey = nil;
    if (!notiSizeKey) {
		NSString *origin = @"434B5D5D4F494B715C4B434F5C4571404F434BF3";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){46, (Byte *)data.bytes, 19, 29, 64};
        notiSizeKey = [self StringFromGrayData:&value];
    }
    return notiSizeKey;
}

//: name
+ (NSString *)mainModelReleaseIdent {
    /* static */ NSString *mainModelReleaseIdent = nil;
    if (!mainModelReleaseIdent) {
		NSString *origin = @"515E525AD0";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){63, (Byte *)data.bytes, 4, 185, 29};
        mainModelReleaseIdent = [self StringFromGrayData:&value];
    }
    return mainModelReleaseIdent;
}

//: contact_tag_fragment_delete_success
+ (NSString *)noti_frameCheckedIdent {
    /* static */ NSString *noti_frameCheckedIdent = nil;
    if (!noti_frameCheckedIdent) {
		NSString *origin = @"EDE1E0FAEFEDFAD1FAEFE9D1E8FCEFE9E3EBE0FAD1EAEBE2EBFAEBD1FDFBEDEDEBFDFD2F";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){142, (Byte *)data.bytes, 35, 199, 248};
        noti_frameCheckedIdent = [self StringFromGrayData:&value];
    }
    return noti_frameCheckedIdent;
}

//: code
+ (NSString *)mainKeyValue {
    /* static */ NSString *mainKeyValue = nil;
    if (!mainKeyValue) {
		NSString *origin = @"979B9091A9";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){244, (Byte *)data.bytes, 4, 23, 87};
        mainKeyValue = [self StringFromGrayData:&value];
    }
    return mainKeyValue;
}

//: #F6F7FA
+ (NSString *)k_resourceStartTitle {
    /* static */ NSString *k_resourceStartTitle = nil;
    if (!k_resourceStartTitle) {
		NSString *origin = @"BFDAAADAABDADDEA";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){156, (Byte *)data.bytes, 7, 150, 219};
        k_resourceStartTitle = [self StringFromGrayData:&value];
    }
    return k_resourceStartTitle;
}

//: ic_card_notice
+ (NSString *)show_accountText {
    /* static */ NSString *show_accountText = nil;
    if (!show_accountText) {
		NSString *origin = @"A1AB97ABA9BAAC97A6A7BCA1ABAD22";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){200, (Byte *)data.bytes, 14, 120, 250};
        show_accountText = [self StringFromGrayData:&value];
    }
    return show_accountText;
}

//: add_friend_activity_add_friend
+ (NSString *)showShareMessage {
    /* static */ NSString *showShareMessage = nil;
    if (!showShareMessage) {
		NSString *origin = @"C8CDCDF6CFDBC0CCC7CDF6C8CADDC0DFC0DDD0F6C8CDCDF6CFDBC0CCC7CD24";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){169, (Byte *)data.bytes, 30, 78, 199};
        showShareMessage = [self StringFromGrayData:&value];
    }
    return showShareMessage;
}

//: his_qr
+ (NSString *)m_onTitle {
    /* static */ NSString *m_onTitle = nil;
    if (!m_onTitle) {
		NSString *origin = @"F8F9E3CFE1E299";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){144, (Byte *)data.bytes, 6, 227, 56};
        m_onTitle = [self StringFromGrayData:&value];
    }
    return m_onTitle;
}

//: isfrend
+ (NSString *)showTouchValue {
    /* static */ NSString *showTouchValue = nil;
    if (!showTouchValue) {
		NSString *origin = @"BEA4B1A5B2B9B341";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){215, (Byte *)data.bytes, 7, 24, 118};
        showTouchValue = [self StringFromGrayData:&value];
    }
    return showTouchValue;
}

//: jpg
+ (NSString *)mRefreshName {
    /* static */ NSString *mRefreshName = nil;
    if (!mRefreshName) {
		NSString *origin = @"62786F95";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){8, (Byte *)data.bytes, 3, 126, 48};
        mRefreshName = [self StringFromGrayData:&value];
    }
    return mRefreshName;
}

//: #2C3042
+ (NSString *)dreamDotData {
    /* static */ NSString *dreamDotData = nil;
    if (!dreamDotData) {
		NSString *origin = @"ACBDCCBCBFBBBD9A";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){143, (Byte *)data.bytes, 7, 198, 177};
        dreamDotData = [self StringFromGrayData:&value];
    }
    return dreamDotData;
}

//: invite_you_group
+ (NSString *)mainStartUrl {
    /* static */ NSString *mainStartUrl = nil;
    if (!mainStartUrl) {
		NSString *origin = @"1C1B031C01102A0C1A002A12071A0005C5";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){117, (Byte *)data.bytes, 16, 105, 41};
        mainStartUrl = [self StringFromGrayData:&value];
    }
    return mainStartUrl;
}

//: icon_me_arrow
+ (NSString *)dream_touchUrl {
    /* static */ NSString *dream_touchUrl = nil;
    if (!dream_touchUrl) {
		NSString *origin = @"B4BEB2B382B0B882BCAFAFB2AA4E";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){221, (Byte *)data.bytes, 13, 167, 201};
        dream_touchUrl = [self StringFromGrayData:&value];
    }
    return dream_touchUrl;
}

//: personcart_profile_bg
+ (NSString *)showRangeMessage {
    /* static */ NSString *showRangeMessage = nil;
    if (!showRangeMessage) {
		NSString *origin = @"736671706C6D606271775C73716C656A6F665C616441";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){3, (Byte *)data.bytes, 21, 141, 129};
        showRangeMessage = [self StringFromGrayData:&value];
    }
    return showRangeMessage;
}

//: /user/detail
+ (NSString *)mRangeStateSharePath {
    /* static */ NSString *mRangeStateSharePath = nil;
    if (!mRangeStateSharePath) {
		NSString *origin = @"CB91978196CB808190858D88D6";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){228, (Byte *)data.bytes, 12, 243, 148};
        mRangeStateSharePath = [self StringFromGrayData:&value];
    }
    return mRangeStateSharePath;
}

//: message_info_activity_message_info
+ (NSString *)m_teamName {
    /* static */ NSString *m_teamName = nil;
    if (!m_teamName) {
		NSString *origin = @"5A524444565052685E595158685654435E415E434E685A524444565052685E59515820";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){55, (Byte *)data.bytes, 34, 215, 2};
        m_teamName = [self StringFromGrayData:&value];
    }
    return m_teamName;
}

//: gotoBlacklist
+ (NSString *)noti_remoteFormat {
    /* static */ NSString *noti_remoteFormat = nil;
    if (!noti_remoteFormat) {
		NSString *origin = @"5F574C577A54595B5354514B4C04";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){56, (Byte *)data.bytes, 13, 179, 136};
        noti_remoteFormat = [self StringFromGrayData:&value];
    }
    return noti_remoteFormat;
}

//: friend_delete_fail
+ (NSString *)appNameButtonContent {
    /* static */ NSString *appNameButtonContent = nil;
    if (!appNameButtonContent) {
		NSString *origin = @"65716A666D675C67666F6677665C65626A6F9C";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){3, (Byte *)data.bytes, 18, 91, 8};
        appNameButtonContent = [self StringFromGrayData:&value];
    }
    return appNameButtonContent;
}

//: friend_circle_adapter_delete
+ (NSString *)kInfoData {
    /* static */ NSString *kInfoData = nil;
    if (!kInfoData) {
		NSString *origin = @"BAAEB5B9B2B883BFB5AEBFB0B983BDB8BDACA8B9AE83B8B9B0B9A8B9CB";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){220, (Byte *)data.bytes, 28, 124, 250};
        kInfoData = [self StringFromGrayData:&value];
    }
    return kInfoData;
}

//: /other/feedback
+ (NSString *)appShowFormat {
    /* static */ NSString *appShowFormat = nil;
    if (!appShowFormat) {
		NSString *origin = @"1B5B405C51461B525151505655575F93";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){52, (Byte *)data.bytes, 15, 161, 23};
        appShowFormat = [self StringFromGrayData:&value];
    }
    return appShowFormat;
}

//: register_avtivity_account
+ (NSString *)dream_infoNeedName {
    /* static */ NSString *dream_infoNeedName = nil;
    if (!dream_infoNeedName) {
		NSString *origin = @"687F7D73696E7F68457B6C6E736C736E63457B7979756F746EC1";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){26, (Byte *)data.bytes, 25, 112, 232};
        dream_infoNeedName = [self StringFromGrayData:&value];
    }
    return dream_infoNeedName;
}

//: item_data
+ (NSString *)k_userText {
    /* static */ NSString *k_userText = nil;
    if (!k_userText) {
		NSString *origin = @"F1ECFDF5C7FCF9ECF993";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){152, (Byte *)data.bytes, 9, 76, 154};
        k_userText = [self StringFromGrayData:&value];
    }
    return k_userText;
}

//: contact_tag_fragment_add_success
+ (NSString *)notiUpViewIdent {
    /* static */ NSString *notiUpViewIdent = nil;
    if (!notiUpViewIdent) {
		NSString *origin = @"FBF7F6ECF9FBECC7ECF9FFC7FEEAF9FFF5FDF6ECC7F9FCFCC7EBEDFBFBFDEBEB69";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){152, (Byte *)data.bytes, 32, 19, 33};
        notiUpViewIdent = [self StringFromGrayData:&value];
    }
    return notiUpViewIdent;
}

//: personCard_bg
+ (NSString *)showViewBackUrl {
    /* static */ NSString *showViewBackUrl = nil;
    if (!showViewBackUrl) {
		NSString *origin = @"5B4E59584445684A594F74494CAE";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){43, (Byte *)data.bytes, 13, 85, 223};
        showViewBackUrl = [self StringFromGrayData:&value];
    }
    return showViewBackUrl;
}

//: head_default
+ (NSString *)mRangeIdent {
    /* static */ NSString *mRangeIdent = nil;
    if (!mRangeIdent) {
		NSString *origin = @"484541447F44454641554C540F";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){32, (Byte *)data.bytes, 12, 89, 250};
        mRangeIdent = [self StringFromGrayData:&value];
    }
    return mRangeIdent;
}

//: 未设置
+ (NSString *)noti_sizePath {
    /* static */ NSString *noti_sizePath = nil;
    if (!noti_sizePath) {
		NSString *origin = @"443E084A0C1C451F0C25";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){162, (Byte *)data.bytes, 9, 76, 77};
        noti_sizePath = [self StringFromGrayData:&value];
    }
    return noti_sizePath;
}

//: #EEEEEE
+ (NSString *)showResourceTitle {
    /* static */ NSString *showResourceTitle = nil;
    if (!showResourceTitle) {
		NSString *origin = @"06606060606060B2";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){37, (Byte *)data.bytes, 7, 56, 29};
        showResourceTitle = [self StringFromGrayData:&value];
    }
    return showResourceTitle;
}

//: friend_ids
+ (NSString *)dream_dateNeedName {
    /* static */ NSString *dream_dateNeedName = nil;
    if (!dream_dateNeedName) {
		NSString *origin = @"21352E222923182E233422";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){71, (Byte *)data.bytes, 10, 196, 48};
        dream_dateNeedName = [self StringFromGrayData:&value];
    }
    return dream_dateNeedName;
}

//: please_contact_your_administrator
+ (NSString *)m_resourceIdent {
    /* static */ NSString *m_resourceIdent = nil;
    if (!m_resourceIdent) {
		NSString *origin = @"6579707466704A767A7B617476614A6C7A60674A7471787C7B7C66616774617A675D";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){21, (Byte *)data.bytes, 33, 56, 151};
        m_resourceIdent = [self StringFromGrayData:&value];
    }
    return m_resourceIdent;
}

//: user_profile_avtivity_remove_friend_tip
+ (NSString *)show_contentId {
    /* static */ NSString *show_contentId = nil;
    if (!show_contentId) {
		NSString *origin = @"3E382E39143B39242D22272E142A3D3F223D223F3214392E26243D2E142D39222E252F143F223B92";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){75, (Byte *)data.bytes, 39, 200, 25};
        show_contentId = [self StringFromGrayData:&value];
    }
    return show_contentId;
}

//: contact_tag_fragment_cancel
+ (NSString *)mainRedText {
    /* static */ NSString *mainRedText = nil;
    if (!mainRedText) {
		NSString *origin = @"333F3E243133240F2431370F362231373D353E240F33313E33353C1F";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){80, (Byte *)data.bytes, 27, 154, 1};
        mainRedText = [self StringFromGrayData:&value];
    }
    return mainRedText;
}

//: contact_tag_fragment_sure
+ (NSString *)k_dismissStr {
    /* static */ NSString *k_dismissStr = nil;
    if (!k_dismissStr) {
		NSString *origin = @"7975746E7B796E456E7B7D457C687B7D777F746E45696F687F58";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){26, (Byte *)data.bytes, 25, 25, 238};
        k_dismissStr = [self StringFromGrayData:&value];
    }
    return k_dismissStr;
}

//: back_arrow_bl
+ (NSString *)m_normalStr {
    /* static */ NSString *m_normalStr = nil;
    if (!m_normalStr) {
		NSString *origin = @"2A292B2317293A3A273F172A242E";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){72, (Byte *)data.bytes, 13, 156, 191};
        m_normalStr = [self StringFromGrayData:&value];
    }
    return m_normalStr;
}

//: #FF483D
+ (NSString *)notiContainerTitle {
    /* static */ NSString *notiContainerTitle = nil;
    if (!notiContainerTitle) {
		NSString *origin = @"5B3E3E4C404B3CB5";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){120, (Byte *)data.bytes, 7, 171, 181};
        notiContainerTitle = [self StringFromGrayData:&value];
    }
    return notiContainerTitle;
}

//: avatar
+ (NSString *)k_upName {
    /* static */ NSString *k_upName = nil;
    if (!k_upName) {
		NSString *origin = @"51465144514271";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){48, (Byte *)data.bytes, 6, 248, 39};
        k_upName = [self StringFromGrayData:&value];
    }
    return k_upName;
}

//: group_chat_avatar_activity_add_black_success
+ (NSString *)dream_removeStr {
    /* static */ NSString *dream_removeStr = nil;
    if (!dream_removeStr) {
		NSString *origin = @"8A9F82989DB28E858C99B28C9B8C998C9FB28C8E99849B849994B28C8989B28F818C8E86B29E988E8E889E9E3B";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){237, (Byte *)data.bytes, 44, 32, 227};
        dream_removeStr = [self StringFromGrayData:&value];
    }
    return dream_removeStr;
}

//: add_friend_request_fail
+ (NSString *)user_valueName {
    /* static */ NSString *user_valueName = nil;
    if (!user_valueName) {
		NSString *origin = @"E5E0E0DBE2F6EDE1EAE0DBF6E1F5F1E1F7F0DBE2E5EDE899";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){132, (Byte *)data.bytes, 23, 58, 183};
        user_valueName = [self StringFromGrayData:&value];
    }
    return user_valueName;
}

//: #FDF4C9
+ (NSString *)kButtonIdent {
    /* static */ NSString *kButtonIdent = nil;
    if (!kButtonIdent) {
		NSString *origin = @"395C5E5C2E5923D8";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){26, (Byte *)data.bytes, 7, 79, 177};
        kButtonIdent = [self StringFromGrayData:&value];
    }
    return kButtonIdent;
}

//: team_create_helper_create_failed
+ (NSString *)appRedValue {
    /* static */ NSString *appRedValue = nil;
    if (!appRedValue) {
		NSString *origin = @"4352565A68544552564352685F525B475245685445525643526851565E5B5253EA";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){55, (Byte *)data.bytes, 32, 215, 163};
        appRedValue = [self StringFromGrayData:&value];
    }
    return appRedValue;
}

//: add_friend_add_fail
+ (NSString *)kValueFormat {
    /* static */ NSString *kValueFormat = nil;
    if (!kValueFormat) {
		NSString *origin = @"1217172C15011A161D172C1217172C15121A1FD6";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){115, (Byte *)data.bytes, 19, 244, 204};
        kValueFormat = [self StringFromGrayData:&value];
    }
    return kValueFormat;
}

//: #ffffff
+ (NSString *)app_globalFormat {
    /* static */ NSString *app_globalFormat = nil;
    if (!app_globalFormat) {
		NSString *origin = @"9BDEDEDEDEDEDEFB";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){184, (Byte *)data.bytes, 7, 231, 107};
        app_globalFormat = [self StringFromGrayData:&value];
    }
    return app_globalFormat;
}

//: message_info_activity_msg_notice
+ (NSString *)mImageData {
    /* static */ NSString *mImageData = nil;
    if (!mImageData) {
		NSString *origin = @"E7EFF9F9EBEDEFD5E3E4ECE5D5EBE9FEE3FCE3FEF3D5E7F9EDD5E4E5FEE3E9EF94";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){138, (Byte *)data.bytes, 32, 27, 78};
        mImageData = [self StringFromGrayData:&value];
    }
    return mImageData;
}

//: func_viewholder_black
+ (NSString *)mTouchUrl {
    /* static */ NSString *mTouchUrl = nil;
    if (!mTouchUrl) {
		NSString *origin = @"46554E437F56494557484F4C4445527F424C41434B56";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){32, (Byte *)data.bytes, 21, 246, 55};
        mTouchUrl = [self StringFromGrayData:&value];
    }
    return mTouchUrl;
}

//: data
+ (NSString *)kContentValue {
    /* static */ NSString *kContentValue = nil;
    if (!kContentValue) {
		NSString *origin = @"8E8B9E8B52";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){234, (Byte *)data.bytes, 4, 143, 134};
        kContentValue = [self StringFromGrayData:&value];
    }
    return kContentValue;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)noti_layerKey {
    /* static */ NSString *noti_layerKey = nil;
    if (!noti_layerKey) {
		NSString *origin = @"9B9D8B9CB187808881B18F989A8798879A97B19B9E82818F8AB18F988F9A8F9CB1888F87828B8A50";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){238, (Byte *)data.bytes, 39, 150, 33};
        noti_layerKey = [self StringFromGrayData:&value];
    }
    return noti_layerKey;
}

//: /group/addgroupuser
+ (NSString *)mSelectKey {
    /* static */ NSString *mSelectKey = nil;
    if (!mSelectKey) {
		NSString *origin = @"4F07120F15104F01040407120F1510151305123B";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){96, (Byte *)data.bytes, 19, 3, 228};
        mSelectKey = [self StringFromGrayData:&value];
    }
    return mSelectKey;
}

//: ic_sex_man
+ (NSString *)notiTitleStr {
    /* static */ NSString *notiTitleStr = nil;
    if (!notiTitleStr) {
		NSString *origin = @"2E241834223F182A26294D";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){71, (Byte *)data.bytes, 10, 82, 39};
        notiTitleStr = [self StringFromGrayData:&value];
    }
    return notiTitleStr;
}

//: mobile
+ (NSString *)dreamProcessorIdent {
    /* static */ NSString *dreamProcessorIdent = nil;
    if (!dreamProcessorIdent) {
		NSString *origin = @"FFFDF0FBFEF78C";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){146, (Byte *)data.bytes, 6, 232, 170};
        dreamProcessorIdent = [self StringFromGrayData:&value];
    }
    return dreamProcessorIdent;
}

//: group_info_activity_op_failed
+ (NSString *)main_modelMessage {
    /* static */ NSString *main_modelMessage = nil;
    if (!main_modelMessage) {
		NSString *origin = @"190C110B0E2117101811211F1D0A1708170A0721110E21181F17121B1AE3";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){126, (Byte *)data.bytes, 29, 102, 237};
        main_modelMessage = [self StringFromGrayData:&value];
    }
    return main_modelMessage;
}

//: canAddFriend
+ (NSString *)mTagData {
    /* static */ NSString *mTagData = nil;
    if (!mTagData) {
		NSString *origin = @"383A351A3F3F1D29323E353FED";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){91, (Byte *)data.bytes, 12, 167, 192};
        mTagData = [self StringFromGrayData:&value];
    }
    return mTagData;
}

//: black_list_activity_add_black_failed
+ (NSString *)k_dataTitle {
    /* static */ NSString *k_dataTitle = nil;
    if (!k_dataTitle) {
		NSString *origin = @"373934363E0A393C26210A3436213C233C212C0A3431310A373934363E0A33343C39303119";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){85, (Byte *)data.bytes, 36, 120, 141};
        k_dataTitle = [self StringFromGrayData:&value];
    }
    return k_dataTitle;
}

//: #8A8E98
+ (NSString *)appTagMsg {
    /* static */ NSString *appTagMsg = nil;
    if (!appTagMsg) {
		NSString *origin = @"948FF68FF28E8FF7";
		NSData *data = [GrayData GrayDataToData:origin];
        StructGrayData value = (StructGrayData){183, (Byte *)data.bytes, 7, 253, 211};
        appTagMsg = [self StringFromGrayData:&value];
    }
    return appTagMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESPersonCardViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "FFFCommonTableDelegate.h"
#import "MenuDelegate.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "BarViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESSessionViewController.h"
#import "SessionSizeViewController.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "NTESUserUtil.h"
#import "TitleName.h"
//: #import "HMDataPicker.h"
#import "AggregationView.h"
//: #import "FFFRemarksView.h"
#import "OptionSectionView.h"
//: #import "NTESOpinionBackViewController.h"
#import "EmptyWithViewController.h"
//: #import "ZMONReportUserView.h"
#import "TingView.h"
//: #import "ZMONReportNextView.h"
#import "SpeedyView.h"
//: #import "ZMONReportBlackView.h"
#import "SessionView.h"
//: #import "ZMONReportDeleteView.h"
#import "SmallnessView.h"
//: #import "NTESUserQRCodeViewController.h"
#import "LifeStyleViewController.h"
//: #import "CCCBlackListViewController.h"
#import "MenuViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"
//: #import "NTESShareCardAttachment.h"
#import "LengthAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "CCCContactsViewController.h"
#import "BankViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "TingViewController.h"
//: #import "FFFKitFileLocationHelper.h"
#import "TipTitle.h"

//: @interface NTESPersonalCardViewController ()<NIMUserManagerDelegate,HMDataPickerDelegate,NTESReportDelegate,NTESReportNextDelegate>
@interface BarViewController ()<NIMUserManagerDelegate,EmptyDelegate,ToDelegate,StyleDelegate>

//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) MenuDelegate *delegator;

//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UIView *accountView;
@property (nonatomic, strong) UIView *accountView;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (nonatomic, strong) UIImageView *sexImg;
@property (nonatomic, strong) UIImageView *sexImg;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIButton *messageBtn;
@property (nonatomic, strong) UIButton *messageBtn;
//: @property (nonatomic, strong) UIButton *groupBtn;
@property (nonatomic, strong) UIButton *groupBtn;

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

//: @property (nonatomic, strong) ZMONReportUserView *reprotView;
@property (nonatomic, strong) TingView *reprotView;
//: @property (nonatomic, strong) FFFRemarksView *changeRemarksView;
@property (nonatomic, strong) OptionSectionView *changeRemarksView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) BillView *loadingView;
//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) SpeedyView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) SessionView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) SmallnessView *reprotDeleteView;

//: @end
@end

//: @implementation NTESPersonalCardViewController
@implementation BarViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithScale:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    [self setUpNav];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[GrayData k_resourceStartTitle]];

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

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    //: if(isMyFriend){
    if(isMyFriend){
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
    //: }else{
    }else{
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
    }

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;



    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[GrayData m_removeName]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[GrayData mRangeStateSharePath]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[GrayData mainKeyValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[GrayData kContentValue]];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data to:[GrayData show_layerQuantityValue]];
            //: NSString *avatar = [data newStringValueForKey:@"avatar"];
            NSString *avatar = [data to:[GrayData k_upName]];

            //: NSString *str = [NSString stringWithFormat:@"%@:%@",[FFFLanguageManager getTextWithKey:@"register_avtivity_account"],self.userAcount];
            NSString *str = [NSString stringWithFormat:@"%@:%@",[MatronymicPath colorStreetwise:[GrayData dream_infoNeedName]],self.userAcount];
            //: self.accountId.text = str;
            self.accountId.text = str;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];

            //: self.accountView.hidden = NO;
            self.accountView.hidden = NO;
            //: CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            //: self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            //: self.accountId.frame = CGRectMake(10, 0, size.width, 24);
            self.accountId.frame = CGRectMake(10, 0, size.width, 24);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [self refresh];
    [self nameRefresh];
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

//: - (void)refresh{
- (void)nameRefresh{

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
            //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                //: if (users.count) {
                if (users.count) {
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;
                    //: self.user = users.firstObject;
                    self.user = users.firstObject;

                    //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[GrayData mRangeIdent]]];
                    //: self.accountNickname.text = self.user.userInfo.nickName;
                    self.accountNickname.text = self.user.userInfo.nickName;
                    //: self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    //: [self.accountNickname sizeToFit];
                    [self.accountNickname sizeToFit];
                    //: self.accountNickname.centerX = self.view.centerX-12;
                    self.accountNickname.centerX = self.view.centerX-12;

                    //: self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    //: if (self.user.userInfo.gender == NIMUserGenderMale) {
                    if (self.user.userInfo.gender == NIMUserGenderMale) {
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
                        _sexImg.image = [UIImage imageNamed:[GrayData notiTitleStr]];
                    //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                    }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
                        _sexImg.image = [UIImage imageNamed:[GrayData user_labEnableNameKey]];
                    }

                    //: BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    //: BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];
                    BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = NO;
                        self.btnDelete.hidden = NO;
                    //: }else{
                    }else{
                        //: self.btnAdd.hidden = NO;
                        self.btnAdd.hidden = NO;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: if (isMe) {
                    if (isMe) {
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: self.switchBlack.on = isInBlackList;
                    self.switchBlack.on = isInBlackList;
                    //: self.switchNotice.on = needNotify;
                    self.switchNotice.on = needNotify;

                    //: self.labRemark.text = self.user.alias.length ? self.user.alias : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labRemark.text = self.user.alias.length ? self.user.alias : [MatronymicPath colorStreetwise:[GrayData noti_sizePath]];
                    //: self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [MatronymicPath colorStreetwise:[GrayData noti_sizePath]];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.messageBtn.hidden = NO;
                        self.messageBtn.hidden = NO;
                        //: self.groupBtn.hidden = NO;
                        self.groupBtn.hidden = NO;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                    //: }else{
                    }else{
                        //: self.messageBtn.hidden = YES;
                        self.messageBtn.hidden = YES;
                        //: self.groupBtn.hidden = YES;
                        self.groupBtn.hidden = YES;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                    }
                    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
                    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

                }
            //: }];
            }];



}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Action
#pragma mark - Action


//: -(void)onActionGroup:(id)sender{
-(void)labelTo:(id)sender{

//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView extra];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/getgroups"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[GrayData noti_layerShouldIdent]] table:nil carteDuJour:NO behindValue:^(id responseObject) {
        //: [self.loadingView animationClose];
        [self.loadingView animationEnableClose];
//        [SVProgressHUD dismissWithCompletion:^{
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict to:[GrayData mainKeyValue]];
            //: if (code.integerValue == 0) {
            if (code.integerValue == 0) {
                //: NSArray *dataArray = [resultDict arrayValueForKey:@"data"];
                NSArray *dataArray = [resultDict direction:[GrayData kContentValue]];
                //: NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:@"item_data"];
                NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:[GrayData k_userText]];
                //: HMDataPicker *dataPick = [[HMDataPicker alloc] initWithDelegate:self dataDict:dataDict selectedDict:nil jsonNode:@"name"];
                AggregationView *dataPick = [[AggregationView alloc] initWithInput:self title:dataDict should:nil media:[GrayData mainModelReleaseIdent]];
                //: dataPick.tag = 500;
                dataPick.tag = 500;
                //: [dataPick show];
                [dataPick streetwise];
            }
//        }];
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationEnableClose];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"add_friend_request_fail"]
        [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData user_valueName]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    //: }];
    }];
}



//: #pragma mark - HMDataPickerDelegate
#pragma mark - EmptyDelegate
//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict{
- (void)build:(AggregationView *)dataPicker message:(NSDictionary *)selectedDict{
    //: _groupDict = selectedDict;
    _groupDict = selectedDict;
    //: [self refresh];
    [self nameRefresh];
    //: [self setingGroup];
    [self location];//设置分组

}

//: - (void)onActionEditAlias:(id)sender{
- (void)alias:(id)sender{
//    NTESAliasSettingViewController *vc = [[NTESAliasSettingViewController alloc] initWithUserId:self.userId];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionEditMyInfo:(id)sender{
- (void)to:(id)sender{
//    NTESUserInfoSettingViewController *vc = [[NTESUserInfoSettingViewController alloc] initWithNibName:nil bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionBlackListValueChange:(id)sender{
- (void)childbirthPreparationClassFullMoonBenignity:(id)sender{

    //: [self onActionBlackListValueChange_1:sender];
    [self video:sender];//SDK拉黑
//    [self requestBlackChanged:sender];
}
////拉黑信息同步
//: -(void)requestBlackChanged:(id)sender{
-(void)changed:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if (switcher.on) {
    if (switcher.on) {
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[GrayData dreamProcessorIdent]] = self.userId;
        //: dict[@"type"] = @"1";
        dict[[GrayData mCommentName]] = @"1";//拉入黑名单
        //: [wself refresh];
        [wself nameRefresh];

    //: }else{
    }else{
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[GrayData dreamProcessorIdent]] = self.userId;
        //: dict[@"type"] = @"0";
        dict[[GrayData mCommentName]] = @"0";//解除黑名单
        //: [wself refresh];
        [wself nameRefresh];

    }
}

//: - (void)onActionBlackListValueChange_1:(id)sender{
- (void)video:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView extra];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (switcher.on) {
    if (switcher.on) {
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationEnableClose];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData dream_removeStr]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData k_dataTitle]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself nameRefresh];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationEnableClose];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData showTeamName]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData mTextTingMsg]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself nameRefresh];
            }
        //: }];
        }];
    }
}

//: - (void)onActionNeedNotifyValueChange:(id)sender{
- (void)checked:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView extra];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationEnableClose];
        //: if (error) {
        if (error) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData main_modelMessage]] duration:2.0f position:CSToastPositionCenter];
            //: [wself refresh];
            [wself nameRefresh];
        }
    //: }];
    }];
}


//: - (void)btnchat
- (void)addGreen
{
    //: UINavigationController *nav = self.navigationController;
    UINavigationController *nav = self.navigationController;
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
    //: [nav pushViewController:vc animated:YES];
    [nav pushViewController:vc animated:YES];
    //: UIViewController *root = nav.viewControllers[0];
    UIViewController *root = nav.viewControllers[0];
    //: nav.viewControllers = @[root,vc];
    nav.viewControllers = @[root,vc];
}

//: - (void)btnGroupchat
- (void)commentIn
{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self dayBy:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView extra];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self save:avater blueName:^(NSString *urlString) {

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
            option.postscript = [MatronymicPath colorStreetwise:[GrayData mainStartUrl]];
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
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData appRedValue]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)dayBy:(ContactSelectFinishBlock) block{
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
    //: config.alreadySelectedMemberId = @[self.userId];
    config.alreadySelectedMemberId = @[self.userId];
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
//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)save:(UIImage *)image blueName:(void(^)(NSString *urlString ))complete {

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
    NSString *fileName = [TipTitle input:[GrayData mRefreshName]];
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
                [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData noti_layerKey]]
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
        [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData noti_layerKey]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}


//加好友
//: -(void)addFriend{
-(void)centerTitle{

    //: if (_teamSetingConfig != nil) {
    if (_teamSetingConfig != nil) {
        //: NSString *canAddFriend = [_teamSetingConfig newStringValueForKey:@"canAddFriend"];
        NSString *canAddFriend = [_teamSetingConfig to:[GrayData mTagData]];
        //: if (canAddFriend.integerValue <= 0) {
        if (canAddFriend.integerValue <= 0) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD should:[MatronymicPath colorStreetwise:[GrayData m_resourceIdent]]];
            //: return;
            return;
        }
    }

    //: [self sendAddFriendRequest];
    [self triumphFrom];//添加好友

}

//: -(void)sendAddFriendRequest{
-(void)triumphFrom{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [NameDefaults argument].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [MatronymicPath colorStreetwise:[GrayData notiUpViewIdent]];//@"添加成功"
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [MatronymicPath colorStreetwise:[GrayData userLabPath]];//@"请求成功"
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [MatronymicPath colorStreetwise:[GrayData kValueFormat]];//@"添加失败"
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [MatronymicPath colorStreetwise:[GrayData user_valueName]];//@"请求失败"
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView extra];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationEnableClose];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            //: [wself refresh];
            [wself nameRefresh];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//分组网络请求
//: -(void)setingGroup{
-(void)location{

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"group_id"] = [_groupDict newStringValueForKey:@"id"];
    dict[[GrayData main_commentText]] = [_groupDict to:@"id"];
    //: dict[@"friend_ids"] = self.user.userId;
    dict[[GrayData dream_dateNeedName]] = self.user.userId;
    //: dict[@"isfrend"] = isMyFriend?@"1":@"0";
    dict[[GrayData showTouchValue]] = isMyFriend?@"1":@"0";

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/addgroupuser"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[GrayData mSelectKey]] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"-----%@",resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)deleteFriend{
- (void)doMessage{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;//@"删除好友后，将同时解除双方的好友关系"
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"] message:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend_tip"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"], nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[MatronymicPath colorStreetwise:[GrayData mCollectionText]] message:[MatronymicPath colorStreetwise:[GrayData show_contentId]] delegate:nil cancelButtonTitle:[MatronymicPath colorStreetwise:[GrayData mainRedText]] otherButtonTitles:[MatronymicPath colorStreetwise:[GrayData k_dismissStr]], nil];
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert sizeHandler:^(NSInteger index) {
        //: if (index == 1) {
        if (index == 1) {
//            [SVProgressHUD show];
            //: [self.loadingView animationShow];
            [self.loadingView extra];



            //: [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
            [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
                                             //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                             removeAlias:[[PassageSetting language] my]
                                              //: completion:^(NSError *error) {
                                              completion:^(NSError *error) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView animationEnableClose];
                //: if (!error) {
                if (!error) {
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData noti_frameCheckedIdent]] duration:2.0f position:CSToastPositionCenter];
                    //: [wself refresh];
                    [wself nameRefresh];
                    //: [self removeNIMRecentSession];
                    [self subSession];
                //: }else{
                }else{
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[MatronymicPath colorStreetwise:[GrayData appNameButtonContent]] duration:2.0f position:CSToastPositionCenter];
                }
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)removeNIMRecentSession
- (void)subSession
{
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: [manager deleteRecentSession:recent];
    [manager deleteRecentSession:recent];
}

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self nameRefresh];
    }
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self nameRefresh];
    }
}

//: - (void)onBlackListChanged{
- (void)onBlackListChanged{
    //: [self refresh];
    [self nameRefresh];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self nameRefresh];
}

//: - (void)onActionEditAlias{
- (void)modifyContent{

    //: [self.view addSubview:self.changeRemarksView];
    [self.view addSubview:self.changeRemarksView];
    //: [ self.changeRemarksView reloadWithNickname: self.user];
    [ self.changeRemarksView frame: self.user];
    //: [self.changeRemarksView animationShow];
    [self.changeRemarksView onShow];
}

//: - (void)reportsAction {
- (void)domainTeam {
    //: [self.view addSubview:self.reprotView];
    [self.view addSubview:self.reprotView];
    //: [self.reprotView animationShow];
    [self.reprotView read];
//    EmptyWithViewController *vc = [[EmptyWithViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)handleQrbtn
- (void)permissionTop
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    LifeStyleViewController *vc = [[LifeStyleViewController alloc] init];
    //: vc.userID = _userId;
    vc.userID = _userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)btngotoBlackList
- (void)btngotoQuick
{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    MenuViewController *vc = [[MenuViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)shareCardAction
- (void)mode
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    LengthAttachment *attachment = [[LengthAttachment alloc] init];
    //: attachment.title = self.user.userInfo.nickName;
    attachment.title = self.user.userInfo.nickName;
    //: attachment.type = @"0";
    attachment.type = @"0";
    //: attachment.personCardId = self.userId;
    attachment.personCardId = self.userId;
    //: attachment.content = self.userAcount;
    attachment.content = self.userAcount;
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


//: #pragma mark - Private
#pragma mark - Private
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
//        _userView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"personCard_bg"]];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[GrayData showViewBackUrl]];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice bearDown]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[GrayData showRangeMessage]];
        //: userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: userBg.layer.shadowOffset = CGSizeMake(0,4);
        userBg.layer.shadowOffset = CGSizeMake(0,4);
        //: userBg.layer.shadowOpacity = 1;
        userBg.layer.shadowOpacity = 1;
        //: userBg.layer.shadowRadius = 16;
        userBg.layer.shadowRadius = 16;
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice vg_statusBarHeight]+44+35, 36, 36);
        QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice bearDown]+44+35, 36, 36);
//        QrBtn.backgroundColor = [UIColor whiteColor];
        //: [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
        [QrBtn setImage:[UIImage imageNamed:[GrayData m_onTitle]] forState:UIControlStateNormal];
        //: [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
        [QrBtn addTarget:self action:@selector(permissionTop) forControlEvents:UIControlEventTouchUpInside];
        //: QrBtn.layer.cornerRadius = 8;
        QrBtn.layer.cornerRadius = 8;
        //: [_userView addSubview:QrBtn];
        [_userView addSubview:QrBtn];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice bearDown]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[GrayData mRangeIdent]]];
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

        //: _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            _sexImg.image = [UIImage imageNamed:[GrayData notiTitleStr]];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            _sexImg.image = [UIImage imageNamed:[GrayData user_labEnableNameKey]];
        }
        //: [_userView addSubview:_sexImg];
        [_userView addSubview:_sexImg];

        //: _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        //: _accountView.backgroundColor = [UIColor colorWithHexString:@"#FDF4C9"];
        _accountView.backgroundColor = [UIColor recordView:[GrayData kButtonIdent]];
        //: _accountView.layer.cornerRadius = 12;
        _accountView.layer.cornerRadius = 12;
        //: [_userView addSubview:_accountView];
        [_userView addSubview:_accountView];
        //: _accountView.hidden = YES;
        _accountView.hidden = YES;

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor recordView:[GrayData dreamDotData]];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_accountView addSubview:self.accountId];
        [_accountView addSubview:self.accountId];

        //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        //: if(isMyFriend){
        if(isMyFriend){
            //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            //: _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            //: _messageBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
            _messageBtn.backgroundColor = [UIColor recordView:[GrayData main_customFormat]];
            //: [_messageBtn addTarget:self action:@selector(btnchat) forControlEvents:UIControlEventTouchUpInside];
            [_messageBtn addTarget:self action:@selector(addGreen) forControlEvents:UIControlEventTouchUpInside];
            //: _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_messageBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_messageBtn setTitleColor:[UIColor recordView:[GrayData app_globalFormat]] forState:UIControlStateNormal];
            //: [_messageBtn setTitle:[FFFLanguageManager getTextWithKey:@"message_info_activity_message_info"] forState:UIControlStateNormal];
            [_messageBtn setTitle:[MatronymicPath colorStreetwise:[GrayData m_teamName]] forState:UIControlStateNormal];
            //: _messageBtn.layer.cornerRadius = 22;
            _messageBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_messageBtn];
            [_userView addSubview:_messageBtn];

            //: _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            //: _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            //: _groupBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
            _groupBtn.backgroundColor = [UIColor recordView:[GrayData main_customFormat]];
            //: [_groupBtn addTarget:self action:@selector(btnGroupchat) forControlEvents:UIControlEventTouchUpInside];
            [_groupBtn addTarget:self action:@selector(commentIn) forControlEvents:UIControlEventTouchUpInside];
            //: _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_groupBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_groupBtn setTitleColor:[UIColor recordView:[GrayData app_globalFormat]] forState:UIControlStateNormal];
            //: [_groupBtn setTitle:[FFFLanguageManager getTextWithKey:@"Group_chat"] forState:UIControlStateNormal];
            [_groupBtn setTitle:[MatronymicPath colorStreetwise:[GrayData userImageMsg]] forState:UIControlStateNormal];
            //: _groupBtn.layer.cornerRadius = 22;
            _groupBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_groupBtn];
            [_userView addSubview:_groupBtn];
        }
        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[GrayData m_normalStr]] forState:(UIControlStateNormal)];
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
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
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

        //: UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:noticeView];
        [contView addSubview:noticeView];
        //: UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic3.image = [UIImage imageNamed:@"ic_card_notice"];
        pic3.image = [UIImage imageNamed:[GrayData show_accountText]];
        //: [noticeView addSubview:pic3];
        [noticeView addSubview:pic3];
        //: self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        //: self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitlenotice.textColor = [UIColor blackColor];
        self.labTitlenotice.textColor = [UIColor blackColor];
        //: self.labTitlenotice.text = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
        self.labTitlenotice.text = [MatronymicPath colorStreetwise:[GrayData mImageData]];
        //: [noticeView addSubview:self.labTitlenotice];
        [noticeView addSubview:self.labTitlenotice];
        //: self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        //: [self.switchNotice addTarget:self action:@selector(onActionNeedNotifyValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchNotice addTarget:self action:@selector(checked:) forControlEvents:UIControlEventValueChanged];
        //: self.switchNotice.onTintColor = [UIColor colorWithHexString:@"#F7BA00"];
        self.switchNotice.onTintColor = [UIColor recordView:[GrayData main_customFormat]];
        //: [noticeView addSubview:self.switchNotice];
        [noticeView addSubview:self.switchNotice];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor recordView:[GrayData k_redLineValue]];
        //: [noticeView addSubview:line3];
        [noticeView addSubview:line3];

        //: UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        //: [contView addSubview:blackView];
        [contView addSubview:blackView];
        //: UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic4.image = [UIImage imageNamed:@"ic_card_black"];
        pic4.image = [UIImage imageNamed:[GrayData appShouldData]];
        //: [blackView addSubview:pic4];
        [blackView addSubview:pic4];
        //: self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        //: self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleBlack.textColor = [UIColor blackColor];
        self.labTitleBlack.textColor = [UIColor blackColor];
        //: self.labTitleBlack.text = [FFFLanguageManager getTextWithKey:@"func_viewholder_black"];
        self.labTitleBlack.text = [MatronymicPath colorStreetwise:[GrayData mTouchUrl]];
        //: [blackView addSubview:self.labTitleBlack];
        [blackView addSubview:self.labTitleBlack];

        //: UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        //: [blackBtn addTarget:self action:@selector(btngotoBlackList) forControlEvents:UIControlEventTouchUpInside];
        [blackBtn addTarget:self action:@selector(btngotoQuick) forControlEvents:UIControlEventTouchUpInside];
        //: blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        //: [blackBtn setTitleColor:[UIColor colorWithHexString:@"#F7BA00"] forState:UIControlStateNormal];
        [blackBtn setTitleColor:[UIColor recordView:[GrayData main_customFormat]] forState:UIControlStateNormal];
        //: [blackBtn setTitle:[FFFLanguageManager getTextWithKey:@"gotoBlacklist"] forState:UIControlStateNormal];
        [blackBtn setTitle:[MatronymicPath colorStreetwise:[GrayData noti_remoteFormat]] forState:UIControlStateNormal];
        //: [blackView addSubview:blackBtn];
        [blackView addSubview:blackBtn];
        //: blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;

        //: self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        //: [self.switchBlack addTarget:self action:@selector(onActionBlackListValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchBlack addTarget:self action:@selector(childbirthPreparationClassFullMoonBenignity:) forControlEvents:UIControlEventValueChanged];
        //: self.switchBlack.onTintColor = [UIColor colorWithHexString:@"#F7BA00"];
        self.switchBlack.onTintColor = [UIColor recordView:[GrayData main_customFormat]];
        //: [blackView addSubview:self.switchBlack];
        [blackView addSubview:self.switchBlack];

//        UIView *line4 = [[UIView alloc]initWithFrame:CGRectMake(36, 61, SCREEN_WIDTH-60-36, 1)];
//        line4.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [blackView addSubview:line4];
//        
//        UIView *shareCartView = [[UIView alloc]initWithFrame:CGRectMake(15, blackView.bottom, SCREEN_WIDTH-60, 50)];
//        [contView addSubview:shareCartView];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareCardAction)];
//        [shareCartView addGestureRecognizer:tapGesture];
//        UIImageView *pic5 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
//        pic5.image = [UIImage imageNamed:@"ic_card_share"];
//        [shareCartView addSubview:pic5];
//        UILabel *labTitleShare = [[UILabel alloc]initWithFrame:CGRectMake(pic5.right+12, 10, 250, 28)];
//        labTitleShare.font = [UIFont systemFontOfSize:16.f];
//        labTitleShare.textColor = [UIColor blackColor];
//        labTitleShare.text = LangKey(@"send_card");
//        [shareCartView addSubview:labTitleShare];
//        UIImageView *arrow5 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
//        arrow5.image = [UIImage imageNamed:@"icon_me_arrow"];
//        [shareCartView addSubview:arrow5];


        //: UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        //: [_personView addSubview:cont2View];
        [_personView addSubview:cont2View];
        //: cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: cont2View.layer.cornerRadius = 12;
        cont2View.layer.cornerRadius = 12;
        //: cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cont2View.layer.shadowOffset = CGSizeMake(0,4);
        cont2View.layer.shadowOffset = CGSizeMake(0,4);
        //: cont2View.layer.shadowOpacity = 1;
        cont2View.layer.shadowOpacity = 1;
        //: cont2View.layer.shadowRadius = 16;
        cont2View.layer.shadowRadius = 16;


        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:nameView];
        [cont2View addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onActionEditAlias)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(modifyContent)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[GrayData notiShareName]];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleRemark.textColor = [UIColor blackColor];
        self.labTitleRemark.textColor = [UIColor blackColor];
        //: self.labTitleRemark.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [MatronymicPath colorStreetwise:[GrayData notiSizeKey]];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor recordView:[GrayData appTagMsg]];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[GrayData dream_touchUrl]];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor recordView:[GrayData k_redLineValue]];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

//        UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-60, 80)];
//        [contView addSubview:signView];
//        UIImageView *pic2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 24, 24)];
//        pic2.image = [UIImage imageNamed:@"ic_card_sign"];
//        [signView addSubview:pic2];
//        self.labTitSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, 10, 250, 24)];
//        self.labTitSign.font = [UIFont systemFontOfSize:16.f];
//        self.labTitSign.textColor = [UIColor blackColor];
//        self.labTitSign.text = LangKey(@"user_profile_avtivity_signature");
//        [signView addSubview:self.labTitSign];
//        self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, self.labTitleRemark.bottom, 250, 50)];
//        self.labSign.font = [UIFont systemFontOfSize:14.f];
//        self.labSign.numberOfLines = 2;
//        self.labSign.textColor = TextColor_3;
//        [signView addSubview:self.labSign];
//        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 79, SCREEN_WIDTH-60-36, 1)];
//        line2.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [signView addSubview:line2];


        //: UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:reportView];
        [cont2View addSubview:reportView];
        //: UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reportsAction)];
        UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(domainTeam)];
        //: [reportView addGestureRecognizer:reporttapGesture];
        [reportView addGestureRecognizer:reporttapGesture];
        //: UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: picreport.image = [UIImage imageNamed:@"ic_card_report"];
        picreport.image = [UIImage imageNamed:[GrayData k_onRemoteName]];
        //: [reportView addSubview:picreport];
        [reportView addSubview:picreport];
        //: self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        //: self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleResport.textColor = [UIColor blackColor];
        self.labTitleResport.textColor = [UIColor blackColor];
        //: self.labTitleResport.text = [FFFLanguageManager getTextWithKey:@"report_activity_title"];
        self.labTitleResport.text = [MatronymicPath colorStreetwise:[GrayData mainBlueMsg]];
        //: [reportView addSubview:self.labTitleResport];
        [reportView addSubview:self.labTitleResport];
        //: UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrowreport.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrowreport.image = [UIImage imageNamed:[GrayData dream_touchUrl]];
        //: [reportView addSubview:arrowreport];
        [reportView addSubview:arrowreport];


        //: self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnAdd setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnAdd setTitleColor:[UIColor recordView:[GrayData notiContainerTitle]] forState:UIControlStateNormal];
        //: [self.btnAdd setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
        [self.btnAdd setTitle:[MatronymicPath colorStreetwise:[GrayData showShareMessage]] forState:UIControlStateNormal];
        //: [self.btnAdd addTarget:self action:@selector(addFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnAdd addTarget:self action:@selector(centerTitle) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnAdd.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnAdd.backgroundColor = [UIColor recordView:[GrayData app_globalFormat]];
        //: self.btnAdd.layer.borderWidth = 1;
        self.btnAdd.layer.borderWidth = 1;
        //: self.btnAdd.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnAdd.layer.borderColor = [UIColor recordView:[GrayData showResourceTitle]].CGColor;
        //: self.btnAdd.layer.cornerRadius = 24;
        self.btnAdd.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnAdd];
        [_personView addSubview:self.btnAdd];

        //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnDelete setTitleColor:[UIColor recordView:[GrayData notiContainerTitle]] forState:UIControlStateNormal];
        //: [self.btnDelete setTitle:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_delete"] forState:UIControlStateNormal];
        [self.btnDelete setTitle:[MatronymicPath colorStreetwise:[GrayData kInfoData]] forState:UIControlStateNormal];
        //: [self.btnDelete addTarget:self action:@selector(deleteFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnDelete addTarget:self action:@selector(doMessage) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnDelete.backgroundColor = [UIColor recordView:[GrayData app_globalFormat]];
        //: self.btnDelete.layer.borderWidth = 1;
        self.btnDelete.layer.borderWidth = 1;
        //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnDelete.layer.borderColor = [UIColor recordView:[GrayData showResourceTitle]].CGColor;
        //: self.btnDelete.layer.cornerRadius = 24;
        self.btnDelete.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnDelete];
        [_personView addSubview:self.btnDelete];
    }
    //: return _personView;
    return _personView;
}

//: - (FFFRemarksView *)changeRemarksView
- (OptionSectionView *)changeRemarksView
{
    //: if(!_changeRemarksView){
    if(!_changeRemarksView){
        //: _changeRemarksView = [[FFFRemarksView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeRemarksView = [[OptionSectionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeRemarksView.hidden = YES;

    }
    //: return _changeRemarksView;
    return _changeRemarksView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (BillView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[BillView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _loadingView;
    return _loadingView;
}
//: - (ZMONReportUserView *)reprotView
- (TingView *)reprotView
{
    //: if(!_reprotView){
    if(!_reprotView){
        //: _reprotView = [[ZMONReportUserView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotView = [[TingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotView.delegate = self;
        _reprotView.delegate = self;
    }
    //: return _reprotView;
    return _reprotView;
}

//: -(void)didTouchSubmitButton:(NSString *)reason
-(void)enableColor:(NSString *)reason
{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"contact"] = reason?:@"";
    dict[[GrayData appVerticalStr]] = reason?:@"";
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName pressed:[NSString stringWithFormat:[GrayData appShowFormat]] disable:dict messageExtra:NO closeFortFailed:^(id responseObject) {
    //: } failed:^(id responseObject, NSError *error) {
    } name:^(id responseObject, NSError *error) {
    //: }];
    }];

    //: [self.view addSubview:self.reprotNextView];
    [self.view addSubview:self.reprotNextView];
    //: [self.reprotNextView animationShow];
    [self.reprotNextView marginFirstNim];

}

//: - (ZMONReportNextView *)reprotNextView
- (SpeedyView *)reprotNextView
{
    //: if(!_reprotNextView){
    if(!_reprotNextView){
        //: _reprotNextView = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotNextView = [[SpeedyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotNextView.delegate = self;
        _reprotNextView.delegate = self;
    }
    //: return _reprotNextView;
    return _reprotNextView;

}
//: - (void)didTouchBlackButton
- (void)sightButton
{
    //: [self.view addSubview:self.reprotBlackView];
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    //: [self.reprotBlackView animationShow];
    [self.reprotBlackView froth];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {

                   //: if (!error) {
                   if (!error) {
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData dream_removeStr]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData k_dataTitle]] duration:2.0f position:CSToastPositionCenter];

                   }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };


}
//: - (void)didTouchDeleteButton
- (void)messageBubble
{
    //: [self.view addSubview:self.reprotDeleteView];
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    //: [self.reprotDeleteView animationShow];
    [self.reprotDeleteView net];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                         removeAlias:[[PassageSetting language] my]
                                          //: completion:^(NSError *error) {
                                          completion:^(NSError *error) {

            //: if (!error) {
            if (!error) {
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData noti_frameCheckedIdent]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MatronymicPath colorStreetwise:[GrayData appNameButtonContent]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };
}

//: - (ZMONReportBlackView *)reprotBlackView
- (SessionView *)reprotBlackView
{
    //: if(!_reprotBlackView){
    if(!_reprotBlackView){
        //: _reprotBlackView = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotBlackView = [[SessionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotBlackView;
    return _reprotBlackView;

}

//: - (ZMONReportDeleteView *)reprotDeleteView
- (SmallnessView *)reprotDeleteView
{
    //: if(!_reprotDeleteView){
    if(!_reprotDeleteView){
        //: _reprotDeleteView = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotDeleteView = [[SmallnessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotDeleteView;
    return _reprotDeleteView;
}

//: @end
@end