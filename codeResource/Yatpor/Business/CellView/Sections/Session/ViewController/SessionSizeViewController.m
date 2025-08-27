
#import <Foundation/Foundation.h>

@interface ResourceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ResourceData

+ (instancetype)sharedInstance {
    static ResourceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ResourceDataToData:(NSString *)value {
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

- (Byte *)ResourceDataToCache:(Byte *)data {
    int dataShould = data[0];
    Byte operationSize = data[1];
    int modelReply = data[2];
    for (int i = modelReply; i < modelReply + dataShould; i++) {
        int value = data[i] - operationSize;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[modelReply + dataShould] = 0;
    return data + modelReply;
}

- (NSString *)StringFromResourceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ResourceDataToCache:data]];
}

//: /other/getNimCheckSum
- (NSString *)show_internText {
    /* static */ NSString *show_internText = nil;
    if (!show_internText) {
		NSString *origin = @"1563093E1A1A85766392D2D7CBC8D592CAC8D7B1CCD0A6CBC8C6CEB6D8D0E6";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_internText = [self StringFromResourceData:value];
    }
    return show_internText;
}

//: YYYY-MM-dd HH:mm:ss
- (NSString *)appComfortStr {
    /* static */ NSString *appComfortStr = nil;
    if (!appComfortStr) {
		NSString *origin = @"13570818705F8086B0B0B0B084A4A484BBBB779F9F91C4C491CACA5F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appComfortStr = [self StringFromResourceData:value];
    }
    return appComfortStr;
}

//: ** 该消息被屏蔽 **
- (NSString *)appSmokeName {
    /* static */ NSString *appSmokeName = nil;
    if (!appSmokeName) {
		NSString *origin = @"1849074B5C22AC73736931F8EE2ContentD12FCAF831EBF42EFAD831DD0669737352";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSmokeName = [self StringFromResourceData:value];
    }
    return appSmokeName;
}

//: 收藏失败
- (NSString *)app_fortyLabFormat {
    /* static */ NSString *app_fortyLabFormat = nil;
    if (!app_fortyLabFormat) {
		NSString *origin = @"0C5708DC156D3FBC3DEB0D3FEEE63CFB083F0BFCA6";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_fortyLabFormat = [self StringFromResourceData:value];
    }
    return app_fortyLabFormat;
}

//: 消息合并转发失败
- (NSString *)app_startMessage {
    /* static */ NSString *app_startMessage = nil;
    if (!app_startMessage) {
		NSString *origin = @"184F07C243534C3505D735D0FE34DFD7340805370CFB34DEE034F3003703F4D6";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_startMessage = [self StringFromResourceData:value];
    }
    return app_startMessage;
}

//: apns-collapse-id
- (NSString *)noti_stereoValue {
    /* static */ NSString *noti_stereoValue = nil;
    if (!noti_stereoValue) {
		NSString *origin = @"1049058E70AAB9B7BC76ACB8B5B5AAB9BCAE76B2AD2B";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_stereoValue = [self StringFromResourceData:value];
    }
    return noti_stereoValue;
}

//: http
- (NSString *)dreamArmyContentKey {
    /* static */ NSString *dreamArmyContentKey = nil;
    if (!dreamArmyContentKey) {
		NSString *origin = @"04550BC0E2A7A150B24760BDC9C9C552";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamArmyContentKey = [self StringFromResourceData:value];
    }
    return dreamArmyContentKey;
}

//: code
- (NSString *)dreamOperationName {
    /* static */ NSString *dreamOperationName = nil;
    if (!dreamOperationName) {
		NSString *origin = @"04080BBCD8840F03AE8B446B776C6D79";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamOperationName = [self StringFromResourceData:value];
    }
    return dreamOperationName;
}

//: 消息已发送，但对方拒收
- (NSString *)noti_morroUrl {
    /* static */ NSString *noti_morroUrl = nil;
    if (!noti_morroUrl) {
		NSString *origin = @"2116091213542601B5FCCC9EFC97C5FBCDC8FBA5A7FF969705D2A2FAD39CFBC5CFFCACCFFCA1A8FCAACC91";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_morroUrl = [self StringFromResourceData:value];
    }
    return noti_morroUrl;
}

//: 发送时间超过2分钟的消息，不能被撤回
- (NSString *)dreamDrawStr {
    /* static */ NSString *dreamDrawStr = nil;
    if (!dreamDrawStr) {
		NSString *origin = @"34620929C06833361447F1F34BE2E348F9184BF9164A18E74A21E99447EAE84BF40149FCE64818EA48E311511EEE461AEF4AE51F4A040D48F40647FD0014";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDrawStr = [self StringFromResourceData:value];
    }
    return dreamDrawStr;
}

//: SELF MATCHES %@
- (NSString *)main_bubblePath {
    /* static */ NSString *main_bubblePath = nil;
    if (!main_bubblePath) {
		NSString *origin = @"0F510B49D97B4D7AC5DF96A4969D97719E92A5949996A4717691CB";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_bubblePath = [self StringFromResourceData:value];
    }
    return main_bubblePath;
}

//: nonce
- (NSString *)showReplyStr {
    /* static */ NSString *showReplyStr = nil;
    if (!showReplyStr) {
		NSString *origin = @"053805E82DA6A7A69B9D6C";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showReplyStr = [self StringFromResourceData:value];
    }
    return showReplyStr;
}

//: friend_verify_avtivity_net_error
- (NSString *)main_textKey {
    /* static */ NSString *main_textKey = nil;
    if (!main_textKey) {
		NSString *origin = @"20430BFAB95265E324CED3A9B5ACA8B1A7A2B9A8B5ACA9BCA2A4B9B7ACB9ACB7BCA2B1A8B7A2A8B5B5B2B5D5";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_textKey = [self StringFromResourceData:value];
    }
    return main_textKey;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)appLestIdent {
    /* static */ NSString *appLestIdent = nil;
    if (!appLestIdent) {
		NSString *origin = @"2C35039CA7A4AAA594989D96A99496AB96A996A7949698A99EAB9EA9AE949699999497A19698A094A8AA98989AA8A856";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLestIdent = [self StringFromResourceData:value];
    }
    return appLestIdent;
}

//: 本地反垃圾失败
- (NSString *)mQuarterbackValue {
    /* static */ NSString *mQuarterbackValue = nil;
    if (!mQuarterbackValue) {
		NSString *origin = @"150A0B5B13EA98760D5CC5F0A6B6EFA6BAEF9997EFA88DEFA6C8EFAEBBF2BEAF91";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mQuarterbackValue = [self StringFromResourceData:value];
    }
    return mQuarterbackValue;
}

//: 被禁言
- (NSString *)dream_perfectlyFormat {
    /* static */ NSString *dream_perfectlyFormat = nil;
    if (!dream_perfectlyFormat) {
		NSString *origin = @"09610DCDB3A75A3E8358682E7149030C4807E24909E1DC";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_perfectlyFormat = [self StringFromResourceData:value];
    }
    return dream_perfectlyFormat;
}

//: 反垃圾消息
- (NSString *)user_creasedSearchId {
    /* static */ NSString *user_creasedSearchId = nil;
    if (!user_creasedSearchId) {
		NSString *origin = @"0F390D756555E0BAE2AEECC1F91EC8C61ED7BC1ED5F71FEFC11FBAE8E2";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_creasedSearchId = [self StringFromResourceData:value];
    }
    return user_creasedSearchId;
}

//: 收藏成功
- (NSString *)userThirtyValue {
    /* static */ NSString *userThirtyValue = nil;
    if (!userThirtyValue) {
		NSString *origin = @"0C5A0CCE3E710B9F93C940A940EE1042F1E940E2EA3FE4F979";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userThirtyValue = [self StringFromResourceData:value];
    }
    return userThirtyValue;
}

//: watch_multiretweet_activity_confirm_forwarded_to
- (NSString *)show_enableKey {
    /* static */ NSString *show_enableKey = nil;
    if (!show_enableKey) {
		NSString *origin = @"30520A71513F91B7A50EC9B3C6B5BAB1BFC7BEC6BBC4B7C6C9B7B7C6B1B3B5C6BBC8BBC6CBB1B5C1C0B8BBC4BFB1B8C1C4C9B3C4B6B7B6B1C6C14E";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_enableKey = [self StringFromResourceData:value];
    }
    return show_enableKey;
}

//: sessionname
- (NSString *)mainEndTitle {
    /* static */ NSString *mainEndTitle = nil;
    if (!mainEndTitle) {
		NSString *origin = @"0B4904B7BCAEBCBCB2B8B7B7AAB6AE63";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainEndTitle = [self StringFromResourceData:value];
    }
    return mainEndTitle;
}

//: curTime
- (NSString *)show_toilId {
    /* static */ NSString *show_toilId = nil;
    if (!show_toilId) {
		NSString *origin = @"07420B8FEAB7BDF4648D95A5B7B496ABAFA780";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_toilId = [self StringFromResourceData:value];
    }
    return show_toilId;
}

//: 发言频次过快，请%ld秒后重试
- (NSString *)appViewerValue {
    /* static */ NSString *appViewerValue = nil;
    if (!appViewerValue) {
		NSString *origin = @"27040CB81D413A6CD0CF06E0E99395ECAC84EDA695EAB0A5ECC38BE9C3AFF3C090ECB3BB297068EBAB96E99492ED8B91ECB3995E";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appViewerValue = [self StringFromResourceData:value];
    }
    return appViewerValue;
}

//: NTESMessageTranslate
- (NSString *)noti_armyFormat {
    /* static */ NSString *noti_armyFormat = nil;
    if (!noti_armyFormat) {
		NSString *origin = @"143C098E95120E2A528A90818F89A1AFAF9DA3A190AE9DAAAFA89DB0A1CC";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_armyFormat = [self StringFromResourceData:value];
    }
    return noti_armyFormat;
}

//: friend_delete_fail
- (NSString *)kSymptomUrl {
    /* static */ NSString *kSymptomUrl = nil;
    if (!kSymptomUrl) {
		NSString *origin = @"120C0D2AF647FB8BB76A35C9E1727E75717A706B7071787180716B726D7578B1";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSymptomUrl = [self StringFromResourceData:value];
    }
    return kSymptomUrl;
}

//: message_super_team
- (NSString *)m_toilMsg {
    /* static */ NSString *m_toilMsg = nil;
    if (!m_toilMsg) {
		NSString *origin = @"1239085485ED2626A69EACAC9AA09E98ACAEA99EAB98AD9E9AA618";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_toilMsg = [self StringFromResourceData:value];
    }
    return m_toilMsg;
}

//: desc
- (NSString *)noti_tagData {
    /* static */ NSString *noti_tagData = nil;
    if (!noti_tagData) {
		NSString *origin = @"042009AA4E2C3EB36E84859383A5";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_tagData = [self StringFromResourceData:value];
    }
    return noti_tagData;
}

//: 申请成功，等待验证
- (NSString *)show_grayBackValue {
    /* static */ NSString *show_grayBackValue = nil;
    if (!show_grayBackValue) {
		NSString *origin = @"1B3D0D01B39C31BA0AD083954F24D1F025ECF423C5CD22C7DC2CF9C924EAC622FBC226E7C925ECBE50";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_grayBackValue = [self StringFromResourceData:value];
    }
    return show_grayBackValue;
}

//: content
- (NSString *)dreamSingleIdent {
    /* static */ NSString *dreamSingleIdent = nil;
    if (!dreamSingleIdent) {
		NSString *origin = @"07470628FF76AAB6B5BBACB5BB31";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamSingleIdent = [self StringFromResourceData:value];
    }
    return dreamSingleIdent;
}

//: 不允许文字
- (NSString *)app_backId {
    /* static */ NSString *app_backId = nil;
    if (!app_backId) {
		NSString *origin = @"0F2909182197E038E70DE1B60EAEAA11D7E10FBFB00ED6C097";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_backId = [self StringFromResourceData:value];
    }
    return app_backId;
}

//: contact_fragment_group
- (NSString *)appGlobalMsg {
    /* static */ NSString *appGlobalMsg = nil;
    if (!appGlobalMsg) {
		NSString *origin = @"163E054DC1A1ADACB29FA1B29DA4B09FA5ABA3ACB29DA5B0ADB3AEC0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appGlobalMsg = [self StringFromResourceData:value];
    }
    return appGlobalMsg;
}

//: accid
- (NSString *)m_fellowFormat {
    /* static */ NSString *m_fellowFormat = nil;
    if (!m_fellowFormat) {
		NSString *origin = @"05140A37073CF632827E7577777D78DF";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_fellowFormat = [self StringFromResourceData:value];
    }
    return m_fellowFormat;
}

//: canSendText
- (NSString *)dream_dateName {
    /* static */ NSString *dream_dateName = nil;
    if (!dream_dateName) {
		NSString *origin = @"0B360D6084F50D717FE9DE3A509997A4899BA49A8A9BAEAAFD";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_dateName = [self StringFromResourceData:value];
    }
    return dream_dateName;
}

//: showImage:
- (NSString *)dreamValueKey {
    /* static */ NSString *dreamValueKey = nil;
    if (!dreamValueKey) {
		NSString *origin = @"0A2405B7EF978C939B6D91858B895E90";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamValueKey = [self StringFromResourceData:value];
    }
    return dreamValueKey;
}

//: 被拉黑
- (NSString *)dream_relationLestTextData {
    /* static */ NSString *dream_relationLestTextData = nil;
    if (!dream_relationLestTextData) {
		NSString *origin = @"0902047EEAA4ADE88D8BEBBD931F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_relationLestTextData = [self StringFromResourceData:value];
    }
    return dream_relationLestTextData;
}

//: contact_tag_fragment_cancel
- (NSString *)appAccountText {
    /* static */ NSString *appAccountText = nil;
    if (!appAccountText) {
		NSString *origin = @"1B0A04D56D79787E6B6D7E697E6B7169707C6B71776F787E696D6B786D6F7618";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appAccountText = [self StringFromResourceData:value];
    }
    return appAccountText;
}

//: #F6B53E
- (NSString *)appCommentId {
    /* static */ NSString *appCommentId = nil;
    if (!appCommentId) {
		NSString *origin = @"073108F9B8C75C4F5477677366647695";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appCommentId = [self StringFromResourceData:value];
    }
    return appCommentId;
}

//: teamgonggao_content_
- (NSString *)m_upPath {
    /* static */ NSString *m_upPath = nil;
    if (!m_upPath) {
		NSString *origin = @"14630B7B655F8E9F9BA62DD7C8C4D0CAD2D1CACAC4D2C2C6D2D1D7C8D1D7C2DC";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_upPath = [self StringFromResourceData:value];
    }
    return m_upPath;
}

//: NTESMessageRefusedTag
- (NSString *)mainPerfectlyUrl {
    /* static */ NSString *mainPerfectlyUrl = nil;
    if (!mainPerfectlyUrl) {
		NSString *origin = @"156309F8658C6E0A7DB1B7A8B6B0C8D6D6C4CAC8B5C8C9D8D6C8C7B7C4CA56";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainPerfectlyUrl = [self StringFromResourceData:value];
    }
    return mainPerfectlyUrl;
}

//: text
- (NSString *)mTableData {
    /* static */ NSString *mTableData = nil;
    if (!mTableData) {
		NSString *origin = @"04500D4D88240A3A804A3FA0FBC4B5C8C44F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTableData = [self StringFromResourceData:value];
    }
    return mTableData;
}

//: 群申请失败
- (NSString *)main_valueUrl {
    /* static */ NSString *main_valueUrl = nil;
    if (!main_valueUrl) {
		NSString *origin = @"0F3805C1271FF6DC1FCCEB20E7EF1DDCE920ECDD43";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_valueUrl = [self StringFromResourceData:value];
    }
    return main_valueUrl;
}

//: data
- (NSString *)user_animalIdent {
    /* static */ NSString *user_animalIdent = nil;
    if (!user_animalIdent) {
		NSString *origin = @"045409BD40529E5167B8B5C8B57B";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_animalIdent = [self StringFromResourceData:value];
    }
    return user_animalIdent;
}

//: contact_tag_fragment_delete_success
- (NSString *)mFlameDataMessage {
    /* static */ NSString *mFlameDataMessage = nil;
    if (!mFlameDataMessage) {
		NSString *origin = @"230C0C857590C3DE3C3B2E9B6F7B7A806D6F806B806D736B727E6D7379717A806B7071787180716B7F816F6F717F7F4D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mFlameDataMessage = [self StringFromResourceData:value];
    }
    return mFlameDataMessage;
}

//: 01B0FD
- (NSString *)show_shouldUrl {
    /* static */ NSString *show_shouldUrl = nil;
    if (!show_shouldUrl) {
		NSString *origin = @"06470859E0976DDB777889778D8B1D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_shouldUrl = [self StringFromResourceData:value];
    }
    return show_shouldUrl;
}

//: username
- (NSString *)k_processorText {
    /* static */ NSString *k_processorText = nil;
    if (!k_processorText) {
		NSString *origin = @"080304E17876687571647068DD";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_processorText = [self StringFromResourceData:value];
    }
    return k_processorText;
}

//: zh-CHT
- (NSString *)showToilMsg {
    /* static */ NSString *showToilMsg = nil;
    if (!showToilMsg) {
		NSString *origin = @"060204CA7C6A2F454A5685";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showToilMsg = [self StringFromResourceData:value];
    }
    return showToilMsg;
}

//: app_avchat_not_start_with_less_member
- (NSString *)noti_onKey {
    /* static */ NSString *noti_onKey = nil;
    if (!noti_onKey) {
		NSString *origin = @"252C04FB8D9C9C8B8DA28F948DA08B9A9BA08B9FA08D9EA08BA395A0948B98919F9F8B9991998E919E2D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_onKey = [self StringFromResourceData:value];
    }
    return noti_onKey;
}

//: /team/getTeamSetting
- (NSString *)m_proId {
    /* static */ NSString *m_proId = nil;
    if (!m_proId) {
		NSString *origin = @"140308FA845E23D33277686470326A687757686470566877776C716A22";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_proId = [self StringFromResourceData:value];
    }
    return m_proId;
}

//: 扩展字段
- (NSString *)k_backgroundValue {
    /* static */ NSString *k_backgroundValue = nil;
    if (!k_backgroundValue) {
		NSString *origin = @"0C3A05290320C3E31FEBCF1FE7D120E8EF6F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_backgroundValue = [self StringFromResourceData:value];
    }
    return k_backgroundValue;
}

//: /team/getStatusSendText
- (NSString *)app_customTitle {
    /* static */ NSString *app_customTitle = nil;
    if (!app_customTitle) {
		NSString *origin = @"17440D4E738F940E66DE82FF7773B8A9A5B173ABA9B897B8A5B8B9B797A9B2A898A9BCB8F7";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_customTitle = [self StringFromResourceData:value];
    }
    return app_customTitle;
}

//: postscript
- (NSString *)mStateValue {
    /* static */ NSString *mStateValue = nil;
    if (!mStateValue) {
		NSString *origin = @"0A37040EA7A6AAABAA9AA9A0A7ABF5";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mStateValue = [self StringFromResourceData:value];
    }
    return mStateValue;
}

//: canMemberInfo
- (NSString *)dreamStartTitleFormat {
    /* static */ NSString *dreamStartTitleFormat = nil;
    if (!dreamStartTitleFormat) {
		NSString *origin = @"0D610A483E597DD6EB35C4C2CFAEC6CEC3C6D3AACFC7D02F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamStartTitleFormat = [self StringFromResourceData:value];
    }
    return dreamStartTitleFormat;
}

//: message_helper_apply_to_group
- (NSString *)dreamTouchTitle {
    /* static */ NSString *dreamTouchTitle = nil;
    if (!dreamTouchTitle) {
		NSString *origin = @"1D490DEC76D44FF85197DAE2EDB6AEBCBCAAB0AEA8B1AEB5B9AEBBA8AAB9B9B5C2A8BDB8A8B0BBB8BEB9F1";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTouchTitle = [self StringFromResourceData:value];
    }
    return dreamTouchTitle;
}

//: luyintaiduan
- (NSString *)mainUsStr {
    /* static */ NSString *mainUsStr = nil;
    if (!mainUsStr) {
		NSString *origin = @"0C480AC7572DA98724CBB4BDC1B1B6BCA9B1ACBDA9B622";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainUsStr = [self StringFromResourceData:value];
    }
    return mainUsStr;
}

//: showFile:
- (NSString *)show_textLineMsg {
    /* static */ NSString *show_textLineMsg = nil;
    if (!show_textLineMsg) {
		NSString *origin = @"09240546DD978C939B6A8D90895E5B";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_textLineMsg = [self StringFromResourceData:value];
    }
    return show_textLineMsg;
}

//: apple+%@
- (NSString *)dreamDotBlueContent {
    /* static */ NSString *dreamDotBlueContent = nil;
    if (!dreamDotBlueContent) {
		NSString *origin = @"0814042175848480793F395470";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDotBlueContent = [self StringFromResourceData:value];
    }
    return dreamDotBlueContent;
}

//: 正在输入
- (NSString *)userMorroMsg {
    /* static */ NSString *userMorroMsg = nil;
    if (!userMorroMsg) {
		NSString *origin = @"0C480A8F86EF8F1C9EB12EF5EB2DE4F03006DB2DCDED1C";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMorroMsg = [self StringFromResourceData:value];
    }
    return userMorroMsg;
}

//: activity_friend_verify_info
- (NSString *)dreamTableContainerName {
    /* static */ NSString *dreamTableContainerName = nil;
    if (!dreamTableContainerName) {
		NSString *origin = @"1B120C2AFAE095F1AA9293857375867B887B868B7178847B778076718877847B788B717B8078819E";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTableContainerName = [self StringFromResourceData:value];
    }
    return dreamTableContainerName;
}

//: 确定删除？
- (NSString *)userTableTitle {
    /* static */ NSString *userTableTitle = nil;
    if (!userTableTitle) {
		NSString *origin = @"0F46032DE7F42BF4E02BCEE62FDFEA3502E501";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTableTitle = [self StringFromResourceData:value];
    }
    return userTableTitle;
}

//: http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action
- (NSString *)main_stateStr {
    /* static */ NSString *main_stateStr = nil;
    if (!main_stateStr) {
		NSString *origin = @"3F4704CDAFBBBBB7817676A8B7B074BAAE75C0BCB5BFB0B5A8B7B075AAB6B476B5B0B4BAACB9BDACB976BBB9A8B5BAB3A8BBB6B976BBACBFBB94BAAE75A8AABBB0B6B552";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_stateStr = [self StringFromResourceData:value];
    }
    return main_stateStr;
}

//: contact
- (NSString *)k_countUrl {
    /* static */ NSString *k_countUrl = nil;
    if (!k_countUrl) {
		NSString *origin = @"073005C4E7939F9EA49193A41D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_countUrl = [self StringFromResourceData:value];
    }
    return k_countUrl;
}

//: /other/feedback
- (NSString *)dream_burdenIdent {
    /* static */ NSString *dream_burdenIdent = nil;
    if (!dream_burdenIdent) {
		NSString *origin = @"0F3808EAEC29873467A7ACA09DAA679E9D9D9C9A999BA302";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_burdenIdent = [self StringFromResourceData:value];
    }
    return dream_burdenIdent;
}

//: invalid event
- (NSString *)showDateMsg {
    /* static */ NSString *showDateMsg = nil;
    if (!showDateMsg) {
		NSString *origin = @"0D1E0CB0FDA34626C9C24B48878C947F8A87823E8394838C9283";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showDateMsg = [self StringFromResourceData:value];
    }
    return showDateMsg;
}

//: 发言频次
- (NSString *)userBubbleSingleFlameText {
    /* static */ NSString *userBubbleSingleFlameText = nil;
    if (!userBubbleSingleFlameText) {
		NSString *origin = @"0C140BA07D8DB13AC68043F9A3A5FCBC94FDB6A5FAC0B5D4";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBubbleSingleFlameText = [self StringFromResourceData:value];
    }
    return userBubbleSingleFlameText;
}

//: showLocation:
- (NSString *)mainSumUrl {
    /* static */ NSString *mainSumUrl = nil;
    if (!mainSumUrl) {
		NSString *origin = @"0D200D5CF67A97F808D4A10F3B93888F976C8F838194898F8E5ABA";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSumUrl = [self StringFromResourceData:value];
    }
    return mainSumUrl;
}

//: %@.code:%zd
- (NSString *)kDotName {
    /* static */ NSString *kDotName = nil;
    if (!kDotName) {
		NSString *origin = @"0B1D09A2129822CC13425D4B808C8182574297816A";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDotName = [self StringFromResourceData:value];
    }
    return kDotName;
}

//: 转发失败
- (NSString *)noti_grayBlueName {
    /* static */ NSString *noti_grayBlueName = nil;
    if (!noti_grayBlueName) {
		NSString *origin = @"0C2609F51CBE860F810EE3D20BB5B70BCAD70EDACB0D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_grayBlueName = [self StringFromResourceData:value];
    }
    return noti_grayBlueName;
}

//: 不能和自己通话哦
- (NSString *)dream_searchId {
    /* static */ NSString *dream_searchId = nil;
    if (!dream_searchId) {
		NSString *origin = @"18130538C3F7CBA0FB96D0F8A59FFB9ABDF8CAC4FC93ADFBC2B0F8A6B99C";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_searchId = [self StringFromResourceData:value];
    }
    return dream_searchId;
}

//: teamgonggao_
- (NSString *)noti_textTingMsg {
    /* static */ NSString *noti_textTingMsg = nil;
    if (!noti_textTingMsg) {
		NSString *origin = @"0C1E089A7A8E1F9292837F8B858D8C85857F8D7D14";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_textTingMsg = [self StringFromResourceData:value];
    }
    return noti_textTingMsg;
}

//: 选择会话类型
- (NSString *)mArmyLabFormat {
    /* static */ NSString *mArmyLabFormat = nil;
    if (!mArmyLabFormat) {
		NSString *origin = @"125206B1F0953BD2DB38DDFB360EEC3A01EF39030D37F0DDF0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mArmyLabFormat = [self StringFromResourceData:value];
    }
    return mArmyLabFormat;
}

//: showVideo:
- (NSString *)kImageFormat {
    /* static */ NSString *kImageFormat = nil;
    if (!kImageFormat) {
		NSString *origin = @"0A270954348486D84C9A8F969E7D908B8C966199";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kImageFormat = [self StringFromResourceData:value];
    }
    return kImageFormat;
}

//: KEKENotificationLanguageChanged
- (NSString *)showIllFormat {
    /* static */ NSString *showIllFormat = nil;
    if (!showIllFormat) {
		NSString *origin = @"1F430A2F713F709459B98E888E8891B2B7ACA9ACA6A4B7ACB2B18FA4B1AAB8A4AAA886ABA4B1AAA8A759";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showIllFormat = [self StringFromResourceData:value];
    }
    return showIllFormat;
}

//: my_computer
- (NSString *)k_removeKitKey {
    /* static */ NSString *k_removeKitKey = nil;
    if (!k_removeKitKey) {
		NSString *origin = @"0B4E0B31226F18DFC3CBE8BBC7ADB1BDBBBEC3C2B3C06D";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_removeKitKey = [self StringFromResourceData:value];
    }
    return k_removeKitKey;
}

//: checksum
- (NSString *)k_showId {
    /* static */ NSString *k_showId = nil;
    if (!k_showId) {
		NSString *origin = @"083C0BFCF8B0DC8FEFE83F9FA4A19FA7AFB1A91B";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_showId = [self StringFromResourceData:value];
    }
    return k_showId;
}

//: 发送时间超过2分钟的消息不能被撤回
- (NSString *)m_animalUrl {
    /* static */ NSString *m_animalUrl = nil;
    if (!m_animalUrl) {
		NSString *origin = @"312F0853D3AE8C8514BEC018AFB015C6E518C6E317E5B417EEB66114B7B518C1CE16C9B315E5B715B0DE13E7BC17B2EC17D1DA15C1D314CACDDB";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_animalUrl = [self StringFromResourceData:value];
    }
    return m_animalUrl;
}

//: translation
- (NSString *)m_frameUrl {
    /* static */ NSString *m_frameUrl = nil;
    if (!m_frameUrl) {
		NSString *origin = @"0B4205B6AAB6B4A3B0B5AEA3B6ABB1B0A1";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_frameUrl = [self StringFromResourceData:value];
    }
    return m_frameUrl;
}

//: msg
- (NSString *)mTableEnableValueTitle {
    /* static */ NSString *mTableEnableValueTitle = nil;
    if (!mTableEnableValueTitle) {
		NSString *origin = @"031F0C837CEEFE9D81CF6B838C92866C";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTableEnableValueTitle = [self StringFromResourceData:value];
    }
    return mTableEnableValueTitle;
}

//: recid
- (NSString *)show_bubbleViewKey {
    /* static */ NSString *show_bubbleViewKey = nil;
    if (!show_bubbleViewKey) {
		NSString *origin = @"051D0D91F0C205C9B02BEC0C4A8F828086812A";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_bubbleViewKey = [self StringFromResourceData:value];
    }
    return show_bubbleViewKey;
}

//: black_list_activity_add_black_failed
- (NSString *)show_countSingleTitle {
    /* static */ NSString *show_countSingleTitle = nil;
    if (!show_countSingleTitle) {
		NSString *origin = @"24230CA63A59BC375FDB1FDF858F84868E828F8C9697828486978C998C979C8284878782858F84868E8289848C8F88875C";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_countSingleTitle = [self StringFromResourceData:value];
    }
    return show_countSingleTitle;
}

//: 确认转发
- (NSString *)noti_armyPath {
    /* static */ NSString *noti_armyPath = nil;
    if (!noti_armyPath) {
		NSString *origin = @"0C360D515AC62890734B735F9F1DD7E41EE4DA1EF3E21BC5C741";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_armyPath = [self StringFromResourceData:value];
    }
    return noti_armyPath;
}

//: zh-CHS
- (NSString *)kContainerMsg {
    /* static */ NSString *kContainerMsg = nil;
    if (!kContainerMsg) {
		NSString *origin = @"0652060D2D97CCBA7F959AA556";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContainerMsg = [self StringFromResourceData:value];
    }
    return kContainerMsg;
}

//: luyinshibai
- (NSString *)main_operationValue {
    /* static */ NSString *main_operationValue = nil;
    if (!main_operationValue) {
		NSString *origin = @"0B2C05BFC698A1A5959A9F94958E8D95AB";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_operationValue = [self StringFromResourceData:value];
    }
    return main_operationValue;
}

//: teamgonggao_title_
- (NSString *)app_ofMsg {
    /* static */ NSString *app_ofMsg = nil;
    if (!app_ofMsg) {
		NSString *origin = @"12460DB7BE67BEE487D40E0BB0BAABA7B3ADB5B4ADADA7B5A5BAAFBAB2ABA55F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_ofMsg = [self StringFromResourceData:value];
    }
    return app_ofMsg;
}

//: 您已被禁言
- (NSString *)user_contentStr {
    /* static */ NSString *user_contentStr = nil;
    if (!user_contentStr) {
		NSString *origin = @"0F26030CA8CE0BDDD80EC8D10DCCA70ECEA602";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_contentStr = [self StringFromResourceData:value];
    }
    return user_contentStr;
}

//: hant
- (NSString *)app_customPath {
    /* static */ NSString *app_customPath = nil;
    if (!app_customPath) {
		NSString *origin = @"045506D66F4DBDB6C3C9B0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_customPath = [self StringFromResourceData:value];
    }
    return app_customPath;
}

//: 消息撤回失败，请重试
- (NSString *)showSizeTagUrl {
    /* static */ NSString *showSizeTagUrl = nil;
    if (!showSizeTagUrl) {
		NSString *origin = @"1E200306D6A806A1CF06B2C405BBBE05C4D108D4C50FDCAC08CFD709A7AD08CFB5C6";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showSizeTagUrl = [self StringFromResourceData:value];
    }
    return showSizeTagUrl;
}

//: showCustom:
- (NSString *)userShowMsg {
    /* static */ NSString *userShowMsg = nil;
    if (!userShowMsg) {
		NSString *origin = @"0B0B0D090F542498A5986C04147E737A824E807E7F7A784541";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userShowMsg = [self StringFromResourceData:value];
    }
    return userShowMsg;
}

//: type
- (NSString *)dream_dataStr {
    /* static */ NSString *dream_dataStr = nil;
    if (!dream_dataStr) {
		NSString *origin = @"045F054398D3D8CFC4F2";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_dataStr = [self StringFromResourceData:value];
    }
    return dream_dataStr;
}

//: 删除成功
- (NSString *)appStereoValue {
    /* static */ NSString *appStereoValue = nil;
    if (!appStereoValue) {
		NSString *origin = @"0C2B0CD6ACD833335E2A3C8F10B3CB14C4CF11B3BB10B5CAB5";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appStereoValue = [self StringFromResourceData:value];
    }
    return appStereoValue;
}

//: ispush
- (NSString *)show_removeContent {
    /* static */ NSString *show_removeContent = nil;
    if (!show_removeContent) {
		NSString *origin = @"063C09544E5369ED9DA5AFACB1AFA47F";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_removeContent = [self StringFromResourceData:value];
    }
    return show_removeContent;
}

//: app_team_invalid_tip
- (NSString *)user_imageUrl {
    /* static */ NSString *user_imageUrl = nil;
    if (!user_imageUrl) {
		NSString *origin = @"144A0D19E11CD14D8CCC8166A0ABBABAA9BEAFABB7A9B3B8C0ABB6B3AEA9BEB3BA82";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_imageUrl = [self StringFromResourceData:value];
    }
    return user_imageUrl;
}

//: 撤回一条消息
- (NSString *)mainScaleTitle {
    /* static */ NSString *mainScaleTitle = nil;
    if (!mainScaleTitle) {
		NSString *origin = @"125B05DC0741EDFF40F6F93F13DB41F8FC4111E341DC0A14";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainScaleTitle = [self StringFromResourceData:value];
    }
    return mainScaleTitle;
}

//: 撤回附言
- (NSString *)mContentId {
    /* static */ NSString *mContentId = nil;
    if (!mContentId) {
		NSString *origin = @"0C5A044140ECFE3FF5F843F3DE4202DABB";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mContentId = [self StringFromResourceData:value];
    }
    return mContentId;
}

//: 已发送
- (NSString *)main_verticalFormat {
    /* static */ NSString *main_verticalFormat = nil;
    if (!main_verticalFormat) {
		NSString *origin = @"0922043107D9D407B1B30BA2A3AA";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_verticalFormat = [self StringFromResourceData:value];
    }
    return main_verticalFormat;
}

//: 请输入附言
- (NSString *)notiBudgeKey {
    /* static */ NSString *notiBudgeKey = nil;
    if (!notiBudgeKey) {
		NSString *origin = @"0F4B043133FA023309DE30D0F034E4CF33F3CB87";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBudgeKey = [self StringFromResourceData:value];
    }
    return notiBudgeKey;
}

//: personCardId
- (NSString *)kInfoTitle {
    /* static */ NSString *kInfoTitle = nil;
    if (!kInfoTitle) {
		NSString *origin = @"0C5E0A19AD5AC7B4D0DACEC3D0D1CDCCA1BFD0C2A7C2B0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kInfoTitle = [self StringFromResourceData:value];
    }
    return kInfoTitle;
}

//: contact_tag_fragment_sure
- (NSString *)notiBudgeSymptomIdent {
    /* static */ NSString *notiBudgeSymptomIdent = nil;
    if (!notiBudgeSymptomIdent) {
		NSString *origin = @"195A08EDB469BBFCBDC9C8CEBBBDCEB9CEBBC1B9C0CCBBC1C7BFC8CEB9CDCFCCBFB7";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBudgeSymptomIdent = [self StringFromResourceData:value];
    }
    return notiBudgeSymptomIdent;
}

//: title
- (NSString *)showStartText {
    /* static */ NSString *showStartText = nil;
    if (!showStartText) {
		NSString *origin = @"055E03D2C7D2CAC385";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showStartText = [self StringFromResourceData:value];
    }
    return showStartText;
}

//: watch_multiretweet_activity_person
- (NSString *)show_contentStr {
    /* static */ NSString *show_contentStr = nil;
    if (!show_contentStr) {
		NSString *origin = @"225209B88CC71253DEC9B3C6B5BAB1BFC7BEC6BBC4B7C6C9B7B7C6B1B3B5C6BBC8BBC6CBB1C2B7C4C5C1C023";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_contentStr = [self StringFromResourceData:value];
    }
    return show_contentStr;
}

//: 添加失败
- (NSString *)m_messageFormat {
    /* static */ NSString *m_messageFormat = nil;
    if (!m_messageFormat) {
		NSString *origin = @"0C3D08B0CC990D4F23F4F822C7DD22E1EE25F1E291";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_messageFormat = [self StringFromResourceData:value];
    }
    return m_messageFormat;
}

//: 取消标记失败
- (NSString *)appAnimalViewMessage {
    /* static */ NSString *appAnimalViewMessage = nil;
    if (!appAnimalViewMessage) {
		NSString *origin = @"124307F5AD320F28D2D929F9CB29E3CA2BF1F328E7F42BF7E8D6";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appAnimalViewMessage = [self StringFromResourceData:value];
    }
    return appAnimalViewMessage;
}

//: #FEFECA
- (NSString *)mainGoIdent {
    /* static */ NSString *mainGoIdent = nil;
    if (!mainGoIdent) {
		NSString *origin = @"074D0B71F1B956BB6428B17093929392908EF0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainGoIdent = [self StringFromResourceData:value];
    }
    return mainGoIdent;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)mGrayMsg {
    /* static */ NSString *mGrayMsg = nil;
    if (!mGrayMsg) {
		NSString *origin = @"2D0C079F0144E2817F717E6B7C7E7B727578716B6D828075827580856B817F717E6B757A727B6B817C706D80716B726D75787170D0";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mGrayMsg = [self StringFromResourceData:value];
    }
    return mGrayMsg;
}

//: Asia/Shanghai
- (NSString *)k_etherCountBubbleFormat {
    /* static */ NSString *k_etherCountBubbleFormat = nil;
    if (!k_etherCountBubbleFormat) {
		NSString *origin = @"0D40054F3481B3A9A16F93A8A1AEA7A8A1A934";
		NSData *data = [ResourceData ResourceDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_etherCountBubbleFormat = [self StringFromResourceData:value];
    }
    return k_etherCountBubbleFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionSizeViewController.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionViewController.h"
#import "SessionSizeViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+OpenSend.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "IconSender.h"
//: #import "NTESSessionConfig.h"
#import "LanguageBottomConfig.h"
//: #import "ContentMediaItem.h"
#import "LanguageItem.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESVideoViewController.h"
#import "ColdShoulderViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Occurrent.h"
//: #import "ContentAdvancedTeamCardViewController.h"
#import "TarotCardViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESBundleSetting.h"
#import "PassageSetting.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "ContentContactSelectViewController.h"
#import "TingViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESFPSLabel.h"
#import "StyleView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "ContentKitMediaFetcher.h"
#import "ArrayFetcher.h"
//: #import "ContentKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "NTESSubscribeManager.h"
#import "DistrictManager.h"
//: #import "ContentInputAtCache.h"
#import "AtNameSize.h"
//: #import "NTESRedPacketAttachment.h"
#import "BarName.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "PermitMenu.h"
//: #import "NTESCellLayoutConfig.h"
#import "IconLayoutConfig.h"
//: #import "NTESMulSelectFunctionBar.h"
#import "MobileView.h"
//: #import "NTESMergeForwardSession.h"
#import "InputRange.h"
//: #import "NTESSessionMultiRetweetContentView.h"
#import "TingTitleView.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"
//: #import "ContentReplyContentView.h"
#import "PitchingChangeView.h"
//: #import "NTESThreadTalkSessionViewController.h"
#import "LightViewController.h"
//: #import "UIView+ContentToast.h"
#import "UIView+AllowToast.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESOpenRedPackageSheet.h"
#import "ToolView.h"
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "ZMONGalleryImgViewController.h"
#import "WithAudienceViewController.h"
//: #import "SNLeadCompleteManager.h"
#import "SheerColor.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "ContentTeamAnnouncementListViewController.h"
#import "AnnouncementViewController.h"
//: #import "ContentTeamListDataManager.h"
#import "ManagerEnable.h"
//: #import "LEEAlert.h"
#import "TeamModeAlert.h"
//: #import "ZCHttpManager+Addtionals.h"
#import "TroublingName+Header.h"
//: #import "NTESListHeader.h"
#import "CropBarView.h"
//: #import "ZMONTranslateView.h"
#import "BottomView.h"
//: #import "ZMONReportNextView.h"
#import "SpeedyView.h"
//: #import "ZMONReportBlackView.h"
#import "SessionView.h"
//: #import "ZMONReportDeleteView.h"
#import "SmallnessView.h"
//: #import "ZMONReportHisView.h"
#import "CustomView.h"

//: @import MobileCoreServices;
@import MobileCoreServices;
//: @import AVFoundation;
@import AVFoundation;
//: NSString *kNTESDemoRevokeMessageFromMeNotication = @"kNTESDemoRevokeMessageFromMeNotication";
NSString *show_teamValue = @"kNTESDemoRevokeMessageFromMeNotication";
// 定义后台允许的最大时间（1小时）
//: static const NSTimeInterval kMaxBackgroundTime = 60*60;
static const NSTimeInterval noti_buttonCenterMsg = 60*60;

//: @interface NTESSessionViewController ()
@interface SessionSizeViewController ()
//: <UIImagePickerControllerDelegate,
<UIImagePickerControllerDelegate,
//: UINavigationControllerDelegate,
UINavigationControllerDelegate,
//: UISearchControllerDelegate,
UISearchControllerDelegate,
//: NIMSystemNotificationManagerDelegate,
NIMSystemNotificationManagerDelegate,
//: NIMMediaManagerDelegate,
NIMMediaManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: ContentTeamCardViewControllerDelegate,
ViewLanguage,
//: NIMChatExtendManagerDelegate,
NIMChatExtendManagerDelegate,
//: UISearchBarDelegate,
UISearchBarDelegate,
//: NTESListHeaderDelegate,
SizeDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NTESOpenRedPackageSheetDelegate,
CutDelegate,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: NTESReportContentDelegate,
BottomDelegate,
//: NTESReportNextDelegate,
StyleDelegate,
//: NTESReportHisNextDelegate>
ViewLength>
{
    //: BOOL _canSendText;
    BOOL _canSendText;
}

//: @property (nonatomic,strong) NTESCustomSysNotificationSender *notificaionSender;
@property (nonatomic,strong) IconSender *notificaionSender;
//: @property (nonatomic,strong) NTESSessionConfig *sessionConfig;
@property (nonatomic,strong) LanguageBottomConfig *sessionConfig;
//: @property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImagePickerController *imagePicker;
//: @property (nonatomic,strong) UIView *currentSingleSnapView;
@property (nonatomic,strong) UIView *currentSingleSnapView;
//@property (nonatomic,strong)    StyleView *fpsLabel;
//: @property (nonatomic,strong) ContentKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ArrayFetcher *mediaFetcher;
//: @property (nonatomic,strong) NSMutableArray *selectedMessages;
@property (nonatomic,strong) NSMutableArray *selectedMessages;
//: @property (nonatomic,strong) NTESMulSelectFunctionBar *mulSelectedSureBar;
@property (nonatomic,strong) MobileView *mulSelectedSureBar;
//: @property (nonatomic,strong) UIButton *mulSelectCancelBtn;
@property (nonatomic,strong) UIButton *mulSelectCancelBtn;
//: @property (nonatomic,strong) NTESMergeForwardSession *mergeForwardSession;
@property (nonatomic,strong) InputRange *mergeForwardSession;

//: @property (nonatomic,assign) NSInteger intervalTime;
@property (nonatomic,assign) NSInteger intervalTime;
//: @property (nonatomic,assign) BOOL isSend;
@property (nonatomic,assign) BOOL isSend;
//: @property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) NSTimer *timer;

//: @property (nonatomic, strong) NSDate *backgroundEnterTime;
@property (nonatomic, strong) NSDate *backgroundEnterTime;
//: @property (nonatomic, assign) BOOL shouldRestart;
@property (nonatomic, assign) BOOL shouldRestart;

//: @property (nonatomic, strong) UILabel *invalid_tip;
@property (nonatomic, strong) UILabel *invalid_tip;// 不在群聊view

//: @property (nonatomic, strong) NTESListHeader *header;
@property (nonatomic, strong) CropBarView *header;
//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) BottomView *translateView;

//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) SpeedyView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) SessionView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) SmallnessView *reprotDeleteView;
//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) ZMONReportHisView *reprotHisNextView;
@property (nonatomic, strong) CustomView *reprotHisNextView;

//: @end
@end


//: @implementation NTESSessionViewController
@implementation SessionSizeViewController


//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //    self.navigationController.navigationBarHidden = NO;
    //    [self.navigationController.navigationBar setHidden:YES];
    //: [self showNotice];
    [self afterOption];

    // 当前用户不在群聊
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {

            //: self.invalid_tip.hidden = NO;
            self.invalid_tip.hidden = NO;

            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self refreshMessages];
                [self addressMessages];
            //: }];
            }];
        //: } else {
        } else {

//            [[NIMSDK sharedSDK].teamManager fetchTeamMembers:team.teamId
//                                                  completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
//                
//                if (members && members.count >= 100) {
//                    
//                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateOnlyManager
//                                                                 inTeam:team.teamId
//                                                             completion:^(NSError *error) {
//                        
//                    }];
//                }
//            }];
        }
    }
}

//: - (void)showNotice {
- (void)afterOption {

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{

        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if (team && team.announcement && team.announcement.length > 0) {
        if (team && team.announcement && team.announcement.length > 0) {
            //取出标题和内容
            //: NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: if (datas.count <= 0){
            if (datas.count <= 0){
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[SheerColor outProgress] characterize];
                //: return;
                return;
            }

            //: NSString *title = [datas lastObject][@"title"];
            NSString *title = [datas lastObject][[[ResourceData sharedInstance] showStartText]];
            //: NSString *content = [datas lastObject][@"content"];
            NSString *content = [datas lastObject][[[ResourceData sharedInstance] dreamSingleIdent]];

            //: NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];
            NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];

            //: if (title.length > 0 || content.length > 0){
            if (title.length > 0 || content.length > 0){

                @
                 //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                 autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                              ;
                //: [[SNLeadCompleteManager sharedInstance] showLeadViewForCompletingUserInfoWithSuperView:self.view withMessage:message cancleBlock:^{
                [[SheerColor outProgress] monitorCheck:self.view quick:message message:^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
                    ArrayAsset *option = [[ArrayAsset alloc] init];
                    //: option.canCreateAnnouncement = NO;
                    option.canCreateAnnouncement = NO;
                    //: option.announcement = team.announcement;
                    option.announcement = team.announcement;
                    //: option.nick = team.teamName;
                    option.nick = team.teamName;
                    //: option.team = team;
                    option.team = team;
                    //: ContentTeamAnnouncementListViewController *vc = [[ContentTeamAnnouncementListViewController alloc] initWithOption:option];
                    AnnouncementViewController *vc = [[AnnouncementViewController alloc] initWithDisplayCenter:option];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                //: }];
                }];
            //: } else {
            } else {
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[SheerColor outProgress] characterize];
            }
        }

    //: });
    });
}


//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification {
- (void)fromBubble:(NSNotification *)notification {
    //: [self showNotice];
    [self afterOption];
    //在聊天页面停留时间长了，再次进来卡死。刷新一下数据
//    [self refreshMessages];

    // 检查是否需要重启
        //: if (self.shouldRestart) {
        if (self.shouldRestart) {
            //: [self refreshMessages];
            [self addressMessages];
            //: self.shouldRestart = NO;
            self.shouldRestart = NO;
        }
}

//: - (void)vcEnterBackground:(NSNotification *)notification
- (void)heritaged:(NSNotification *)notification
{
        // 记录进入后台的时间
            //: self.backgroundEnterTime = [NSDate date];
            self.backgroundEnterTime = [NSDate date];
            //: NSLog(@"应用进入后台，开始计时: %@", self.backgroundEnterTime);
}
//: - (void)vcEnterForeground:(NSNotification *)notification
- (void)addPopIn:(NSNotification *)notification
{
    // 检查后台停留时间是否超过阈值
       //: if (self.backgroundEnterTime) {
       if (self.backgroundEnterTime) {
           //: NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           //: NSLog(@"应用从后台返回，后台停留时间: %.0f秒", backgroundTime);

           //: if (backgroundTime >= kMaxBackgroundTime) {
           if (backgroundTime >= noti_buttonCenterMsg) {
               //: self.shouldRestart = YES;
               self.shouldRestart = YES;
           }
       }
       //: self.backgroundEnterTime = nil;
       self.backgroundEnterTime = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: _isSend = YES;
    _isSend = YES;
    //: _canSendText = YES;
    _canSendText = YES;
    //: self.canTapVoiceBtn = YES;
    self.canTapVoiceBtn = YES;

    // 初始化时重置重启标志
     //: self.shouldRestart = NO;
     self.shouldRestart = NO;

    //: _notificaionSender = [[NTESCustomSysNotificationSender alloc] init];
    _notificaionSender = [[IconSender alloc] init];
//    [self setupNormalNav];
    //: BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    //: if (!disableCommandTyping) {
    if (!disableCommandTyping) {
        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    }

//    if ([[PassageSetting sharedConfig] showFps])
//    {
//        self.fpsLabel = [[StyleView alloc] initWithFrame:CGRectZero];
//        [self.view addSubview:self.fpsLabel];
//        self.fpsLabel.right = self.view.width;
//        self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    }

    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //临时订阅这个人的在线状态
        //: [[NTESSubscribeManager sharedManager] subscribeTempUserOnlineState:self.session.sessionId];
        [[DistrictManager nimThanManager] toolState:self.session.sessionId];
        //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
    }

    //删除最近会话列表中有人@你的标记
    //: [NTESSessionUtil removeRecentSessionMark:self.session type:NTESRecentSessionMarkTypeAt];
    [LanguageUtil max:self.session session:NTESRecentSessionMarkTypeAt];

    //批量转发
    //: _mergeForwardSession = [[NTESMergeForwardSession alloc] init];
    _mergeForwardSession = [[InputRange alloc] init];
    //    [self setupSearchVC];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(onRevokeMessageFromMe:)
                                             selector:@selector(withPin:)
                                                 //: name:kNTESDemoRevokeMessageFromMeNotication
                                                 name:show_teamValue
                                               //: object:nil];
                                               object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fromBubble:) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(heritaged:) name:UIApplicationDidEnterBackgroundNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addPopIn:) name:UIApplicationWillEnterForegroundNotification object:nil];




    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:[[ResourceData sharedInstance] showIllFormat] object:nil];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.session.sessionId;
    dict[@"id"] = self.session.sessionId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[ResourceData sharedInstance] m_proId]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[ResourceData sharedInstance] dreamOperationName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[ResourceData sharedInstance] user_animalIdent]];
            //: self.teamSettingConfig = data;
            self.teamSettingConfig = data;

//            NSString *frequency = [data newStringValueForKey:@"frequency"];
            //: NSString *canMemberInfovalue = [data newStringValueForKey:@"canMemberInfo"];
            NSString *canMemberInfovalue = [data to:[[ResourceData sharedInstance] dreamStartTitleFormat]];
            //: NSString *ispushvalue = [data newStringValueForKey:@"ispush"];
            NSString *ispushvalue = [data to:[[ResourceData sharedInstance] show_removeContent]];

            //: self.canMemberInfo = canMemberInfovalue.boolValue;
            self.canMemberInfo = canMemberInfovalue.boolValue;
            //: self.canNoticeMsg = ispushvalue.boolValue;
            self.canNoticeMsg = ispushvalue.boolValue;

//            self.canMemberInfo = [data boolValueForKey:@"canMemberInfo"];
//            self.canNoticeMsg = [data boolValueForKey:@"ispush"];
//            weakself.intervalTime = frequency.integerValue;
//            if (weakself.intervalTime > 0) {
//                weakself.timer = [NSTimer scheduledTimerWithTimeInterval:weakself.intervalTime target:weakself selector:@selector(timerWithTimeInterval) userInfo:nil repeats:YES];
//            }


            //: if (self.session.sessionType == NIMSessionTypeTeam) {
            if (self.session.sessionType == NIMSessionTypeTeam) {
                //: if (self.canNoticeMsg) {
                if (self.canNoticeMsg) {

                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];

                //: }else{
                }else{
                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];
                }
            }




        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getStatusSendText"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[ResourceData sharedInstance] app_customTitle]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[ResourceData sharedInstance] dreamOperationName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[ResourceData sharedInstance] user_animalIdent]];
            //: NSString *canSendText = [data stringValueForKey:@"canSendText" defaultValue:@"1"];
            NSString *canSendText = [data wearer:[[ResourceData sharedInstance] dream_dateName] bit:@"1"];
            //: _canSendText = canSendText.boolValue;
            _canSendText = canSendText.boolValue;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];


    // 群公告
    //: NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
    NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[ResourceData sharedInstance] noti_textTingMsg],self.session.sessionId]];
    //: if([@"1" isEqualToString:flag]){
    if([@"1" isEqualToString:flag]){
        //: [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
        [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[ResourceData sharedInstance] noti_textTingMsg],self.session.sessionId]];
        //取出标题和内容
        //: NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",self.session.sessionId]];
        NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[[ResourceData sharedInstance] app_ofMsg],self.session.sessionId]];
        //: NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",self.session.sessionId]];
        NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[[ResourceData sharedInstance] m_upPath],self.session.sessionId]];

        //: if (title.length > 0 || content.length > 0){
        if (title.length > 0 || content.length > 0){

            //: [LEEAlert alert].config
            [TeamModeAlert shared].config
                //: .LeeAddTitle(^(UILabel *label) {
                .LeeAddTitle(^(UILabel *label) {
                    //: label.text = title;
                    label.text = title;
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                //: })
                })
                //: .LeeAddContent(^(UILabel *label) {
                .LeeAddContent(^(UILabel *label) {
                    //: label.text = content;
                    label.text = content;
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                //: })
                })
                //: .LeeAddAction(^(LEEAction *action) {
                .LeeAddAction(^(DisableMessage *action) {

                    //: action.type = LEEActionTypeCancel;
                    action.type = LEEActionTypeCancel;
                    //: action.title = [ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
                    action.title = [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] notiBudgeSymptomIdent]];
                    //: action.titleColor = [UIColor colorWithHexString:@"01B0FD"];
                    action.titleColor = [UIColor recordView:[[ResourceData sharedInstance] show_shouldUrl]];
                    //: action.backgroundColor = [UIColor whiteColor];
                    action.backgroundColor = [UIColor whiteColor];
                    //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    //: action.borderWidth = 1.0f;
                    action.borderWidth = 1.0f;
                    //: action.borderColor = action.backgroundHighlightColor;
                    action.borderColor = action.backgroundHighlightColor;
                //: })
                })
                //: .LeeShow();
                .LeeShow();
        }

    }

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), self.view.width, 0)];
    self.header = [[CropBarView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header member:ListHeaderTypeNetStauts message:@(step)];
}

//: - (void)languageChanged:(NSNotification *)noti {
- (void)languageChanged:(NSNotification *)noti {
    //: [self refreshMessages];
    [self addressMessages];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

/** NIMTeamManagerDelegate
 *  群组成员变动回调,包含被移除的群成员ID
 *
 *  @param team 变动的群组
 *  @param memberIDs 变动的成员ID
 */
//: - (void)onTeamMemberRemoved:(NIMTeam *)team
- (void)onTeamMemberRemoved:(NIMTeam *)team
                //: withMembers:(nullable NSArray<NSString *> *)memberIDs; {
                withMembers:(nullable NSArray<NSString *> *)memberIDs; {

    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
    if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
        //: self.invalid_tip.hidden = NO;
        self.invalid_tip.hidden = NO;

        //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        //: options.removeOtherClients = YES;
        options.removeOtherClients = YES;
        //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
        [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: return;
                return;
            }
            //: [self refreshMessages];
            [self addressMessages];
        //: }];
        }];
    }
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [self.view endEditing:YES];
//}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step{
- (void)onLogin:(NIMLoginStep)step{
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header member:ListHeaderTypeNetStauts message:@(step)];
}

//: -(void)timerWithTimeInterval{
-(void)doingInstance{
    //: _isSend = YES;
    _isSend = YES;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        //: [[NTESSubscribeManager sharedManager] unsubscribeTempUserOnlineState:self.session.sessionId];
        [[DistrictManager nimThanManager] rangeVoiceQuantityerval:self.session.sessionId];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }

//    [_fpsLabel invalidate];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.timer invalidate];
    [self.timer invalidate];
}



//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    self.fpsLabel.right = self.view.width;
//    self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    self.mulSelectedSureBar.frame = self.sessionInputView.frame;
}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];

    //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
    [[SheerColor outProgress] characterize];
    //    [self.navigationController.navigationBar setHidden:NO];
}

//: - (id<ContentSessionConfig>)sessionConfig
- (id<SaloonConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESSessionConfig alloc] init];
        _sessionConfig = [[LanguageBottomConfig alloc] init];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - ContentTeamCardViewControllerDelegate
#pragma mark - ViewLanguage

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)isTop {
- (void)quantityervalTo:(BOOL)isTop {
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    //: if (isTop) {
    if (isTop) {
        //: if (!recent) {
        if (!recent) {
            //: [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
            [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
        }
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
    //: } else {
    } else {
        //: if (recent) {
        if (recent) {
            //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
        //: } else {}
        } else {}
    }
}

//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate
//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: if ([event.from isEqualToString:self.session.sessionId]) {
        if ([event.from isEqualToString:self.session.sessionId]) {
            //: [self refreshSessionSubTitle:[NTESSessionUtil onlineState:self.session.sessionId detail:YES]];
            [self post:[LanguageUtil startLength:self.session.sessionId provinceText:YES]];
        }
    }
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
{
    //: if (!notification.sendToOnlineUsersOnly) {
    if (!notification.sendToOnlineUsersOnly) {
        //: return;
        return;
    }
    //: NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict jsonInteger:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        if ([dict occurrent:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        {
            //: [self refreshSessionTitle:[NSString stringWithFormat:@"%@...",@"正在输入".ntes_localized]];
            [self buttonChild:[NSString stringWithFormat:@"%@...",[[ResourceData sharedInstance] userMorroMsg].with]];

        }
    }


}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)playAudio:(NSString *)filePath progress:(float)value
- (void)playAudio:(NSString *)filePath progress:(float)value
{
}

//: #pragma mark - UISearchControllerDelegate
#pragma mark - UISearchControllerDelegate

//: - (NSString *)sessionTitle
- (NSString *)user
{
    //: if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [ContentLanguageManager getTextWithKey:@"my_computer"];
        return [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] k_removeKitKey]];
    }
    //: return [super sessionTitle];
    return [super user];
}

//: - (NSString *)sessionSubTitle
- (NSString *)of
{
    //: if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [NTESSessionUtil onlineState:self.session.sessionId detail:YES];
        return [LanguageUtil startLength:self.session.sessionId provinceText:YES];
    }
    //: return @"";
    return @"";
}

//: - (void)onTextChanged:(id)sender
- (void)spaceChanged:(id)sender
{
    //: [_notificaionSender sendTypingState:self.session];
    [_notificaionSender collection:self.session];
}


//: #pragma mark - 文本消息
#pragma mark - 文本消息

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers{
- (void)constituentUsers:(NSString *)text parent:(NSArray *)atUsers{
    //: [super onSendText:text atUsers:atUsers];
    [super constituentUsers:text parent:atUsers];
}

//正则过滤，字符串是否是纯数字
//: - (BOOL)filterInputShouldNumber:(NSString *)str
- (BOOL)model:(NSString *)str
{
   //: if (str.length == 0) {
   if (str.length == 0) {
        //: return NO;
        return NO;
    }
    //: NSString *regex = @"[0-9]*";
    NSString *regex = @"[0-9]*";
    //: NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    NSPredicate *pred = [NSPredicate predicateWithFormat:[[ResourceData sharedInstance] main_bubblePath],regex];
    //: if ([pred evaluateWithObject:str]) {
    if ([pred evaluateWithObject:str]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

// 设置成垃圾消息，发送给服务器
//: - (void)hitClientAntispamWithMessage:(NIMMessage *)message type:(NSString *)type
- (void)can:(NIMMessage *)message cell:(NSString *)type
{
    //: NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    //: option.hitClientAntispam = YES;
    option.hitClientAntispam = YES;
    //: message.antiSpamOption = option;
    message.antiSpamOption = option;

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: NSString *nickName = me.userInfo.nickName;
    NSString *nickName = me.userInfo.nickName;

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
        //: @"accid" : emptyString(userID),
        [[ResourceData sharedInstance] m_fellowFormat] : leftEvent(userID),
        //: @"username" : nickName?:@"",
        [[ResourceData sharedInstance] k_processorText] : nickName?:@"",
        //: @"content" : message.text?:@"",
        [[ResourceData sharedInstance] dreamSingleIdent] : message.text?:@"",
        //: @"recid" : self.session.sessionId?:@"",
        [[ResourceData sharedInstance] show_bubbleViewKey] : self.session.sessionId?:@"",
        //: @"type" : [NSString stringWithFormat:@"apple+%@",type],
        [[ResourceData sharedInstance] dream_dataStr] : [NSString stringWithFormat:[[ResourceData sharedInstance] dreamDotBlueContent],type],
        //: @"sessionname" : self.sessionTitle?:@"",
        [[ResourceData sharedInstance] mainEndTitle] : self.user?:@"",
    //: };
    };

    //: [ZCHttpManager refreshForbiddenWordsparams:dic GenerateUser:^(NSDictionary * _Nonnull configDict) {
    [TroublingName description:dic make:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];
}
// 发送的所有消息类型最终 都会走这个 sendMessage方法，所以在这拦截
//: - (void)sendMessage:(NIMMessage *)message
- (void)magnitudeView:(NIMMessage *)message
{
    // 不再群聊 不允许发送消息
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    // 发送频率设置，距离上一次发送消息间隔小于frequency秒，提示 @"发言频次过快，请%ld秒后重试"
    //: if (_intervalTime > 0 && _isSend == NO) {
    if (_intervalTime > 0 && _isSend == NO) {
        //: [self hitClientAntispamWithMessage:message type:@"发言频次"];
        [self can:message cell:[[ResourceData sharedInstance] userBubbleSingleFlameText]];
        //: NSString *title = [NSString stringWithFormat:[ContentLanguageManager getTextWithKey:@"发言频次过快，请%ld秒后重试"],(long)_intervalTime];
        NSString *title = [NSString stringWithFormat:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] appViewerValue]],(long)_intervalTime];
        //: [SVProgressHUD showMessage:title];
        [SVProgressHUD should:title];
        //: return;
        return;
    }
    //: _isSend = NO;
    _isSend = NO;

    // 发送消息的间隔时间 frequency>0 && 文本消息 && 输入不是数字
    //: if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterInputShouldNumber:message.text]) {
    if (!_canSendText && message.messageType == NIMMessageTypeText && ![self model:message.text]) {
        //: [self hitClientAntispamWithMessage:message type:@"不允许文字"];
        [self can:message cell:[[ResourceData sharedInstance] app_backId]];
    }

    //: if ([[NTESBundleSetting sharedConfig] enableLocalAnti] && message.messageType == NIMMessageTypeText)
    if ([[PassageSetting language] infoAnti] && message.messageType == NIMMessageTypeText)
    {
        //: NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        //: checkOption.content = message.text;
        checkOption.content = message.text;
        //: checkOption.replacement = @"*";
        checkOption.replacement = @"*";
        //: NSError *error = nil;
        NSError *error = nil;
        //: NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        //: if (error)
        if (error)
        {
            //: [self.view makeToast:@"本地反垃圾失败".ntes_localized];
            [self.view makeToast:[[ResourceData sharedInstance] mQuarterbackValue].with];
        }
        //: else
        else
        {
            //: switch (result.type) {
            switch (result.type) {
                //: case NIMAntiSpamOperateFileNotExists:
                case NIMAntiSpamOperateFileNotExists:
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalReplace:
                case NIMAntiSpamResultLocalReplace:
                    //: message.text = result.content;
                    message.text = result.content;
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalForbidden:
                case NIMAntiSpamResultLocalForbidden:
                    //: [self.view makeToast:@"** 该消息被屏蔽 **".ntes_localized];
                    [self.view makeToast:[[ResourceData sharedInstance] appSmokeName].with];
                    //: return;
                    return;
                //: case NIMAntiSpamResultServerForbidden:
                case NIMAntiSpamResultServerForbidden:
                {
                    //: [self hitClientAntispamWithMessage:message type:@"反垃圾消息"];
                    [self can:message cell:[[ResourceData sharedInstance] user_creasedSearchId]];
                }
                    //: break;
                    break;
                //: case NIMAntiSpamResultNotHit:
                case NIMAntiSpamResultNotHit:
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
    //: [super sendMessage:message];
    [super magnitudeView:message];
}



//: #pragma mark - NIMInputActionProtocol
#pragma mark - NIMInputActionProtocol

//: - (BOOL)onTapVoiceBtn:(id)sender {
- (BOOL)build:(id)sender {
    //: return _canSendText;
    return _canSendText;
}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (void)onTapMenuItemReply:(ContentMediaItem *)item
- (void)onTapMenuItemReply:(LanguageItem *)item
{
    //: NIMMessage *menuMessage = [self messageForMenu];
    NIMMessage *menuMessage = [self messageForMenu];
    //: if ([self.sessionConfig respondsToSelector:@selector(setThreadMessage:)])
    if ([self.sessionConfig respondsToSelector:@selector(setThreadTable:)])
    {
        //: [self.sessionConfig setThreadMessage:menuMessage];
        [self.sessionConfig setThreadTable:menuMessage];
    }

    //: [self.sessionInputView refreshStatus:NIMInputStatusText];
    [self.sessionInputView nonparasitic:NIMInputStatusText];
    //: [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    //: [self.sessionInputView refreshReplyedContent:menuMessage];
    [self.sessionInputView current:menuMessage];
    //: [self.sessionInputView sizeToFit];
    [self.sessionInputView sizeToFit];
    //: if (self.session.sessionType != NIMSessionTypeP2P &&
    if (self.session.sessionType != NIMSessionTypeP2P &&
        //: menuMessage)
        menuMessage)
    {
        //: [self.sessionInputView addAtItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
        [self.sessionInputView colorInfoItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
    }
}

//: - (void)onTapMenuItemForword:(ContentMediaItem *)item
- (void)onTapMenuItemForword:(LanguageItem *)item
{
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    TipViewController *vc = [[TipViewController alloc]init];
    //: vc.message = [self messageForMenu];
    vc.message = [self messageForMenu];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTapMenuItemMark:(ContentMediaItem *)item
- (void)onTapMenuItemMark:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    //: NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    //: params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    //: params.type = 1;
    params.type = 1;
    //: params.uniqueId = message.messageId.MD5String;
    params.uniqueId = message.messageId.textCell;
    //: [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
    [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:[ContentLanguageManager getTextWithKey:@"收藏失败"]];
            [SVProgressHUD showErrorWithStatus:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] app_fortyLabFormat]]];
            //: return;
            return;
        }
        //: [SVProgressHUD showSuccessWithStatus:[ContentLanguageManager getTextWithKey:@"收藏成功"]];
        [SVProgressHUD showSuccessWithStatus:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] userThirtyValue]]];
    //: }];
    }];
}

//: - (void)onTapMenuItemPin:(ContentMediaItem *)item
- (void)onTapMenuItemPin:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];
    NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"添加失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[[ResourceData sharedInstance] m_messageFormat].with];
            //: return;
            return;
        }
        //: [sself uiPinMessage:message];
        [sself quantityerpretation:message];
    //: }];
    }];
}

//: - (void)onTapMenuItemUnpin:(ContentMediaItem *)item
- (void)onTapMenuItemUnpin:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"取消标记失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[[ResourceData sharedInstance] appAnimalViewMessage].with];
            //: return;
            return;
        }
        //: [sself uiUnpinMessage:message];
        [sself telegram:message];
    //: }];
    }];

}

//: - (void)onTapMenuItemRevoke:(ContentMediaItem *)item
- (void)onTapMenuItemRevoke:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL enableRevokePostscript = [[NTESBundleSetting sharedConfig] enableRevokeMsgPostscript];
    BOOL enableRevokePostscript = [[PassageSetting language] account];
    //: if (enableRevokePostscript) {
    if (enableRevokePostscript) {
        //: [self doShowInputRevokePostscriptAlert:message];
        [self reload:message];
    //: } else {
    } else {
        //: [self doRevokeMessage:message postscript:nil];
        [self nakedOption:message dogEar:nil];
    }
}
///获取UTC时间戳
//: - (NSString *)getNowUTCTimeTimestamp{
- (NSString *)nameTop{
//      NSDate *datenow = [NSDate date];
//      NSTimeZone *zone = [NSTimeZone localTimeZone];
//    // 获取指定时间所在时区与UTC时区的间隔秒数
//    NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
//    return timeSp;

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        //: [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        //: [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
        [formatter setDateFormat:[[ResourceData sharedInstance] appComfortStr]]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
        //设置时区,这个对于时间的处理有时很重要
        //: NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:[[ResourceData sharedInstance] k_etherCountBubbleFormat]];
        //: [formatter setTimeZone:timeZone];
        [formatter setTimeZone:timeZone];
        //: NSDate *datenow = [NSDate date];
        NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];

        //: return timeSp;
        return timeSp;
}


//: - (void)onTapMenuItemReport:(ContentMediaItem *)item
- (void)onTapMenuItemReport:(LanguageItem *)item
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView indexCrop];
}

//: - (void)onTapMenuItemTranslation:(ContentMediaItem *)item
- (void)onTapMenuItemTranslation:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: NSString *time = [self getNowUTCTimeTimestamp];
    NSString *time = [self nameTop];
    //: NSMutableDictionary *param = @{}.mutableCopy;
    NSMutableDictionary *param = @{}.mutableCopy;
    //: param[@"curTime"] = time;
    param[[[ResourceData sharedInstance] show_toilId]] = time;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/getNimCheckSum"] params:param isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[ResourceData sharedInstance] show_internText]] table:param carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[ResourceData sharedInstance] dreamOperationName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[ResourceData sharedInstance] user_animalIdent]];
            //: NSString *checksum = [data newStringValueForKey:@"checksum"];
            NSString *checksum = [data to:[[ResourceData sharedInstance] k_showId]];
            //: NSString *nonce = [data newStringValueForKey:@"nonce"];
            NSString *nonce = [data to:[[ResourceData sharedInstance] showReplyStr]];

            //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
            NSString *lang = leftEvent([NameDefaults argument].language);
            //: if([lang isEqualToString:@"zh"]){
            if([lang isEqualToString:@"zh"]){
                //: lang = @"zh-CHS";
                lang = [[ResourceData sharedInstance] kContainerMsg];
            //: }else if ([lang isEqualToString:@"hant"]){
            }else if ([lang isEqualToString:[[ResourceData sharedInstance] app_customPath]]){
                //: lang = @"zh-CHT";
                lang = [[ResourceData sharedInstance] showToilMsg];
            }
            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: [dict setObject:userID forKey:@"accid"];
            [dict setObject:userID forKey:[[ResourceData sharedInstance] m_fellowFormat]];
            //: [dict setObject:message.text forKey:@"text"];
            [dict setObject:message.text forKey:[[ResourceData sharedInstance] mTableData]];
            //: [dict setObject:lang forKey:@"to"];
            [dict setObject:lang forKey:@"to"];

            //: [ZCHttpManager postWithUrl:@"http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action" checksum:checksum nonce:nonce CurTime:time params:dict success:^(id responseObject) {
            [TroublingName content:[[ResourceData sharedInstance] main_stateStr] untilCurrent:checksum sure:nonce place_strong:time viewFailed:dict ting:^(id responseObject) {

                //: NSDictionary *resultDict = (NSDictionary *)responseObject;
                NSDictionary *resultDict = (NSDictionary *)responseObject;
                //: NSLog(@"resultDict-%@",resultDict);
                //: NSString *code = [resultDict newStringValueForKey:@"code"];
                NSString *code = [resultDict to:[[ResourceData sharedInstance] dreamOperationName]];

                //: if (code.integerValue == 200) {
                if (code.integerValue == 200) {
                    //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
                    NSDictionary *data = [resultDict arrayMust:[[ResourceData sharedInstance] user_animalIdent]];
                    //: NSString *translation = [data newStringValueForKey:@"translation"];
                    NSString *translation = [data to:[[ResourceData sharedInstance] m_frameUrl]];

                    //: message.localExt = @{@"NTESMessageTranslate": translation };
                    message.localExt = @{[[ResourceData sharedInstance] noti_armyFormat]: translation };
                    //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                        //: [self uiUpdateMessage:message];
                        [self refreshKeyHeliogram:message];
                        //: [self.tableView reloadData];
                        [self.tableView reloadData];
                    //: }];
                    }];


                //: }else{
                }else{
                    //: NSString *desc = [resultDict newStringValueForKey:@"desc"];
                    NSString *desc = [resultDict to:[[ResourceData sharedInstance] noti_tagData]];
                    //: [SVProgressHUD showMessage:desc];
                    [SVProgressHUD should:desc];
                }


            //: } failed:^(id responseObject, NSError *error) {
            } recent:^(id responseObject, NSError *error) {
                //: [SVProgressHUD showMessage:error.domain];
                [SVProgressHUD should:error.domain];
            //: }];
            }];

        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
    //: }];
    }];

}

//: - (void)scrollsafelyReloadRowAtToMessage:(NIMMessage *)message
- (void)week:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor canIndex:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

        //: if (indexPath) {
        if (indexPath) {
            //: [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        //: } else {
        } else {
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    }



}


//: - (void)doShowInputRevokePostscriptAlert:(NIMMessage *)message {
- (void)reload:(NIMMessage *)message {
    //: UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"撤回附言"
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:[[ResourceData sharedInstance] mContentId]
                                                                     //: message:nil
                                                                     message:nil
                                                              //: preferredStyle:UIAlertControllerStyleAlert];
                                                              preferredStyle:UIAlertControllerStyleAlert];
    //: [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //: textField.placeholder = @"请输入附言";
        textField.placeholder = [[ResourceData sharedInstance] notiBudgeKey];
    //: }];
    }];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] notiBudgeSymptomIdent]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UITextField *input = alertVC.textFields.firstObject;
        UITextField *input = alertVC.textFields.firstObject;
        //: [weakSelf doRevokeMessage:message postscript:input.text];
        [weakSelf nakedOption:message dogEar:input.text];
    //: }];
    }];
    //: [alertVC addAction:sure];
    [alertVC addAction:sure];
    //: [self presentViewController:alertVC animated:YES completion:nil];
    [self presentViewController:alertVC animated:YES completion:nil];
}

//: - (void)doRevokeMessage:(NIMMessage *)message postscript:(NSString *)postscript{
- (void)nakedOption:(NIMMessage *)message dogEar:(NSString *)postscript{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[[ResourceData sharedInstance] noti_stereoValue]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [[ResourceData sharedInstance] noti_stereoValue]: collapseId ? : @"",
    //: };
    };
    //: NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    //: option.apnsContent = [ContentLanguageManager getTextWithKey:@"撤回一条消息"];
    option.apnsContent = [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] mainScaleTitle]];
    //: option.apnsPayload = payload;
    option.apnsPayload = payload;
    //: option.shouldBeCounted = ![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount];
    option.shouldBeCounted = ![[PassageSetting language] inscription];
    //: option.postscript = postscript;
    option.postscript = postscript;
    //: option.attach = _revokeAttach;
    option.attach = _revokeAttach;
    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
    [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[ContentLanguageManager getTextWithKey:@"发送时间超过2分钟的消息不能被撤回"] delegate:nil cancelButtonTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] m_animalUrl]] delegate:nil cancelButtonTitle:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] notiBudgeSymptomIdent]] otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:[ContentLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"] duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] mGrayMsg]] duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            //: userInfo[@"msg"] = message;
            userInfo[[[ResourceData sharedInstance] mTableEnableValueTitle]] = message;
            //: userInfo[@"postscript"] = postscript;
            userInfo[[[ResourceData sharedInstance] mStateValue]] = postscript;
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNTESDemoRevokeMessageFromMeNotication
            [[NSNotificationCenter defaultCenter] postNotificationName:show_teamValue
                                                                //: object:nil
                                                                object:nil
                                                              //: userInfo:userInfo];
                                                              userInfo:userInfo];

            // 撤回的消息 作为自定义消息发出去
            //: NIMMessage *revocationMessage = [NTESSessionMsgConverter msgWithRevocationMessage:message];
            NIMMessage *revocationMessage = [TingEmptyBubble successMessage:message];
            //: [weakSelf sendMessage:revocationMessage];
            [weakSelf magnitudeView:revocationMessage];
        }
    //: }];
    }];
}

//: - (void)onRevokeMessageFromMe:(NSNotification *)note {
- (void)withPin:(NSNotification *)note {
    //: NIMMessage *message = note.userInfo[@"msg"];
    NIMMessage *message = note.userInfo[[[ResourceData sharedInstance] mTableEnableValueTitle]];
    //: NSString *postscript = note.userInfo[@"postscript"];
    NSString *postscript = note.userInfo[[[ResourceData sharedInstance] mStateValue]];
    //: if (message) {
    if (message) {
        //: ContentMessageModel *model = [self uiDeleteMessage:message];
        PossibilityMessageStyle *model = [self deleteNameMessage:message];
        //主动撤回场景下，将之前填充的attach内容再次填充保存
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevokedLocal:postscript]
        NIMMessage *tip = [TingEmptyBubble tingChange:[LanguageUtil on:postscript]
                                                 //: revokeAttach:_revokeAttach
                                                 show:_revokeAttach
                                            //: revokeCallbackExt:nil];
                                            tag:nil];
        //: tip.timestamp = model.messageTime;
        tip.timestamp = model.messageTime;
        //[self uiInsertMessages:@[tip]];//撤回消息不显示

        //: tip.timestamp = message.timestamp;
        tip.timestamp = message.timestamp;
        // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
    }
}

//: - (void)onTapMenuItemDelete:(ContentMediaItem *)item
- (void)onTapMenuItemDelete:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [PassageSetting language].drop;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[[ResourceData sharedInstance] k_backgroundValue]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf deleteNameMessage:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: BOOL isDeleteFromDB = [NTESBundleSetting sharedConfig].isDeleteMsgFromDB;
        BOOL isDeleteFromDB = [PassageSetting language].with;
        //: NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        //: option.removeFromDB = isDeleteFromDB;
        option.removeFromDB = isDeleteFromDB;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        //: [self uiDeleteMessage:message];
        [self deleteNameMessage:message];
    }
}

//: - (void)onTapMenuItemMutiSelect:(ContentMediaItem *)item
- (void)onTapMenuItemMutiSelect:(LanguageItem *)item
{
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self addState:NIMKitSessionStateSelect];
}

//: - (void)onTapMenuItemAudio2Text:(ContentMediaItem *)item
- (void)onTapMenuItemAudio2Text:(LanguageItem *)item
{

}

//: #pragma mark - 消息发送时间截获
#pragma mark - 消息发送时间截获
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (error.code == NIMRemoteErrorCodeInBlackList)
    if (error.code == NIMRemoteErrorCodeInBlackList)
    {
        //消息打上拉黑拒收标记，方便 UI 显示
        //: message.localExt = @{@"NTESMessageRefusedTag":@(true)};
        message.localExt = @{[[ResourceData sharedInstance] mainPerfectlyUrl]:@(true)};
        //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];

        //插入一条 Tip 提示
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"消息已发送，但对方拒收".ntes_localized];
        NIMMessage *tip = [TingEmptyBubble tap:[[ResourceData sharedInstance] noti_morroUrl].with];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 文本消息 && 当前用户被拉黑 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
            //: [self hitClientAntispamWithMessage:message type:@"被拉黑"];
            [self can:message cell:[[ResourceData sharedInstance] dream_relationLestTextData]];
        }

    //: } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
    } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"您已被禁言"];
        NIMMessage *tip = [TingEmptyBubble tap:[[ResourceData sharedInstance] user_contentStr]];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: [self hitClientAntispamWithMessage:message type:@"被禁言"];
            [self can:message cell:[[ResourceData sharedInstance] dream_perfectlyFormat]];
        }

    }
    //: else if (error.code == NIMRemoteErrorCodeTeamAccessError) {
    else if (error.code == NIMRemoteErrorCodeTeamAccessError) {

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            //: [self hitClientAntispamWithMessage:message type:@""];
            [self can:message cell:@""];
        }

    }
    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//: #pragma mark - 录音事件
#pragma mark - 录音事件
//: - (void)onRecordFailed:(NSError *)error
- (void)timeFailed:(NSError *)error
{
    //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"luyinshibai"] duration:2 position:CSToastPositionCenter];
    [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] main_operationValue]] duration:2 position:CSToastPositionCenter];
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)greenish:(NSString *)filepath
{
    //: NSURL *URL = [NSURL fileURLWithPath:filepath];
    NSURL *URL = [NSURL fileURLWithPath:filepath];
    //: AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    //: CMTime time = urlAsset.duration;
    CMTime time = urlAsset.duration;
    //: CGFloat mediaLength = CMTimeGetSeconds(time);
    CGFloat mediaLength = CMTimeGetSeconds(time);
    //: return mediaLength > 2;
    return mediaLength > 2;
}

//: - (void)showRecordFileNotSendReason
- (void)cell
{
    //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"luyintaiduan"] duration:0.2f position:CSToastPositionCenter];
    [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] mainUsStr]] duration:0.2f position:CSToastPositionCenter];
}

//: #pragma mark - Cell事件
#pragma mark - Cell事件
//: - (BOOL)onTapCell:(ContentKitEvent *)event
- (BOOL)bringHome:(KitEvent *)event
{
    //: BOOL handled = [super onTapCell:event];
    BOOL handled = [super bringHome:event];
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;

    //: if ([eventName isEqualToString:ContentKitEventNameTapContent])
    if ([eventName isEqualToString:user_quickCommentValue])
    {
        //: NIMMessage *message = event.messageModel.message;
        NIMMessage *message = event.messageModel.message;
        //: NSDictionary *actions = [self cellActions];
        NSDictionary *actions = [self orientation];
        //: NSString *value = actions[@(message.messageType)];
        NSString *value = actions[@(message.messageType)];
        //: if (value) {
        if (value) {
            //: SEL selector = NSSelectorFromString(value);
            SEL selector = NSSelectorFromString(value);
            //: if (selector && [self respondsToSelector:selector]) {
            if (selector && [self respondsToSelector:selector]) {
                //: SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                //: handled = YES;
                handled = YES;
            }
        }
    }
    //: else if ([eventName isEqualToString:ContentKitEventNameTapRepliedContent])
    else if ([eventName isEqualToString:k_contentFormat])
    {
//        handled = YES;
//        PossibilityMessageStyle *model = event.messageModel;
//        NIMMessage *message = model.parentMessage;
//        if (!message)
//        {
//            [self.view makeToast:@"父消息不存在".ntes_localized];
//            return handled;
//        }
//        LightViewController *vc = [[LightViewController alloc] initWithThreadMessage:message];
//        [self.navigationController pushViewController:vc animated:YES];
    }
    //: else if([eventName isEqualToString:ContentKitEventNameTapLabelLink])
    else if([eventName isEqualToString:m_styleIdent])
    {
        //: NSString *link = event.data;
        NSString *link = event.data;
        //: [self openSafari:link];
        [self safariIcon:link];
        //: handled = YES;
        handled = YES;
    }

    //: if (!handled) {
    if (!handled) {
        //: NSAssert(0, @"invalid event");
        NSAssert(0, [[ResourceData sharedInstance] showDateMsg]);
    }
    //: return handled;
    return handled;
}

//: - (BOOL)onTapAvatar:(NIMMessage *)message{
- (BOOL)forwardsing:(NIMMessage *)message{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self colorTitle:message];
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    BarViewController *vc = [[BarViewController alloc] initWithScale:userId];

    //进入個人名片
    //: if (self.canMemberInfo) {
    if (self.canMemberInfo) {
        //: vc.teamSetingConfig = self.teamSettingConfig;
        vc.teamSetingConfig = self.teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //: return YES;
    return YES;
}


//: - (BOOL)onLongPressAvatar:(NIMMessage *)message
- (BOOL)showing:(NIMMessage *)message
{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self colorTitle:message];
    //: NIMSessionType sessionType = self.session.sessionType;
    NIMSessionType sessionType = self.session.sessionType;
    //: if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
    if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
        //: && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;
        //: option.forbidaAlias = YES;
        option.forbidaAlias = YES;

        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:userId option:option].showName;
        NSString *nick = [[UserKit totalSend].provider color:userId image:option].showName;
        //: NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];
        NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];

        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        OriginLengthReason *item = [[OriginLengthReason alloc] init];
        //: item.uid = userId;
        item.uid = userId;
        //: item.name = nick;
        item.name = nick;
        //: [self.sessionInputView.atCache addAtItem:item];
        [self.sessionInputView.atCache worsted:item];

        //: [self.sessionInputView.toolBar insertText:text];
        [self.sessionInputView.toolBar table:text];
    }
    //: return YES;
    return YES;
}

//: - (BOOL)onPressReadLabel:(NIMMessage *)message
- (BOOL)doing:(NIMMessage *)message
{
    //: return YES;
    return YES;
}

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message {
- (void)shouldTeam:(BOOL)selected mechanicalMan:(NIMMessage *)message {
    //: if (!_selectedMessages) {
    if (!_selectedMessages) {
        //: _selectedMessages = [NSMutableArray array];
        _selectedMessages = [NSMutableArray array];
    }
    //: if (selected) {
    if (selected) {
        //: [_selectedMessages addObject:message];
        [_selectedMessages addObject:message];
    //: } else {
    } else {
        //: [_selectedMessages removeObject:message];
        [_selectedMessages removeObject:message];
    }
}

//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)alongs:(NIMMessage *)message
{
    //: NTESThreadTalkSessionViewController *vc = [[NTESThreadTalkSessionViewController alloc] initWithThreadMessage:message];
    LightViewController *vc = [[LightViewController alloc] initWithView:message];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (NSString *)messageSendSource:(NIMMessage *)message {
- (NSString *)colorTitle:(NIMMessage *)message {
    //: return message.from;
    return message.from;
}

//: #pragma mark - Cell Actions
#pragma mark - Cell Actions
//: - (void)showImage:(NIMMessage *)message
- (void)showImage:(NIMMessage *)message
{
    //: NIMImageObject *object = message.messageObject;
    NIMImageObject *object = message.messageObject;
    //: NTESGalleryItem *item = [[NTESGalleryItem alloc] init];
    GalleryName *item = [[GalleryName alloc] init];
    //: item.thumbPath = [object thumbPath];
    item.thumbPath = [object thumbPath];
    //: item.imageURL = [object url];
    item.imageURL = [object url];
    //: item.name = [object displayName];
    item.name = [object displayName];
    //: item.itemId = [message messageId];
    item.itemId = [message messageId];
    //: item.size = [object size];
    item.size = [object size];
    //: item.imagePath = [object path];
    item.imagePath = [object path];

    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[SessionSizeViewController class]]? self.session : nil;


    //: ZMONGalleryImgViewController *vc = [[ZMONGalleryImgViewController alloc] init];
    WithAudienceViewController *vc = [[WithAudienceViewController alloc] init];
    //: vc.imageURL = [object url];
    vc.imageURL = [object url];
    //: vc.imagePath = [object path];
    vc.imagePath = [object path];
    //: vc.message = message;
    vc.message = message;
//    NTESGalleryViewController *vc = [[NTESGalleryViewController alloc] initWithItem:item session:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];


//    if(![[NSFileManager defaultManager] fileExistsAtPath:object.thumbPath]){
//        //如果缩略图下跪了，点进看大图的时候再去下一把缩略图
//        __weak typeof(self) wself = self;
//        [[NIMSDK sharedSDK].resourceManager download:object.thumbUrl filepath:object.thumbPath progress:nil completion:^(NSError *error) {
//            if (!error) {
//                [wself uiUpdateMessage:message];
//            }
//        }];
//    }
}

//: - (void)showVideo:(NIMMessage *)message
- (void)showVideo:(NIMMessage *)message
{
    //: NIMVideoObject *object = message.messageObject;
    NIMVideoObject *object = message.messageObject;
    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[SessionSizeViewController class]]? self.session : nil;

    //: NTESVideoViewItem *item = [[NTESVideoViewItem alloc] init];
    BottomTitle *item = [[BottomTitle alloc] init];
    //: item.path = object.path;
    item.path = object.path;
    //: item.url = object.url;
    item.url = object.url;
    //: item.session = session;
    item.session = session;
    //: item.itemId = object.message.messageId;
    item.itemId = object.message.messageId;

    //: NTESVideoViewController *playerViewController = [[NTESVideoViewController alloc] initWithVideoViewItem:item];
    ColdShoulderViewController *playerViewController = [[ColdShoulderViewController alloc] initWithComment:item];
    //: playerViewController.message = message;
    playerViewController.message = message;
    //: [self.navigationController pushViewController:playerViewController animated:YES];
    [self.navigationController pushViewController:playerViewController animated:YES];
    //: if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
    if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
        //如果封面图下跪了，点进视频的时候再去下一把封面图
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
        [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself uiUpdateMessage:message];
                [wself refreshKeyHeliogram:message];
            }
        //: }];
        }];
    }
}

//: - (void)showCustom:(NIMMessage *)message
- (void)showCustom:(NIMMessage *)message
{
   //普通的自定义消息点击事件可以在这里做哦~

    //: NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[[ResourceData sharedInstance] dream_dataStr]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[[ResourceData sharedInstance] user_animalIdent]];
            //: if (type == 105) {
            if (type == 105) {
                //: NSString *type = [datatyl stringValueForKey:@"type" defaultValue:@"0"];
                NSString *type = [datatyl wearer:[[ResourceData sharedInstance] dream_dataStr] bit:@"0"];
                //: NSString *personCardId = [datatyl objectForKey:@"personCardId"];
                NSString *personCardId = [datatyl objectForKey:[[ResourceData sharedInstance] kInfoTitle]];
                //: if ([type boolValue]) {
                if ([type boolValue]) {
                    //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
//                    if (!team) {
//                        [self.view makeToast:LangKey(@"group_info_activity_group_already_jiesan") duration:2.0 position:CSToastPositionCenter];
//                        return;
//                    }
                    //: if (isMyTeam) {
                    if (isMyTeam) {
                        //: NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];
                        NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];

//                        ToSize *option = [[ToSize alloc] init];
//                        option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//                        CardViewController *vc = [[TarotCardViewController alloc] initWithTeam:team session:session option:option];
//                        vc.delegate = self;
//                        [self.navigationController pushViewController:vc animated:YES];

                        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                        SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    //: } else {
                    } else {
                        //: [self onJionTeamWithTeam:team];
                        [self alongCropUnit:team];
                    }
                //: } else {
                } else {

                    //: if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                    if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:personCardId];
                        BarViewController *vc = [[BarViewController alloc] initWithScale:personCardId];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    }

                }
            }
        }
    }
}



//: - (void)onJionTeamWithTeam:(NIMTeam *)team {
- (void)alongCropUnit:(NIMTeam *)team {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if(team.joinMode == NIMTeamJoinModeNoAuth) {
    if(team.joinMode == NIMTeamJoinModeNoAuth) {
        //: [self didApplyToTeamWithMessage:@"" WithTeam:team];
        [self keyCell:@"" ghb:team];
    //: } else {
    } else {
        //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[ContentLanguageManager getTextWithKey:@"activity_friend_verify_info"] delegate:nil cancelButtonTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] dreamTableContainerName]] delegate:nil cancelButtonTitle:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] notiBudgeSymptomIdent]] otherButtonTitles:nil, nil];
        //: alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
        [alert sizeHandler:^(NSInteger index) {
            //: NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            //: [wself didApplyToTeamWithMessage:message WithTeam:team];
            [wself keyCell:message ghb:team];
        //: }];
        }];
    }

}

//: - (void)handleApplyToTeam:(NSError *)error status:(NIMTeamApplyStatus)status WithId:(NSString *)cardId{
- (void)image:(NSError *)error pressTo:(NIMTeamApplyStatus)status color:(NSString *)cardId{
    //: if (!error) {
    if (!error) {
        //: switch (status) {
        switch (status) {
            //: case NIMTeamApplyStatusAlreadyInTeam:{
            case NIMTeamApplyStatusAlreadyInTeam:{
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
                //: break;
                break;
            }
            //: case NIMTeamApplyStatusWaitForPass:
            case NIMTeamApplyStatusWaitForPass:
                //: [self.view makeToast:@"申请成功，等待验证".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[[ResourceData sharedInstance] show_grayBackValue].resign duration:2.0 position:CSToastPositionCenter];
            //: default:
            default:
                //: break;
                break;
        }
    //: }else{
    }else{
        //: switch (error.code) {
        switch (error.code) {
            //: case NIMRemoteErrorCodeTeamAlreadyIn:
            case NIMRemoteErrorCodeTeamAlreadyIn:
            {
                //                [self.view makeToast:@"已经在群里" duration:2.0 position:CSToastPositionCenter];
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                SessionSizeViewController *vc = [[SessionSizeViewController alloc] initWithNameExtra:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            }
                //: break;
                break;
            //: default:
            default:
                //: [self.view makeToast:@"群申请失败".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[[ResourceData sharedInstance] main_valueUrl].resign duration:2.0 position:CSToastPositionCenter];
                //: break;
                break;
        }
    }
}

//: - (void)didApplyToTeamWithMessage:(NSString *)message WithTeam:(NIMTeam *)team {
- (void)keyCell:(NSString *)message ghb:(NIMTeam *)team {

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: [LEEAlert alert].config
    [TeamModeAlert shared].config
        //: .LeeAddTitle(^(UILabel *label) {
        .LeeAddTitle(^(UILabel *label) {
            //: NSString *msg = [NSString stringWithFormat:@"%@: %@",[ContentLanguageManager getTextWithKey:@"message_helper_apply_to_group"],team.teamName];
            NSString *msg = [NSString stringWithFormat:@"%@: %@",[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] dreamTouchTitle]],team.teamName];
            //: label.text = msg;
            label.text = msg;
            //: label.textColor = [UIColor grayColor];
            label.textColor = [UIColor grayColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(DisableMessage *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;
            //: action.title = [ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"];
            action.title = [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] appAccountText]];//@"取消"
            //: action.titleColor = [UIColor grayColor];
            action.titleColor = [UIColor grayColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

            //: };
            };
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(DisableMessage *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;
            //: action.title = [ContentLanguageManager getTextWithKey:@"contact_tag_fragment_sure"]; 
            action.title = [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] notiBudgeSymptomIdent]]; //@"确定";
            //: action.titleColor = [UIColor redColor];
            action.titleColor = [UIColor redColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

                //: [SVProgressHUD show];
                [SVProgressHUD show];
                //: [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                                                    //: message:message
                                                    message:message
                                                 //: completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                                                 completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: [wself handleApplyToTeam:error status:applyStatus WithId:team.teamId];
                    [wself image:error pressTo:applyStatus color:team.teamId];
                //: }];
                }];
            //: };
            };
        //: })
        })
        //: .LeeHeaderColor([UIColor whiteColor])
        .LeeHeaderColor([UIColor whiteColor])
        //: .LeeShow();
        .LeeShow();
}


//: - (void)openSafari:(NSString *)link
- (void)safariIcon:(NSString *)link
{
    //: NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    //: if (components)
    if (components)
    {
        //: if (!components.scheme)
        if (!components.scheme)
        {
            //默认添加 http
            //: components.scheme = @"http";
            components.scheme = [[ResourceData sharedInstance] dreamArmyContentKey];
        }
        //: [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
        [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
    }
}


//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)words:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    BarViewController *vc = [[BarViewController alloc] initWithScale:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}


//: - (void)showDeleteSureVCWithTitle:(NSString *)title confirmBlock:(void(^)(void))confirmBlock {
- (void)viewMargin:(NSString *)title emptyBlock:(void(^)(void))confirmBlock {
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".with style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: if (confirmBlock) {
        if (confirmBlock) {
            //: confirmBlock();
            confirmBlock();
        }
    //: }];
    }];
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".ntes_localized
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".with
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [sheet addAction:sure];
    [sheet addAction:sure];
    //: [sheet addAction:cancel];
    [sheet addAction:cancel];
    //: [self presentViewController:sheet animated:YES completion:nil];
    [self presentViewController:sheet animated:YES completion:nil];
}


//- (void)enterTeamCard:(id)sender {
//    CardViewController *vc = nil;
//    ToSize *option = [[ToSize alloc] init];
//    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//
//    if (self.session.sessionType == NIMSessionTypeTeam) {
//        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
//        if(team.type == NIMTeamTypeAdvanced){
//            vc = [[TarotCardViewController alloc] initWithTeam:team
//                                                                 session:self.session
//                                                                  option:option];
//            vc.delegate = self;
//        }
//    }
//    if (vc) {
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//}

//: - (void)enterSuperTeamCard:(id)sender{
- (void)camera:(id)sender{

}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (NSArray *)menusItems:(NIMMessage *)message
- (NSArray *)user:(NIMMessage *)message
{
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: NSArray *defaultItems = [super menusItems:message];
    NSArray *defaultItems = [super user:message];
    //: if (defaultItems) {
    if (defaultItems) {
        //: [items addObjectsFromArray:defaultItems];
        [items addObjectsFromArray:defaultItems];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([LanguageUtil page:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[ContentLanguageManager getTextWithKey:@"转发"] action:@selector(forwardMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[MatronymicPath colorStreetwise:@"转发"] action:@selector(ats:)]];
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".ntes_localized action:@selector(multiSelect:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".with action:@selector(billOfFare:)]];
    }

    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([LanguageUtil wire:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[ContentLanguageManager getTextWithKey:@"撤回"] action:@selector(revokeMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[MatronymicPath colorStreetwise:@"撤回"] action:@selector(eying:)]];
    }

    //: return items;
    return items;

}

//: - (void)cancelMessage:(id)sender {
- (void)value:(id)sender {
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
    [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
}

//: - (void)audio2Text:(id)sender
- (void)signalBubble:(id)sender
{
//    NIMMessage *message = [self messageForMenu];
//    __weak typeof(self) wself = self;
//    NTESAudio2TextViewController *vc = [[NTESAudio2TextViewController alloc] initWithMessage:message];
//    vc.completeHandler = ^(void){
//        [wself uiUpdateMessage:message];
//    };
//    [self presentViewController:vc
//                       animated:YES
//                     completion:nil];
}

//: - (void)deleteMsg:(id)sender
- (void)appearance:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [PassageSetting language].drop;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[[ResourceData sharedInstance] k_backgroundValue]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf deleteNameMessage:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: [self uiDeleteMessage:message];
        [self deleteNameMessage:message];
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
    }

}

//: #pragma mark - 转发
#pragma mark - 转发
//: - (void)doMergerForwardToSession:(NIMSession *)session {
- (void)must:(NIMSession *)session {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NTESMergeForwardTask *task = [_mergeForwardSession forwardTaskWithMessages:_selectedMessages process:nil completion:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
    OriginSendTask *task = [_mergeForwardSession providerShould:_selectedMessages image:nil titleApp:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"%@：%zd",@"消息合并转发失败".ntes_localized, error.code];
            NSString *msg = [NSString stringWithFormat:@"%@：%zd",[[ResourceData sharedInstance] app_startMessage].with, error.code];
            //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: [weakSelf forwardMessage:message toSession:session];
            [weakSelf signaling:message frontwards:session];
        }
    //: }];
    }];
    //: [task resume];
    [task changeInput];
}

//: - (void)switchUIWithSessionState:(NIMKitSessionState)state {
- (void)addState:(NIMKitSessionState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMKitSessionStateSelect:
        case NIMKitSessionStateSelect:
        {
            //: [self setupSelectedNav];
            [self textOption];
            //: [self setSessionState:NIMKitSessionStateSelect];
            [self setTo:NIMKitSessionStateSelect];
            //: [self.view addSubview:self.mulSelectedSureBar];
            [self.view addSubview:self.mulSelectedSureBar];
            //: break;
            break;
        }
        //: case NIMKitSessionStateNormal:
        case NIMKitSessionStateNormal:
        //: default:
        default:
        {
            //: [self.mulSelectedSureBar removeFromSuperview];
            [self.mulSelectedSureBar removeFromSuperview];
            //: [self setSessionState:NIMKitSessionStateNormal];
            [self setTo:NIMKitSessionStateNormal];
//            [self setupNormalNav];
            //: _selectedMessages = nil;
            _selectedMessages = nil;
            //: break;
            break;
        }
    }
}

//: - (void)cancelSelected:(id)sender {
- (void)byTouch:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
    [self addState:NIMKitSessionStateNormal];
}

//: - (void)confirmSelected:(id)sender {
- (void)keyEmpty:(id)sender {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
    [self range:^(NIMSession *targetSession) {
        //转发批量消息
        //: [weakSelf doMergerForwardToSession:targetSession];
        [weakSelf must:targetSession];
        //返回正常页面
        //: [weakSelf switchUIWithSessionState:NIMKitSessionStateNormal];
        [weakSelf addState:NIMKitSessionStateNormal];
    //: }];
    }];
}

//: - (void)confirmDelete:(id)sender
- (void)torsoUpwardlyValue:(id)sender
{
    //: [self showDeleteSureVCWithTitle:@"确定删除？".ntes_localized confirmBlock:^{
    [self viewMargin:[[ResourceData sharedInstance] userTableTitle].with emptyBlock:^{
        //: [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
        [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
                                                              //: exts: nil
                                                              exts: nil
                                                        //: completion:^(NSError * _Nullable error) {
                                                        completion:^(NSError * _Nullable error) {
            //: [self.view makeToast:error.localizedDescription ?: @"删除成功".ntes_localized];
            [self.view makeToast:error.localizedDescription ?: [[ResourceData sharedInstance] appStereoValue].with];
            //: if (!error) {
            if (!error) {
                //: [self.interactor resetMessages:^(NSError *error) {
                [self.interactor messages:^(NSError *error) {
                    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
                    [self addState:NIMKitSessionStateNormal];
                //: }];
                }];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (void)multiSelect:(id)sender {
- (void)billOfFare:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self addState:NIMKitSessionStateSelect];
}

//: - (void)forwardMessage:(id)sender
- (void)ats:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: message.setting.teamReceiptEnabled = NO;
    message.setting.teamReceiptEnabled = NO;


//    __weak typeof(self) weakSelf = self;
//    [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
//        [weakSelf forwardMessage:message toSession:targetSession];
//    }];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    BottomBar *config = [[BottomBar alloc] init];
    //: config.needMutiSelected = NO;
    config.needMutiSelected = NO;
    //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
    TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
    //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
    vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        //: NSString *userId = array.firstObject;
        NSString *userId = array.firstObject;
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [self forwardMessage:message toSession:session];
        [self signaling:message frontwards:session];
    //: };
    };
    //: [vc show];
    [vc frame];
}

//: - (void)selectForwardSessionCompletion:(void (^)(NIMSession *targetSession))completion {
- (void)range:(void (^)(NIMSession *targetSession))completion {
    //: UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[ContentLanguageManager getTextWithKey:@"选择会话类型"] delegate:nil cancelButtonTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] destructiveButtonTitle:nil otherButtonTitles:[ContentLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"], [ContentLanguageManager getTextWithKey:@"contact_fragment_group"], [ContentLanguageManager getTextWithKey:@"message_super_team"], nil];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] mArmyLabFormat]] delegate:nil cancelButtonTitle:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] appAccountText]] destructiveButtonTitle:nil otherButtonTitles:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] show_contentStr]], [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] appGlobalMsg]], [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] m_toilMsg]], nil];
    //: [sheet showInView:self.view completionHandler:^(NSInteger index) {
    [sheet visible:self.view containerHandler:^(NSInteger index) {
        //: switch (index) {
        switch (index) {
            //: case 0:{
            case 0:{
                //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
                BottomBar *config = [[BottomBar alloc] init];
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
                TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *userId = array.firstObject;
                    NSString *userId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc frame];
            }
                //: break;
                break;
            //: case 1:{
            case 1:{
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                ArrayConfig *config = [[ArrayConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
                TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc frame];
            }
                //: break;
                break;
            //: case 2: {
            case 2: {
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                ArrayConfig *config = [[ArrayConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
                TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc frame];
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}


//: - (void)revokeMessage:(id)sender
- (void)eying:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[[ResourceData sharedInstance] noti_stereoValue]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [[ResourceData sharedInstance] noti_stereoValue]: collapseId ? : @"",
    //: };
    };

    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message
    [[NIMSDK sharedSDK].chatManager revokeMessage:message
                                      //: apnsContent:@"撤回一条消息"
                                      apnsContent:[[ResourceData sharedInstance] mainScaleTitle]
                                      //: apnsPayload:payload
                                      apnsPayload:payload
                                  //: shouldBeCounted:![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount]
                                  shouldBeCounted:![[PassageSetting language] inscription]
                                         //: completion:^(NSError * _Nullable error)
                                         completion:^(NSError * _Nullable error)
    {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"发送时间超过2分钟的消息，不能被撤回".ntes_localized delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[[ResourceData sharedInstance] dreamDrawStr].with delegate:nil cancelButtonTitle:@"确定".with otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"消息撤回失败，请重试".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[[ResourceData sharedInstance] showSizeTagUrl].with duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: ContentMessageModel *model = [weakSelf uiDeleteMessage:message];
            PossibilityMessageStyle *model = [weakSelf deleteNameMessage:message];
            //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:nil]];
            NIMMessage *tip = [TingEmptyBubble tap:[LanguageUtil takeHome:nil]];
            //: tip.timestamp = model.messageTime;
            tip.timestamp = model.messageTime;
            //[weakSelf uiInsertMessages:@[tip]];//撤回消息不显示

            //: tip.timestamp = message.timestamp;
            tip.timestamp = message.timestamp;
            // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
            //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
            [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
        }
    //: }];
    }];
}

 //: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session
 - (void)signaling:(NIMMessage *)message frontwards:(NIMSession *)session
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[UserKit totalSend] color:session.sessionId image:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[UserKit totalSend] search:session.sessionId speedy:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[UserKit totalSend] statusOption:session.sessionId mergeOf:nil].showName;
    }
    //: else {
    else {
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [ContentLanguageManager getTextWithKey:@"watch_multiretweet_activity_confirm_forwarded_to"], name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] show_enableKey]], name];
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"确认转发".ntes_localized message:tip delegate:nil cancelButtonTitle:@"取消".ntes_localized otherButtonTitles:@"确认".ntes_localized, nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[ResourceData sharedInstance] noti_armyPath].with message:tip delegate:nil cancelButtonTitle:@"取消".with otherButtonTitles:@"确认".with, nil];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert sizeHandler:^(NSInteger index) {
        //: if(index == 1)
        if(index == 1)
        {
            //: NSError *error = nil;
            NSError *error = nil;
            //: if (message.session) {
            if (message.session) {
                //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            }

            //: if (error) {
            if (error) {
                //: NSString *msg = [NSString stringWithFormat:@"%@.code:%zd", @"转发失败".ntes_localized, error.code];
                NSString *msg = [NSString stringWithFormat:[[ResourceData sharedInstance] kDotName], [[ResourceData sharedInstance] noti_grayBlueName].with, error.code];
                //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"已发送".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[[ResourceData sharedInstance] main_verticalFormat].with duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}


//: - (BOOL)checkRTSCondition
- (BOOL)latissimusDorsi
{
    //: BOOL result = YES;
    BOOL result = YES;

    //: if (![[Reachability reachabilityForInternetConnection] isReachable])
    if (![[Reachability reachabilityForInternetConnection] isReachable])
    {
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] main_textKey]] duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    {
        //: [self.view makeToast:@"不能和自己通话哦".ntes_localized duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[[ResourceData sharedInstance] dream_searchId].with duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] noti_onKey]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: if (self.session.sessionType == NIMSessionTypeSuperTeam)
    if (self.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] noti_onKey]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: return result;
    return result;
}

//: - (NSDictionary *)cellActions
- (NSDictionary *)orientation
{
    //: static NSDictionary *actions = nil;
    static NSDictionary *actions = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: actions = @{@(NIMMessageTypeImage) : @"showImage:",
        actions = @{@(NIMMessageTypeImage) : [[ResourceData sharedInstance] dreamValueKey],
                    //: @(NIMMessageTypeVideo) : @"showVideo:",
                    @(NIMMessageTypeVideo) : [[ResourceData sharedInstance] kImageFormat],
                    //: @(NIMMessageTypeLocation) : @"showLocation:",
                    @(NIMMessageTypeLocation) : [[ResourceData sharedInstance] mainSumUrl],
                    //: @(NIMMessageTypeFile) : @"showFile:",
                    @(NIMMessageTypeFile) : [[ResourceData sharedInstance] show_textLineMsg],
                    //: @(NIMMessageTypeCustom): @"showCustom:"};
                    @(NIMMessageTypeCustom): [[ResourceData sharedInstance] userShowMsg]};
    //: });
    });
    //: return actions;
    return actions;
}

//: - (ContentKitMediaFetcher *)mediaFetcher
- (ArrayFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[ContentKitMediaFetcher alloc] init];
        _mediaFetcher = [[ArrayFetcher alloc] init];
        //: _mediaFetcher.limit = 1;
        _mediaFetcher.limit = 1;
        //: _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//- (void)setupNormalNav {
//    
//    UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterTeamCard setImage:[UIImage imageNamed:@"icon_session_info_pressed"] forState:UIControlStateHighlighted];
//    [enterTeamCard sizeToFit];
//    UIBarButtonItem *enterTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterTeamCard];
//
//    UIButton *enterSuperTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterSuperTeamCard addTarget:self action:@selector(enterSuperTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterSuperTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterSuperTeamCard sizeToFit];
//    UIBarButtonItem *enterSuperTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterSuperTeamCard];
//
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
//    [infoBtn setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [infoBtn sizeToFit];
//    UIBarButtonItem *enterUInfoItem = [[UIBarButtonItem alloc] initWithCustomView:infoBtn];
//
//    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [historyBtn addTarget:self action:@selector(enterHistory:) forControlEvents:UIControlEventTouchUpInside];
//    [historyBtn setImage:[UIImage imageNamed:@"icon_history_normal"] forState:UIControlStateNormal];
//    [historyBtn sizeToFit];
//    //UIBarButtonItem *historyButtonItem = [[UIBarButtonItem alloc] initWithCustomView:historyBtn];
//
//    enterTeamCardItem.tintColor = [UIColor whiteColor];
//    enterUInfoItem.tintColor = [UIColor whiteColor];
//    enterSuperTeamCardItem.tintColor = [UIColor whiteColor];
//
//    if (self.session.sessionType == NIMSessionTypeTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterTeamCardItem];
//    }
//    else if (self.session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterSuperTeamCardItem];
//    }
//    else if(self.session.sessionType == NIMSessionTypeP2P)
//    {
//        if ([self.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
//        {
//            //self.navigationItem.rightBarButtonItems = @[historyButtonItem];
//        }
//        else
//        {
//            self.navigationItem.rightBarButtonItems = @[enterUInfoItem];
//        }
//    }
//    self.navigationItem.leftBarButtonItem.customView.hidden = NO;
//    self.navigationItem.hidesBackButton = NO;
//    [self.mulSelectCancelBtn removeFromSuperview];
//}

//: - (void)setupSelectedNav {
- (void)textOption {
    //: self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.rightBarButtonItems = nil;
    //: self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    //: self.navigationItem.hidesBackButton = YES;
    self.navigationItem.hidesBackButton = YES;
    //: [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
    [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
}

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: return !self.currentSingleSnapView;
    return !self.currentSingleSnapView;
}

//: - (NTESMulSelectFunctionBar *)mulSelectedSureBar {
- (MobileView *)mulSelectedSureBar {
    //: if (!_mulSelectedSureBar) {
    if (!_mulSelectedSureBar) {
        //: _mulSelectedSureBar = [[NTESMulSelectFunctionBar alloc] initWithFrame:self.sessionInputView.frame];
        _mulSelectedSureBar = [[MobileView alloc] initWithFrame:self.sessionInputView.frame];
        //: [_mulSelectedSureBar.sureBtn addTarget:self
        [_mulSelectedSureBar.sureBtn addTarget:self
                                        //: action:@selector(confirmSelected:)
                                        action:@selector(keyEmpty:)
                              //: forControlEvents:UIControlEventTouchUpInside];
                              forControlEvents:UIControlEventTouchUpInside];
        //: [_mulSelectedSureBar.deleteButton addTarget:self
        [_mulSelectedSureBar.deleteButton addTarget:self
                                             //: action:@selector(confirmDelete:)
                                             action:@selector(torsoUpwardlyValue:)
                                   //: forControlEvents:UIControlEventTouchUpInside];
                                   forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _mulSelectedSureBar;
    return _mulSelectedSureBar;
}

//: - (UIButton *)mulSelectCancelBtn {
- (UIButton *)mulSelectCancelBtn {
    //: if (!_mulSelectCancelBtn) {
    if (!_mulSelectCancelBtn) {
        //: UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [cancelBtn addTarget:self action:@selector(cancelSelected:) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn addTarget:self action:@selector(byTouch:) forControlEvents:UIControlEventTouchUpInside];
        //: [cancelBtn setTitle:@"取消".ntes_localized forState:UIControlStateNormal];
        [cancelBtn setTitle:@"取消".with forState:UIControlStateNormal];
        //: [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        //: UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        //: [cancelBtn setTitleEdgeInsets:titleInsets];
        [cancelBtn setTitleEdgeInsets:titleInsets];
        //: cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        //: _mulSelectCancelBtn = cancelBtn;
        _mulSelectCancelBtn = cancelBtn;
    }
    //: return _mulSelectCancelBtn;
    return _mulSelectCancelBtn;
}



//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)shouldInCipher:(NIMMessage *)message
{
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;


    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification ||
        message.messageType == NIMMessageTypeNotification ||
        //: [self cancelMenuByMessageObject:messageObject])
        [self prixFixe:messageObject])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)cancelMenuByMessageObject:(id<NIMMessageObject>) object
- (BOOL)prixFixe:(id<NIMMessageObject>) object
{
    //: if ([object isKindOfClass:[NIMCustomObject class]])
    if ([object isKindOfClass:[NIMCustomObject class]])
    {
        //: NIMCustomObject *custom = object;
        NIMCustomObject *custom = object;
        //: id<NIMCustomAttachment> attachment = custom.attachment;
        id<NIMCustomAttachment> attachment = custom.attachment;
        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
        if ([attachment isKindOfClass:[TitleAttachment class]])
        {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (UILabel *)invalid_tip {
- (UILabel *)invalid_tip {
    //: if (!_invalid_tip) {
    if (!_invalid_tip) {
        //: _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 50)];
        _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, 50)];
        //: _invalid_tip.backgroundColor = [UIColor colorWithHexString:@"#FEFECA"];
        _invalid_tip.backgroundColor = [UIColor recordView:[[ResourceData sharedInstance] mainGoIdent]];
        //: _invalid_tip.textColor = [UIColor colorWithHexString:@"#F6B53E"];
        _invalid_tip.textColor = [UIColor recordView:[[ResourceData sharedInstance] appCommentId]];
        //: _invalid_tip.text = [ContentLanguageManager getTextWithKey:@"app_team_invalid_tip"]; 
        _invalid_tip.text = [MatronymicPath colorStreetwise:[[ResourceData sharedInstance] user_imageUrl]]; //
        //: _invalid_tip.textAlignment = NSTextAlignmentCenter;
        _invalid_tip.textAlignment = NSTextAlignmentCenter;
        //: _invalid_tip.hidden = YES;
        _invalid_tip.hidden = YES;

        //: [self.view addSubview:_invalid_tip];
        [self.view addSubview:_invalid_tip];
    }
    //: return _invalid_tip;
    return _invalid_tip;
}

//: - (ZMONTranslateView *)translateView
- (BottomView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[BottomView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)presented:(NSString *)reason
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: self.userId = message.from;
    self.userId = message.from;
    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: if(isMyFriend){
    if(isMyFriend){
        //: [self.view addSubview:self.reprotNextView];
        [self.view addSubview:self.reprotNextView];
        //: [self.reprotNextView animationShow];
        [self.reprotNextView marginFirstNim];
    //: }else{
    }else{
        //: [self.view addSubview:self.reprotHisNextView];
        [self.view addSubview:self.reprotHisNextView];
        //: [self.reprotHisNextView animationShow];
        [self.reprotHisNextView can];
    }

        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"contact"] = reason;
        dict[[[ResourceData sharedInstance] k_countUrl]] = reason;
        //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
        [TroublingName pressed:[NSString stringWithFormat:[[ResourceData sharedInstance] dream_burdenIdent]] disable:dict messageExtra:NO closeFortFailed:^(id responseObject) {
//            [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
        //: } failed:^(id responseObject, NSError *error) {
        } name:^(id responseObject, NSError *error) {
        //: }];
        }];

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
                       //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] appLestIdent]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] show_countSingleTitle]] duration:2.0f position:CSToastPositionCenter];

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

        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

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
                //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] mFlameDataMessage]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MatronymicPath colorStreetwise:[[ResourceData sharedInstance] kSymptomUrl]] duration:2.0f position:CSToastPositionCenter];
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



        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];

//            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
//            options.removeOtherClients = YES;
//            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
//                if (error) {
//                    return;
//                }
//                [self.navigationController popToRootViewControllerAnimated:YES];
//
//            }];
        }


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

//: - (ZMONReportHisView *)reprotHisNextView
- (CustomView *)reprotHisNextView
{
    //: if(!_reprotHisNextView){
    if(!_reprotHisNextView){
        //: _reprotHisNextView = [[ZMONReportHisView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotHisNextView = [[CustomView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotHisNextView.delegate = self;
        _reprotHisNextView.delegate = self;
    }
    //: return _reprotHisNextView;
    return _reprotHisNextView;

}


//: @end
@end
