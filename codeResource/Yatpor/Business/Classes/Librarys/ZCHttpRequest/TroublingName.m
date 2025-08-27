
#import <Foundation/Foundation.h>

typedef struct {
    Byte statuteBook;
    Byte *load;
    unsigned int debateShow;
} StructEstimateData;

@interface EstimateData : NSObject

+ (instancetype)sharedInstance;

//: %@.mp4
@property (nonatomic, copy) NSString *mainBagStr;

//: gif
@property (nonatomic, copy) NSString *mainNighTitle;

//: xiaokaapi.com
@property (nonatomic, copy) NSString *showColumnKey;

//: text/html
@property (nonatomic, copy) NSString *appLineCountKey;

//: yyyyMMddHHmmss
@property (nonatomic, copy) NSString *m_drunkIdent;

//: jpg
@property (nonatomic, copy) NSString *appAnimalIdent;

//: http
@property (nonatomic, copy) NSString *kDrumIdent;

//: image
@property (nonatomic, copy) NSString *main_ballotFormat;

//: video
@property (nonatomic, copy) NSString *notiViewData;

//: token
@property (nonatomic, copy) NSString *main_fateShowText;

//: ismustmobile
@property (nonatomic, copy) NSString *mainElementaryName;

//: Nonce
@property (nonatomic, copy) NSString *k_accountValue;

//: loginip
@property (nonatomic, copy) NSString *noti_assumptionUrl;

//: application/json
@property (nonatomic, copy) NSString *mainMushroomLikelyText;

//: video/mp4
@property (nonatomic, copy) NSString *show_needMessage;

//: systemSetting
@property (nonatomic, copy) NSString *show_hormoneIdent;

//: CurTime
@property (nonatomic, copy) NSString *userClayKey;

//: cer
@property (nonatomic, copy) NSString *kMareUrl;

//: text/json
@property (nonatomic, copy) NSString *kArmyTitle;

//: image/%@
@property (nonatomic, copy) NSString *main_northernName;

//: picture
@property (nonatomic, copy) NSString *mainShowMsg;

//: image/jpg
@property (nonatomic, copy) NSString *show_fellowData;

//: text/plain
@property (nonatomic, copy) NSString *appPerfectlyMsg;

//: %@.jpg
@property (nonatomic, copy) NSString *notiEnableHoePath;

//: CheckSum
@property (nonatomic, copy) NSString *noti_flamePath;

//: png
@property (nonatomic, copy) NSString *showLibraryFortyId;

//: Download
@property (nonatomic, copy) NSString *appEfficiencyKey;

//: lang
@property (nonatomic, copy) NSString *app_thickPath;

//: AppKey
@property (nonatomic, copy) NSString *kSymptomValueName;

//: text/javascript
@property (nonatomic, copy) NSString *app_flexibleIdent;

//: appSetting
@property (nonatomic, copy) NSString *showTextStr;

@end

@implementation EstimateData

+ (instancetype)sharedInstance {
    static EstimateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)EstimateDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)EstimateDataToByte:(StructEstimateData *)data {
    for (int i = 0; i < data->debateShow; i++) {
        data->load[i] ^= data->statuteBook;
    }
    data->load[data->debateShow] = 0;
    return data->load;
}

- (NSString *)StringFromEstimateData:(StructEstimateData *)data {
    return [NSString stringWithUTF8String:(char *)[self EstimateDataToByte:data]];
}

//: video/mp4
- (NSString *)show_needMessage {
    if (!_show_needMessage) {
		NSArray<NSNumber *> *origin = @[@15, @16, @29, @28, @22, @86, @20, @9, @77, @164];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){121, (Byte *)data.bytes, 9};
        _show_needMessage = [self StringFromEstimateData:&value];
    }
    return _show_needMessage;
}

//: application/json
- (NSString *)mainMushroomLikelyText {
    if (!_mainMushroomLikelyText) {
		NSArray<NSNumber *> *origin = @[@5, @20, @20, @8, @13, @7, @5, @16, @13, @11, @10, @75, @14, @23, @11, @10, @235];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){100, (Byte *)data.bytes, 16};
        _mainMushroomLikelyText = [self StringFromEstimateData:&value];
    }
    return _mainMushroomLikelyText;
}

//: token
- (NSString *)main_fateShowText {
    if (!_main_fateShowText) {
		NSArray<NSNumber *> *origin = @[@4, @31, @27, @21, @30, @18];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){112, (Byte *)data.bytes, 5};
        _main_fateShowText = [self StringFromEstimateData:&value];
    }
    return _main_fateShowText;
}

//: text/javascript
- (NSString *)app_flexibleIdent {
    if (!_app_flexibleIdent) {
		NSArray<NSNumber *> *origin = @[@72, @89, @68, @72, @19, @86, @93, @74, @93, @79, @95, @78, @85, @76, @72, @26];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){60, (Byte *)data.bytes, 15};
        _app_flexibleIdent = [self StringFromEstimateData:&value];
    }
    return _app_flexibleIdent;
}

//: CurTime
- (NSString *)userClayKey {
    if (!_userClayKey) {
		NSArray<NSNumber *> *origin = @[@38, @16, @23, @49, @12, @8, @0, @175];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){101, (Byte *)data.bytes, 7};
        _userClayKey = [self StringFromEstimateData:&value];
    }
    return _userClayKey;
}

//: CheckSum
- (NSString *)noti_flamePath {
    if (!_noti_flamePath) {
		NSArray<NSNumber *> *origin = @[@116, @95, @82, @84, @92, @100, @66, @90, @88];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){55, (Byte *)data.bytes, 8};
        _noti_flamePath = [self StringFromEstimateData:&value];
    }
    return _noti_flamePath;
}

//: ismustmobile
- (NSString *)mainElementaryName {
    if (!_mainElementaryName) {
		NSArray<NSNumber *> *origin = @[@173, @183, @169, @177, @183, @176, @169, @171, @166, @173, @168, @161, @60];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){196, (Byte *)data.bytes, 12};
        _mainElementaryName = [self StringFromEstimateData:&value];
    }
    return _mainElementaryName;
}

//: cer
- (NSString *)kMareUrl {
    if (!_kMareUrl) {
		NSArray<NSNumber *> *origin = @[@122, @124, @107, @117];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){25, (Byte *)data.bytes, 3};
        _kMareUrl = [self StringFromEstimateData:&value];
    }
    return _kMareUrl;
}

//: jpg
- (NSString *)appAnimalIdent {
    if (!_appAnimalIdent) {
		NSArray<NSNumber *> *origin = @[@1, @27, @12, @66];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){107, (Byte *)data.bytes, 3};
        _appAnimalIdent = [self StringFromEstimateData:&value];
    }
    return _appAnimalIdent;
}

//: AppKey
- (NSString *)kSymptomValueName {
    if (!_kSymptomValueName) {
		NSArray<NSNumber *> *origin = @[@77, @124, @124, @71, @105, @117, @39];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){12, (Byte *)data.bytes, 6};
        _kSymptomValueName = [self StringFromEstimateData:&value];
    }
    return _kSymptomValueName;
}

//: Download
- (NSString *)appEfficiencyKey {
    if (!_appEfficiencyKey) {
		NSArray<NSNumber *> *origin = @[@193, @234, @242, @235, @233, @234, @228, @225, @177];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){133, (Byte *)data.bytes, 8};
        _appEfficiencyKey = [self StringFromEstimateData:&value];
    }
    return _appEfficiencyKey;
}

//: png
- (NSString *)showLibraryFortyId {
    if (!_showLibraryFortyId) {
		NSArray<NSNumber *> *origin = @[@118, @104, @97, @230];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){6, (Byte *)data.bytes, 3};
        _showLibraryFortyId = [self StringFromEstimateData:&value];
    }
    return _showLibraryFortyId;
}

//: video
- (NSString *)notiViewData {
    if (!_notiViewData) {
		NSArray<NSNumber *> *origin = @[@162, @189, @176, @177, @187, @224];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){212, (Byte *)data.bytes, 5};
        _notiViewData = [self StringFromEstimateData:&value];
    }
    return _notiViewData;
}

//: http
- (NSString *)kDrumIdent {
    if (!_kDrumIdent) {
		NSArray<NSNumber *> *origin = @[@38, @58, @58, @62, @184];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){78, (Byte *)data.bytes, 4};
        _kDrumIdent = [self StringFromEstimateData:&value];
    }
    return _kDrumIdent;
}

//: appSetting
- (NSString *)showTextStr {
    if (!_showTextStr) {
		NSArray<NSNumber *> *origin = @[@229, @244, @244, @215, @225, @240, @240, @237, @234, @227, @77];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){132, (Byte *)data.bytes, 10};
        _showTextStr = [self StringFromEstimateData:&value];
    }
    return _showTextStr;
}

//: loginip
- (NSString *)noti_assumptionUrl {
    if (!_noti_assumptionUrl) {
		NSArray<NSNumber *> *origin = @[@238, @237, @229, @235, @236, @235, @242, @246];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){130, (Byte *)data.bytes, 7};
        _noti_assumptionUrl = [self StringFromEstimateData:&value];
    }
    return _noti_assumptionUrl;
}

//: text/json
- (NSString *)kArmyTitle {
    if (!_kArmyTitle) {
		NSArray<NSNumber *> *origin = @[@245, @228, @249, @245, @174, @235, @242, @238, @239, @19];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){129, (Byte *)data.bytes, 9};
        _kArmyTitle = [self StringFromEstimateData:&value];
    }
    return _kArmyTitle;
}

//: image
- (NSString *)main_ballotFormat {
    if (!_main_ballotFormat) {
		NSArray<NSNumber *> *origin = @[@76, @72, @68, @66, @64, @88];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){37, (Byte *)data.bytes, 5};
        _main_ballotFormat = [self StringFromEstimateData:&value];
    }
    return _main_ballotFormat;
}

//: xiaokaapi.com
- (NSString *)showColumnKey {
    if (!_showColumnKey) {
		NSArray<NSNumber *> *origin = @[@64, @81, @89, @87, @83, @89, @89, @72, @81, @22, @91, @87, @85, @194];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){56, (Byte *)data.bytes, 13};
        _showColumnKey = [self StringFromEstimateData:&value];
    }
    return _showColumnKey;
}

//: gif
- (NSString *)mainNighTitle {
    if (!_mainNighTitle) {
		NSArray<NSNumber *> *origin = @[@146, @156, @147, @220];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){245, (Byte *)data.bytes, 3};
        _mainNighTitle = [self StringFromEstimateData:&value];
    }
    return _mainNighTitle;
}

//: image/%@
- (NSString *)main_northernName {
    if (!_main_northernName) {
		NSArray<NSNumber *> *origin = @[@163, @167, @171, @173, @175, @229, @239, @138, @1];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){202, (Byte *)data.bytes, 8};
        _main_northernName = [self StringFromEstimateData:&value];
    }
    return _main_northernName;
}

//: %@.mp4
- (NSString *)mainBagStr {
    if (!_mainBagStr) {
		NSArray<NSNumber *> *origin = @[@136, @237, @131, @192, @221, @153, @50];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){173, (Byte *)data.bytes, 6};
        _mainBagStr = [self StringFromEstimateData:&value];
    }
    return _mainBagStr;
}

//: Nonce
- (NSString *)k_accountValue {
    if (!_k_accountValue) {
		NSArray<NSNumber *> *origin = @[@227, @194, @195, @206, @200, @161];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){173, (Byte *)data.bytes, 5};
        _k_accountValue = [self StringFromEstimateData:&value];
    }
    return _k_accountValue;
}

//: picture
- (NSString *)mainShowMsg {
    if (!_mainShowMsg) {
		NSArray<NSNumber *> *origin = @[@42, @51, @57, @46, @47, @40, @63, @167];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){90, (Byte *)data.bytes, 7};
        _mainShowMsg = [self StringFromEstimateData:&value];
    }
    return _mainShowMsg;
}

//: yyyyMMddHHmmss
- (NSString *)m_drunkIdent {
    if (!_m_drunkIdent) {
		NSArray<NSNumber *> *origin = @[@113, @113, @113, @113, @69, @69, @108, @108, @64, @64, @101, @101, @123, @123, @157];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){8, (Byte *)data.bytes, 14};
        _m_drunkIdent = [self StringFromEstimateData:&value];
    }
    return _m_drunkIdent;
}

//: text/plain
- (NSString *)appPerfectlyMsg {
    if (!_appPerfectlyMsg) {
		NSArray<NSNumber *> *origin = @[@85, @68, @89, @85, @14, @81, @77, @64, @72, @79, @136];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){33, (Byte *)data.bytes, 10};
        _appPerfectlyMsg = [self StringFromEstimateData:&value];
    }
    return _appPerfectlyMsg;
}

//: text/html
- (NSString *)appLineCountKey {
    if (!_appLineCountKey) {
		NSArray<NSNumber *> *origin = @[@16, @1, @28, @16, @75, @12, @16, @9, @8, @147];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){100, (Byte *)data.bytes, 9};
        _appLineCountKey = [self StringFromEstimateData:&value];
    }
    return _appLineCountKey;
}

//: image/jpg
- (NSString *)show_fellowData {
    if (!_show_fellowData) {
		NSArray<NSNumber *> *origin = @[@55, @51, @63, @57, @59, @113, @52, @46, @57, @149];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){94, (Byte *)data.bytes, 9};
        _show_fellowData = [self StringFromEstimateData:&value];
    }
    return _show_fellowData;
}

//: lang
- (NSString *)app_thickPath {
    if (!_app_thickPath) {
		NSArray<NSNumber *> *origin = @[@205, @192, @207, @198, @102];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){161, (Byte *)data.bytes, 4};
        _app_thickPath = [self StringFromEstimateData:&value];
    }
    return _app_thickPath;
}

//: systemSetting
- (NSString *)show_hormoneIdent {
    if (!_show_hormoneIdent) {
		NSArray<NSNumber *> *origin = @[@231, @237, @231, @224, @241, @249, @199, @241, @224, @224, @253, @250, @243, @222];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){148, (Byte *)data.bytes, 13};
        _show_hormoneIdent = [self StringFromEstimateData:&value];
    }
    return _show_hormoneIdent;
}

//: %@.jpg
- (NSString *)notiEnableHoePath {
    if (!_notiEnableHoePath) {
		NSArray<NSNumber *> *origin = @[@67, @38, @72, @12, @22, @1, @28];
		NSData *data = [EstimateData EstimateDataToData:origin];
        StructEstimateData value = (StructEstimateData){102, (Byte *)data.bytes, 6};
        _notiEnableHoePath = [self StringFromEstimateData:&value];
    }
    return _notiEnableHoePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TroublingName.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "TroublingName.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface TroublingName ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation TroublingName

//: + (instancetype)sharedManager{
+ (instancetype)asText{
    //: static ZCHttpManager *sharedManager = nil;
    static TroublingName *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [TroublingName new];
    //: });
    });
    //: return sharedManager;
    return sharedManager;
}

//: - (id)init{
- (id)init{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: AFSecurityPolicy *securityPolicy = [ZCHttpManager defaultSecurityPolicy];
        AFSecurityPolicy *securityPolicy = [TroublingName message];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[EstimateData sharedInstance].mainMushroomLikelyText, [EstimateData sharedInstance].kArmyTitle, [EstimateData sharedInstance].app_flexibleIdent,[EstimateData sharedInstance].appPerfectlyMsg,[EstimateData sharedInstance].appLineCountKey, nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)message{
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: securityPolicy.validatesDomainName = NO;
    securityPolicy.validatesDomainName = NO;
    //: return securityPolicy;
    return securityPolicy;
}

/**
 *https验证
 */
//: + (AFSecurityPolicy *)customSecurityPolicy {
+ (AFSecurityPolicy *)push {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[EstimateData sharedInstance].showColumnKey ofType:[EstimateData sharedInstance].kMareUrl]; //证书的路径
    //: NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    // AFSSLPinningModeCertificate 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];

    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = NO;
    securityPolicy.allowInvalidCertificates = NO;

    //validatesDomainName 是否需要验证域名，默认为YES；
    //假如证书的域名与你请求的域名不一致，需把该项设置为NO；如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    //置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    //如置为NO，建议自己添加对应域名的校验逻辑。
    //: securityPolicy.validatesDomainName = YES;
    securityPolicy.validatesDomainName = YES;
    //: securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)allowFailed:(NSString *)urlStr
            //: params:(NSDictionary *)params
            table:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            carteDuJour:(BOOL)isShow
           //: success:(ResponseSuccess)success
           behindValue:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            size:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: urlStr = RestApi(urlStr);
        urlStr = quantityernalRepresentationUnit(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self media:urlStr send:params enableFailed:isShow cell:0 max:YES keyResponseSuccess:success status:failed];
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)media: (NSString *)urlStr
            //: params: (NSDictionary *)params
            send: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            enableFailed: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         cell: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       max: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           keyResponseSuccess: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            status: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [NameDefaults argument].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = leftEvent([NameDefaults argument].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[EstimateData sharedInstance].app_thickPath];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([NameDefaults argument].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[EstimateData sharedInstance].main_fateShowText];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[EstimateData sharedInstance].show_hormoneIdent] && ![urlStr containsString:[EstimateData sharedInstance].noti_assumptionUrl] && ![urlStr containsString:[EstimateData sharedInstance].showTextStr] && ![urlStr containsString:[EstimateData sharedInstance].mainElementaryName]) {
            //: NSLog(@"%@\n------%@\n%@",urlStr,params,responseObject);
        }
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TroublingName asText] content:task];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)content: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           untilCurrent: (NSString *)checksum
              //: nonce: (NSString *)nonce
              sure: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            place_strong: (NSString *)CurTime
             //: params: (NSDictionary *)params
             viewFailed: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            ting: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             recent: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;

    //添加请求头
    //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
    NSString *appKey = [[BottomConfig at] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[EstimateData sharedInstance].kSymptomValueName];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[EstimateData sharedInstance].k_accountValue];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[EstimateData sharedInstance].userClayKey];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[EstimateData sharedInstance].noti_flamePath];

    //: NSLog(@"%@\n------%@",urlStr,params);
    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TroublingName asText] content:task];
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)session{

    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSTimeZone *zone = [NSTimeZone localTimeZone];
    NSTimeZone *zone = [NSTimeZone localTimeZone];
  // 获取指定时间所在时区与UTC时区的间隔秒数
  //: NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  //: return timeSp;
  return timeSp;
}

//sha1加密方式
//: + (NSString *)sha1:(NSString *)input
+ (NSString *)reply:(NSString *)input
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];

     //: NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
     NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    //: uint8_t digest[20];
    uint8_t digest[20];

    //: CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    //: NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    //: for(int i=0; i<20; i++) {
    for(int i=0; i<20; i++) {
        //: [output appendFormat:@"%02x", digest[i]];
        [output appendFormat:@"%02x", digest[i]];
    }

    //: return output;
    return output;
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)pressed: (NSString *)urlStr
             //: params: (NSDictionary *)params
             disable: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             messageExtra: (BOOL)isShow
            //: success: (ResponseSuccess)success
            closeFortFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             name: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: urlStr = RestApi(urlStr);
        urlStr = quantityernalRepresentationUnit(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self value:urlStr must:params shadow:isShow will:0 clansmanEnable:YES changeFailed:success success:failed];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)value: (NSString *)urlStr
             //: params: (NSDictionary *)params
             must: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             shadow: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          will: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        clansmanEnable: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            changeFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             success: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [NameDefaults argument].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = leftEvent([NameDefaults argument].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[EstimateData sharedInstance].app_thickPath];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([NameDefaults argument].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[EstimateData sharedInstance].main_fateShowText];
    }

    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",urlStr,params,responseObject);
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TroublingName asText] content:task];
}


//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)upload:(NSString *)URL
               //: parameters:(id)parameters
               with:(id)parameters
                     //: name:(NSString *)name
                     smartMessage:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 noSystem:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 lifestyle:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  heliogram:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   restore:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: URL = RestApi(URL);
        URL = quantityernalRepresentationUnit(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:filePath name:name error:&error];
        [formData appendPartWithFileURL:filePath name:name error:&error];
        //: (failed && error) ? failed(nil ,error) : nil;
        (failed && error) ? failed(nil ,error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{//上传进度
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TroublingName asText] content:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)dataFile:(NSString *)URL
                 //: parameters:(id)parameters
                 streetwiseMessage:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     on_strong:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   color:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    rangeFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     flipResponseFailed:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: URL = RestApi(URL);
        URL = quantityernalRepresentationUnit(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = leftEvent([NameDefaults argument].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[EstimateData sharedInstance].app_thickPath];

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [EstimateData sharedInstance].appAnimalIdent;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [EstimateData sharedInstance].appAnimalIdent;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [EstimateData sharedInstance].showLibraryFortyId;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [EstimateData sharedInstance].mainNighTitle;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[EstimateData sharedInstance].main_northernName,imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:[EstimateData sharedInstance].main_ballotFormat fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TroublingName asText] content:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)searchSub:(NSString *)URL
                 //: parameters:(id)parameters
                 center:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     color:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 happeningFailed:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   reply:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    content:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     heliogram:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: URL = RestApi(URL);
        URL = quantityernalRepresentationUnit(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [EstimateData sharedInstance].appAnimalIdent;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [EstimateData sharedInstance].appAnimalIdent;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [EstimateData sharedInstance].showLibraryFortyId;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [EstimateData sharedInstance].mainNighTitle;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[EstimateData sharedInstance].main_northernName,imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :[EstimateData sharedInstance].main_ballotFormat;
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TroublingName asText] content:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)betweenWithBar:(NSString *)URL
                 //: parameters:(id)parameters
                 highlightFailed:(id)parameters
                       //: name:(NSString *)name
                       media:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     length:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  object:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 textGodspeed:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  frame:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   barFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    imageUpload:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     with:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [EstimateData sharedInstance].m_drunkIdent;
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[EstimateData sharedInstance].appAnimalIdent];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[EstimateData sharedInstance].appAnimalIdent] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:[EstimateData sharedInstance].main_northernName,imageType ?: [EstimateData sharedInstance].appAnimalIdent];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TroublingName asText] content:t];
}


//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)consumer:(NSString *)URL
                 //: parameters:(id)parameters
                 parameter:(id)parameters
                     //: images:(NSData *)videoData
                     globule:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 sheet:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   to:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    requestQuickResponseSuccess:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     beforeSourceFailed:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: URL = RestApi(URL);
        URL = quantityernalRepresentationUnit(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[EstimateData sharedInstance].mainBagStr,timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [EstimateData sharedInstance].show_needMessage;
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[EstimateData sharedInstance].notiViewData fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[EstimateData sharedInstance].mainShowMsg fileName:[NSString stringWithFormat:[EstimateData sharedInstance].notiEnableHoePath,timeSp] mimeType:[EstimateData sharedInstance].show_fellowData];
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TroublingName asText] content:t];
}




//: + (void)downloadWithURL:(NSString *)URL
+ (void)myBy:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                color:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               cutBarStrickle:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                failed:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 streetSmart:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[EstimateData sharedInstance].kDrumIdent]){
        //: URL = RestApi(URL);
        URL = quantityernalRepresentationUnit(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TroublingName asText].manager;
    //: NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(downloadProgress);
            progress(downloadProgress);
        }
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [EstimateData sharedInstance].appEfficiencyKey];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];
    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //: if(failed && error) {failed(nil ,error) ; return ;};
        if(failed && error) {failed(nil ,error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;
    //: }];
    }];
    //: [downloadTask resume];
    [downloadTask resume];
}




//: #pragma mark - 管理请求队列
#pragma mark - 管理请求队列


//: - (void)addTask:(NSURLSessionDataTask *)task{
- (void)content:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self more];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)demonstrateTask:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self ifInForward]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self more];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)more{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (!taskDic) {
//        taskDic = @{}.mutableCopy;
//        objc_setAssociatedObject(self, @selector(addTask:), taskDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return taskDic;
    //: return nil;
    return nil;
}

//: - (BOOL)ifRequesting{
- (BOOL)ifInForward{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}

//: - (void)cancelRequest{
- (void)tip{

    //: if ([self ifRequesting]) {
    if ([self ifInForward]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[TroublingName asText] more];
        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);

        //: [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
            //: if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
                //: [((NSURLSessionDataTask *)obj) cancel];
                [((NSURLSessionDataTask *)obj) cancel];
            }
        //: }];
        }];
    }
}

//取消网络请求
//: + (void)cancelRequestWithURLString:(NSString *)URLString{
+ (void)technologyDisable:(NSString *)URLString{

//    if ([[HMDataRequest shareDataRequest] ifRequesting]) {
//        NSMutableDictionary *taskDic = [[HMDataRequest shareDataRequest] taskQueue];
//        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);
//
//        [taskDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted
//                && [[((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString] rangeOfString:URLString].location != NSNotFound) {
//
//                HMLog(@"----end----%@", [((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString]);
//
//                [((NSURLSessionDataTask *)obj) cancel];
//
//            }
//        }];
//    }


}

//: @end
@end