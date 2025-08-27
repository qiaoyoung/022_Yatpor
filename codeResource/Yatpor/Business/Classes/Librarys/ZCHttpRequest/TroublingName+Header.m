
#import <Foundation/Foundation.h>

@interface LibraryData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LibraryData

+ (instancetype)sharedInstance {
    static LibraryData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LibraryDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)LibraryDataToCache:(Byte *)data {
    int mushroom = data[0];
    Byte remoteMare = data[1];
    int processorOrangeData = data[2];
    for (int i = processorOrangeData; i < processorOrangeData + mushroom; i++) {
        int value = data[i] + remoteMare;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[processorOrangeData + mushroom] = 0;
    return data + processorOrangeData;
}

- (NSString *)StringFromLibraryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LibraryDataToCache:data]];
}

//: islogin
- (NSString *)k_thematicsStr {
    /* static */ NSString *k_thematicsStr = nil;
    if (!k_thematicsStr) {
		NSArray<NSNumber *> *origin = @[@7, @51, @10, @22, @232, @15, @133, @79, @154, @24, @54, @64, @57, @60, @52, @54, @59, @199];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_thematicsStr = [self StringFromLibraryData:value];
    }
    return k_thematicsStr;
}

//: redpacket
- (NSString *)kInfoAnxiousWithMessage {
    /* static */ NSString *kInfoAnxiousWithMessage = nil;
    if (!kInfoAnxiousWithMessage) {
		NSArray<NSNumber *> *origin = @[@9, @10, @13, @27, @24, @206, @102, @5, @215, @215, @57, @41, @132, @104, @91, @90, @102, @87, @89, @97, @91, @106, @21];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kInfoAnxiousWithMessage = [self StringFromLibraryData:value];
    }
    return kInfoAnxiousWithMessage;
}

//: istsbutton
- (NSString *)show_ballotIdent {
    /* static */ NSString *show_ballotIdent = nil;
    if (!show_ballotIdent) {
		NSArray<NSNumber *> *origin = @[@10, @85, @11, @171, @234, @172, @218, @165, @41, @207, @33, @20, @30, @31, @30, @13, @32, @31, @31, @26, @25, @17];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_ballotIdent = [self StringFromLibraryData:value];
    }
    return show_ballotIdent;
}

//: gender
- (NSString *)dreamDeepPath {
    /* static */ NSString *dreamDeepPath = nil;
    if (!dreamDeepPath) {
		NSArray<NSNumber *> *origin = @[@6, @98, @9, @188, @61, @157, @148, @168, @248, @5, @3, @12, @2, @3, @16, @44];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDeepPath = [self StringFromLibraryData:value];
    }
    return dreamDeepPath;
}

//: isregitor
- (NSString *)m_backPath {
    /* static */ NSString *m_backPath = nil;
    if (!m_backPath) {
		NSArray<NSNumber *> *origin = @[@9, @74, @9, @79, @105, @134, @211, @145, @32, @31, @41, @40, @27, @29, @31, @42, @37, @40, @145];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_backPath = [self StringFromLibraryData:value];
    }
    return m_backPath;
}

//: birth
- (NSString *)kTagKey {
    /* static */ NSString *kTagKey = nil;
    if (!kTagKey) {
		NSArray<NSNumber *> *origin = @[@5, @18, @7, @59, @237, @108, @195, @80, @87, @96, @98, @86, @70];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTagKey = [self StringFromLibraryData:value];
    }
    return kTagKey;
}

//: isinvitecode
- (NSString *)dreamWheatEntryIdent {
    /* static */ NSString *dreamWheatEntryIdent = nil;
    if (!dreamWheatEntryIdent) {
		NSArray<NSNumber *> *origin = @[@12, @43, @11, @88, @146, @43, @159, @18, @52, @12, @112, @62, @72, @62, @67, @75, @62, @73, @58, @56, @68, @57, @58, @134];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamWheatEntryIdent = [self StringFromLibraryData:value];
    }
    return dreamWheatEntryIdent;
}

//: isclear
- (NSString *)showArmyPath {
    /* static */ NSString *showArmyPath = nil;
    if (!showArmyPath) {
		NSArray<NSNumber *> *origin = @[@7, @16, @13, @250, @174, @209, @222, @84, @60, @227, @249, @184, @130, @89, @99, @83, @92, @85, @81, @98, @180];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showArmyPath = [self StringFromLibraryData:value];
    }
    return showArmyPath;
}

//: /user/checkmoments
- (NSString *)user_dignityMessage {
    /* static */ NSString *user_dignityMessage = nil;
    if (!user_dignityMessage) {
		NSArray<NSNumber *> *origin = @[@18, @22, @5, @138, @186, @25, @95, @93, @79, @92, @25, @77, @82, @79, @77, @85, @87, @89, @87, @79, @88, @94, @93, @106];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_dignityMessage = [self StringFromLibraryData:value];
    }
    return user_dignityMessage;
}

//: ismustmobile
- (NSString *)kBackgroundThickUrl {
    /* static */ NSString *kBackgroundThickUrl = nil;
    if (!kBackgroundThickUrl) {
		NSArray<NSNumber *> *origin = @[@12, @55, @7, @69, @9, @21, @215, @50, @60, @54, @62, @60, @61, @54, @56, @43, @50, @53, @46, @36];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kBackgroundThickUrl = [self StringFromLibraryData:value];
    }
    return kBackgroundThickUrl;
}

//: password
- (NSString *)main_allowTitle {
    /* static */ NSString *main_allowTitle = nil;
    if (!main_allowTitle) {
		NSArray<NSNumber *> *origin = @[@8, @90, @7, @102, @204, @75, @176, @22, @7, @25, @25, @29, @21, @24, @10, @149];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_allowTitle = [self StringFromLibraryData:value];
    }
    return main_allowTitle;
}

//: autoLogin
- (NSString *)show_layerCoverageIdent {
    /* static */ NSString *show_layerCoverageIdent = nil;
    if (!show_layerCoverageIdent) {
		NSArray<NSNumber *> *origin = @[@9, @27, @11, @141, @117, @124, @64, @58, @231, @247, @69, @70, @90, @89, @84, @49, @84, @76, @78, @83, @21];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_layerCoverageIdent = [self StringFromLibraryData:value];
    }
    return show_layerCoverageIdent;
}

//: sign
- (NSString *)appDialCustomerValue {
    /* static */ NSString *appDialCustomerValue = nil;
    if (!appDialCustomerValue) {
		NSArray<NSNumber *> *origin = @[@4, @92, @3, @23, @13, @11, @18, @40];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDialCustomerValue = [self StringFromLibraryData:value];
    }
    return appDialCustomerValue;
}

//: nickname
- (NSString *)kArtisticKey {
    /* static */ NSString *kArtisticKey = nil;
    if (!kArtisticKey) {
		NSArray<NSNumber *> *origin = @[@8, @64, @4, @117, @46, @41, @35, @43, @46, @33, @45, @37, @73];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kArtisticKey = [self StringFromLibraryData:value];
    }
    return kArtisticKey;
}

//: /other/appSetting
- (NSString *)m_shouldValue {
    /* static */ NSString *m_shouldValue = nil;
    if (!m_shouldValue) {
		NSArray<NSNumber *> *origin = @[@17, @13, @7, @233, @171, @78, @138, @34, @98, @103, @91, @88, @101, @34, @84, @99, @99, @70, @88, @103, @103, @92, @97, @90, @234];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_shouldValue = [self StringFromLibraryData:value];
    }
    return m_shouldValue;
}

//: /user/getBookStatus
- (NSString *)showTingUrl {
    /* static */ NSString *showTingUrl = nil;
    if (!showTingUrl) {
		NSArray<NSNumber *> *origin = @[@19, @39, @3, @8, @78, @76, @62, @75, @8, @64, @62, @77, @27, @72, @72, @68, @44, @77, @58, @77, @78, @76, @159];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTingUrl = [self StringFromLibraryData:value];
    }
    return showTingUrl;
}

//: isspeakingtime
- (NSString *)mainButtonFateUrl {
    /* static */ NSString *mainButtonFateUrl = nil;
    if (!mainButtonFateUrl) {
		NSArray<NSNumber *> *origin = @[@14, @29, @7, @6, @70, @119, @174, @76, @86, @86, @83, @72, @68, @78, @76, @81, @74, @87, @76, @80, @72, @226];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainButtonFateUrl = [self StringFromLibraryData:value];
    }
    return mainButtonFateUrl;
}

//: POST
- (NSString *)showWindowHospitalFormat {
    /* static */ NSString *showWindowHospitalFormat = nil;
    if (!showWindowHospitalFormat) {
		NSArray<NSNumber *> *origin = @[@4, @79, @10, @193, @225, @158, @177, @118, @226, @96, @1, @0, @4, @5, @161];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showWindowHospitalFormat = [self StringFromLibraryData:value];
    }
    return showWindowHospitalFormat;
}

//: logininfo
- (NSString *)notiTitleCollectionMessage {
    /* static */ NSString *notiTitleCollectionMessage = nil;
    if (!notiTitleCollectionMessage) {
		NSArray<NSNumber *> *origin = @[@9, @18, @5, @150, @244, @90, @93, @85, @87, @92, @87, @92, @84, @93, @151];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiTitleCollectionMessage = [self StringFromLibraryData:value];
    }
    return notiTitleCollectionMessage;
}

//: getpassword
- (NSString *)userJurisdictionPath {
    /* static */ NSString *userJurisdictionPath = nil;
    if (!userJurisdictionPath) {
		NSArray<NSNumber *> *origin = @[@11, @16, @7, @77, @44, @61, @39, @87, @85, @100, @96, @81, @99, @99, @103, @95, @98, @84, @246];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userJurisdictionPath = [self StringFromLibraryData:value];
    }
    return userJurisdictionPath;
}

//: isavatar
- (NSString *)m_touchRangeTitle {
    /* static */ NSString *m_touchRangeTitle = nil;
    if (!m_touchRangeTitle) {
		NSArray<NSNumber *> *origin = @[@8, @78, @11, @237, @68, @97, @2, @158, @34, @89, @254, @27, @37, @19, @40, @19, @38, @19, @36, @167];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_touchRangeTitle = [self StringFromLibraryData:value];
    }
    return m_touchRangeTitle;
}

//: /user/ismustmobile
- (NSString *)user_grayName {
    /* static */ NSString *user_grayName = nil;
    if (!user_grayName) {
		NSArray<NSNumber *> *origin = @[@18, @33, @12, @64, @19, @7, @235, @35, @137, @215, @129, @62, @14, @84, @82, @68, @81, @14, @72, @82, @76, @84, @82, @83, @76, @78, @65, @72, @75, @68, @83];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_grayName = [self StringFromLibraryData:value];
    }
    return user_grayName;
}

//: data
- (NSString *)m_elaboratePath {
    /* static */ NSString *m_elaboratePath = nil;
    if (!m_elaboratePath) {
		NSArray<NSNumber *> *origin = @[@4, @62, @8, @33, @167, @13, @239, @9, @38, @35, @54, @35, @169];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_elaboratePath = [self StringFromLibraryData:value];
    }
    return m_elaboratePath;
}

//: chatnotify
- (NSString *)mViewWitnessIdent {
    /* static */ NSString *mViewWitnessIdent = nil;
    if (!mViewWitnessIdent) {
		NSArray<NSNumber *> *origin = @[@10, @99, @8, @81, @69, @96, @84, @64, @0, @5, @254, @17, @11, @12, @17, @6, @3, @22, @6];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mViewWitnessIdent = [self StringFromLibraryData:value];
    }
    return mViewWitnessIdent;
}

//: umappkey_ios
- (NSString *)kMareStr {
    /* static */ NSString *kMareStr = nil;
    if (!kMareStr) {
		NSArray<NSNumber *> *origin = @[@12, @47, @11, @201, @157, @208, @16, @163, @36, @116, @90, @70, @62, @50, @65, @65, @60, @54, @74, @48, @58, @64, @68, @9];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMareStr = [self StringFromLibraryData:value];
    }
    return kMareStr;
}

//: sex
- (NSString *)kLestName {
    /* static */ NSString *kLestName = nil;
    if (!kLestName) {
		NSArray<NSNumber *> *origin = @[@3, @23, @6, @195, @184, @159, @92, @78, @97, @144];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kLestName = [self StringFromLibraryData:value];
    }
    return kLestName;
}

//: allowdeletion
- (NSString *)kContentRemoveMessage {
    /* static */ NSString *kContentRemoveMessage = nil;
    if (!kContentRemoveMessage) {
		NSArray<NSNumber *> *origin = @[@13, @97, @11, @91, @193, @212, @163, @32, @161, @227, @115, @0, @11, @11, @14, @22, @3, @4, @11, @4, @19, @8, @14, @13, @147];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentRemoveMessage = [self StringFromLibraryData:value];
    }
    return kContentRemoveMessage;
}

//: isweixinlogin
- (NSString *)m_elementaryTitle {
    /* static */ NSString *m_elementaryTitle = nil;
    if (!m_elementaryTitle) {
		NSArray<NSNumber *> *origin = @[@13, @7, @10, @207, @49, @29, @56, @175, @83, @23, @98, @108, @112, @94, @98, @113, @98, @103, @101, @104, @96, @98, @103, @77];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_elementaryTitle = [self StringFromLibraryData:value];
    }
    return m_elementaryTitle;
}

//: birthday
- (NSString *)m_comparableUrl {
    /* static */ NSString *m_comparableUrl = nil;
    if (!m_comparableUrl) {
		NSArray<NSNumber *> *origin = @[@8, @80, @12, @113, @207, @214, @67, @157, @66, @64, @216, @126, @18, @25, @34, @36, @24, @20, @17, @41, @246];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_comparableUrl = [self StringFromLibraryData:value];
    }
    return m_comparableUrl;
}

//: avatar
- (NSString *)mBubbleName {
    /* static */ NSString *mBubbleName = nil;
    if (!mBubbleName) {
		NSArray<NSNumber *> *origin = @[@6, @68, @10, @56, @116, @37, @80, @249, @105, @174, @29, @50, @29, @48, @29, @46, @197];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mBubbleName = [self StringFromLibraryData:value];
    }
    return mBubbleName;
}

//: https://www.yatpor.com/privacy.html
- (NSString *)show_literValue {
    /* static */ NSString *show_literValue = nil;
    if (!show_literValue) {
		NSArray<NSNumber *> *origin = @[@35, @45, @13, @180, @15, @12, @114, @25, @125, @64, @22, @249, @240, @59, @71, @71, @67, @70, @13, @2, @2, @74, @74, @74, @1, @76, @52, @71, @67, @66, @69, @1, @54, @66, @64, @2, @67, @69, @60, @73, @52, @54, @76, @1, @59, @71, @64, @63, @30];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_literValue = [self StringFromLibraryData:value];
    }
    return show_literValue;
}

//: /user/deleteUser
- (NSString *)dreamProcessorBubbleIsleMsg {
    /* static */ NSString *dreamProcessorBubbleIsleMsg = nil;
    if (!dreamProcessorBubbleIsleMsg) {
		NSArray<NSNumber *> *origin = @[@16, @20, @13, @62, @87, @41, @134, @219, @20, @41, @10, @222, @54, @27, @97, @95, @81, @94, @27, @80, @81, @88, @81, @96, @81, @65, @95, @81, @94, @244];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamProcessorBubbleIsleMsg = [self StringFromLibraryData:value];
    }
    return dreamProcessorBubbleIsleMsg;
}

//: application/json
- (NSString *)user_regardName {
    /* static */ NSString *user_regardName = nil;
    if (!user_regardName) {
		NSArray<NSNumber *> *origin = @[@16, @10, @3, @87, @102, @102, @98, @95, @89, @87, @106, @95, @101, @100, @37, @96, @105, @101, @100, @115];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_regardName = [self StringFromLibraryData:value];
    }
    return user_regardName;
}

//: /user/generateUser
- (NSString *)notiNecessityByRangeId {
    /* static */ NSString *notiNecessityByRangeId = nil;
    if (!notiNecessityByRangeId) {
		NSArray<NSNumber *> *origin = @[@18, @31, @9, @89, @174, @202, @107, @62, @179, @16, @86, @84, @70, @83, @16, @72, @70, @79, @70, @83, @66, @85, @70, @54, @84, @70, @83, @244];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiNecessityByRangeId = [self StringFromLibraryData:value];
    }
    return notiNecessityByRangeId;
}

//: code
- (NSString *)kTingMsg {
    /* static */ NSString *kTingMsg = nil;
    if (!kTingMsg) {
		NSArray<NSNumber *> *origin = @[@4, @94, @3, @5, @17, @6, @7, @188];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTingMsg = [self StringFromLibraryData:value];
    }
    return kTingMsg;
}

//: /other/systemSetting
- (NSString *)app_proOrangeMessage {
    /* static */ NSString *app_proOrangeMessage = nil;
    if (!app_proOrangeMessage) {
		NSArray<NSNumber *> *origin = @[@20, @98, @6, @218, @225, @164, @205, @13, @18, @6, @3, @16, @205, @17, @23, @17, @18, @3, @11, @241, @3, @18, @18, @7, @12, @5, @128];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_proOrangeMessage = [self StringFromLibraryData:value];
    }
    return app_proOrangeMessage;
}

//: issecret
- (NSString *)dreamDignityId {
    /* static */ NSString *dreamDignityId = nil;
    if (!dreamDignityId) {
		NSArray<NSNumber *> *origin = @[@8, @44, @10, @217, @98, @84, @86, @207, @95, @215, @61, @71, @71, @57, @55, @70, @57, @72, @247];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDignityId = [self StringFromLibraryData:value];
    }
    return dreamDignityId;
}

//: Content-Type
- (NSString *)mSpendingMsg {
    /* static */ NSString *mSpendingMsg = nil;
    if (!mSpendingMsg) {
		NSArray<NSNumber *> *origin = @[@12, @94, @4, @156, @229, @17, @16, @22, @7, @16, @22, @207, @246, @27, @18, @7, @254];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSpendingMsg = [self StringFromLibraryData:value];
    }
    return mSpendingMsg;
}

//: mobile
- (NSString *)main_dotAmbitUrl {
    /* static */ NSString *main_dotAmbitUrl = nil;
    if (!main_dotAmbitUrl) {
		NSArray<NSNumber *> *origin = @[@6, @73, @4, @120, @36, @38, @25, @32, @35, @28, @239];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_dotAmbitUrl = [self StringFromLibraryData:value];
    }
    return main_dotAmbitUrl;
}

//: account
- (NSString *)app_colaName {
    /* static */ NSString *app_colaName = nil;
    if (!app_colaName) {
		NSArray<NSNumber *> *origin = @[@7, @11, @10, @240, @70, @196, @9, @243, @233, @118, @86, @88, @88, @100, @106, @99, @105, @149];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_colaName = [self StringFromLibraryData:value];
    }
    return app_colaName;
}

//: Content-Length
- (NSString *)show_customUrl {
    /* static */ NSString *show_customUrl = nil;
    if (!show_customUrl) {
		NSArray<NSNumber *> *origin = @[@14, @11, @13, @178, @154, @82, @39, @4, @112, @78, @208, @24, @142, @56, @100, @99, @105, @90, @99, @105, @34, @65, @90, @99, @92, @105, @93, @160];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_customUrl = [self StringFromLibraryData:value];
    }
    return show_customUrl;
}

//: globalsign
- (NSString *)userSmokeMsg {
    /* static */ NSString *userSmokeMsg = nil;
    if (!userSmokeMsg) {
		NSArray<NSNumber *> *origin = @[@10, @50, @13, @123, @185, @132, @100, @254, @210, @8, @10, @217, @96, @53, @58, @61, @48, @47, @58, @65, @55, @53, @60, @123];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSmokeMsg = [self StringFromLibraryData:value];
    }
    return userSmokeMsg;
}

//: https://imapi.9idbq.cn/api/user/edit
- (NSString *)show_tacticId {
    /* static */ NSString *show_tacticId = nil;
    if (!show_tacticId) {
		NSArray<NSNumber *> *origin = @[@36, @64, @10, @83, @109, @48, @196, @185, @225, @188, @40, @52, @52, @48, @51, @250, @239, @239, @41, @45, @33, @48, @41, @238, @249, @41, @36, @34, @49, @238, @35, @46, @239, @33, @48, @41, @239, @53, @51, @37, @50, @239, @37, @36, @41, @52, @236];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_tacticId = [self StringFromLibraryData:value];
    }
    return show_tacticId;
}

//: servicer
- (NSString *)mainBallotUrl {
    /* static */ NSString *mainBallotUrl = nil;
    if (!mainBallotUrl) {
		NSArray<NSNumber *> *origin = @[@8, @80, @5, @214, @90, @35, @21, @34, @38, @25, @19, @21, @34, @31];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainBallotUrl = [self StringFromLibraryData:value];
    }
    return mainBallotUrl;
}

//: umappkey_android
- (NSString *)user_goGrayPath {
    /* static */ NSString *user_goGrayPath = nil;
    if (!user_goGrayPath) {
		NSArray<NSNumber *> *origin = @[@16, @57, @5, @243, @180, @60, @52, @40, @55, @55, @50, @44, @64, @38, @40, @53, @43, @57, @54, @48, @43, @210];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_goGrayPath = [self StringFromLibraryData:value];
    }
    return user_goGrayPath;
}

//: email
- (NSString *)mainSpendingText {
    /* static */ NSString *mainSpendingText = nil;
    if (!mainSpendingText) {
		NSArray<NSNumber *> *origin = @[@5, @84, @3, @17, @25, @13, @21, @24, @218];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSpendingText = [self StringFromLibraryData:value];
    }
    return mainSpendingText;
}

//: yinnihione
- (NSString *)app_commentComfortableIdent {
    /* static */ NSString *app_commentComfortableIdent = nil;
    if (!app_commentComfortableIdent) {
		NSArray<NSNumber *> *origin = @[@10, @24, @12, @69, @152, @68, @10, @192, @44, @203, @78, @156, @97, @81, @86, @86, @81, @80, @81, @87, @86, @77, @129];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_commentComfortableIdent = [self StringFromLibraryData:value];
    }
    return app_commentComfortableIdent;
}

//: Messageread
- (NSString *)appSpendingText {
    /* static */ NSString *appSpendingText = nil;
    if (!appSpendingText) {
		NSArray<NSNumber *> *origin = @[@11, @26, @10, @140, @174, @64, @112, @80, @40, @22, @51, @75, @89, @89, @71, @77, @75, @88, @75, @71, @74, @41];
		NSData *data = [LibraryData LibraryDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSpendingText = [self StringFromLibraryData:value];
    }
    return appSpendingText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TroublingName+Header.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager+Addtionals.h"
#import "TroublingName+Header.h"
//: #import "CCCAutoLoginManager.h"
#import "PathBottom.h"

//: @implementation ZCHttpManager (Addtionals)
@implementation TroublingName (Header)


//: #pragma mark - 传入用户信息 转换出 请求修改参数
#pragma mark - 传入用户信息 转换出 请求修改参数
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo{
+(NSDictionary *)frameworkMargin:(NSDictionary *)userInfo{

    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"mobile"] = [userInfo newStringValueForKey:@"mobile"];
    dict[[[LibraryData sharedInstance] main_dotAmbitUrl]] = [userInfo to:[[LibraryData sharedInstance] main_dotAmbitUrl]];
    //: dict[@"avatar"] = [userInfo newStringValueForKey:@"avatar"];
    dict[[[LibraryData sharedInstance] mBubbleName]] = [userInfo to:[[LibraryData sharedInstance] mBubbleName]];
    //: dict[@"nickname"] = [userInfo newStringValueForKey:@"nickname"];
    dict[[[LibraryData sharedInstance] kArtisticKey]] = [userInfo to:[[LibraryData sharedInstance] kArtisticKey]];
    //: dict[@"sex"] = [userInfo newStringValueForKey:@"gender"];
    dict[[[LibraryData sharedInstance] kLestName]] = [userInfo to:[[LibraryData sharedInstance] dreamDeepPath]];
    //: dict[@"birth"] = [userInfo newStringValueForKey:@"birthday"];
    dict[[[LibraryData sharedInstance] kTagKey]] = [userInfo to:[[LibraryData sharedInstance] m_comparableUrl]];
    //: dict[@"email"] = me.userInfo.email.length ? me.userInfo.email : @"";
    dict[[[LibraryData sharedInstance] mainSpendingText]] = me.userInfo.email.length ? me.userInfo.email : @"";
    //: dict[@"sign"] = [userInfo newStringValueForKey:@"sign"];
    dict[[[LibraryData sharedInstance] appDialCustomerValue]] = [userInfo to:[[LibraryData sharedInstance] appDialCustomerValue]];
    //: return dict;
    return dict;
}

//: #pragma mark - 修改操作
#pragma mark - 修改操作
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value{
+(void)thumb:(NSDictionary *)userInfo selected:(NSString *)key index:(NSString *)value{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    //: [dict setObject:value forKey:key];
    [dict setObject:value forKey:key];
    //: [ZCHttpManager getWithUrl:@"https://imapi.9idbq.cn/api/user/edit" params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[[LibraryData sharedInstance] show_tacticId] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = resultDict[@"code"];
        NSString *code = resultDict[[[LibraryData sharedInstance] kTingMsg]];
        //: if (code.integerValue > 0) {
        if (code.integerValue > 0) {

        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}




//: + (void)refreshRegistConfig:(GlobalConfigBlock)block{
+ (void)team:(GlobalConfigBlock)block{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] user_grayName]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict arrayMust:[[LibraryData sharedInstance] m_elaboratePath]];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *ismustmobile = [data newStringValueForKey:@"ismustmobile"];
            NSString *ismustmobile = [data to:[[LibraryData sharedInstance] kBackgroundThickUrl]];//客户端注册ID是否必须为手机号
            //: NSString *isinvitecode = [data newStringValueForKey:@"isinvitecode"];
            NSString *isinvitecode = [data to:[[LibraryData sharedInstance] dreamWheatEntryIdent]];//邀请码是否必填
            //: NSString *isavatar = [data newStringValueForKey:@"isavatar"];
            NSString *isavatar = [data to:[[LibraryData sharedInstance] m_touchRangeTitle]];//是否强制上传头像
            //: NSString *issecret = [data newStringValueForKey:@"issecret"];
            NSString *issecret = [data to:[[LibraryData sharedInstance] dreamDignityId]];//是否强制密保
            //: NSString *logininfo = [data newStringValueForKey:@"logininfo"];
            NSString *logininfo = [data to:[[LibraryData sharedInstance] notiTitleCollectionMessage]];//登录页自定义信息
            //: NSString *isregitor = [data newStringValueForKey:@"isregitor"];
            NSString *isregitor = [data to:[[LibraryData sharedInstance] m_backPath]];//1 允许注册 0 不允许
            //: NSString *isweixinlogin = [data newStringValueForKey:@"isweixinlogin"];
            NSString *isweixinlogin = [data to:[[LibraryData sharedInstance] m_elementaryTitle]];//是/开启微信登录
            //: NSString *isspeakingtime = [data newStringValueForKey:@"isspeakingtime"];
            NSString *isspeakingtime = [data to:[[LibraryData sharedInstance] mainButtonFateUrl]];//是否控制发言间隔时间

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            NameDefaults *userDefaults = [NameDefaults argument];
            //: userDefaults.ismustmobile = ismustmobile;
            userDefaults.ismustmobile = ismustmobile;
            //: userDefaults.isinvitecode = isinvitecode;
            userDefaults.isinvitecode = isinvitecode;
            //: userDefaults.isavatar = isavatar;
            userDefaults.isavatar = isavatar;
            //: userDefaults.issecret = issecret;
            userDefaults.issecret = issecret;
            //: userDefaults.logininfo = logininfo;
            userDefaults.logininfo = logininfo;
            //: userDefaults.isregitor = isregitor;
            userDefaults.isregitor = isregitor;
            //: userDefaults.isweixinlogin = isweixinlogin;
            userDefaults.isweixinlogin = isweixinlogin;
            //: userDefaults.isspeakingtime = isspeakingtime;
            userDefaults.isspeakingtime = isspeakingtime;
            //: !block ? :block(data);
            !block ? :block(data);
        //: }else{
        }else{
            //: !block ? :block(@{});
            !block ? :block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: !block ? :block(@{});
        !block ? :block(@{});
    //: }];
    }];
}

/**
 "ismustmobile": 0,//客户端注册ID必须为手机号
 "isinvitecode": 1,//客户端注册邀请码为必填项
 "isweixinlogin": 1,////是/开启微信登录
 "isspeakingtime": 1,//是否控制发言间隔时间
 "isavatar": 0,//注册是否强制上传头像
 "issecret": 0,//注册是否强制密保
 "logininfo": "探索-发现"//登录页自定义信息
 "isregitor":1//1 允许注册 0 不允许
 */
//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block{
+(void)nameConfig:(GlobalConfigBlock)block{


    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/appSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] m_shouldValue]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict arrayMust:[[LibraryData sharedInstance] m_elaboratePath]];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *servicer = [data newStringValueForKey:@"servicer"];
            NSString *servicer = [data to:[[LibraryData sharedInstance] mainBallotUrl]];
            //: NSString *globalsign = [data newStringValueForKey:@"globalsign"];
            NSString *globalsign = [data to:[[LibraryData sharedInstance] userSmokeMsg]];
            //: NSString *redpacket = [data newStringValueForKey:@"redpacket"];
            NSString *redpacket = [data to:[[LibraryData sharedInstance] kInfoAnxiousWithMessage]];
            //: NSString *getpassword = [data newStringValueForKey:@"getpassword"];
            NSString *getpassword = [data to:[[LibraryData sharedInstance] userJurisdictionPath]];
            //: NSString *istsbutton = [data newStringValueForKey:@"istsbutton"];
            NSString *istsbutton = [data to:[[LibraryData sharedInstance] show_ballotIdent]];
//            NSString *yshref = [data newStringValueForKey:@"yshref"];
            //: NSString *yshref = @"https://www.yatpor.com/privacy.html";
            NSString *yshref = [[LibraryData sharedInstance] show_literValue];
            //: NSString *umappkey_android = [data newStringValueForKey:@"umappkey_android"];
            NSString *umappkey_android = [data to:[[LibraryData sharedInstance] user_goGrayPath]];
            //: NSString *umappkey_ios = [data newStringValueForKey:@"umappkey_ios"];
            NSString *umappkey_ios = [data to:[[LibraryData sharedInstance] kMareStr]];

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            NameDefaults *userDefaults = [NameDefaults argument];
            //: userDefaults.globalsign = globalsign;
            userDefaults.globalsign = globalsign;
            //: userDefaults.redpacket = redpacket;
            userDefaults.redpacket = redpacket;
            //: userDefaults.yshref = yshref;
            userDefaults.yshref = yshref;
            //: userDefaults.istsbutton = istsbutton;
            userDefaults.istsbutton = istsbutton;
            //: userDefaults.servicer = servicer;
            userDefaults.servicer = servicer;
            //: userDefaults.umappkey_ios = umappkey_ios;
            userDefaults.umappkey_ios = umappkey_ios;

            //: userDefaults.allowdeletion = [data stringValueForKey:@"allowdeletion" defaultValue:@"1"];
            userDefaults.allowdeletion = [data wearer:[[LibraryData sharedInstance] kContentRemoveMessage] bit:@"1"];

            //: NSString *autoLogin = [data newStringValueForKey:@"autoLogin"];
            NSString *autoLogin = [data to:[[LibraryData sharedInstance] show_layerCoverageIdent]];
            //: userDefaults.autoLogin = autoLogin;
            userDefaults.autoLogin = autoLogin;

            //: userDefaults.chatnotify = [data newStringValueForKey:@"chatnotify"];
            userDefaults.chatnotify = [data to:[[LibraryData sharedInstance] mViewWitnessIdent]];

            //: userDefaults.showMessageRead = [data stringValueForKey:@"Messageread" defaultValue:@"1"];
            userDefaults.showMessageRead = [data wearer:[[LibraryData sharedInstance] appSpendingText] bit:@"1"];
//            userDefaults.showMessageRead =  kConstant_1;

            //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
            [PathBottom voiceManager].isRequestAutoLoginFinish = YES;

            //: userDefaults.yinnihione = [data stringValueForKey:@"yinnihione" defaultValue:@"1"];
            userDefaults.yinnihione = [data wearer:[[LibraryData sharedInstance] app_commentComfortableIdent] bit:@"1"];

            //: block(data);
            block(data);

        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block{
+(void)refreshInRequestSend:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/getBookStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] showTingUrl]] table:nil carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: block(resultDict);
        block(resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block {
+ (void)description:(NSDictionary *)params make:(GlobalConfigBlock)block {

    //: NSString *urls = [NIMUserDefaults standardUserDefaults].chatnotify;
    NSString *urls = [NameDefaults argument].chatnotify;
    //: if (!urls) {
    if (!urls) {
        //: return;
        return;
    }

//    [TroublingName postWithUrl:url params:params isShow:NO success:^(id responseObject) {
//        
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSDictionary *data = [resultDict valueObjectForKey:@"data"];
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//
//        if (code.integerValue == 0 && data.count > 0) {
//            block(data);
//        }else{
//            block(@{});
//        }
//    } failed:^(id responseObject, NSError *error) {
//        block(@{});
//    }];


    //: AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: [securityPolicy setValidatesDomainName:NO];
    [securityPolicy setValidatesDomainName:NO];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: manager.securityPolicy = securityPolicy;
    manager.securityPolicy = securityPolicy;
    //: manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", nil];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[[LibraryData sharedInstance] user_regardName], nil];

    //: NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[[LibraryData sharedInstance] showWindowHospitalFormat]];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[[LibraryData sharedInstance] user_regardName] forHTTPHeaderField:[[LibraryData sharedInstance] mSpendingMsg]];

    // body
    //: NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];

    //: [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:[[LibraryData sharedInstance] show_customUrl]];
    //: [request setHTTPBody:postData];
    [request setHTTPBody:postData];



    //: NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {

    //: } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {

    //: } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {

        //: NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        //: block(mutDic);
        block(mutDic);

    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block {
+ (void)redUser:(GlobalConfigBlock)block {
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/generateUser"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] notiNecessityByRangeId]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict arrayMust:[[LibraryData sharedInstance] m_elaboratePath]];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[LibraryData sharedInstance] kTingMsg]];

        //: if (code.integerValue == 0 && data.count > 0) {
        if (code.integerValue == 0 && data.count > 0) {
            //: block(data);
            block(data);
        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block{
+(void)everyRefresh:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkmoments"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] user_dignityMessage]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[LibraryData sharedInstance] kTingMsg]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"1";
            [NameDefaults argument].friendsCircle = @"1";
        //: }else{
        }else{
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"0";
            [NameDefaults argument].friendsCircle = @"0";
        }
        //: block(@{});
        block(@{});
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block{
+(void)of:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/systemSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] app_proOrangeMessage]] table:nil carteDuJour:NO behindValue:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[LibraryData sharedInstance] kTingMsg]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[LibraryData sharedInstance] m_elaboratePath]];
            //: [NIMUserDefaults standardUserDefaults].islogin = [data newStringValueForKey:@"islogin"];
            [NameDefaults argument].islogin = [data to:[[LibraryData sharedInstance] k_thematicsStr]];
            //: [NIMUserDefaults standardUserDefaults].isclear = [data newStringValueForKey:@"isclear"];
            [NameDefaults argument].isclear = [data to:[[LibraryData sharedInstance] showArmyPath]];
            //: block(data);
            block(data);
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)deleteUser:(GlobalConfigBlock)block{
+(void)sign:(GlobalConfigBlock)block{

    //: NSDictionary *params = @{@"account":[NIMUserDefaults standardUserDefaults].accountName?:@"" , @"password":[NIMUserDefaults standardUserDefaults].pCode?:@""};
    NSDictionary *params = @{[[LibraryData sharedInstance] app_colaName]:[NameDefaults argument].accountName?:@"" , [[LibraryData sharedInstance] main_allowTitle]:[NameDefaults argument].pCode?:@""};
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/deleteUser"] params:params isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LibraryData sharedInstance] dreamProcessorBubbleIsleMsg]] table:params carteDuJour:YES behindValue:^(id responseObject) {

        //: block(@{});
        block(@{});

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}



//: @end
@end