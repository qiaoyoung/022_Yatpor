
#import <Foundation/Foundation.h>

@interface ShrugDoingData : NSObject

+ (instancetype)sharedInstance;

//: login_bg
@property (nonatomic, copy) NSString *dreamDataId;

//: register_account
@property (nonatomic, copy) NSString *kCommentIdent;

//: vpn
@property (nonatomic, copy) NSString *dream_textFormat;

//: login_agreement_normal
@property (nonatomic, copy) NSString *show_withInfoPath;

//: __SCOPED__
@property (nonatomic, copy) NSString *dream_valueId;

//: pass_user
@property (nonatomic, copy) NSString *appCheckData;

//: activity_register_next
@property (nonatomic, copy) NSString *userTextUrl;

//: ^[A-Za-z0-9_]{6,18}$
@property (nonatomic, copy) NSString *notiResourceName;

//: activity_login_login
@property (nonatomic, copy) NSString *m_tingMsg;

//: ic_invisible
@property (nonatomic, copy) NSString *show_dismissKey;

//: login_icon_user
@property (nonatomic, copy) NSString *appOfViewMsg;

//: login_agreement_press
@property (nonatomic, copy) NSString *user_endFormat;

//: account
@property (nonatomic, copy) NSString *kCustomMsg;

//: tap
@property (nonatomic, copy) NSString *showBackgroundData;

//: password
@property (nonatomic, copy) NSString *kNameNeedContent;

//: activity_register_agree
@property (nonatomic, copy) NSString *userByMsg;

//: register_account_activity_account
@property (nonatomic, copy) NSString *dreamRemoveReleaseStr;

//: login_logo
@property (nonatomic, copy) NSString *userResourceKey;

//: iOS
@property (nonatomic, copy) NSString *show_byBackgroundIdent;

//: tun
@property (nonatomic, copy) NSString *mStartData;

//: invitecode
@property (nonatomic, copy) NSString *appCoverKeyUrl;

//: ^[A-Za-z0-9_]{6,12}$
@property (nonatomic, copy) NSString *appBeginStr;

//: pass_tip
@property (nonatomic, copy) NSString *dreamKitMsg;

//: #F7BA00
@property (nonatomic, copy) NSString *kValuePath;

//: login_icon_pwd
@property (nonatomic, copy) NSString *mQuantityStr;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *userWindowName;

//: #333333
@property (nonatomic, copy) NSString *m_countStr;

//: #999999
@property (nonatomic, copy) NSString *showReleasePath;

//: SELF MATCHES %@
@property (nonatomic, copy) NSString *notiShareStr;

//: ppp
@property (nonatomic, copy) NSString *main_verticalName;

//: #F6F6F6
@property (nonatomic, copy) NSString *m_frameLineOperationMessage;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *mTagStartMsg;

//: client
@property (nonatomic, copy) NSString *showBlueMessage;

//: register_account_activity_psw
@property (nonatomic, copy) NSString *kOffBubbleMsg;

//: user_tip
@property (nonatomic, copy) NSString *m_buttonText;

//: ic_visible
@property (nonatomic, copy) NSString *kValueId;

//: mobilecode
@property (nonatomic, copy) NSString *dream_closeContent;

//: ic_close_b
@property (nonatomic, copy) NSString *main_windowName;

@end

@implementation ShrugDoingData

+ (instancetype)sharedInstance {
    static ShrugDoingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ShrugDoingDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ShrugDoingDataToCache:(Byte *)data {
    int tagMessage = data[0];
    Byte nameUp = data[1];
    int recount = data[2];
    for (int i = recount; i < recount + tagMessage; i++) {
        int value = data[i] - nameUp;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[recount + tagMessage] = 0;
    return data + recount;
}

- (NSString *)StringFromShrugDoingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShrugDoingDataToCache:data]];
}

//: activity_register_next
- (NSString *)userTextUrl {
    if (!_userTextUrl) {
		NSArray<NSNumber *> *origin = @[@22, @88, @7, @151, @239, @85, @186, @185, @187, @204, @193, @206, @193, @204, @209, @183, @202, @189, @191, @193, @203, @204, @189, @202, @183, @198, @189, @208, @204, @42];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTextUrl = [self StringFromShrugDoingData:value];
    }
    return _userTextUrl;
}

//: ^[A-Za-z0-9_]{6,18}$
- (NSString *)notiResourceName {
    if (!_notiResourceName) {
		NSArray<NSNumber *> *origin = @[@20, @66, @8, @4, @7, @210, @57, @136, @160, @157, @131, @111, @156, @163, @111, @188, @114, @111, @123, @161, @159, @189, @120, @110, @115, @122, @191, @102, @192];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiResourceName = [self StringFromShrugDoingData:value];
    }
    return _notiResourceName;
}

//: pass_user
- (NSString *)appCheckData {
    if (!_appCheckData) {
		NSArray<NSNumber *> *origin = @[@9, @9, @4, @210, @121, @106, @124, @124, @104, @126, @124, @110, @123, @113];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCheckData = [self StringFromShrugDoingData:value];
    }
    return _appCheckData;
}

//: #999999
- (NSString *)showReleasePath {
    if (!_showReleasePath) {
		NSArray<NSNumber *> *origin = @[@7, @23, @4, @47, @58, @80, @80, @80, @80, @80, @80, @221];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showReleasePath = [self StringFromShrugDoingData:value];
    }
    return _showReleasePath;
}

//: pass_tip
- (NSString *)dreamKitMsg {
    if (!_dreamKitMsg) {
		NSArray<NSNumber *> *origin = @[@8, @16, @4, @229, @128, @113, @131, @131, @111, @132, @121, @128, @13];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamKitMsg = [self StringFromShrugDoingData:value];
    }
    return _dreamKitMsg;
}

//: #F7BA00
- (NSString *)kValuePath {
    if (!_kValuePath) {
		NSArray<NSNumber *> *origin = @[@7, @61, @11, @195, @246, @161, @54, @140, @91, @213, @202, @96, @131, @116, @127, @126, @109, @109, @156];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kValuePath = [self StringFromShrugDoingData:value];
    }
    return _kValuePath;
}

//: #F6F6F6
- (NSString *)m_frameLineOperationMessage {
    if (!_m_frameLineOperationMessage) {
		NSArray<NSNumber *> *origin = @[@7, @9, @13, @47, @119, @225, @155, @201, @152, @27, @232, @87, @46, @44, @79, @63, @79, @63, @79, @63, @85];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_frameLineOperationMessage = [self StringFromShrugDoingData:value];
    }
    return _m_frameLineOperationMessage;
}

//: login_bg
- (NSString *)dreamDataId {
    if (!_dreamDataId) {
		NSArray<NSNumber *> *origin = @[@8, @76, @8, @109, @162, @223, @183, @176, @184, @187, @179, @181, @186, @171, @174, @179, @91];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamDataId = [self StringFromShrugDoingData:value];
    }
    return _dreamDataId;
}

//: register_account
- (NSString *)kCommentIdent {
    if (!_kCommentIdent) {
		NSArray<NSNumber *> *origin = @[@16, @26, @6, @84, @67, @82, @140, @127, @129, @131, @141, @142, @127, @140, @121, @123, @125, @125, @137, @143, @136, @142, @243];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kCommentIdent = [self StringFromShrugDoingData:value];
    }
    return _kCommentIdent;
}

//: login_icon_user
- (NSString *)appOfViewMsg {
    if (!_appOfViewMsg) {
		NSArray<NSNumber *> *origin = @[@15, @12, @6, @97, @108, @117, @120, @123, @115, @117, @122, @107, @117, @111, @123, @122, @107, @129, @127, @113, @126, @124];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appOfViewMsg = [self StringFromShrugDoingData:value];
    }
    return _appOfViewMsg;
}

//: client
- (NSString *)showBlueMessage {
    if (!_showBlueMessage) {
		NSArray<NSNumber *> *origin = @[@6, @13, @13, @222, @140, @119, @75, @7, @67, @49, @178, @204, @189, @112, @121, @118, @114, @123, @129, @16];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showBlueMessage = [self StringFromShrugDoingData:value];
    }
    return _showBlueMessage;
}

//: mobilecode
- (NSString *)dream_closeContent {
    if (!_dream_closeContent) {
		NSArray<NSNumber *> *origin = @[@10, @4, @6, @90, @98, @142, @113, @115, @102, @109, @112, @105, @103, @115, @104, @105, @67];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_closeContent = [self StringFromShrugDoingData:value];
    }
    return _dream_closeContent;
}

//: activity_register_agree
- (NSString *)userByMsg {
    if (!_userByMsg) {
		NSArray<NSNumber *> *origin = @[@23, @81, @7, @206, @30, @160, @41, @178, @180, @197, @186, @199, @186, @197, @202, @176, @195, @182, @184, @186, @196, @197, @182, @195, @176, @178, @184, @195, @182, @182, @84];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userByMsg = [self StringFromShrugDoingData:value];
    }
    return _userByMsg;
}

//: tap
- (NSString *)showBackgroundData {
    if (!_showBackgroundData) {
		NSArray<NSNumber *> *origin = @[@3, @46, @10, @71, @210, @211, @22, @220, @39, @223, @162, @143, @158, @111];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showBackgroundData = [self StringFromShrugDoingData:value];
    }
    return _showBackgroundData;
}

//: SELF MATCHES %@
- (NSString *)notiShareStr {
    if (!_notiShareStr) {
		NSArray<NSNumber *> *origin = @[@15, @54, @8, @207, @223, @162, @96, @178, @137, @123, @130, @124, @86, @131, @119, @138, @121, @126, @123, @137, @86, @91, @118, @21];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiShareStr = [self StringFromShrugDoingData:value];
    }
    return _notiShareStr;
}

//: ic_visible
- (NSString *)kValueId {
    if (!_kValueId) {
		NSArray<NSNumber *> *origin = @[@10, @53, @10, @5, @42, @116, @51, @72, @141, @143, @158, @152, @148, @171, @158, @168, @158, @151, @161, @154, @49];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kValueId = [self StringFromShrugDoingData:value];
    }
    return _kValueId;
}

//: register_account_activity_account
- (NSString *)dreamRemoveReleaseStr {
    if (!_dreamRemoveReleaseStr) {
		NSArray<NSNumber *> *origin = @[@33, @88, @7, @47, @142, @210, @198, @202, @189, @191, @193, @203, @204, @189, @202, @183, @185, @187, @187, @199, @205, @198, @204, @183, @185, @187, @204, @193, @206, @193, @204, @209, @183, @185, @187, @187, @199, @205, @198, @204, @39];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamRemoveReleaseStr = [self StringFromShrugDoingData:value];
    }
    return _dreamRemoveReleaseStr;
}

//: iOS
- (NSString *)show_byBackgroundIdent {
    if (!_show_byBackgroundIdent) {
		NSArray<NSNumber *> *origin = @[@3, @23, @10, @255, @18, @227, @122, @38, @44, @108, @128, @102, @106, @166];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_byBackgroundIdent = [self StringFromShrugDoingData:value];
    }
    return _show_byBackgroundIdent;
}

//: login_logo
- (NSString *)userResourceKey {
    if (!_userResourceKey) {
		NSArray<NSNumber *> *origin = @[@10, @6, @3, @114, @117, @109, @111, @116, @101, @114, @117, @109, @117, @232];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userResourceKey = [self StringFromShrugDoingData:value];
    }
    return _userResourceKey;
}

//: activity_login_login
- (NSString *)m_tingMsg {
    if (!_m_tingMsg) {
		NSArray<NSNumber *> *origin = @[@20, @57, @6, @112, @13, @184, @154, @156, @173, @162, @175, @162, @173, @178, @152, @165, @168, @160, @162, @167, @152, @165, @168, @160, @162, @167, @35];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_tingMsg = [self StringFromShrugDoingData:value];
    }
    return _m_tingMsg;
}

//: ic_close_b
- (NSString *)main_windowName {
    if (!_main_windowName) {
		NSArray<NSNumber *> *origin = @[@10, @1, @9, @115, @148, @32, @252, @141, @73, @106, @100, @96, @100, @109, @112, @116, @102, @96, @99, @103];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_windowName = [self StringFromShrugDoingData:value];
    }
    return _main_windowName;
}

//: invitecode
- (NSString *)appCoverKeyUrl {
    if (!_appCoverKeyUrl) {
		NSArray<NSNumber *> *origin = @[@10, @64, @9, @168, @173, @10, @19, @80, @163, @169, @174, @182, @169, @180, @165, @163, @175, @164, @165, @87];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCoverKeyUrl = [self StringFromShrugDoingData:value];
    }
    return _appCoverKeyUrl;
}

//: vpn
- (NSString *)dream_textFormat {
    if (!_dream_textFormat) {
		NSArray<NSNumber *> *origin = @[@3, @48, @8, @18, @27, @142, @246, @246, @166, @160, @158, @136];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_textFormat = [self StringFromShrugDoingData:value];
    }
    return _dream_textFormat;
}

//: activity_comment_setting_ys
- (NSString *)userWindowName {
    if (!_userWindowName) {
		NSArray<NSNumber *> *origin = @[@27, @46, @6, @129, @73, @91, @143, @145, @162, @151, @164, @151, @162, @167, @141, @145, @157, @155, @155, @147, @156, @162, @141, @161, @147, @162, @162, @151, @156, @149, @141, @167, @161, @145];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userWindowName = [self StringFromShrugDoingData:value];
    }
    return _userWindowName;
}

//: __SCOPED__
- (NSString *)dream_valueId {
    if (!_dream_valueId) {
		NSArray<NSNumber *> *origin = @[@10, @7, @13, @65, @238, @148, @72, @189, @188, @156, @218, @47, @2, @102, @102, @90, @74, @86, @87, @76, @75, @102, @102, @224];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_valueId = [self StringFromShrugDoingData:value];
    }
    return _dream_valueId;
}

//: tun
- (NSString *)mStartData {
    if (!_mStartData) {
		NSArray<NSNumber *> *origin = @[@3, @84, @4, @76, @200, @201, @194, @171];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mStartData = [self StringFromShrugDoingData:value];
    }
    return _mStartData;
}

//: ic_invisible
- (NSString *)show_dismissKey {
    if (!_show_dismissKey) {
		NSArray<NSNumber *> *origin = @[@12, @30, @8, @208, @240, @200, @144, @66, @135, @129, @125, @135, @140, @148, @135, @145, @135, @128, @138, @131, @104];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_dismissKey = [self StringFromShrugDoingData:value];
    }
    return _show_dismissKey;
}

//: user_tip
- (NSString *)m_buttonText {
    if (!_m_buttonText) {
		NSArray<NSNumber *> *origin = @[@8, @87, @13, @219, @207, @117, @122, @63, @100, @210, @199, @1, @251, @204, @202, @188, @201, @182, @203, @192, @199, @181];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_buttonText = [self StringFromShrugDoingData:value];
    }
    return _m_buttonText;
}

//: ^[A-Za-z0-9_]{6,12}$
- (NSString *)appBeginStr {
    if (!_appBeginStr) {
		NSArray<NSNumber *> *origin = @[@20, @35, @12, @78, @135, @240, @203, @124, @3, @211, @171, @163, @129, @126, @100, @80, @125, @132, @80, @157, @83, @80, @92, @130, @128, @158, @89, @79, @84, @85, @160, @71, @33];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appBeginStr = [self StringFromShrugDoingData:value];
    }
    return _appBeginStr;
}

//: #333333
- (NSString *)m_countStr {
    if (!_m_countStr) {
		NSArray<NSNumber *> *origin = @[@7, @78, @6, @249, @74, @108, @113, @129, @129, @129, @129, @129, @129, @192];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_countStr = [self StringFromShrugDoingData:value];
    }
    return _m_countStr;
}

//: login_agreement_press
- (NSString *)user_endFormat {
    if (!_user_endFormat) {
		NSArray<NSNumber *> *origin = @[@21, @49, @12, @15, @210, @72, @11, @175, @156, @22, @184, @195, @157, @160, @152, @154, @159, @144, @146, @152, @163, @150, @150, @158, @150, @159, @165, @144, @161, @163, @150, @164, @164, @191];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_endFormat = [self StringFromShrugDoingData:value];
    }
    return _user_endFormat;
}

//: password
- (NSString *)kNameNeedContent {
    if (!_kNameNeedContent) {
		NSArray<NSNumber *> *origin = @[@8, @39, @8, @115, @25, @41, @74, @230, @151, @136, @154, @154, @158, @150, @153, @139, @122];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameNeedContent = [self StringFromShrugDoingData:value];
    }
    return _kNameNeedContent;
}

//: register_account_activity_psw
- (NSString *)kOffBubbleMsg {
    if (!_kOffBubbleMsg) {
		NSArray<NSNumber *> *origin = @[@29, @53, @9, @108, @167, @83, @254, @19, @47, @167, @154, @156, @158, @168, @169, @154, @167, @148, @150, @152, @152, @164, @170, @163, @169, @148, @150, @152, @169, @158, @171, @158, @169, @174, @148, @165, @168, @172, @100];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kOffBubbleMsg = [self StringFromShrugDoingData:value];
    }
    return _kOffBubbleMsg;
}

//: login_icon_pwd
- (NSString *)mQuantityStr {
    if (!_mQuantityStr) {
		NSArray<NSNumber *> *origin = @[@14, @96, @6, @96, @91, @146, @204, @207, @199, @201, @206, @191, @201, @195, @207, @206, @191, @208, @215, @196, @207];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mQuantityStr = [self StringFromShrugDoingData:value];
    }
    return _mQuantityStr;
}

//: account
- (NSString *)kCustomMsg {
    if (!_kCustomMsg) {
		NSArray<NSNumber *> *origin = @[@7, @93, @6, @251, @54, @162, @190, @192, @192, @204, @210, @203, @209, @49];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kCustomMsg = [self StringFromShrugDoingData:value];
    }
    return _kCustomMsg;
}

//: login_agreement_normal
- (NSString *)show_withInfoPath {
    if (!_show_withInfoPath) {
		NSArray<NSNumber *> *origin = @[@22, @53, @12, @143, @80, @67, @100, @20, @56, @60, @60, @32, @161, @164, @156, @158, @163, @148, @150, @156, @167, @154, @154, @162, @154, @163, @169, @148, @163, @164, @167, @162, @150, @161, @114];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_withInfoPath = [self StringFromShrugDoingData:value];
    }
    return _show_withInfoPath;
}

//: Read_agree_agreement
- (NSString *)mTagStartMsg {
    if (!_mTagStartMsg) {
		NSArray<NSNumber *> *origin = @[@20, @14, @8, @62, @128, @243, @4, @239, @96, @115, @111, @114, @109, @111, @117, @128, @115, @115, @109, @111, @117, @128, @115, @115, @123, @115, @124, @130, @68];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mTagStartMsg = [self StringFromShrugDoingData:value];
    }
    return _mTagStartMsg;
}

//: ppp
- (NSString *)main_verticalName {
    if (!_main_verticalName) {
		NSArray<NSNumber *> *origin = @[@3, @69, @8, @188, @60, @145, @17, @138, @181, @181, @181, @170];
		NSData *data = [ShrugDoingData ShrugDoingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_verticalName = [self StringFromShrugDoingData:value];
    }
    return _main_verticalName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconMenuViewController.m
//  NIM
//
//  Created by taricher on 2024/5/24.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentRegisterViewController.h"
#import "IconMenuViewController.h"
//: #import "NTESMainTabController.h"
#import "QuickViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NSString+NTES.h"
#import "NSString+StyleTool.h"
//: #import "CCCLoginManager.h"
#import "AdministratorSend.h"
//: #import "NTESNotificationCenter.h"
#import "TapAreaMenu.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+OpenSend.h"
//: #import "ContentRegisterViewController.h"
#import "IconMenuViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "LengthOff.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "PathBottom.h"
//: #import "SNDevice.h"
#import "NonsolidColourTip.h"
//: #import "RegisterInfoViewController.h"
#import "OutputViewController.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "ContentViewController.h"

//: @interface ContentRegisterViewController () <UITextFieldDelegate>
@interface IconMenuViewController () <UITextFieldDelegate>

//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;
//: @property (nonatomic, strong) YYLabel *protocolLabel;
@property (nonatomic, strong) YYLabel *protocolLabel;

//: @end
@end

//: @implementation ContentRegisterViewController
@implementation IconMenuViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[ShrugDoingData sharedInstance].dreamDataId];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initManagerUi];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI
- (void)initManagerUi
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].main_windowName] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(totalBack) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice vg_statusBarHeight]+50, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice bearDown]+50, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[ShrugDoingData sharedInstance].userResourceKey];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [ContentLanguageManager getTextWithKey:@"register_account"];
    labtitle.text = [MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].kCommentIdent];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor recordView:[ShrugDoingData sharedInstance].m_frameLineOperationMessage];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[ShrugDoingData sharedInstance].appOfViewMsg];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor recordView:[ShrugDoingData sharedInstance].m_countStr];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[ContentLanguageManager getTextWithKey:@"user_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].m_buttonText] attributes:@{NSForegroundColorAttributeName:[UIColor recordView:[ShrugDoingData sharedInstance].showReleasePath]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    psdView.backgroundColor = [UIColor recordView:[ShrugDoingData sharedInstance].m_frameLineOperationMessage];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[ShrugDoingData sharedInstance].mQuantityStr];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor recordView:[ShrugDoingData sharedInstance].m_countStr];
//    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[ContentLanguageManager getTextWithKey:@"pass_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].dreamKitMsg] attributes:@{NSForegroundColorAttributeName:[UIColor recordView:[ShrugDoingData sharedInstance].showReleasePath]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(vacantCover:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].kValueId] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].show_dismissKey] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[ContentLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [_loginButton setTitle:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].userTextUrl] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(pageBubble) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    _loginButton.backgroundColor = [UIColor recordView:[ShrugDoingData sharedInstance].kValuePath];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;
//    _loginButton.layer.shadowColor = DeepBtnColor.CGColor;
//    _loginButton.layer.shadowOffset = CGSizeMake(0,3);
//    _loginButton.layer.shadowOpacity = 1;
//    _loginButton.layer.shadowRadius = 0;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#F7BA00"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor recordView:[ShrugDoingData sharedInstance].kValuePath] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(totalBack) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[ContentLanguageManager getTextWithKey:@"activity_login_login"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].m_tingMsg] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].show_withInfoPath] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].user_endFormat] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(fixing:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UILabel *subtitle = [[UILabel alloc]initWithFrame:CGRectMake(30, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-80-20, SCREEN_WIDTH-60, 20)];
//    subtitle.textColor = RGB_COLOR_String(@"#8282A7");
//    subtitle.font = [UIFont systemFontOfSize:14];
//    subtitle.textAlignment = NSTextAlignmentCenter;
//    subtitle.text = LangKey(@"activity_register_account_has_account");
//    [self.view addSubview:subtitle];

//    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    _registerButton.frame = CGRectMake(SCREEN_WIDTH-136, SCREEN_STATUS_HEIGHT+20, 146, 32);
//    _registerButton.backgroundColor = ThemeColor;
//    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
//    [_registerButton setTitleColor:RGB_COLOR_String(@"#fffContent") forState:UIControlStateNormal];
//    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
//    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;
}


//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)vacantCover:(UIButton *)sender
{
    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].show_dismissKey] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[ShrugDoingData sharedInstance].kValueId] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];
    }
}

//: - (void)goBack{
- (void)totalBack{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (YYLabel *)protocolLabel {
- (YYLabel *)protocolLabel {
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [ContentLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].userByMsg];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;
        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#F7BA00"]
                                  color:[UIColor recordView:[ShrugDoingData sharedInstance].kValuePath]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {
            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            ContentViewController *vc = [[ContentViewController alloc] init];
            //: vc.webTitle = [ContentLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].userWindowName];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [NameDefaults argument].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)fixing:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//
//    if ([string isEqualToString:@"\n"]) {
//        [self doLogin];
//        return NO;
//    }
//    return YES;
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    self.secureButton.hidden = YES;
//}
//
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    self.secureButton.hidden = NO;
//    [textField bringSubviewToFront:self.secureButton];
//}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}


//: - (BOOL)isVPNConnected
- (BOOL)present
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
    NSArray *keys = [dict[[ShrugDoingData sharedInstance].dream_valueId]allKeys];
    //: for (NSString *key in keys) {
    for (NSString *key in keys) {
        //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
        if ([key rangeOfString:[ShrugDoingData sharedInstance].showBackgroundData].location != NSNotFound ||
            //: [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:[ShrugDoingData sharedInstance].mStartData].location != NSNotFound ||
            //: [key rangeOfString:@"ppp"].location != NSNotFound){
            [key rangeOfString:[ShrugDoingData sharedInstance].main_verticalName].location != NSNotFound){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)straddle:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [ShrugDoingData sharedInstance].appBeginStr;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[ShrugDoingData sharedInstance].notiShareStr, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)overOld:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [ShrugDoingData sharedInstance].notiResourceName;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[ShrugDoingData sharedInstance].notiShareStr, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}


//: - (void)doLogin{
- (void)pageBubble{

    //: if (self.agreementButton.selected == NO) {
    if (self.agreementButton.selected == NO) {
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].mTagStartMsg] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].dreamRemoveReleaseStr] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].kOffBubbleMsg] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
    if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
        //: [self.view makeToast:[ContentLanguageManager getTextWithKey:@"pass_user"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MatronymicPath colorStreetwise:[ShrugDoingData sharedInstance].appCheckData] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    LengthOff *manager = [LengthOff lipogramManager];
    //: [manager.registDict setObject:@"iOS" forKey:@"client"];
    [manager.registDict setObject:[ShrugDoingData sharedInstance].show_byBackgroundIdent forKey:[ShrugDoingData sharedInstance].showBlueMessage];
    //: [manager.registDict setObject:_usernameTextField.text forKey:@"account"];
    [manager.registDict setObject:_usernameTextField.text forKey:[ShrugDoingData sharedInstance].kCustomMsg];
    //: [manager.registDict setObject:_passwordTextField.text forKey:@"password"];
    [manager.registDict setObject:_passwordTextField.text forKey:[ShrugDoingData sharedInstance].kNameNeedContent];
    //: [manager.registDict setObject:@"" forKey:@"mobilecode"];
    [manager.registDict setObject:@"" forKey:[ShrugDoingData sharedInstance].dream_closeContent];
    //: [manager.registDict setObject:@"" forKey:@"invitecode"];
    [manager.registDict setObject:@"" forKey:[ShrugDoingData sharedInstance].appCoverKeyUrl];
    //: [manager.registDict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [manager.registDict setObject:[self present]?@"1":@"0" forKey:[ShrugDoingData sharedInstance].dream_textFormat];

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [NTESRegistConfigManager firstSendRegistName:_usernameTextField.text pd:_passwordTextField.text RequestWithComplete:^(BOOL sucess, NSString *msg) {
    [LengthOff prototypical:_usernameTextField.text sendBox:_passwordTextField.text text:^(BOOL sucess, NSString *msg) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (sucess) {
        if (sucess) {
            //: RegisterInfoViewController *vc = [[RegisterInfoViewController alloc]init];
            OutputViewController *vc = [[OutputViewController alloc]init];
            //: vc.accountName = _usernameTextField.text;
            vc.accountName = _usernameTextField.text;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    //: }];
    }];
}


//: @end
@end
