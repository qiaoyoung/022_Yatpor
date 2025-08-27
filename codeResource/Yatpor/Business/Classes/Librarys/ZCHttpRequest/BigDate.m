
#import <Foundation/Foundation.h>

@interface EmpowerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EmpowerData

+ (instancetype)sharedInstance {
    static EmpowerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)EmpowerDataToData:(NSString *)value {
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

- (Byte *)EmpowerDataToCache:(Byte *)data {
    int necessityButton = data[0];
    Byte hospital = data[1];
    int spark = data[2];
    for (int i = spark; i < spark + necessityButton; i++) {
        int value = data[i] + hospital;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[spark + necessityButton] = 0;
    return data + spark;
}

- (NSString *)StringFromEmpowerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EmpowerDataToCache:data]];
}

//: 1.0.0
- (NSString *)m_quarterbackLiterIgnoreId {
    /* static */ NSString *m_quarterbackLiterIgnoreId = nil;
    if (!m_quarterbackLiterIgnoreId) {
		NSString *origin = @"05630BF3A326B660F32037CECBCDCBCD7C";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_quarterbackLiterIgnoreId = [self StringFromEmpowerData:value];
    }
    return m_quarterbackLiterIgnoreId;
}

//: iPhone 4
- (NSString *)mSeniorIdent {
    /* static */ NSString *mSeniorIdent = nil;
    if (!mSeniorIdent) {
		NSString *origin = @"084E0C8C56CB8A64B4C3F88A1B021A212017D2E6AA";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSeniorIdent = [self StringFromEmpowerData:value];
    }
    return mSeniorIdent;
}

//: iPhone9,3
- (NSString *)dreamFlameData {
    /* static */ NSString *dreamFlameData = nil;
    if (!dreamFlameData) {
		NSString *origin = @"093C032D142C333229FDF0F792";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFlameData = [self StringFromEmpowerData:value];
    }
    return dreamFlameData;
}

//: iPhone1,1
- (NSString *)notiArgueName {
    /* static */ NSString *notiArgueName = nil;
    if (!notiArgueName) {
		NSString *origin = @"093C0BB4F9D19850C57D5B2D142C333229F5F0F515";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiArgueName = [self StringFromEmpowerData:value];
    }
    return notiArgueName;
}

//: iPhone9,4
- (NSString *)main_operationId {
    /* static */ NSString *main_operationId = nil;
    if (!main_operationId) {
		NSString *origin = @"091A074ECBC0D04F364E55544B1F121AA9";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_operationId = [self StringFromEmpowerData:value];
    }
    return main_operationId;
}

//: Verizon iPhone 4
- (NSString *)show_windowId {
    /* static */ NSString *show_windowId = nil;
    if (!show_windowId) {
		NSString *origin = @"101905FD253D4C59506156550750374F56554C071B6A";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_windowId = [self StringFromEmpowerData:value];
    }
    return show_windowId;
}

//: iPhone12,5
- (NSString *)show_harassmentPath {
    /* static */ NSString *show_harassmentPath = nil;
    if (!show_harassmentPath) {
		NSString *origin = @"0A010758ED96F8684F676E6D6430312B3434";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_harassmentPath = [self StringFromEmpowerData:value];
    }
    return show_harassmentPath;
}

//: x86_64
- (NSString *)notiValueRestoreOperationMessage {
    /* static */ NSString *notiValueRestoreOperationMessage = nil;
    if (!notiValueRestoreOperationMessage) {
		NSString *origin = @"06190D548921FF69F892ACF3715F1F1D461D1B4D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiValueRestoreOperationMessage = [self StringFromEmpowerData:value];
    }
    return notiValueRestoreOperationMessage;
}

//: iPhone9,1
- (NSString *)noti_viewerDonWindowKey {
    /* static */ NSString *noti_viewerDonWindowKey = nil;
    if (!noti_viewerDonWindowKey) {
		NSString *origin = @"09060B72C795878AE02632634A6269685F33262B8A";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_viewerDonWindowKey = [self StringFromEmpowerData:value];
    }
    return noti_viewerDonWindowKey;
}

//: iPhone 6s
- (NSString *)notiValuePath {
    /* static */ NSString *notiValuePath = nil;
    if (!notiValuePath) {
		NSString *origin = @"09320704C0BB9C371E363D3C33EE044144";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiValuePath = [self StringFromEmpowerData:value];
    }
    return notiValuePath;
}

//: iPhone12,1
- (NSString *)noti_relativelyDonContent {
    /* static */ NSString *noti_relativelyDonContent = nil;
    if (!noti_relativelyDonContent) {
		NSString *origin = @"0A5805693B11F81017160DD9DAD4D981";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_relativelyDonContent = [self StringFromEmpowerData:value];
    }
    return noti_relativelyDonContent;
}

//: iPhone5,4
- (NSString *)mTableKey {
    /* static */ NSString *mTableKey = nil;
    if (!mTableKey) {
		NSString *origin = @"09160861D57B100E533A5259584F1F161E9D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTableKey = [self StringFromEmpowerData:value];
    }
    return mTableKey;
}

//: iPhone6,2
- (NSString *)user_legislationName {
    /* static */ NSString *user_legislationName = nil;
    if (!user_legislationName) {
		NSString *origin = @"095C0717EF066A0DF40C131209DAD0D68F";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_legislationName = [self StringFromEmpowerData:value];
    }
    return user_legislationName;
}

//: iPhone 11 Pro Max
- (NSString *)k_remoteStopSpendingTitle {
    /* static */ NSString *k_remoteStopSpendingTitle = nil;
    if (!k_remoteStopSpendingTitle) {
		NSString *origin = @"113F0A9B6D2D1765E9DD2A1129302F26E1F2F2E1113330E10E22396E";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_remoteStopSpendingTitle = [self StringFromEmpowerData:value];
    }
    return k_remoteStopSpendingTitle;
}

//: iPhone SE
- (NSString *)m_customerData {
    /* static */ NSString *m_customerData = nil;
    if (!m_customerData) {
		NSString *origin = @"090B070908E7745E455D64635A15483A3E";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_customerData = [self StringFromEmpowerData:value];
    }
    return m_customerData;
}

//: Accept-Language
- (NSString *)userNeedId {
    /* static */ NSString *userNeedId = nil;
    if (!userNeedId) {
		NSString *origin = @"0F1604112B4D4D4F5A5E17364B58515F4B514FC7";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userNeedId = [self StringFromEmpowerData:value];
    }
    return userNeedId;
}

//: iPhone6,1
- (NSString *)notiWithFormat {
    /* static */ NSString *notiWithFormat = nil;
    if (!notiWithFormat) {
		NSString *origin = @"095C07EC408CED0DF40C131209DAD0D58E";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiWithFormat = [self StringFromEmpowerData:value];
    }
    return notiWithFormat;
}

//: iPhone8,2
- (NSString *)dreamBagMessage {
    /* static */ NSString *dreamBagMessage = nil;
    if (!dreamBagMessage) {
		NSString *origin = @"09260BC734F4A29303E9DE432A4249483F12060C70";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamBagMessage = [self StringFromEmpowerData:value];
    }
    return dreamBagMessage;
}

//: iPhone2,1
- (NSString *)userTheologicalMsg {
    /* static */ NSString *userTheologicalMsg = nil;
    if (!userTheologicalMsg) {
		NSString *origin = @"091607D0620967533A5259584F1C161B25";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTheologicalMsg = [self StringFromEmpowerData:value];
    }
    return userTheologicalMsg;
}

//: iPhone13
- (NSString *)show_modelFormat {
    /* static */ NSString *show_modelFormat = nil;
    if (!show_modelFormat) {
		NSString *origin = @"082A0DAC54A4246630D40612AE3F263E45443B0709ED";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_modelFormat = [self StringFromEmpowerData:value];
    }
    return show_modelFormat;
}

//: deviceNumber
- (NSString *)app_constantlyName {
    /* static */ NSString *app_constantlyName = nil;
    if (!app_constantlyName) {
		NSString *origin = @"0C5B03090A1B0E080AF31A12070A17F3";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_constantlyName = [self StringFromEmpowerData:value];
    }
    return app_constantlyName;
}

//: iPhone10,2
- (NSString *)notiMiniData {
    /* static */ NSString *notiMiniData = nil;
    if (!notiMiniData) {
		NSString *origin = @"0A620DABBD098E067D430FD51307EE060D0C03CFCECAD0D1";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMiniData = [self StringFromEmpowerData:value];
    }
    return notiMiniData;
}

//: iPhone10,6
- (NSString *)app_windowUrl {
    /* static */ NSString *app_windowUrl = nil;
    if (!app_windowUrl) {
		NSString *origin = @"0A3F0CA8AAC49C3A51C0AAF62A1129302F26F2F1EDF772";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_windowUrl = [self StringFromEmpowerData:value];
    }
    return app_windowUrl;
}

//: iPhone7,2
- (NSString *)app_thirtyPath {
    /* static */ NSString *app_thirtyPath = nil;
    if (!app_thirtyPath) {
		NSString *origin = @"09520BF7FD6B5AFF4F267D17FE161D1C13E5DAE00D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_thirtyPath = [self StringFromEmpowerData:value];
    }
    return app_thirtyPath;
}

//: zh-CN
- (NSString *)showClaimUrl {
    /* static */ NSString *showClaimUrl = nil;
    if (!showClaimUrl) {
		NSString *origin = @"05030710CE12AF77652A404B8E";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showClaimUrl = [self StringFromEmpowerData:value];
    }
    return showClaimUrl;
}

//: iPhone 7
- (NSString *)kWindowIsleUrl {
    /* static */ NSString *kWindowIsleUrl = nil;
    if (!kWindowIsleUrl) {
		NSString *origin = @"084805C31821082027261DD8EF0C";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kWindowIsleUrl = [self StringFromEmpowerData:value];
    }
    return kWindowIsleUrl;
}

//: iPhone3,1
- (NSString *)showVerticalData {
    /* static */ NSString *showVerticalData = nil;
    if (!showVerticalData) {
		NSString *origin = @"090D0562895C435B626158261F24A2";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showVerticalData = [self StringFromEmpowerData:value];
    }
    return showVerticalData;
}

//: version
- (NSString *)main_dismissIdent {
    /* static */ NSString *main_dismissIdent = nil;
    if (!main_dismissIdent) {
		NSString *origin = @"074B0A1E361B17EF032A2B1A27281E24237D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_dismissIdent = [self StringFromEmpowerData:value];
    }
    return main_dismissIdent;
}

//: iPhone10,4
- (NSString *)kDrunkImageId {
    /* static */ NSString *kDrunkImageId = nil;
    if (!kDrunkImageId) {
		NSString *origin = @"0A4D031C031B222118E4E3DFE778";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDrunkImageId = [self StringFromEmpowerData:value];
    }
    return kDrunkImageId;
}

//: iPhone 6s Plus
- (NSString *)appComfortableStr {
    /* static */ NSString *appComfortableStr = nil;
    if (!appComfortableStr) {
		NSString *origin = @"0E5A0A53C8AE0B8E6EC20FF60E15140BC6DC19C6F6121B19F7";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appComfortableStr = [self StringFromEmpowerData:value];
    }
    return appComfortableStr;
}

//: iPhone 6
- (NSString *)showArtificialMsg {
    /* static */ NSString *showArtificialMsg = nil;
    if (!showArtificialMsg) {
		NSString *origin = @"08050A745C58B3ECB90D644B636A69601B310D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showArtificialMsg = [self StringFromEmpowerData:value];
    }
    return showArtificialMsg;
}

//: iPhone 8
- (NSString *)userRemoveValue {
    /* static */ NSString *userRemoveValue = nil;
    if (!userRemoveValue) {
		NSString *origin = @"08220B91D902A4E1926211472E464D4C43FE16B9";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRemoveValue = [self StringFromEmpowerData:value];
    }
    return userRemoveValue;
}

//: iPhone10,3
- (NSString *)kBackKey {
    /* static */ NSString *kBackKey = nil;
    if (!kBackKey) {
		NSString *origin = @"0A0B035E455D64635A2625212809";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kBackKey = [self StringFromEmpowerData:value];
    }
    return kBackKey;
}

//: iPhone12,3
- (NSString *)showOperationIdent {
    /* static */ NSString *showOperationIdent = nil;
    if (!showOperationIdent) {
		NSString *origin = @"0A1F0AE0B6E44CBB22B14A3149504F4612130D146C";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showOperationIdent = [self StringFromEmpowerData:value];
    }
    return showOperationIdent;
}

//: iPhone 8 Plus
- (NSString *)noti_imageUrl {
    /* static */ NSString *noti_imageUrl = nil;
    if (!noti_imageUrl) {
		NSString *origin = @"0D4805413821082027261DD8F0D808242D2B64";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_imageUrl = [self StringFromEmpowerData:value];
    }
    return noti_imageUrl;
}

//: deviceType
- (NSString *)notiCelebrityName {
    /* static */ NSString *notiCelebrityName = nil;
    if (!notiCelebrityName) {
		NSString *origin = @"0A2D09EF4842B15A233738493C3638274C433835";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiCelebrityName = [self StringFromEmpowerData:value];
    }
    return notiCelebrityName;
}

//: iPhone5,2
- (NSString *)dream_bladeKey {
    /* static */ NSString *dream_bladeKey = nil;
    if (!dream_bladeKey) {
		NSString *origin = @"094B0C84CC93F6EB68CA02FB1E051D24231AEAE1E7DA";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_bladeKey = [self StringFromEmpowerData:value];
    }
    return dream_bladeKey;
}

//: iPhone10,1
- (NSString *)kEndTitle {
    /* static */ NSString *kEndTitle = nil;
    if (!kEndTitle) {
		NSString *origin = @"0A340BBED8580789AB0315351C343B3A31FDFCF8FD9D";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kEndTitle = [self StringFromEmpowerData:value];
    }
    return kEndTitle;
}

//: iPhone10,5
- (NSString *)kArtificialTitle {
    /* static */ NSString *kArtificialTitle = nil;
    if (!kArtificialTitle) {
		NSString *origin = @"0A3307F927038D361D353C3B32FEFDF902A7";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kArtificialTitle = [self StringFromEmpowerData:value];
    }
    return kArtificialTitle;
}

//: iPhone 11 Pro
- (NSString *)k_literIdent {
    /* static */ NSString *k_literIdent = nil;
    if (!k_literIdent) {
		NSString *origin = @"0D060D6342C02A2DF16AEB2174634A6269685F1A2B2B1A4A6C6997";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_literIdent = [self StringFromEmpowerData:value];
    }
    return k_literIdent;
}

//: iPhone5,1
- (NSString *)mainAgeViewId {
    /* static */ NSString *mainAgeViewId = nil;
    if (!mainAgeViewId) {
		NSString *origin = @"09010758BF5E19684F676E6D64342B3064";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainAgeViewId = [self StringFromEmpowerData:value];
    }
    return mainAgeViewId;
}

//: iPhone 11
- (NSString *)showIllValue {
    /* static */ NSString *showIllValue = nil;
    if (!showIllValue) {
		NSString *origin = @"094705AE7C22092128271ED9EAEA82";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showIllValue = [self StringFromEmpowerData:value];
    }
    return showIllValue;
}

//: channel
- (NSString *)k_sharePitaName {
    /* static */ NSString *k_sharePitaName = nil;
    if (!k_sharePitaName) {
		NSString *origin = @"071D07F2D8CA9C464B445151484FFC";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_sharePitaName = [self StringFromEmpowerData:value];
    }
    return k_sharePitaName;
}

//: WIFI
- (NSString *)mSmokeData {
    /* static */ NSString *mSmokeData = nil;
    if (!mSmokeData) {
		NSString *origin = @"040F0AF5C0C8D9361E1A483A373A30";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSmokeData = [self StringFromEmpowerData:value];
    }
    return mSmokeData;
}

//: iPhone5,3
- (NSString *)mainDropUrl {
    /* static */ NSString *mainDropUrl = nil;
    if (!mainDropUrl) {
		NSString *origin = @"090B070CA6CE7E5E455D64635A2A2128E2";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDropUrl = [self StringFromEmpowerData:value];
    }
    return mainDropUrl;
}

//: iPhone
- (NSString *)dream_claimStr {
    /* static */ NSString *dream_claimStr = nil;
    if (!dream_claimStr) {
		NSString *origin = @"06160B27DBA7D61CD11E9B533A5259584FE0";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_claimStr = [self StringFromEmpowerData:value];
    }
    return dream_claimStr;
}

//: App Store
- (NSString *)app_imagePath {
    /* static */ NSString *app_imagePath = nil;
    if (!app_imagePath) {
		NSString *origin = @"09170CC2B5210DD57B1FE7B22A5959093C5D585B4E1F";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_imagePath = [self StringFromEmpowerData:value];
    }
    return app_imagePath;
}

//: iPhone 7 Plus
- (NSString *)user_halfwayMsg {
    /* static */ NSString *user_halfwayMsg = nil;
    if (!user_halfwayMsg) {
		NSString *origin = @"0D5D0BDD89DD50E07030A00CF30B121108C3DAC3F30F181642";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_halfwayMsg = [self StringFromEmpowerData:value];
    }
    return user_halfwayMsg;
}

//: iPhone 5C
- (NSString *)user_estimateIdent {
    /* static */ NSString *user_estimateIdent = nil;
    if (!user_estimateIdent) {
		NSString *origin = @"0960054A3209F0080F0E05C0D5E399";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_estimateIdent = [self StringFromEmpowerData:value];
    }
    return user_estimateIdent;
}

//: iphone
- (NSString *)mAnythingValue {
    /* static */ NSString *mAnythingValue = nil;
    if (!mAnythingValue) {
		NSString *origin = @"06470322292128271EF2";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mAnythingValue = [self StringFromEmpowerData:value];
    }
    return mAnythingValue;
}

//: primaryKey
- (NSString *)userOfName {
    /* static */ NSString *userOfName = nil;
    if (!userOfName) {
		NSString *origin = @"0A5D0C599038FF1DF123450213150C1004151CEE081CD2";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userOfName = [self StringFromEmpowerData:value];
    }
    return userOfName;
}

//: iPhone 4S
- (NSString *)user_othersIdent {
    /* static */ NSString *user_othersIdent = nil;
    if (!user_othersIdent) {
		NSString *origin = @"09120CF9843F792E20031A26573E565D5C530E224179";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_othersIdent = [self StringFromEmpowerData:value];
    }
    return user_othersIdent;
}

//: iPhone X
- (NSString *)app_efficiencyStr {
    /* static */ NSString *app_efficiencyStr = nil;
    if (!app_efficiencyStr) {
		NSString *origin = @"0863094A315FF1664106ED050C0B02BDF558";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_efficiencyStr = [self StringFromEmpowerData:value];
    }
    return app_efficiencyStr;
}

//: Astrologie
- (NSString *)notiScripStr {
    /* static */ NSString *notiScripStr = nil;
    if (!notiScripStr) {
		NSString *origin = @"0A350D9294B3B04CA9CFD9C6330C3E3F3D3A373A3234304A";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiScripStr = [self StringFromEmpowerData:value];
    }
    return notiScripStr;
}

//: iPhone 3G
- (NSString *)noti_illWheatMsg {
    /* static */ NSString *noti_illWheatMsg = nil;
    if (!noti_illWheatMsg) {
		NSString *origin = @"09080C44A3B805199357937861486067665D182B3F64";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_illWheatMsg = [self StringFromEmpowerData:value];
    }
    return noti_illWheatMsg;
}

//: app
- (NSString *)mIsleMessage {
    /* static */ NSString *mIsleMessage = nil;
    if (!mIsleMessage) {
		NSString *origin = @"03070690D54F5A696937";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mIsleMessage = [self StringFromEmpowerData:value];
    }
    return mIsleMessage;
}

//: macAddress
- (NSString *)noti_coverStr {
    /* static */ NSString *noti_coverStr = nil;
    if (!noti_coverStr) {
		NSString *origin = @"0A10094E014C211ED15D515331545462556363DE";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_coverStr = [self StringFromEmpowerData:value];
    }
    return noti_coverStr;
}

//: iPhone4,1
- (NSString *)k_quarterbackRedName {
    /* static */ NSString *k_quarterbackRedName = nil;
    if (!k_quarterbackRedName) {
		NSString *origin = @"090C0922A02EDA020C5D445C636259282025D6";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_quarterbackRedName = [self StringFromEmpowerData:value];
    }
    return k_quarterbackRedName;
}

//: sys
- (NSString *)kWitnessName {
    /* static */ NSString *kWitnessName = nil;
    if (!kWitnessName) {
		NSString *origin = @"033304DB404640BF";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kWitnessName = [self StringFromEmpowerData:value];
    }
    return kWitnessName;
}

//: 0100
- (NSString *)mCheckedFormat {
    /* static */ NSString *mCheckedFormat = nil;
    if (!mCheckedFormat) {
		NSString *origin = @"042A040206070606DF";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCheckedFormat = [self StringFromEmpowerData:value];
    }
    return mCheckedFormat;
}

//: iPhone9,2
- (NSString *)user_hiName {
    /* static */ NSString *user_hiName = nil;
    if (!user_hiName) {
		NSString *origin = @"09570312F91118170EE2D5DB52";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_hiName = [self StringFromEmpowerData:value];
    }
    return user_hiName;
}

//: iPhone 5
- (NSString *)mEtherUrl {
    /* static */ NSString *mEtherUrl = nil;
    if (!mEtherUrl) {
		NSString *origin = @"081E0BE687479CD262FAAD4B324A5150470217B7";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mEtherUrl = [self StringFromEmpowerData:value];
    }
    return mEtherUrl;
}

//: netType
- (NSString *)notiBarTingValue {
    /* static */ NSString *notiBarTingValue = nil;
    if (!notiBarTingValue) {
		NSString *origin = @"075204371C132202271E13A0";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBarTingValue = [self StringFromEmpowerData:value];
    }
    return notiBarTingValue;
}

//: iPhone7,1
- (NSString *)mainExamineFormat {
    /* static */ NSString *mainExamineFormat = nil;
    if (!mainExamineFormat) {
		NSString *origin = @"090F04675A4159605F56281D2276";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainExamineFormat = [self StringFromEmpowerData:value];
    }
    return mainExamineFormat;
}

//: iPhone 5S
- (NSString *)show_employerValue {
    /* static */ NSString *show_employerValue = nil;
    if (!show_employerValue) {
		NSString *origin = @"093303361D353C3B32ED022048";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_employerValue = [self StringFromEmpowerData:value];
    }
    return show_employerValue;
}

//: iPhone1,2
- (NSString *)main_byMessage {
    /* static */ NSString *main_byMessage = nil;
    if (!main_byMessage) {
		NSString *origin = @"094C031D041C232219E5E0E663";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_byMessage = [self StringFromEmpowerData:value];
    }
    return main_byMessage;
}

//: ios
- (NSString *)k_dotMessage {
    /* static */ NSString *k_dotMessage = nil;
    if (!k_dotMessage) {
		NSString *origin = @"033C032D333779";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_dotMessage = [self StringFromEmpowerData:value];
    }
    return k_dotMessage;
}

//: iPhone8,4
- (NSString *)mStateData {
    /* static */ NSString *mStateData = nil;
    if (!mStateData) {
		NSString *origin = @"092303462D454C4B4215091170";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mStateData = [self StringFromEmpowerData:value];
    }
    return mStateData;
}

//: iPhone 3GS
- (NSString *)dreamDetectiveUrl {
    /* static */ NSString *dreamDetectiveUrl = nil;
    if (!dreamDetectiveUrl) {
		NSString *origin = @"0A4F09635D8C539D4E1A0119201F16D1E4F8040E";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDetectiveUrl = [self StringFromEmpowerData:value];
    }
    return dreamDetectiveUrl;
}

//: iPhone 1G
- (NSString *)mSeeMsg {
    /* static */ NSString *mSeeMsg = nil;
    if (!mSeeMsg) {
		NSString *origin = @"090303664D656C6B621D2E448B";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSeeMsg = [self StringFromEmpowerData:value];
    }
    return mSeeMsg;
}

//: nettype
- (NSString *)mainDentStr {
    /* static */ NSString *mainDentStr = nil;
    if (!mainDentStr) {
		NSString *origin = @"07540ACA6C167D1E81D81A112020251C1192";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDentStr = [self StringFromEmpowerData:value];
    }
    return mainDentStr;
}

//: appVersion
- (NSString *)user_kitMessage {
    /* static */ NSString *user_kitMessage = nil;
    if (!user_kitMessage) {
		NSString *origin = @"0A240BDBCBC89B352BC3243D4C4C32414E4F454B4A85";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_kitMessage = [self StringFromEmpowerData:value];
    }
    return user_kitMessage;
}

//: iPhone 6 Plus
- (NSString *)kContainerUrl {
    /* static */ NSString *kContainerUrl = nil;
    if (!kContainerUrl) {
		NSString *origin = @"0D2B0C4CDF4F9E4A1EBD6FA03E253D44433AF50BF525414A4817";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContainerUrl = [self StringFromEmpowerData:value];
    }
    return kContainerUrl;
}

//: appName
- (NSString *)k_bubbleMessage {
    /* static */ NSString *k_bubbleMessage = nil;
    if (!k_bubbleMessage) {
		NSString *origin = @"07480D13BAAC43CAF43B395A541928280619251D5C";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_bubbleMessage = [self StringFromEmpowerData:value];
    }
    return k_bubbleMessage;
}

//: APPID
- (NSString *)notiContentUrl {
    /* static */ NSString *notiContentUrl = nil;
    if (!notiContentUrl) {
		NSString *origin = @"050305BCC93E4D4D46410A";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiContentUrl = [self StringFromEmpowerData:value];
    }
    return notiContentUrl;
}

//: iPhone3,2
- (NSString *)dreamOfIdent {
    /* static */ NSString *dreamOfIdent = nil;
    if (!dreamOfIdent) {
		NSString *origin = @"09400A74705B599CF6C82910282F2E25F3ECF275";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamOfIdent = [self StringFromEmpowerData:value];
    }
    return dreamOfIdent;
}

//: iPhone8,1
- (NSString *)show_claimFormat {
    /* static */ NSString *show_claimFormat = nil;
    if (!show_claimFormat) {
		NSString *origin = @"09470D897E479FC5E0535AF2CC22092128271EF1E5EAF3";
		NSData *data = [EmpowerData EmpowerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_claimFormat = [self StringFromEmpowerData:value];
    }
    return show_claimFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BigDate.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpRequestHeader.h"
#import "BigDate.h"
//: #import <net/if.h>
#import <net/if.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <net/if_dl.h>
#import <net/if_dl.h>
//: #import "sys/utsname.h"
#import "sys/utsname.h"

//: @implementation ZCHttpRequestHeader
@implementation BigDate
//: +(NSDictionary *)getHeader
+(NSDictionary *)groupDiscussion
{

    //: NSString *appName = @"Astrologie";
    NSString *appName = [[EmpowerData sharedInstance] notiScripStr];
    //: NSString *appVersion = @"1.0.0";
    NSString *appVersion = [[EmpowerData sharedInstance] m_quarterbackLiterIgnoreId];
    //: NSString *appid = [self getAppID];
    NSString *appid = [self tingId];
    //: NSString *channel = @"App Store";
    NSString *channel = [[EmpowerData sharedInstance] app_imagePath];
    //: NSString *deviceType = @"iphone";
    NSString *deviceType = [[EmpowerData sharedInstance] mAnythingValue];
    //: NSString *macAddress = [self macaddress];
    NSString *macAddress = [self text];
    //: NSString *netType = [self getNetType];
    NSString *netType = [self chapiter];
    //: NSString *primaryKey = @"iPhone";
    NSString *primaryKey = [[EmpowerData sharedInstance] dream_claimStr];//DEVICE_ID;
    //: NSString *sys = @"I";
    NSString *sys = @"I";
    //: NSString *version = @"1.0.0";
    NSString *version = [[EmpowerData sharedInstance] m_quarterbackLiterIgnoreId];
    //: NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];



    //: NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
    NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
                             //: appName,@"appName",
                             appName,[[EmpowerData sharedInstance] k_bubbleMessage],
                             //: appVersion,@"appVersion",
                             appVersion,[[EmpowerData sharedInstance] user_kitMessage],
                             //: channel,@"channel",
                             channel,[[EmpowerData sharedInstance] k_sharePitaName],
                             //: macAddress,@"macAddress",
                             macAddress,[[EmpowerData sharedInstance] noti_coverStr],
                             //: netType,@"netType",
                             netType,[[EmpowerData sharedInstance] notiBarTingValue],
                             //: primaryKey,@"primaryKey",
                             primaryKey,[[EmpowerData sharedInstance] userOfName],
                             //: @"zh-CN", @"Accept-Language",
                             [[EmpowerData sharedInstance] showClaimUrl], [[EmpowerData sharedInstance] userNeedId],
                             //: appid, @"APPID",
                             appid, [[EmpowerData sharedInstance] notiContentUrl],
                             //: sys,@"sys",
                             sys,[[EmpowerData sharedInstance] kWitnessName],
                             //: netType,@"nettype",
                             netType,[[EmpowerData sharedInstance] mainDentStr],
                             //: version,@"version",
                             version,[[EmpowerData sharedInstance] main_dismissIdent],
                             //: deviceType,@"deviceType",
                             deviceType,[[EmpowerData sharedInstance] notiCelebrityName],
                             //: uuid,@"deviceNumber",nil];
                             uuid,[[EmpowerData sharedInstance] app_constantlyName],nil];
    //NIF_TRACE(@"%@",dic);
    //: return dic;
    return dic;

}



//: + (NSString *)getAppID
+ (NSString *)tingId
{

    //    NSString *appId = [[NSUserDefaults standardUserDefaults] stringForKey:@"APPID"];
    //    if(appId != nil || [appId length]>0)
    //        return appId;

    //: UIDevice *device = [UIDevice currentDevice];
    UIDevice *device = [UIDevice currentDevice];
    //: NSString *appIDStr = @"";
    NSString *appIDStr = @"";

    //: NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];
    NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];

    //: NSString *firstNum;
    NSString *firstNum;
    //: NSString *secondNum;
    NSString *secondNum;

    //: if ([lines count] == 2) {
    if ([lines count] == 2) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];
        secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];


    //: } else if ([lines count] == 3) {
    } else if ([lines count] == 3) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
        secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
    //: } else {
    } else {
        //: firstNum = @"00";
        firstNum = @"00";
        //: secondNum = @"00";
        secondNum = @"00";
    }
    //: appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,@"ios",@"0100",@"app"];
    appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,[[EmpowerData sharedInstance] k_dotMessage],[[EmpowerData sharedInstance] mCheckedFormat],[[EmpowerData sharedInstance] mIsleMessage]];
    //: [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:@"APPID"];
    [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:[[EmpowerData sharedInstance] notiContentUrl]];
    //: [[NSUserDefaults standardUserDefaults]synchronize];
    [[NSUserDefaults standardUserDefaults]synchronize];
    //: return appIDStr;
    return appIDStr;

}

//: + (NSString *) macaddress
+ (NSString *) text
{

    //: int mib[6];
    int mib[6];
    //: size_t len;
    size_t len;
    //: char *buf;
    char *buf;
    //: unsigned char *ptr;
    unsigned char *ptr;
    //: struct if_msghdr *ifm;
    struct if_msghdr *ifm;
    //: struct sockaddr_dl *sdl;
    struct sockaddr_dl *sdl;

    //: mib[0] = 4;
    mib[0] = 4;
    //: mib[1] = 17;
    mib[1] = 17;
    //: mib[2] = 0;
    mib[2] = 0;
    //: mib[3] = 18;
    mib[3] = 18;
    //: mib[4] = 3;
    mib[4] = 3;

    //: if ((mib[5] = if_nametoindex("en0")) == 0) {
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        //: printf("Error: if_nametoindex error/n");
        printf("Error: if_nametoindex error/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 1/n");
        printf("Error: sysctl, take 1/n");
        //: return NULL;
        return NULL;
    }

    //: if ((buf = malloc(len)) == NULL) {
    if ((buf = malloc(len)) == NULL) {
        //: printf("Could not allocate memory. error!/n");
        printf("Could not allocate memory. error!/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 2");
        printf("Error: sysctl, take 2");
        //: return NULL;
        return NULL;
    }

    //: ifm = (struct if_msghdr *)buf;
    ifm = (struct if_msghdr *)buf;
    //: sdl = (struct sockaddr_dl *)(ifm + 1);
    sdl = (struct sockaddr_dl *)(ifm + 1);
    //: ptr = (unsigned char *)LLADDR(sdl);
    ptr = (unsigned char *)LLADDR(sdl);
    //: NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

//    NSLog(@"outString:%@", outstring);

    //: free(buf);
    free(buf);

    //: return [outstring uppercaseString];
    return [outstring uppercaseString];
}

//: + (NSString *)getNetType{
+ (NSString *)chapiter{
    //: NSString *netType = @"G";
    NSString *netType = @"G";
    //: netType = @"WIFI";
    netType = [[EmpowerData sharedInstance] mSmokeData];

    //: return netType;
    return netType;
}


//: +(NSString *)getIOSVersion{
+(NSString *)begin{
    //: NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    //: return phoneVersion;
    return phoneVersion;
}

//: +(NSString*)deviceVersion
+(NSString*)device
{
    // 需要
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    //iPhone
    //: if ([deviceString isEqualToString:@"iPhone1,1"]) return @"iPhone 1G";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] notiArgueName]]) return [[EmpowerData sharedInstance] mSeeMsg];
    //: if ([deviceString isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] main_byMessage]]) return [[EmpowerData sharedInstance] noti_illWheatMsg];
    //: if ([deviceString isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] userTheologicalMsg]]) return [[EmpowerData sharedInstance] dreamDetectiveUrl];
    //: if ([deviceString isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] showVerticalData]]) return [[EmpowerData sharedInstance] mSeniorIdent];
    //: if ([deviceString isEqualToString:@"iPhone3,2"]) return @"Verizon iPhone 4";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] dreamOfIdent]]) return [[EmpowerData sharedInstance] show_windowId];
    //: if ([deviceString isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] k_quarterbackRedName]]) return [[EmpowerData sharedInstance] user_othersIdent];
    //: if ([deviceString isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] mainAgeViewId]]) return [[EmpowerData sharedInstance] mEtherUrl];
    //: if ([deviceString isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] dream_bladeKey]]) return [[EmpowerData sharedInstance] mEtherUrl];
    //: if ([deviceString isEqualToString:@"iPhone5,3"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] mainDropUrl]]) return [[EmpowerData sharedInstance] user_estimateIdent];
    //: if ([deviceString isEqualToString:@"iPhone5,4"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] mTableKey]]) return [[EmpowerData sharedInstance] user_estimateIdent];
    //: if ([deviceString isEqualToString:@"iPhone6,1"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] notiWithFormat]]) return [[EmpowerData sharedInstance] show_employerValue];
    //: if ([deviceString isEqualToString:@"iPhone6,2"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] user_legislationName]]) return [[EmpowerData sharedInstance] show_employerValue];
    //: if ([deviceString isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] mainExamineFormat]]) return [[EmpowerData sharedInstance] kContainerUrl];
    //: if ([deviceString isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] app_thirtyPath]]) return [[EmpowerData sharedInstance] showArtificialMsg];
    //: if ([deviceString isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] show_claimFormat]]) return [[EmpowerData sharedInstance] notiValuePath];
    //: if ([deviceString isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] dreamBagMessage]]) return [[EmpowerData sharedInstance] appComfortableStr];
    //: if ([deviceString isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] mStateData]]) return [[EmpowerData sharedInstance] m_customerData];

    //: if ([deviceString isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] noti_viewerDonWindowKey]]) return [[EmpowerData sharedInstance] kWindowIsleUrl];//国行、日版、港行

    //: if ([deviceString isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] user_hiName]]) return [[EmpowerData sharedInstance] user_halfwayMsg];//港行、国行
    //: if ([deviceString isEqualToString:@"iPhone9,3"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] dreamFlameData]]) return [[EmpowerData sharedInstance] kWindowIsleUrl];//美版、台版
    //: if ([deviceString isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] main_operationId]]) return [[EmpowerData sharedInstance] user_halfwayMsg];//美版、台版

    //: if ([deviceString isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] kEndTitle]]) return [[EmpowerData sharedInstance] userRemoveValue];//国行(A1863)、日行(A1906)

    //: if ([deviceString isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] kDrunkImageId]]) return [[EmpowerData sharedInstance] userRemoveValue];//美版(Global/A1905)

    //: if ([deviceString isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] notiMiniData]]) return [[EmpowerData sharedInstance] noti_imageUrl];//国行(A1864)、日行(A1898)

    //: if ([deviceString isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] kArtificialTitle]]) return [[EmpowerData sharedInstance] noti_imageUrl];//美版(Global/A1897)

    //: if ([deviceString isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] kBackKey]]) return [[EmpowerData sharedInstance] app_efficiencyStr];//国行(A1865)、日行(A1902)

    //: if ([deviceString isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] app_windowUrl]]) return [[EmpowerData sharedInstance] app_efficiencyStr];//美版(Global/A1901)


    //: if ([deviceString isEqualToString:@"iPhone12,1"]) return @"iPhone 11";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] noti_relativelyDonContent]]) return [[EmpowerData sharedInstance] showIllValue];

    //: if ([deviceString isEqualToString:@"iPhone12,3"]) return @"iPhone 11 Pro";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] showOperationIdent]]) return [[EmpowerData sharedInstance] k_literIdent];

    //: if ([deviceString isEqualToString:@"iPhone12,5"]) return @"iPhone 11 Pro Max";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] show_harassmentPath]]) return [[EmpowerData sharedInstance] k_remoteStopSpendingTitle];

    //: if ([deviceString isEqualToString:@"x86_64"]) return @"iPhone13";
    if ([deviceString isEqualToString:[[EmpowerData sharedInstance] notiValueRestoreOperationMessage]]) return [[EmpowerData sharedInstance] show_modelFormat];



    //: return deviceString;
    return deviceString;
}

//: @end
@end