
#import <Foundation/Foundation.h>

typedef struct {
    Byte sufferDeep;
    Byte *utility;
    unsigned int capUserLiter;
	int titleKillerRegion;
	int criticalRoc;
} StructRhetoricData;

@interface RhetoricData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RhetoricData

+ (instancetype)sharedInstance {
    static RhetoricData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RhetoricDataToByte:(StructRhetoricData *)data {
    for (int i = 0; i < data->capUserLiter; i++) {
        data->utility[i] ^= data->sufferDeep;
    }
    data->utility[data->capUserLiter] = 0;
	if (data->capUserLiter >= 2) {
		data->titleKillerRegion = data->utility[0];
		data->criticalRoc = data->utility[1];
	}
    return data->utility;
}

- (NSString *)StringFromRhetoricData:(StructRhetoricData *)data {
    return [NSString stringWithUTF8String:(char *)[self RhetoricDataToByte:data]];
}

//: mt_strings
- (NSString *)app_laundryDistantKey {
    /* static */ NSString *app_laundryDistantKey = nil;
    if (!app_laundryDistantKey) {
        StructRhetoricData value = (StructRhetoricData){233, (Byte []){132, 157, 182, 154, 157, 155, 128, 135, 142, 154, 75}, 10, 127, 27};
        app_laundryDistantKey = [self StringFromRhetoricData:&value];
    }
    return app_laundryDistantKey;
}

//: sl_strings
- (NSString *)kWheatPath {
    /* static */ NSString *kWheatPath = nil;
    if (!kWheatPath) {
        StructRhetoricData value = (StructRhetoricData){23, (Byte []){100, 123, 72, 100, 99, 101, 126, 121, 112, 100, 164}, 10, 195, 112};
        kWheatPath = [self StringFromRhetoricData:&value];
    }
    return kWheatPath;
}

//: hant
- (NSString *)dreamCountKey {
    /* static */ NSString *dreamCountKey = nil;
    if (!dreamCountKey) {
        StructRhetoricData value = (StructRhetoricData){141, (Byte []){229, 236, 227, 249, 119}, 4, 196, 20};
        dreamCountKey = [self StringFromRhetoricData:&value];
    }
    return dreamCountKey;
}

//: %@/%@.xml
- (NSString *)show_flexibleAllowStr {
    /* static */ NSString *show_flexibleAllowStr = nil;
    if (!show_flexibleAllowStr) {
        StructRhetoricData value = (StructRhetoricData){98, (Byte []){71, 34, 77, 71, 34, 76, 26, 15, 14, 56}, 9, 93, 228};
        show_flexibleAllowStr = [self StringFromRhetoricData:&value];
    }
    return show_flexibleAllowStr;
}

//: fi_strings
- (NSString *)dream_entryPath {
    /* static */ NSString *dream_entryPath = nil;
    if (!dream_entryPath) {
        StructRhetoricData value = (StructRhetoricData){53, (Byte []){83, 92, 106, 70, 65, 71, 92, 91, 82, 70, 247}, 10, 142, 86};
        dream_entryPath = [self StringFromRhetoricData:&value];
    }
    return dream_entryPath;
}

//: bd_strings
- (NSString *)m_hiColumnTooFormat {
    /* static */ NSString *m_hiColumnTooFormat = nil;
    if (!m_hiColumnTooFormat) {
        StructRhetoricData value = (StructRhetoricData){226, (Byte []){128, 134, 189, 145, 150, 144, 139, 140, 133, 145, 73}, 10, 244, 158};
        m_hiColumnTooFormat = [self StringFromRhetoricData:&value];
    }
    return m_hiColumnTooFormat;
}

//: resources
- (NSString *)dreamImageWitnessId {
    /* static */ NSString *dreamImageWitnessId = nil;
    if (!dreamImageWitnessId) {
        StructRhetoricData value = (StructRhetoricData){58, (Byte []){72, 95, 73, 85, 79, 72, 89, 95, 73, 25}, 9, 242, 96};
        dreamImageWitnessId = [self StringFromRhetoricData:&value];
    }
    return dreamImageWitnessId;
}

//: eg_strings
- (NSString *)mainBluePath {
    /* static */ NSString *mainBluePath = nil;
    if (!mainBluePath) {
        StructRhetoricData value = (StructRhetoricData){72, (Byte []){45, 47, 23, 59, 60, 58, 33, 38, 47, 59, 167}, 10, 147, 212};
        mainBluePath = [self StringFromRhetoricData:&value];
    }
    return mainBluePath;
}

//: spa
- (NSString *)dreamPlodId {
    /* static */ NSString *dreamPlodId = nil;
    if (!dreamPlodId) {
        StructRhetoricData value = (StructRhetoricData){113, (Byte []){2, 1, 16, 193}, 3, 102, 38};
        dreamPlodId = [self StringFromRhetoricData:&value];
    }
    return dreamPlodId;
}

//: ko_strings
- (NSString *)user_othersContent {
    /* static */ NSString *user_othersContent = nil;
    if (!user_othersContent) {
        StructRhetoricData value = (StructRhetoricData){65, (Byte []){42, 46, 30, 50, 53, 51, 40, 47, 38, 50, 171}, 10, 156, 255};
        user_othersContent = [self StringFromRhetoricData:&value];
    }
    return user_othersContent;
}

//: zh_CN
- (NSString *)mainComfortableText {
    /* static */ NSString *mainComfortableText = nil;
    if (!mainComfortableText) {
        StructRhetoricData value = (StructRhetoricData){9, (Byte []){115, 97, 86, 74, 71, 28}, 5, 250, 214};
        mainComfortableText = [self StringFromRhetoricData:&value];
    }
    return mainComfortableText;
}

//: th_strings
- (NSString *)userAgeJurisdictionTitle {
    /* static */ NSString *userAgeJurisdictionTitle = nil;
    if (!userAgeJurisdictionTitle) {
        StructRhetoricData value = (StructRhetoricData){154, (Byte []){238, 242, 197, 233, 238, 232, 243, 244, 253, 233, 71}, 10, 1, 58};
        userAgeJurisdictionTitle = [self StringFromRhetoricData:&value];
    }
    return userAgeJurisdictionTitle;
}

//: it_strings
- (NSString *)appFrameKey {
    /* static */ NSString *appFrameKey = nil;
    if (!appFrameKey) {
        StructRhetoricData value = (StructRhetoricData){33, (Byte []){72, 85, 126, 82, 85, 83, 72, 79, 70, 82, 26}, 10, 103, 230};
        appFrameKey = [self StringFromRhetoricData:&value];
    }
    return appFrameKey;
}

//: hr_strings
- (NSString *)k_counselorMsg {
    /* static */ NSString *k_counselorMsg = nil;
    if (!k_counselorMsg) {
        StructRhetoricData value = (StructRhetoricData){248, (Byte []){144, 138, 167, 139, 140, 138, 145, 150, 159, 139, 122}, 10, 169, 34};
        k_counselorMsg = [self StringFromRhetoricData:&value];
    }
    return k_counselorMsg;
}

//: hu_strings
- (NSString *)dreamInfoValue {
    /* static */ NSString *dreamInfoValue = nil;
    if (!dreamInfoValue) {
        StructRhetoricData value = (StructRhetoricData){30, (Byte []){118, 107, 65, 109, 106, 108, 119, 112, 121, 109, 71}, 10, 28, 50};
        dreamInfoValue = [self StringFromRhetoricData:&value];
    }
    return dreamInfoValue;
}

//: lv_strings
- (NSString *)main_fedMessage {
    /* static */ NSString *main_fedMessage = nil;
    if (!main_fedMessage) {
        StructRhetoricData value = (StructRhetoricData){99, (Byte []){15, 21, 60, 16, 23, 17, 10, 13, 4, 16, 135}, 10, 134, 152};
        main_fedMessage = [self StringFromRhetoricData:&value];
    }
    return main_fedMessage;
}

//: el_strings
- (NSString *)main_seeBladeMessage {
    /* static */ NSString *main_seeBladeMessage = nil;
    if (!main_seeBladeMessage) {
        StructRhetoricData value = (StructRhetoricData){44, (Byte []){73, 64, 115, 95, 88, 94, 69, 66, 75, 95, 233}, 10, 225, 130};
        main_seeBladeMessage = [self StringFromRhetoricData:&value];
    }
    return main_seeBladeMessage;
}

//: zh_strings
- (NSString *)app_fluenceLawmakerName {
    /* static */ NSString *app_fluenceLawmakerName = nil;
    if (!app_fluenceLawmakerName) {
        StructRhetoricData value = (StructRhetoricData){106, (Byte []){16, 2, 53, 25, 30, 24, 3, 4, 13, 25, 214}, 10, 144, 219};
        app_fluenceLawmakerName = [self StringFromRhetoricData:&value];
    }
    return app_fluenceLawmakerName;
}

//: vi_strings
- (NSString *)show_viewerMessage {
    /* static */ NSString *show_viewerMessage = nil;
    if (!show_viewerMessage) {
        StructRhetoricData value = (StructRhetoricData){151, (Byte []){225, 254, 200, 228, 227, 229, 254, 249, 240, 228, 193}, 10, 181, 175};
        show_viewerMessage = [self StringFromRhetoricData:&value];
    }
    return show_viewerMessage;
}

//: id_strings
- (NSString *)main_adoptFormat {
    /* static */ NSString *main_adoptFormat = nil;
    if (!main_adoptFormat) {
        StructRhetoricData value = (StructRhetoricData){81, (Byte []){56, 53, 14, 34, 37, 35, 56, 63, 54, 34, 15}, 10, 86, 6};
        main_adoptFormat = [self StringFromRhetoricData:&value];
    }
    return main_adoptFormat;
}

//: spa_strings
- (NSString *)showDistantData {
    /* static */ NSString *showDistantData = nil;
    if (!showDistantData) {
        StructRhetoricData value = (StructRhetoricData){12, (Byte []){127, 124, 109, 83, 127, 120, 126, 101, 98, 107, 127, 23}, 11, 175, 51};
        showDistantData = [self StringFromRhetoricData:&value];
    }
    return showDistantData;
}

//: de_strings
- (NSString *)userZoneText {
    /* static */ NSString *userZoneText = nil;
    if (!userZoneText) {
        StructRhetoricData value = (StructRhetoricData){232, (Byte []){140, 141, 183, 155, 156, 154, 129, 134, 143, 155, 39}, 10, 252, 127};
        userZoneText = [self StringFromRhetoricData:&value];
    }
    return userZoneText;
}

//: pt_strings
- (NSString *)kButterDonFormat {
    /* static */ NSString *kButterDonFormat = nil;
    if (!kButterDonFormat) {
        StructRhetoricData value = (StructRhetoricData){168, (Byte []){216, 220, 247, 219, 220, 218, 193, 198, 207, 219, 232}, 10, 55, 255};
        kButterDonFormat = [self StringFromRhetoricData:&value];
    }
    return kButterDonFormat;
}

//: ro_strings
- (NSString *)main_childMessage {
    /* static */ NSString *main_childMessage = nil;
    if (!main_childMessage) {
        StructRhetoricData value = (StructRhetoricData){176, (Byte []){194, 223, 239, 195, 196, 194, 217, 222, 215, 195, 51}, 10, 22, 171};
        main_childMessage = [self StringFromRhetoricData:&value];
    }
    return main_childMessage;
}

//: name
- (NSString *)appTouchStr {
    /* static */ NSString *appTouchStr = nil;
    if (!appTouchStr) {
        StructRhetoricData value = (StructRhetoricData){144, (Byte []){254, 241, 253, 245, 45}, 4, 18, 207};
        appTouchStr = [self StringFromRhetoricData:&value];
    }
    return appTouchStr;
}

//: main_tab_my
- (NSString *)kOffResignIdent {
    /* static */ NSString *kOffResignIdent = nil;
    if (!kOffResignIdent) {
        StructRhetoricData value = (StructRhetoricData){74, (Byte []){39, 43, 35, 36, 21, 62, 43, 40, 21, 39, 51, 223}, 11, 159, 206};
        kOffResignIdent = [self StringFromRhetoricData:&value];
    }
    return kOffResignIdent;
}

//: hi_strings
- (NSString *)mChapterTitle {
    /* static */ NSString *mChapterTitle = nil;
    if (!mChapterTitle) {
        StructRhetoricData value = (StructRhetoricData){185, (Byte []){209, 208, 230, 202, 205, 203, 208, 215, 222, 202, 156}, 10, 245, 75};
        mChapterTitle = [self StringFromRhetoricData:&value];
    }
    return mChapterTitle;
}

//: tr_strings
- (NSString *)appMessageName {
    /* static */ NSString *appMessageName = nil;
    if (!appMessageName) {
        StructRhetoricData value = (StructRhetoricData){172, (Byte []){216, 222, 243, 223, 216, 222, 197, 194, 203, 223, 85}, 10, 206, 112};
        appMessageName = [self StringFromRhetoricData:&value];
    }
    return appMessageName;
}

//: pk_strings
- (NSString *)kSopTitle {
    /* static */ NSString *kSopTitle = nil;
    if (!kSopTitle) {
        StructRhetoricData value = (StructRhetoricData){49, (Byte []){65, 90, 110, 66, 69, 67, 88, 95, 86, 66, 74}, 10, 252, 233};
        kSopTitle = [self StringFromRhetoricData:&value];
    }
    return kSopTitle;
}

//: en_strings
- (NSString *)user_retailMsg {
    /* static */ NSString *user_retailMsg = nil;
    if (!user_retailMsg) {
        StructRhetoricData value = (StructRhetoricData){245, (Byte []){144, 155, 170, 134, 129, 135, 156, 155, 146, 134, 21}, 10, 186, 188};
        user_retailMsg = [self StringFromRhetoricData:&value];
    }
    return user_retailMsg;
}

//: bg_strings
- (NSString *)noti_pilotName {
    /* static */ NSString *noti_pilotName = nil;
    if (!noti_pilotName) {
        StructRhetoricData value = (StructRhetoricData){116, (Byte []){22, 19, 43, 7, 0, 6, 29, 26, 19, 7, 106}, 10, 177, 12};
        noti_pilotName = [self StringFromRhetoricData:&value];
    }
    return noti_pilotName;
}

//: pl_strings
- (NSString *)showIgnoreSizeUrl {
    /* static */ NSString *showIgnoreSizeUrl = nil;
    if (!showIgnoreSizeUrl) {
        StructRhetoricData value = (StructRhetoricData){167, (Byte []){215, 203, 248, 212, 211, 213, 206, 201, 192, 212, 101}, 10, 229, 208};
        showIgnoreSizeUrl = [self StringFromRhetoricData:&value];
    }
    return showIgnoreSizeUrl;
}

//: nl_strings
- (NSString *)main_holderText {
    /* static */ NSString *main_holderText = nil;
    if (!main_holderText) {
        StructRhetoricData value = (StructRhetoricData){93, (Byte []){51, 49, 2, 46, 41, 47, 52, 51, 58, 46, 202}, 10, 180, 164};
        main_holderText = [self StringFromRhetoricData:&value];
    }
    return main_holderText;
}

//: sk_strings
- (NSString *)mScanIdent {
    /* static */ NSString *mScanIdent = nil;
    if (!mScanIdent) {
        StructRhetoricData value = (StructRhetoricData){232, (Byte []){155, 131, 183, 155, 156, 154, 129, 134, 143, 155, 236}, 10, 121, 223};
        mScanIdent = [self StringFromRhetoricData:&value];
    }
    return mScanIdent;
}

//: zh_hant_strings
- (NSString *)user_fluenceName {
    /* static */ NSString *user_fluenceName = nil;
    if (!user_fluenceName) {
        StructRhetoricData value = (StructRhetoricData){27, (Byte []){97, 115, 68, 115, 122, 117, 111, 68, 104, 111, 105, 114, 117, 124, 104, 95}, 15, 11, 189};
        user_fluenceName = [self StringFromRhetoricData:&value];
    }
    return user_fluenceName;
}

//: ug_strings
- (NSString *)dream_rashIdent {
    /* static */ NSString *dream_rashIdent = nil;
    if (!dream_rashIdent) {
        StructRhetoricData value = (StructRhetoricData){31, (Byte []){106, 120, 64, 108, 107, 109, 118, 113, 120, 108, 247}, 10, 10, 79};
        dream_rashIdent = [self StringFromRhetoricData:&value];
    }
    return dream_rashIdent;
}

//: sv_strings
- (NSString *)dream_qualityShouldIdent {
    /* static */ NSString *dream_qualityShouldIdent = nil;
    if (!dream_qualityShouldIdent) {
        StructRhetoricData value = (StructRhetoricData){80, (Byte []){35, 38, 15, 35, 36, 34, 57, 62, 55, 35, 164}, 10, 30, 169};
        dream_qualityShouldIdent = [self StringFromRhetoricData:&value];
    }
    return dream_qualityShouldIdent;
}

//: ga_strings
- (NSString *)appUsPath {
    /* static */ NSString *appUsPath = nil;
    if (!appUsPath) {
        StructRhetoricData value = (StructRhetoricData){68, (Byte []){35, 37, 27, 55, 48, 54, 45, 42, 35, 55, 181}, 10, 7, 218};
        appUsPath = [self StringFromRhetoricData:&value];
    }
    return appUsPath;
}

//: ja_strings
- (NSString *)userAnimalId {
    /* static */ NSString *userAnimalId = nil;
    if (!userAnimalId) {
        StructRhetoricData value = (StructRhetoricData){242, (Byte []){152, 147, 173, 129, 134, 128, 155, 156, 149, 129, 185}, 10, 97, 156};
        userAnimalId = [self StringFromRhetoricData:&value];
    }
    return userAnimalId;
}

//: cs_strings
- (NSString *)noti_embraceMessage {
    /* static */ NSString *noti_embraceMessage = nil;
    if (!noti_embraceMessage) {
        StructRhetoricData value = (StructRhetoricData){213, (Byte []){182, 166, 138, 166, 161, 167, 188, 187, 178, 166, 249}, 10, 102, 205};
        noti_embraceMessage = [self StringFromRhetoricData:&value];
    }
    return noti_embraceMessage;
}

//: et_strings
- (NSString *)m_laundryIdent {
    /* static */ NSString *m_laundryIdent = nil;
    if (!m_laundryIdent) {
        StructRhetoricData value = (StructRhetoricData){131, (Byte []){230, 247, 220, 240, 247, 241, 234, 237, 228, 240, 49}, 10, 206, 252};
        m_laundryIdent = [self StringFromRhetoricData:&value];
    }
    return m_laundryIdent;
}

//: da_strings
- (NSString *)main_pitaText {
    /* static */ NSString *main_pitaText = nil;
    if (!main_pitaText) {
        StructRhetoricData value = (StructRhetoricData){211, (Byte []){183, 178, 140, 160, 167, 161, 186, 189, 180, 160, 82}, 10, 166, 216};
        main_pitaText = [self StringFromRhetoricData:&value];
    }
    return main_pitaText;
}

//: lt_strings
- (NSString *)app_dataMessage {
    /* static */ NSString *app_dataMessage = nil;
    if (!app_dataMessage) {
        StructRhetoricData value = (StructRhetoricData){43, (Byte []){71, 95, 116, 88, 95, 89, 66, 69, 76, 88, 227}, 10, 167, 88};
        app_dataMessage = [self StringFromRhetoricData:&value];
    }
    return app_dataMessage;
}

//: ru_strings
- (NSString *)show_tagMessage {
    /* static */ NSString *show_tagMessage = nil;
    if (!show_tagMessage) {
        StructRhetoricData value = (StructRhetoricData){36, (Byte []){86, 81, 123, 87, 80, 86, 77, 74, 67, 87, 246}, 10, 254, 97};
        show_tagMessage = [self StringFromRhetoricData:&value];
    }
    return show_tagMessage;
}

//: fr_strings
- (NSString *)mainChildCaptainFormat {
    /* static */ NSString *mainChildCaptainFormat = nil;
    if (!mainChildCaptainFormat) {
        StructRhetoricData value = (StructRhetoricData){113, (Byte []){23, 3, 46, 2, 5, 3, 24, 31, 22, 2, 58}, 10, 234, 60};
        mainChildCaptainFormat = [self StringFromRhetoricData:&value];
    }
    return mainChildCaptainFormat;
}

//: lb_strings
- (NSString *)user_directlyMessage {
    /* static */ NSString *user_directlyMessage = nil;
    if (!user_directlyMessage) {
        StructRhetoricData value = (StructRhetoricData){52, (Byte []){88, 86, 107, 71, 64, 70, 93, 90, 83, 71, 161}, 10, 164, 11};
        user_directlyMessage = [self StringFromRhetoricData:&value];
    }
    return user_directlyMessage;
}

//: string
- (NSString *)m_counselorPath {
    /* static */ NSString *m_counselorPath = nil;
    if (!m_counselorPath) {
        StructRhetoricData value = (StructRhetoricData){240, (Byte []){131, 132, 130, 153, 158, 151, 107}, 6, 246, 48};
        m_counselorPath = [self StringFromRhetoricData:&value];
    }
    return m_counselorPath;
}

//: sa_strings
- (NSString *)noti_closeSymptomData {
    /* static */ NSString *noti_closeSymptomData = nil;
    if (!noti_closeSymptomData) {
        StructRhetoricData value = (StructRhetoricData){10, (Byte []){121, 107, 85, 121, 126, 120, 99, 100, 109, 121, 127}, 10, 210, 238};
        noti_closeSymptomData = [self StringFromRhetoricData:&value];
    }
    return noti_closeSymptomData;
}

//: text
- (NSString *)userSmokeName {
    /* static */ NSString *userSmokeName = nil;
    if (!userSmokeName) {
        StructRhetoricData value = (StructRhetoricData){6, (Byte []){114, 99, 126, 114, 23}, 4, 209, 89};
        userSmokeName = [self StringFromRhetoricData:&value];
    }
    return userSmokeName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MatronymicPath.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentLanguageManager.h"
#import "MatronymicPath.h"
//: #import "ContentXMLReader.h"
#import "UnderbellyReader.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "SSZipArchiveManager.h"
#import "EqualArchiveManager.h"

//: @interface ContentLanguageManager ()<NSXMLParserDelegate>
@interface MatronymicPath ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation ContentLanguageManager
@implementation MatronymicPath

//: static ContentLanguageManager *shareInstance = nil;
static MatronymicPath *show_viewFrameText = nil;

//: + (ContentLanguageManager *)shareInstance{
+ (MatronymicPath *)name{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (show_viewFrameText == nil) {
            //: shareInstance = [[ContentLanguageManager alloc] init];
            show_viewFrameText = [[MatronymicPath alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            show_viewFrameText.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return show_viewFrameText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)colorStreetwise:(NSString *)key{
    //: NSMutableDictionary *dict = [ContentLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [MatronymicPath name].langDict;
    //: NSString *value = [dict objectForKey:key];
    NSString *value = [dict objectForKey:key];
    //: if (value == nil ) {
    if (value == nil ) {
        //: NSLog(@"value为空========%@",key);
        //: value = @"";
        value = @"";

    }
    //: return value;
    return value;
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setPressed:(NSString *)langType{

//    [self.langDict removeAllObjects];

    //: NSString *resourceType = @"zh_strings";
    NSString *resourceType = [[RhetoricData sharedInstance] app_fluenceLawmakerName];
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"en_strings";
        resourceType = [[RhetoricData sharedInstance] user_retailMsg];
    //: }else if ([langType isEqualToString:@"th"]){
    }else if ([langType isEqualToString:@"th"]){
        //: resourceType = @"th_strings";
        resourceType = [[RhetoricData sharedInstance] userAgeJurisdictionTitle];
    //: }else if ([langType isEqualToString:@"vi"]){
    }else if ([langType isEqualToString:@"vi"]){
        //: resourceType = @"vi_strings";
        resourceType = [[RhetoricData sharedInstance] show_viewerMessage];
    //: }else if ([langType isEqualToString:@"hi"]){
    }else if ([langType isEqualToString:@"hi"]){
        //: resourceType = @"hi_strings";
        resourceType = [[RhetoricData sharedInstance] mChapterTitle];
    //: }else if ([langType isEqualToString:@"ja"]){
    }else if ([langType isEqualToString:@"ja"]){
        //: resourceType = @"ja_strings";
        resourceType = [[RhetoricData sharedInstance] userAnimalId];
    //: }else if ([langType isEqualToString:@"ko"]){
    }else if ([langType isEqualToString:@"ko"]){
        //: resourceType = @"ko_strings";
        resourceType = [[RhetoricData sharedInstance] user_othersContent];
    //: }else if ([langType isEqualToString:@"spa"]){
    }else if ([langType isEqualToString:[[RhetoricData sharedInstance] dreamPlodId]]){
        //: resourceType = @"spa_strings";
        resourceType = [[RhetoricData sharedInstance] showDistantData];
    //: }else if ([langType isEqualToString:@"pt"]){
    }else if ([langType isEqualToString:@"pt"]){
        //: resourceType = @"pt_strings";
        resourceType = [[RhetoricData sharedInstance] kButterDonFormat];
    //: }else if ([langType isEqualToString:@"id"]){
    }else if ([langType isEqualToString:@"id"]){
        //: resourceType = @"id_strings";
        resourceType = [[RhetoricData sharedInstance] main_adoptFormat];
    //: }else if ([langType isEqualToString:@"it"]){
    }else if ([langType isEqualToString:@"it"]){
        //: resourceType = @"it_strings";
        resourceType = [[RhetoricData sharedInstance] appFrameKey];
    //: }else if ([langType isEqualToString:@"eg"]){
    }else if ([langType isEqualToString:@"eg"]){
        //: resourceType = @"eg_strings";
        resourceType = [[RhetoricData sharedInstance] mainBluePath];
    //: }else if ([langType isEqualToString:@"tr"]){
    }else if ([langType isEqualToString:@"tr"]){
        //: resourceType = @"tr_strings";
        resourceType = [[RhetoricData sharedInstance] appMessageName];
    //: }else if ([langType isEqualToString:@"ug"]){
    }else if ([langType isEqualToString:@"ug"]){
        //: resourceType = @"ug_strings";
        resourceType = [[RhetoricData sharedInstance] dream_rashIdent];
    //: }else if ([langType isEqualToString:@"de"]){
    }else if ([langType isEqualToString:@"de"]){
        //: resourceType = @"de_strings";
        resourceType = [[RhetoricData sharedInstance] userZoneText];
    //: }else if ([langType isEqualToString:@"pk"]){
    }else if ([langType isEqualToString:@"pk"]){
        //: resourceType = @"pk_strings";
        resourceType = [[RhetoricData sharedInstance] kSopTitle];
    //: }else if ([langType isEqualToString:@"sa"]){
    }else if ([langType isEqualToString:@"sa"]){
        //: resourceType = @"sa_strings";
        resourceType = [[RhetoricData sharedInstance] noti_closeSymptomData];
    //: }else if ([langType isEqualToString:@"ru"]){
    }else if ([langType isEqualToString:@"ru"]){
        //: resourceType = @"ru_strings";
        resourceType = [[RhetoricData sharedInstance] show_tagMessage];
    //: }else if ([langType isEqualToString:@"bd"]){
    }else if ([langType isEqualToString:@"bd"]){
        //: resourceType = @"bd_strings";
        resourceType = [[RhetoricData sharedInstance] m_hiColumnTooFormat];
    //: }else if ([langType isEqualToString:@"fr"]){
    }else if ([langType isEqualToString:@"fr"]){
        //: resourceType = @"fr_strings";
        resourceType = [[RhetoricData sharedInstance] mainChildCaptainFormat];
    //: }else if ([langType isEqualToString:@"hant"]){
    }else if ([langType isEqualToString:[[RhetoricData sharedInstance] dreamCountKey]]){
        //: resourceType = @"zh_hant_strings";
        resourceType = [[RhetoricData sharedInstance] user_fluenceName];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv_strings";
        resourceType = [[RhetoricData sharedInstance] dream_qualityShouldIdent];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl_strings";
        resourceType = [[RhetoricData sharedInstance] kWheatPath];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk_strings";
        resourceType = [[RhetoricData sharedInstance] mScanIdent];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro_strings";
        resourceType = [[RhetoricData sharedInstance] main_childMessage];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl_strings";
        resourceType = [[RhetoricData sharedInstance] showIgnoreSizeUrl];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl_strings";
        resourceType = [[RhetoricData sharedInstance] main_holderText];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt_strings";
        resourceType = [[RhetoricData sharedInstance] app_laundryDistantKey];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb_strings";
        resourceType = [[RhetoricData sharedInstance] user_directlyMessage];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt_strings";
        resourceType = [[RhetoricData sharedInstance] app_dataMessage];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv_strings";
        resourceType = [[RhetoricData sharedInstance] main_fedMessage];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg_strings";
        resourceType = [[RhetoricData sharedInstance] noti_pilotName];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr_strings";
        resourceType = [[RhetoricData sharedInstance] k_counselorMsg];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs_strings";
        resourceType = [[RhetoricData sharedInstance] noti_embraceMessage];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da_strings";
        resourceType = [[RhetoricData sharedInstance] main_pitaText];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et_strings";
        resourceType = [[RhetoricData sharedInstance] m_laundryIdent];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi_strings";
        resourceType = [[RhetoricData sharedInstance] dream_entryPath];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el_strings";
        resourceType = [[RhetoricData sharedInstance] main_seeBladeMessage];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu_strings";
        resourceType = [[RhetoricData sharedInstance] dreamInfoValue];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga_strings";
        resourceType = [[RhetoricData sharedInstance] appUsPath];
    }

    //: NSString *xmlFilePath = [[[SSZipArchiveManager sharedManager] getXML_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@.xml", langType, resourceType]];
    NSString *xmlFilePath = [[[EqualArchiveManager message] statusMyPath] stringByAppendingPathComponent:[NSString stringWithFormat:[[RhetoricData sharedInstance] show_flexibleAllowStr], langType, resourceType]];

    //: if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
        //: NSLog(@"XML file not found at path: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: if (!xmlData) {
    if (!xmlData) {
        //: NSLog(@"Failed to load XML data from file: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSError *error = nil;
    NSError *error = nil;
    //: if (error) {
    if (error) {
        //: NSLog(@"error : %@", error);
    }
    //: NSDictionary *result = [ContentXMLReader dictionaryForXMLData:xmlData error:&error];
    NSDictionary *result = [UnderbellyReader mentalFaculty:xmlData need:&error];
//    NSDictionary *result = [NSDictionary dictionaryWithXML:xmlData];

    //: NSLog(@"result : %@", result);
    //: if (result) {
    if (result) {
        //: NSDictionary *resources = [result objectForKey:@"resources"];
        NSDictionary *resources = [result objectForKey:[[RhetoricData sharedInstance] dreamImageWitnessId]];
        //: if (resources) {
        if (resources) {
            //: NSArray *string = [resources objectForKey:@"string"];
            NSArray *string = [resources objectForKey:[[RhetoricData sharedInstance] m_counselorPath]];
            //: if (string.count > 0) {
            if (string.count > 0) {
                //: [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    //: NSString *name = [obj objectForKey:@"name"];
                    NSString *name = [obj objectForKey:[[RhetoricData sharedInstance] appTouchStr]];
                    //: NSString *text = [obj objectForKey:@"text"];
                    NSString *text = [obj objectForKey:[[RhetoricData sharedInstance] userSmokeName]];
                    //: [self.langDict setObject:text forKey:name];
                    [self.langDict setObject:text forKey:name];
                //: }];
                }];
            }
        }

//        NSArray *string = [result objectForKey:@"string"];
//        if (string.count > 0) {
//            [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                NSString *name = [obj objectForKey:@"name"];
//                NSString *text = [obj objectForKey:@"_text"];
//                [self.langDict setObject:text forKey:name];
//            }];
//        }
    }
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)parserDidStartDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}
//: - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
    //: NSLog(@"出错");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[[RhetoricData sharedInstance] m_counselorPath]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[[RhetoricData sharedInstance] appTouchStr]];
        //NSLog(@"--------%@",_currentElementName);
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: if ([_currentElementName isEqualToString:@"main_tab_my"]) {
        if ([_currentElementName isEqualToString:[[RhetoricData sharedInstance] kOffResignIdent]]) {
            //: NSLog(@"%@",string);
        }
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)parserDidEndDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)upendedLocale{//th-TH  vi-VN
//    NSString *language = [NameDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = [[RhetoricData sharedInstance] mainComfortableText];
//    if ([language isEqualToString:@"en"]) {
//        return @"en_US";
//    }
    //: return locale;
    return locale;
}


//: @end
@end
