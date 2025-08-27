
#import <Foundation/Foundation.h>

@interface BlueData : NSObject

+ (instancetype)sharedInstance;

//: Việt nam
@property (nonatomic, copy) NSString *show_redUrl;

//: italiano
@property (nonatomic, copy) NSString *main_countId;

//: Portugal
@property (nonatomic, copy) NSString *mWindowStr;

//: fragment_my_version
@property (nonatomic, copy) NSString *dream_dateValueBeginText;

//: Ireland
@property (nonatomic, copy) NSString *userReleaseIdent;

//: #999999
@property (nonatomic, copy) NSString *noti_commentData;

//: user_ic_5
@property (nonatomic, copy) NSString *main_showKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *notiDotValue;

//: France
@property (nonatomic, copy) NSString *userCloseMsg;

//: #fffContent
@property (nonatomic, copy) NSString *showSizeData;

//: Denmark
@property (nonatomic, copy) NSString *user_operationId;

//: btn_right
@property (nonatomic, copy) NSString *mainShareData;

//: CFBundleShortVersionString
@property (nonatomic, copy) NSString *kBlueTouchShareTitle;

//: user_my_log
@property (nonatomic, copy) NSString *k_tagValue;

//: user_ic_2
@property (nonatomic, copy) NSString *noti_messageStr;

//: Malta
@property (nonatomic, copy) NSString *user_ofStr;

//: Slovakia
@property (nonatomic, copy) NSString *noti_backgroundText;

//: activity_comment_setting_exit
@property (nonatomic, copy) NSString *mainButtonMessage;

//: enable
@property (nonatomic, copy) NSString *main_modelDotText;

//: Estonia
@property (nonatomic, copy) NSString *userCommentValue;

//: Greece
@property (nonatomic, copy) NSString *appTeamGlobalUrl;

//: user_edit_lang
@property (nonatomic, copy) NSString *app_shouldIdent;

//: 中文繁体
@property (nonatomic, copy) NSString *m_accountFormat;

//: Czech Republic
@property (nonatomic, copy) NSString *kGlobalTitleIdent;

//: Hungary
@property (nonatomic, copy) NSString *kTagData;

//: English
@property (nonatomic, copy) NSString *noti_normalKey;

//: Finland
@property (nonatomic, copy) NSString *app_showValue;

//: user_ic_1
@property (nonatomic, copy) NSString *userBackgroundMsg;

//: hant
@property (nonatomic, copy) NSString *notiValueName;

//: common_bg
@property (nonatomic, copy) NSString *main_infoPath;

//: Kiswahili
@property (nonatomic, copy) NSString *dreamCommentStr;

//: my_log
@property (nonatomic, copy) NSString *dream_stateMessage;

//: user_ic_4
@property (nonatomic, copy) NSString *mBarTeamFormat;

//: spa
@property (nonatomic, copy) NSString *dream_backDotShareName;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *notiCoverName;

//: safe_setting_activity_title
@property (nonatomic, copy) NSString *notiTeamIdent;

//: icon_close
@property (nonatomic, copy) NSString *dreamTingId;

//: qrcode_activity_title
@property (nonatomic, copy) NSString *main_dateTitle;

//: #CCECFC
@property (nonatomic, copy) NSString *dreamWindowBackIdent;

//: #F7BA00
@property (nonatomic, copy) NSString *user_titleShowMsg;

//: Romania
@property (nonatomic, copy) NSString *showProcessorPath;

//: Croatia
@property (nonatomic, copy) NSString *k_barQueryRestoreIdent;

//: Bulgaria
@property (nonatomic, copy) NSString *m_tingTitle;

//: Netherlands
@property (nonatomic, copy) NSString *k_contentResourceData;

//: Español
@property (nonatomic, copy) NSString *main_viewTitle;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *userTeamBubbleFormat;

//: user_ic_3
@property (nonatomic, copy) NSString *noti_tingUrl;

//: feedback_activity_title
@property (nonatomic, copy) NSString *showLabPath;

//: Slovenija
@property (nonatomic, copy) NSString *appInfoTitle;

//: Em alemão
@property (nonatomic, copy) NSString *main_accountPath;

//: icon_select_confirm
@property (nonatomic, copy) NSString *main_shareUrl;

//: user_qr_icon
@property (nonatomic, copy) NSString *noti_remoteData;

//: Poland
@property (nonatomic, copy) NSString *userFlushUrl;

//: #2C3042
@property (nonatomic, copy) NSString *kStateUrl;

//: 5D5F66
@property (nonatomic, copy) NSString *user_remoteFormat;

//: system_change_language_title
@property (nonatomic, copy) NSString *mainNeedValue;

//: #F7D2F3
@property (nonatomic, copy) NSString *mainProcessorData;

//: user_edit_profile
@property (nonatomic, copy) NSString *k_showName;

//: NotificationLogout
@property (nonatomic, copy) NSString *show_startKey;

//: Türkçe
@property (nonatomic, copy) NSString *main_globalId;

//: Lithuania
@property (nonatomic, copy) NSString *kUserData;

//: receiver_model
@property (nonatomic, copy) NSString *showCustomTitle;

//: Latvia
@property (nonatomic, copy) NSString *mGlobalData;

//: Sverige
@property (nonatomic, copy) NSString *mShouldBarMessage;

//: Luxembourg
@property (nonatomic, copy) NSString *show_upMsg;

//: edit_profile
@property (nonatomic, copy) NSString *app_withUrl;

@end

@implementation BlueData

+ (instancetype)sharedInstance {
    static BlueData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BlueDataToData:(NSString *)value {
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

- (Byte *)BlueDataToCache:(Byte *)data {
    int on = data[0];
    Byte windowView = data[1];
    int laminate = data[2];
    for (int i = laminate; i < laminate + on; i++) {
        int value = data[i] - windowView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[laminate + on] = 0;
    return data + laminate;
}

- (NSString *)StringFromBlueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BlueDataToCache:data]];
}

//: Portugal
- (NSString *)mWindowStr {
    if (!_mWindowStr) {
		NSString *origin = @"08500BFC87CFE2E50C45EEA0BFC2C4C5B7B1BCD8";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mWindowStr = [self StringFromBlueData:value];
    }
    return _mWindowStr;
}

//: Luxembourg
- (NSString *)show_upMsg {
    if (!_show_upMsg) {
		NSString *origin = @"0A5109EB54FDAE1DED9DC6C9B6BEB3C0C6C3B897";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_upMsg = [self StringFromBlueData:value];
    }
    return _show_upMsg;
}

//: CFBundleShortVersionString
- (NSString *)kBlueTouchShareTitle {
    if (!_kBlueTouchShareTitle) {
		NSString *origin = @"1A2B060FAB3D6E716DA0998F97907E939A9D9F81909D9E949A997E9F9D94999215";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kBlueTouchShareTitle = [self StringFromBlueData:value];
    }
    return _kBlueTouchShareTitle;
}

//: #999999
- (NSString *)noti_commentData {
    if (!_noti_commentData) {
		NSString *origin = @"072B034E64646464646467";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_commentData = [self StringFromBlueData:value];
    }
    return _noti_commentData;
}

//: safe_setting_activity_title
- (NSString *)notiTeamIdent {
    if (!_notiTeamIdent) {
		NSString *origin = @"1B47095EAF66517E77BAA8ADACA6BAACBBBBB0B5AEA6A8AABBB0BDB0BBC0A6BBB0BBB3ACA1";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiTeamIdent = [self StringFromBlueData:value];
    }
    return _notiTeamIdent;
}

//: #F7D2F3
- (NSString *)mainProcessorData {
    if (!_mainProcessorData) {
		NSString *origin = @"073B0C2C0511AED59E86D5D55E81727F6D816E86";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainProcessorData = [self StringFromBlueData:value];
    }
    return _mainProcessorData;
}

//: Kiswahili
- (NSString *)dreamCommentStr {
    if (!_dreamCommentStr) {
		NSString *origin = @"092F0CCB98A725445C69E5A97A98A2A69097989B9875";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamCommentStr = [self StringFromBlueData:value];
    }
    return _dreamCommentStr;
}

//: icon_close
- (NSString *)dreamTingId {
    if (!_dreamTingId) {
		NSString *origin = @"0A2F0C1FCC1F4E1E442D38C898929E9D8E929B9EA294F7";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTingId = [self StringFromBlueData:value];
    }
    return _dreamTingId;
}

//: contact_tag_fragment_cancel
- (NSString *)notiDotValue {
    if (!_notiDotValue) {
		NSString *origin = @"1B3D0DCFB40F4B9FC98B817E3EA0ACABB19EA0B19CB19EA49CA3AF9EA4AAA2ABB19CA09EABA0A2A9E8";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiDotValue = [self StringFromBlueData:value];
    }
    return _notiDotValue;
}

//: Lithuania
- (NSString *)kUserData {
    if (!_kUserData) {
		NSString *origin = @"096104B0ADCAD5C9D6C2CFCAC270";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kUserData = [self StringFromBlueData:value];
    }
    return _kUserData;
}

//: edit_profile
- (NSString *)app_withUrl {
    if (!_app_withUrl) {
		NSString *origin = @"0C4A068F976AAFAEB3BEA9BABCB9B0B3B6AF50";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_withUrl = [self StringFromBlueData:value];
    }
    return _app_withUrl;
}

//: Estonia
- (NSString *)userCommentValue {
    if (!_userCommentValue) {
		NSString *origin = @"07620BDC2B4421D7B380CCA7D5D6D1D0CBC31A";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userCommentValue = [self StringFromBlueData:value];
    }
    return _userCommentValue;
}

//: English
- (NSString *)noti_normalKey {
    if (!_noti_normalKey) {
		NSString *origin = @"074F061E8D7D94BDB6BBB8C2B74E";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_normalKey = [self StringFromBlueData:value];
    }
    return _noti_normalKey;
}

//: user_qr_icon
- (NSString *)noti_remoteData {
    if (!_noti_remoteData) {
		NSString *origin = @"0C1C0A29F3B9CB3585A7918F818E7B8D8E7B857F8B8A6D";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_remoteData = [self StringFromBlueData:value];
    }
    return _noti_remoteData;
}

//: 5D5F66
- (NSString *)user_remoteFormat {
    if (!_user_remoteFormat) {
		NSString *origin = @"0642086560EA82647786778878783B";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_remoteFormat = [self StringFromBlueData:value];
    }
    return _user_remoteFormat;
}

//: feedback_activity_title
- (NSString *)showLabPath {
    if (!_showLabPath) {
		NSString *origin = @"17380B6462326E0680DDFC9E9D9D9C9A999BA397999BACA1AEA1ACB197ACA1ACA49DCA";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showLabPath = [self StringFromBlueData:value];
    }
    return _showLabPath;
}

//: Finland
- (NSString *)app_showValue {
    if (!_app_showValue) {
		NSString *origin = @"070C09F126A922811652757A786D7A70AE";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_showValue = [self StringFromBlueData:value];
    }
    return _app_showValue;
}

//: user_edit_lang
- (NSString *)app_shouldIdent {
    if (!_app_shouldIdent) {
		NSString *origin = @"0E2A0D67DCFBEF6DE478DBB65B9F9D8F9C898F8E939E89968B9891C2";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_shouldIdent = [self StringFromBlueData:value];
    }
    return _app_shouldIdent;
}

//: 中文繁体
- (NSString *)m_accountFormat {
    if (!_m_accountFormat) {
		NSString *origin = @"0C510BC89D468A9EEAF53E3509FE37E7D8380AD2350EE437";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_accountFormat = [self StringFromBlueData:value];
    }
    return _m_accountFormat;
}

//: Czech Republic
- (NSString *)kGlobalTitleIdent {
    if (!_kGlobalTitleIdent) {
		NSString *origin = @"0E050A9281ADC5FF8D5F487F6A686D25576A757A67716E6802";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kGlobalTitleIdent = [self StringFromBlueData:value];
    }
    return _kGlobalTitleIdent;
}

//: France
- (NSString *)userCloseMsg {
    if (!_userCloseMsg) {
		NSString *origin = @"060506914CF14B776673686A83";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userCloseMsg = [self StringFromBlueData:value];
    }
    return _userCloseMsg;
}

//: Việt nam
- (NSString *)show_redUrl {
    if (!_show_redUrl) {
		NSString *origin = @"0A350AB50BCEA6CF4A068B9E16F0BCA955A396A2D0";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_redUrl = [self StringFromBlueData:value];
    }
    return _show_redUrl;
}

//: user_my_log
- (NSString *)k_tagValue {
    if (!_k_tagValue) {
		NSString *origin = @"0B050DDF7F5F76E8928072A7287A786A7764727E6471746CE6";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_tagValue = [self StringFromBlueData:value];
    }
    return _k_tagValue;
}

//: Poland
- (NSString *)userFlushUrl {
    if (!_userFlushUrl) {
		NSString *origin = @"062F0869805CD84B7F9E9B909D935A";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userFlushUrl = [self StringFromBlueData:value];
    }
    return _userFlushUrl;
}

//: Netherlands
- (NSString *)k_contentResourceData {
    if (!_k_contentResourceData) {
		NSString *origin = @"0B0F0614EBE85D74837774817B707D738226";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_contentResourceData = [self StringFromBlueData:value];
    }
    return _k_contentResourceData;
}

//: Türkçe
- (NSString *)main_globalId {
    if (!_main_globalId) {
		NSString *origin = @"08110C7C97E38819E02E060465D4CD837CD4B876D8";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_globalId = [self StringFromBlueData:value];
    }
    return _main_globalId;
}

//: user_edit_profile
- (NSString *)k_showName {
    if (!_k_showName) {
		NSString *origin = @"11170AA37D874EA9FAD28C8A7C89767C7B808B768789867D80837CCC";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_showName = [self StringFromBlueData:value];
    }
    return _k_showName;
}

//: contact_tag_fragment_sure
- (NSString *)userTeamBubbleFormat {
    if (!_userTeamBubbleFormat) {
		NSString *origin = @"19030BA39505095FED78F9667271776466776277646A626975646A70687177627678756812";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTeamBubbleFormat = [self StringFromBlueData:value];
    }
    return _userTeamBubbleFormat;
}

//: Greece
- (NSString *)appTeamGlobalUrl {
    if (!_appTeamGlobalUrl) {
		NSString *origin = @"06070B5CDA7A2B4E1A3B994E796C6C6A6CC5";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appTeamGlobalUrl = [self StringFromBlueData:value];
    }
    return _appTeamGlobalUrl;
}

//: Latvia
- (NSString *)mGlobalData {
    if (!_mGlobalData) {
		NSString *origin = @"0604035065787A6D6575";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mGlobalData = [self StringFromBlueData:value];
    }
    return _mGlobalData;
}

//: #CCECFC
- (NSString *)dreamWindowBackIdent {
    if (!_dreamWindowBackIdent) {
		NSString *origin = @"072E0DE617A3E85C6F9A04DA2A51717173717471AB";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamWindowBackIdent = [self StringFromBlueData:value];
    }
    return _dreamWindowBackIdent;
}

//: user_ic_1
- (NSString *)userBackgroundMsg {
    if (!_userBackgroundMsg) {
		NSString *origin = @"09500B356CB4DC8D5695DFC5C3B5C2AFB9B3AF8123";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userBackgroundMsg = [self StringFromBlueData:value];
    }
    return _userBackgroundMsg;
}

//: Ireland
- (NSString *)userReleaseIdent {
    if (!_userReleaseIdent) {
		NSString *origin = @"074E0D2052A59086305E3F56D397C0B3BAAFBCB24D";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userReleaseIdent = [self StringFromBlueData:value];
    }
    return _userReleaseIdent;
}

//: user_ic_3
- (NSString *)noti_tingUrl {
    if (!_noti_tingUrl) {
		NSString *origin = @"094705B3DCBCBAACB9A6B0AAA67AD8";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_tingUrl = [self StringFromBlueData:value];
    }
    return _noti_tingUrl;
}

//: Romania
- (NSString *)showProcessorPath {
    if (!_showProcessorPath) {
		NSString *origin = @"0712041E64817F73807B73F4";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showProcessorPath = [self StringFromBlueData:value];
    }
    return _showProcessorPath;
}

//: #fffContent
- (NSString *)showSizeData {
    if (!_showSizeData) {
		NSString *origin = @"075006D94F3873B6B6B6B6B6B6C0";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showSizeData = [self StringFromBlueData:value];
    }
    return _showSizeData;
}

//: Sverige
- (NSString *)mShouldBarMessage {
    if (!_mShouldBarMessage) {
		NSString *origin = @"0728077ACEFBA27B9E8D9A918F8D24";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mShouldBarMessage = [self StringFromBlueData:value];
    }
    return _mShouldBarMessage;
}

//: receiver_model
- (NSString *)showCustomTitle {
    if (!_showCustomTitle) {
		NSString *origin = @"0E330DC370B3B60356393F195AA59896989CA998A592A0A297989F41";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showCustomTitle = [self StringFromBlueData:value];
    }
    return _showCustomTitle;
}

//: Slovakia
- (NSString *)noti_backgroundText {
    if (!_noti_backgroundText) {
		NSString *origin = @"084A039DB6B9C0ABB5B3AB8C";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_backgroundText = [self StringFromBlueData:value];
    }
    return _noti_backgroundText;
}

//: common_bg
- (NSString *)main_infoPath {
    if (!_main_infoPath) {
		NSString *origin = @"092E077EC72A88919D9B9B9D9C8D909590";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_infoPath = [self StringFromBlueData:value];
    }
    return _main_infoPath;
}

//: Em alemão
- (NSString *)main_accountPath {
    if (!_main_accountPath) {
		NSString *origin = @"0A4E095D39A108D75693BB6EAFBAB3BB11F1BD0C";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_accountPath = [self StringFromBlueData:value];
    }
    return _main_accountPath;
}

//: my_log
- (NSString *)dream_stateMessage {
    if (!_dream_stateMessage) {
		NSString *origin = @"06180CB22F3DA702BC851AB585917784877FCE";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_stateMessage = [self StringFromBlueData:value];
    }
    return _dream_stateMessage;
}

//: Malta
- (NSString *)user_ofStr {
    if (!_user_ofStr) {
		NSString *origin = @"050B0D785E5EEC7B1FF8B363FA586C777F6C4C";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_ofStr = [self StringFromBlueData:value];
    }
    return _user_ofStr;
}

//: Bulgaria
- (NSString *)m_tingTitle {
    if (!_m_tingTitle) {
		NSString *origin = @"082006D8F9C362958C878192898172";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_tingTitle = [self StringFromBlueData:value];
    }
    return _m_tingTitle;
}

//: Denmark
- (NSString *)user_operationId {
    if (!_user_operationId) {
		NSString *origin = @"07520D6347E4C4A4FDF8EADA4696B7C0BFB3C4BD32";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_operationId = [self StringFromBlueData:value];
    }
    return _user_operationId;
}

//: btn_right
- (NSString *)mainShareData {
    if (!_mainShareData) {
		NSString *origin = @"09380DA74D8D132408B83725049AACA697AAA19FA0AC3F";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainShareData = [self StringFromBlueData:value];
    }
    return _mainShareData;
}

//: enable
- (NSString *)main_modelDotText {
    if (!_main_modelDotText) {
		NSString *origin = @"061609418A341BA8957B847778827B88";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_modelDotText = [self StringFromBlueData:value];
    }
    return _main_modelDotText;
}

//: #F7BA00
- (NSString *)user_titleShowMsg {
    if (!_user_titleShowMsg) {
		NSString *origin = @"07230C85633909AD7CB60B6346695A65645353CD";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_titleShowMsg = [self StringFromBlueData:value];
    }
    return _user_titleShowMsg;
}

//: spa
- (NSString *)dream_backDotShareName {
    if (!_dream_backDotShareName) {
		NSString *origin = @"0342089B22E6BCF5B5B2A381";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_backDotShareName = [self StringFromBlueData:value];
    }
    return _dream_backDotShareName;
}

//: Español
- (NSString *)main_viewTitle {
    if (!_main_viewTitle) {
		NSString *origin = @"082E0CAD9A3913ABDAB47C9473A19E8FF1DF9D9AFC";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_viewTitle = [self StringFromBlueData:value];
    }
    return _main_viewTitle;
}

//: user_ic_2
- (NSString *)noti_messageStr {
    if (!_noti_messageStr) {
		NSString *origin = @"09500BB2156ECA08020C02C5C3B5C2AFB9B3AF8248";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_messageStr = [self StringFromBlueData:value];
    }
    return _noti_messageStr;
}

//: #2C3042
- (NSString *)kStateUrl {
    if (!_kStateUrl) {
		NSString *origin = @"0703081308F444D226354636333735B0";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kStateUrl = [self StringFromBlueData:value];
    }
    return _kStateUrl;
}

//: Hungary
- (NSString *)kTagData {
    if (!_kTagData) {
		NSString *origin = @"07530831C7A2C31F9BC8C1BAB4C5CCF3";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTagData = [self StringFromBlueData:value];
    }
    return _kTagData;
}

//: NotificationLogout
- (NSString *)show_startKey {
    if (!_show_startKey) {
		NSString *origin = @"123408894EDD0A3882A3A89D9A9D9795A89DA3A280A39BA3A9A8E2";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_startKey = [self StringFromBlueData:value];
    }
    return _show_startKey;
}

//: hant
- (NSString *)notiValueName {
    if (!_notiValueName) {
		NSString *origin = @"0402036A63707698";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiValueName = [self StringFromBlueData:value];
    }
    return _notiValueName;
}

//: fragment_my_version
- (NSString *)dream_dateValueBeginText {
    if (!_dream_dateValueBeginText) {
		NSString *origin = @"135709AE7A47B09E1CBDC9B8BEC4BCC5CBB6C4D0B6CDBCC9CAC0C6C56A";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_dateValueBeginText = [self StringFromBlueData:value];
    }
    return _dream_dateValueBeginText;
}

//: Croatia
- (NSString *)k_barQueryRestoreIdent {
    if (!_k_barQueryRestoreIdent) {
		NSString *origin = @"0717081451AF32375A8986788B807875";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_barQueryRestoreIdent = [self StringFromBlueData:value];
    }
    return _k_barQueryRestoreIdent;
}

//: activity_comment_setting_ys
- (NSString *)notiCoverName {
    if (!_notiCoverName) {
		NSString *origin = @"1B100AE2D3D6A572E60A71738479867984896F737F7D7D757E846F83758484797E776F898323";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiCoverName = [self StringFromBlueData:value];
    }
    return _notiCoverName;
}

//: user_ic_4
- (NSString *)mBarTeamFormat {
    if (!_mBarTeamFormat) {
		NSString *origin = @"091D0CF729BE4797CE881B5A9290828F7C86807C512B";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mBarTeamFormat = [self StringFromBlueData:value];
    }
    return _mBarTeamFormat;
}

//: italiano
- (NSString *)main_countId {
    if (!_main_countId) {
		NSString *origin = @"0849087CBFD75417B2BDAAB5B2AAB7B82E";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_countId = [self StringFromBlueData:value];
    }
    return _main_countId;
}

//: qrcode_activity_title
- (NSString *)main_dateTitle {
    if (!_main_dateTitle) {
		NSString *origin = @"1563040AD4D5C6D2C7C8C2C4C6D7CCD9CCD7DCC2D7CCD7CFC802";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_dateTitle = [self StringFromBlueData:value];
    }
    return _main_dateTitle;
}

//: activity_comment_setting_exit
- (NSString *)mainButtonMessage {
    if (!_mainButtonMessage) {
		NSString *origin = @"1D34090A6F0F7DE8FA9597A89DAA9DA8AD9397A3A1A199A2A893A799A8A89DA29B9399AC9DA804";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainButtonMessage = [self StringFromBlueData:value];
    }
    return _mainButtonMessage;
}

//: icon_select_confirm
- (NSString *)main_shareUrl {
    if (!_main_shareUrl) {
		NSString *origin = @"130C0D3C0B98A33DB913A02AE1756F7B7A6B7F7178716F806B6F7B7A72757E7952";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_shareUrl = [self StringFromBlueData:value];
    }
    return _main_shareUrl;
}

//: Slovenija
- (NSString *)appInfoTitle {
    if (!_appInfoTitle) {
		NSString *origin = @"094708EF1FA3E13E9AB3B6BDACB5B0B1A8F6";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appInfoTitle = [self StringFromBlueData:value];
    }
    return _appInfoTitle;
}

//: user_ic_5
- (NSString *)main_showKey {
    if (!_main_showKey) {
		NSString *origin = @"092D0DEF335AE76533B7E619FBA2A0929F8C96908C62E8";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_showKey = [self StringFromBlueData:value];
    }
    return _main_showKey;
}

//: system_change_language_title
- (NSString *)mainNeedValue {
    if (!_mainNeedValue) {
		NSString *origin = @"1C4708DDBA9EF614BAC0BABBACB4A6AAAFA8B5AEACA6B3A8B5AEBCA8AEACA6BBB0BBB3AC66";
		NSData *data = [BlueData BlueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainNeedValue = [self StringFromBlueData:value];
    }
    return _mainNeedValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleBottomViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainCenterViewController.h"
#import "HandleBottomViewController.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"
//: #import "ContentCommonTableDelegate.h"
#import "MenuDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+OpenSend.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "NTESCustomNotificationDB.h"
#import "TextDb.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESColorButtonCell.h"
#import "BarViewCell.h"
//: #import "CCCBlackListViewController.h"
#import "MenuViewController.h"
//: #import "NTESUserUtil.h"
#import "TitleName.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "NTESMigrateMessageViewController.h"
#import "BackgroundViewController.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "ContentUserInfoViewController.h"//个人资料
#import "ToViewController.h"//个人资料
//: #import "NTESUserQRCodeViewController.h" //我的二维码
#import "LifeStyleViewController.h" //我的二维码
//: #import "NTESSafetySetingController.h"   //安全设置
#import "BubbleViewController.h"   //安全设置
//: #import "NTESFeedbackViewController.h" //意见反馈
#import "DenominationViewController.h" //意见反馈
//: #import "NTESLanguageViewController.h"
#import "InputViewController.h"
//: #import "NTESOpinionBackViewController.h" //意见反馈
#import "EmptyWithViewController.h" //意见反馈
//: #import "ZMONPolicyPrivacyViewController.h"
#import "ContentViewController.h"
//: #import "MyLogViewController.h"
#import "AnalogDigitalConverterViewController.h"

//: @interface NTESMainCenterViewController ()<NIMUserManagerDelegate>
@interface HandleBottomViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *lablang;
@property (nonatomic,strong) UILabel *lablang;
//: @property (nonatomic ,strong) NSString *language;
@property (nonatomic ,strong) NSString *language;


//: @end
@end

//: @implementation NTESMainCenterViewController
@implementation HandleBottomViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self refreshUserInfo];
    [self pressedInfo];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[BlueData sharedInstance].main_infoPath];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initNet];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: self.language = [self requestLanguage:[NIMUserDefaults standardUserDefaults].language];
    self.language = [self scaleImage:[NameDefaults argument].language];
}

//: - (void)refreshUserInfo
- (void)pressedInfo
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ViewInfo *info = [[UserKit totalSend] color:userID image:nil];

    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",leftEvent([NameDefaults argument].accountName)];
    //: [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];


    //: _lablang.text = self.language;
    _lablang.text = self.language;
}

//: - (NSString *)requestLanguage:(NSString *)langType {
- (NSString *)scaleImage:(NSString *)langType {

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"English";
        resourceType = [BlueData sharedInstance].noti_normalKey;
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"ภาษาไทย ";
        resourceType = @"ภาษาไทย ";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"Việt nam";
        resourceType = [BlueData sharedInstance].show_redUrl;
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"हिंदी";
        resourceType = @"हिंदी";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"にほんご";
        resourceType = @"にほんご";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"한국어";
        resourceType = @"한국어";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[BlueData sharedInstance].dream_backDotShareName]){
        //: resourceType = @"Español";
        resourceType = [BlueData sharedInstance].main_viewTitle;
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"Portugal";
        resourceType = [BlueData sharedInstance].mWindowStr;
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"中文";
        resourceType = @"中文";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"italiano";
        resourceType = [BlueData sharedInstance].main_countId;
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"العربية المصرية";
        resourceType = @"العربية المصرية";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"Türkçe";
        resourceType = [BlueData sharedInstance].main_globalId;
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"Kiswahili";
        resourceType = [BlueData sharedInstance].dreamCommentStr;
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"Em alemão";
        resourceType = [BlueData sharedInstance].main_accountPath;
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"‎اردو";
        resourceType = @"‎اردو";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"العربية";
        resourceType = @"العربية";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"русск";
        resourceType = @"русск";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"বাঙ্গালি";
        resourceType = @"বাঙ্গালি";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"France";
        resourceType = [BlueData sharedInstance].userCloseMsg;
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[BlueData sharedInstance].notiValueName]){
        //: resourceType = @"中文繁体";
        resourceType = [BlueData sharedInstance].m_accountFormat;
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"Sverige";
        resourceType = [BlueData sharedInstance].mShouldBarMessage;
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"Slovenija";
        resourceType = [BlueData sharedInstance].appInfoTitle;
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"Slovakia";
        resourceType = [BlueData sharedInstance].noti_backgroundText;
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"Romania";
        resourceType = [BlueData sharedInstance].showProcessorPath;
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"Poland";
        resourceType = [BlueData sharedInstance].userFlushUrl;
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"Netherlands";
        resourceType = [BlueData sharedInstance].k_contentResourceData;
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"Malta";
        resourceType = [BlueData sharedInstance].user_ofStr;
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"Luxembourg";
        resourceType = [BlueData sharedInstance].show_upMsg;
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"Lithuania";
        resourceType = [BlueData sharedInstance].kUserData;
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"Latvia";
        resourceType = [BlueData sharedInstance].mGlobalData;
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"Bulgaria";
        resourceType = [BlueData sharedInstance].m_tingTitle;
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"Croatia";
        resourceType = [BlueData sharedInstance].k_barQueryRestoreIdent;
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"Czech Republic";
        resourceType = [BlueData sharedInstance].kGlobalTitleIdent;
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"Denmark";
        resourceType = [BlueData sharedInstance].user_operationId;
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"Estonia";
        resourceType = [BlueData sharedInstance].userCommentValue;
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"Finland";
        resourceType = [BlueData sharedInstance].app_showValue;
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"Greece";
        resourceType = [BlueData sharedInstance].appTeamGlobalUrl;
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"Hungary";
        resourceType = [BlueData sharedInstance].kTagData;
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"Ireland";
        resourceType = [BlueData sharedInstance].userReleaseIdent;
    }

    //: NSLog(@"resourceType : %@",resourceType);

    //: return resourceType;
    return resourceType;
}

//: - (void)initUI{
- (void)initNet{

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ViewInfo *info = [[UserKit totalSend] color:userID image:nil];

    //: _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice vg_statusBarHeight]), 64, 64)];
    _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice bearDown]), 64, 64)];
    //: [self.view addSubview:_headerImage];
    [self.view addSubview:_headerImage];
    //: _headerImage.layer.cornerRadius = 32;
    _headerImage.layer.cornerRadius = 32;
    //: _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _headerImage.layer.borderWidth = 1;
    _headerImage.layer.borderWidth = 1;
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];

    //: [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice vg_statusBarHeight])+7, 150, 25);
    self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice bearDown])+7, 150, 25);
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",leftEvent([NameDefaults argument].accountName)];
    //: self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);
    self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);

    //: UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice vg_statusBarHeight])+2, 53, 60);
    qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice bearDown])+2, 53, 60);
    //: qrBtn.backgroundColor = [UIColor whiteColor];
    qrBtn.backgroundColor = [UIColor whiteColor];
    //: qrBtn.layer.cornerRadius = 12;
    qrBtn.layer.cornerRadius = 12;
    //: [qrBtn setImage:[UIImage imageNamed:@"user_qr_icon"] forState:(UIControlStateNormal)];
    [qrBtn setImage:[UIImage imageNamed:[BlueData sharedInstance].noti_remoteData] forState:(UIControlStateNormal)];
    //: [qrBtn addTarget:self action:@selector(handlebtnQr) forControlEvents:UIControlEventTouchUpInside];
    [qrBtn addTarget:self action:@selector(lengthQr) forControlEvents:UIControlEventTouchUpInside];
    //: qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [qrBtn setTitleColor:[UIColor colorWithHexString:@"#F7BA00"] forState:UIControlStateNormal];
    [qrBtn setTitleColor:[UIColor recordView:[BlueData sharedInstance].user_titleShowMsg] forState:UIControlStateNormal];
    //: [qrBtn setTitle:[ContentLanguageManager getTextWithKey:@"qrcode_activity_title"] forState:UIControlStateNormal];
    [qrBtn setTitle:[MatronymicPath colorStreetwise:[BlueData sharedInstance].main_dateTitle] forState:UIControlStateNormal];
    //: [qrBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
    [qrBtn backgroundSpace:(MKButtonEdgeInsetsStyleTop) at:10];
    //: [self.view addSubview:qrBtn];
    [self.view addSubview:qrBtn];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-(49.0f))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
    contentView.backgroundColor = [UIColor recordView:[BlueData sharedInstance].showSizeData];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
    editView.backgroundColor = [UIColor recordView:[BlueData sharedInstance].mainProcessorData];
    //: editView.layer.cornerRadius = 12;
    editView.layer.cornerRadius = 12;
    //: [contentView addSubview:editView];
    [contentView addSubview:editView];
    //: editView.userInteractionEnabled = YES;
    editView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userInfoCenter)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(disableTap)];
    //: [editView addGestureRecognizer:singleTap1];
    [editView addGestureRecognizer:singleTap1];
    //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: editimg.image = [UIImage imageNamed:@"user_edit_profile"];
    editimg.image = [UIImage imageNamed:[BlueData sharedInstance].k_showName];
    //: editimg.contentMode = UIViewContentModeScaleAspectFill;
    editimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [editView addSubview:editimg];
    [editView addSubview:editimg];
    //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: labedit.font = [UIFont systemFontOfSize:14];
    labedit.font = [UIFont systemFontOfSize:14];
    //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labedit.textColor = [UIColor recordView:[BlueData sharedInstance].kStateUrl];
    //: labedit.text = [ContentLanguageManager getTextWithKey:@"edit_profile"];
    labedit.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].app_withUrl];
    //: [editView addSubview:labedit];
    [editView addSubview:labedit];

    //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
    langView.backgroundColor = [UIColor recordView:[BlueData sharedInstance].dreamWindowBackIdent];
    //: langView.layer.cornerRadius = 12;
    langView.layer.cornerRadius = 12;
    //: [contentView addSubview:langView];
    [contentView addSubview:langView];
    //: langView.userInteractionEnabled = YES;
    langView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeLang)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showInput)];
    //: [langView addGestureRecognizer:singleTap2];
    [langView addGestureRecognizer:singleTap2];
    //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: langimg.image = [UIImage imageNamed:@"user_edit_lang"];
    langimg.image = [UIImage imageNamed:[BlueData sharedInstance].app_shouldIdent];
    //: langimg.contentMode = UIViewContentModeScaleAspectFill;
    langimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [langView addSubview:langimg];
    [langView addSubview:langimg];
    //: _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: _lablang.font = [UIFont systemFontOfSize:14];
    _lablang.font = [UIFont systemFontOfSize:14];
    //: _lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
    _lablang.textColor = [UIColor recordView:[BlueData sharedInstance].kStateUrl];
    //: _lablang.text = @"English";
    _lablang.text = [BlueData sharedInstance].noti_normalKey;
    //: [langView addSubview:_lablang];
    [langView addSubview:_lablang];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view1];
    [contentView addSubview:view1];
    //: view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 12;
    view1.layer.cornerRadius = 12;
    //: view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view1.layer.shadowOffset = CGSizeMake(0,4);
    view1.layer.shadowOffset = CGSizeMake(0,4);
    //: view1.layer.shadowOpacity = 1;
    view1.layer.shadowOpacity = 1;
    //: view1.layer.shadowRadius = 16;
    view1.layer.shadowRadius = 16;

    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box1.backgroundColor = [UIColor clearColor];
    box1.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box1];
    [view1 addSubview:box1];

    //: UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_1"]];
    UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].userBackgroundMsg]];
    //: image11.frame = CGRectMake(0, 13, 28, 28);
    image11.frame = CGRectMake(0, 13, 28, 28);
    //: [box1 addSubview:image11];
    [box1 addSubview:image11];
    //: UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    //: label11.font = [UIFont systemFontOfSize:13.f];
    label11.font = [UIFont systemFontOfSize:13.f];
    //: label11.textColor = [UIColor blackColor];
    label11.textColor = [UIColor blackColor];
    //: label11.text = [ContentLanguageManager getTextWithKey:@"receiver_model"];
    label11.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].showCustomTitle];
    //: [box1 addSubview:label11];
    [box1 addSubview:label11];
    //: UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    //: switch11.onTintColor = [UIColor colorWithHexString:@"#F7BA00"];
    switch11.onTintColor = [UIColor recordView:[BlueData sharedInstance].user_titleShowMsg];
    //: [switch11 addTarget:self action:@selector(switchWith:) forControlEvents:UIControlEventValueChanged];
    [switch11 addTarget:self action:@selector(lengths:) forControlEvents:UIControlEventValueChanged];
    //: [box1 addSubview:switch11];
    [box1 addSubview:switch11];


    //: UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: boxlog.backgroundColor = [UIColor clearColor];
    boxlog.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:boxlog];
    [view1 addSubview:boxlog];
    //: boxlog.userInteractionEnabled = YES;
    boxlog.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoMyLog)];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(myQuickPop)];
    //: [boxlog addGestureRecognizer:singleTap8];
    [boxlog addGestureRecognizer:singleTap8];

    //: UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_my_log"]];
    UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].k_tagValue]];
    //: imagelog.frame = CGRectMake(0, 13, 28, 28);
    imagelog.frame = CGRectMake(0, 13, 28, 28);
    //: [boxlog addSubview:imagelog];
    [boxlog addSubview:imagelog];
    //: UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: labellog.font = [UIFont systemFontOfSize:13.f];
    labellog.font = [UIFont systemFontOfSize:13.f];
    //: labellog.textColor = [UIColor blackColor];
    labellog.textColor = [UIColor blackColor];
    //: labellog.text = [ContentLanguageManager getTextWithKey:@"my_log"];
    labellog.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].dream_stateMessage];
    //: [boxlog addSubview:labellog];
    [boxlog addSubview:labellog];
    //: UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowrightlog.image = [UIImage imageNamed:@"btn_right"];
    arrowrightlog.image = [UIImage imageNamed:[BlueData sharedInstance].mainShareData];
    //: [boxlog addSubview:arrowrightlog];
    [boxlog addSubview:arrowrightlog];

    //: UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box6.backgroundColor = [UIColor clearColor];
    box6.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box6];
    [view1 addSubview:box6];
    //: box6.userInteractionEnabled = YES;
    box6.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(safetySeting)];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(mediaMin)];
    //: [box6 addGestureRecognizer:singleTap7];
    [box6 addGestureRecognizer:singleTap7];

    //: UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_2"]];
    UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].noti_messageStr]];
    //: image23.frame = CGRectMake(0, 13, 28, 28);
    image23.frame = CGRectMake(0, 13, 28, 28);
    //: [box6 addSubview:image23];
    [box6 addSubview:image23];
    //: UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label23.font = [UIFont systemFontOfSize:13.f];
    label23.font = [UIFont systemFontOfSize:13.f];
    //: label23.textColor = [UIColor blackColor];
    label23.textColor = [UIColor blackColor];
    //: label23.text = [ContentLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    label23.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].notiTeamIdent];
    //: [box6 addSubview:label23];
    [box6 addSubview:label23];
    //: UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright6.image = [UIImage imageNamed:@"btn_right"];
    arrowright6.image = [UIImage imageNamed:[BlueData sharedInstance].mainShareData];
    //: [box6 addSubview:arrowright6];
    [box6 addSubview:arrowright6];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view2];
    [contentView addSubview:view2];
    //: view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view2.layer.cornerRadius = 12;
    view2.layer.cornerRadius = 12;
    //: view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view2.layer.shadowOffset = CGSizeMake(0,4);
    view2.layer.shadowOffset = CGSizeMake(0,4);
    //: view2.layer.shadowOpacity = 1;
    view2.layer.shadowOpacity = 1;
    //: view2.layer.shadowRadius = 16;
    view2.layer.shadowRadius = 16;



    //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box3.backgroundColor = [UIColor clearColor];
    box3.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box3];
    [view2 addSubview:box3];

    //: UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_3"]];
    UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].noti_tingUrl]];
    //: image14.frame = CGRectMake(0, 13, 28, 28);
    image14.frame = CGRectMake(0, 13, 28, 28);
    //: [box3 addSubview:image14];
    [box3 addSubview:image14];
    //: UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label14.font = [UIFont systemFontOfSize:13.f];
    label14.font = [UIFont systemFontOfSize:13.f];
    //: label14.textColor = [UIColor blackColor];
    label14.textColor = [UIColor blackColor];
    //: label14.text = [ContentLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    label14.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].notiCoverName];//@"用户协议和隐私协议";
    //: [box3 addSubview:label14];
    [box3 addSubview:label14];
    //: UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright2.image = [UIImage imageNamed:@"btn_right"];
    arrowright2.image = [UIImage imageNamed:[BlueData sharedInstance].mainShareData];
    //: [box3 addSubview:arrowright2];
    [box3 addSubview:arrowright2];
    //: box3.userInteractionEnabled = YES;
    box3.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpAgreement)];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(replyPage)];
    //: [box3 addGestureRecognizer:singleTap4];
    [box3 addGestureRecognizer:singleTap4];

    //: UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box5.backgroundColor = [UIColor clearColor];
    box5.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box5];
    [view2 addSubview:box5];
    //: box5.userInteractionEnabled = YES;
    box5.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(opinionBack)];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tingShould)];
    //: [box5 addGestureRecognizer:singleTap6];
    [box5 addGestureRecognizer:singleTap6];

    //: UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_4"]];
    UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].mBarTeamFormat]];
    //: image22.frame = CGRectMake(0, 13, 28, 28);
    image22.frame = CGRectMake(0, 13, 28, 28);
    //: [box5 addSubview:image22];
    [box5 addSubview:image22];
    //: UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label22.font = [UIFont systemFontOfSize:13.f];
    label22.font = [UIFont systemFontOfSize:13.f];
    //: label22.textColor = [UIColor blackColor];
    label22.textColor = [UIColor blackColor];
    //: label22.text = [ContentLanguageManager getTextWithKey:@"feedback_activity_title"];
    label22.text = [MatronymicPath colorStreetwise:[BlueData sharedInstance].showLabPath];
    //: [box5 addSubview:label22];
    [box5 addSubview:label22];

    //: UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright5.image = [UIImage imageNamed:@"btn_right"];
    arrowright5.image = [UIImage imageNamed:[BlueData sharedInstance].mainShareData];
    //: [box5 addSubview:arrowright5];
    [box5 addSubview:arrowright5];






    //: UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box7.backgroundColor = [UIColor clearColor];
    box7.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box7];
    [view2 addSubview:box7];

    //: UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_5"]];
    UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BlueData sharedInstance].main_showKey]];
    //: image31.frame = CGRectMake(0, 13, 28, 28);
    image31.frame = CGRectMake(0, 13, 28, 28);
    //: [box7 addSubview:image31];
    [box7 addSubview:image31];
    //: UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label31.font = [UIFont systemFontOfSize:13.f];
    label31.font = [UIFont systemFontOfSize:13.f];
    //: label31.textColor = [UIColor blackColor];
    label31.textColor = [UIColor blackColor];
    //: [box7 addSubview:label31];
    [box7 addSubview:label31];
    //: NSString *fragment_my_version = [ContentLanguageManager getTextWithKey:@"fragment_my_version"];
    NSString *fragment_my_version = [MatronymicPath colorStreetwise:[BlueData sharedInstance].dream_dateValueBeginText];
    //: NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    //: NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersion = [infoDic objectForKey:[BlueData sharedInstance].kBlueTouchShareTitle];// 获取App的版本号
    //: label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];

    //: UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [loginButton setTitleColor:[UIColor colorWithHexString:@"5D5F66"] forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor recordView:[BlueData sharedInstance].user_remoteFormat] forState:UIControlStateNormal];
    //: [loginButton setTitle:[ContentLanguageManager getTextWithKey:@"activity_comment_setting_exit"] forState:UIControlStateNormal];
    [loginButton setTitle:[MatronymicPath colorStreetwise:[BlueData sharedInstance].mainButtonMessage] forState:UIControlStateNormal];
    //: [loginButton addTarget:self action:@selector(logoutCurrentAccount) forControlEvents:UIControlEventTouchUpInside];
    [loginButton addTarget:self action:@selector(arrayText) forControlEvents:UIControlEventTouchUpInside];
    //: [contentView addSubview:loginButton];
    [contentView addSubview:loginButton];
    //: loginButton.layer.borderWidth = 1;
    loginButton.layer.borderWidth = 1;
    //: loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: loginButton.layer.cornerRadius = 22;
    loginButton.layer.cornerRadius = 22;



}
//: #pragma mark - NTESMainCenterDelegate
#pragma mark - NTESMainCenterDelegate
//: -(void)userInfoCenter{
-(void)disableTap{
    //: ContentUserInfoViewController *vc = [[ContentUserInfoViewController alloc] init];
    ToViewController *vc = [[ToViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)handlebtnQr{
-(void)lengthQr{

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    LifeStyleViewController *vc = [[LifeStyleViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)opinionBack{
-(void)tingShould{

    //: NTESFeedbackViewController *vc = [[NTESFeedbackViewController alloc] init];
    DenominationViewController *vc = [[DenominationViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)safetySeting{
-(void)mediaMin{
    //: NTESSafetySetingController *vc = [[NTESSafetySetingController alloc] init];
    BubbleViewController *vc = [[BubbleViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)gotoMyLog
- (void)myQuickPop
{
    //: MyLogViewController *vc = [[MyLogViewController alloc] init];
    AnalogDigitalConverterViewController *vc = [[AnalogDigitalConverterViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)switchWith:(UISwitch *)switchView{
-(void)lengths:(UISwitch *)switchView{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: if (switchView.on) {
    if (switchView.on) {
        //: [dict setObject:@"1" forKey:@"enable"];
        [dict setObject:@"1" forKey:[BlueData sharedInstance].main_modelDotText];

        // 启用听筒模式
        //: [self setEarpieceMode:YES];
        [self setBeforeBottom:YES];

    //: }else{
    }else{
        //: [dict setObject:@"0" forKey:@"enable"];
        [dict setObject:@"0" forKey:[BlueData sharedInstance].main_modelDotText];

        // 禁用听筒模式
        //: [self setEarpieceMode:NO];
        [self setBeforeBottom:NO];
    }
}

//: - (void)setEarpieceMode:(BOOL)enabled {
- (void)setBeforeBottom:(BOOL)enabled {
    //: NSError *error = nil;
    NSError *error = nil;

    // 获取当前的音频会话
    //: AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];

    // 配置音频会话为播放和录制
    //: [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error setting audio session category: %@", error);
        //: return;
        return;
    }

    // 激活音频会话
    //: [audioSession setActive:YES error:&error];
    [audioSession setActive:YES error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error activating audio session: %@", error);
        //: return;
        return;
    }

    // 根据开关设置听筒模式
    //: if (enabled) {
    if (enabled) {
        // 切换到听筒
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    //: } else {
    } else {
        // 使用默认音频输出设备（即听筒模式）
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
    }

    //: if (error) {
    if (error) {
        //: NSLog(@"Error overriding audio port: %@", error);
    }
}


//: -(void)changeLang
-(void)showInput
{
    //: NTESLanguageViewController *vc = [[NTESLanguageViewController alloc]init];
    InputViewController *vc = [[InputViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)exitApp{
-(void)comment{
    //: NSString *alertStr = [ContentLanguageManager getTextWithKey:@"system_change_language_title"];
    NSString *alertStr = [MatronymicPath colorStreetwise:[BlueData sharedInstance].mainNeedValue];
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    //: [alert addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[BlueData sharedInstance].userTeamBubbleFormat] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: exit(0);
        exit(0);
    //: }]];
    }]];

    //: [alert addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[BlueData sharedInstance].notiDotValue] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    //: }]];
    }]];

    //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: [rootVC presentViewController:alert animated:YES completion:nil];
    [rootVC presentViewController:alert animated:YES completion:nil];

}

//: -(void)jumpAgreement{
-(void)replyPage{

    //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
    ContentViewController *vc = [[ContentViewController alloc] init];
    //: vc.webTitle = [ContentLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [MatronymicPath colorStreetwise:[BlueData sharedInstance].notiCoverName];//@"隐私协议";
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [NameDefaults argument].yshref;

    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)logoutCurrentAccount
- (void)arrayText
{

    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
     {
        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
        [[NSNotificationCenter defaultCenter] postNotificationName:[BlueData sharedInstance].show_startKey object:nil];
    //: }];
    }];

}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:22.f];
        _titleLabel.font = [UIFont systemFontOfSize:22.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)accountLabel{
- (UILabel *)accountLabel{
    //: if (!_accountLabel) {
    if (!_accountLabel) {
        //: _accountLabel = [[UILabel alloc] init];
        _accountLabel = [[UILabel alloc] init];
        //: _accountLabel.font = [UIFont systemFontOfSize:12.f];
        _accountLabel.font = [UIFont systemFontOfSize:12.f];
        //: _accountLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _accountLabel.textColor = [UIColor recordView:[BlueData sharedInstance].noti_commentData];
    }
    //: return _accountLabel;
    return _accountLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"icon_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[BlueData sharedInstance].dreamTingId] forState:UIControlStateNormal];
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
        //: [_sureBtn setImage:[UIImage imageNamed:@"icon_select_confirm"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[BlueData sharedInstance].main_shareUrl] forState:UIControlStateNormal];
        //        [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _sureBtn;
    return _sureBtn;
}



//: @end
@end
