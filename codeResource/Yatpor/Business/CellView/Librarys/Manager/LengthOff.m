
#import <Foundation/Foundation.h>

@interface NumerousData : NSObject

+ (instancetype)sharedInstance;

//: mobile
@property (nonatomic, copy) NSString *dreamQueryedUrl;

//: msg
@property (nonatomic, copy) NSString *user_estimateFormat;

//: /validate/check_username_available
@property (nonatomic, copy) NSString *appToilData;

//: register_avtivity3_register_fail
@property (nonatomic, copy) NSString *dream_flexibleData;

//: invitecode
@property (nonatomic, copy) NSString *main_cheerBubbleLegislationPath;

//: answer
@property (nonatomic, copy) NSString *showColumnText;

//: iOS
@property (nonatomic, copy) NSString *mRegionRemoveMessage;

//: passwd
@property (nonatomic, copy) NSString *app_contentId;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *app_clayText;

//: head_default
@property (nonatomic, copy) NSString *mainArgueValue;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *k_usIdent;

//: password
@property (nonatomic, copy) NSString *noti_dotUrl;

//: /user/register
@property (nonatomic, copy) NSString *dreamReloadChingPath;

//: code
@property (nonatomic, copy) NSString *show_ignoreName;

//: username
@property (nonatomic, copy) NSString *user_cheerDalPath;

//: /user/smsregister
@property (nonatomic, copy) NSString *main_actUrl;

//: gender
@property (nonatomic, copy) NSString *app_ballotStr;

//: question
@property (nonatomic, copy) NSString *main_releaseFormat;

//: mobilecode
@property (nonatomic, copy) NSString *showNighFellowTraditionalFormat;

//: UserPassWord
@property (nonatomic, copy) NSString *userOpenIgnoreKey;

//: client
@property (nonatomic, copy) NSString *m_mushroomName;

//: account
@property (nonatomic, copy) NSString *app_wheatName;

//: RegistFinshNotification
@property (nonatomic, copy) NSString *main_busyIdent;

//: UserAccount
@property (nonatomic, copy) NSString *k_remoteEnrollMsg;

@end

@implementation NumerousData

+ (instancetype)sharedInstance {
    static NumerousData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NumerousDataToData:(NSString *)value {
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

- (Byte *)NumerousDataToCache:(Byte *)data {
    int showBurden = data[0];
    Byte have = data[1];
    int adpressed = data[2];
    for (int i = adpressed; i < adpressed + showBurden; i++) {
        int value = data[i] - have;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[adpressed + showBurden] = 0;
    return data + adpressed;
}

- (NSString *)StringFromNumerousData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NumerousDataToCache:data]];
}

//: UserPassWord
- (NSString *)userOpenIgnoreKey {
    if (!_userOpenIgnoreKey) {
		NSString *origin = @"0c0c0a7bb1a644c32c7d617f717e5c6d7f7f637b7e7058";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userOpenIgnoreKey = [self StringFromNumerousData:value];
    }
    return _userOpenIgnoreKey;
}

//: client
- (NSString *)m_mushroomName {
    if (!_m_mushroomName) {
		NSString *origin = @"06430cbee201df503c8ba55aa6afaca8b1b7d3";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_mushroomName = [self StringFromNumerousData:value];
    }
    return _m_mushroomName;
}

//: username
- (NSString *)user_cheerDalPath {
    if (!_user_cheerDalPath) {
		NSString *origin = @"084a091234bda49c73bfbdafbcb8abb7af36";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_cheerDalPath = [self StringFromNumerousData:value];
    }
    return _user_cheerDalPath;
}

//: /validate/check_username_available
- (NSString *)appToilData {
    if (!_appToilData) {
		NSString *origin = @"2254046683cab5c0bdb8b5c8b983b7bcb9b7bfb3c9c7b9c6c2b5c1b9b3b5cab5bdc0b5b6c0b949";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appToilData = [self StringFromNumerousData:value];
    }
    return _appToilData;
}

//: /user/register
- (NSString *)dreamReloadChingPath {
    if (!_dreamReloadChingPath) {
		NSString *origin = @"0e340c662892ab621aa5492663a9a799a663a6999b9da7a899a635";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamReloadChingPath = [self StringFromNumerousData:value];
    }
    return _dreamReloadChingPath;
}

//: answer
- (NSString *)showColumnText {
    if (!_showColumnText) {
		NSString *origin = @"06060d9e905a4bae44aa8b65ad6774797d6b78fb";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showColumnText = [self StringFromNumerousData:value];
    }
    return _showColumnText;
}

//: iOS
- (NSString *)mRegionRemoveMessage {
    if (!_mRegionRemoveMessage) {
		NSString *origin = @"03510ceafa8110ce40d6aa04baa0a403";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRegionRemoveMessage = [self StringFromNumerousData:value];
    }
    return _mRegionRemoveMessage;
}

//: mobile
- (NSString *)dreamQueryedUrl {
    if (!_dreamQueryedUrl) {
		NSString *origin = @"0630080134245c6c9d9f92999c959f";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamQueryedUrl = [self StringFromNumerousData:value];
    }
    return _dreamQueryedUrl;
}

//: password
- (NSString *)noti_dotUrl {
    if (!_noti_dotUrl) {
		NSString *origin = @"085206507c7fc2b3c5c5c9c1c4b648";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_dotUrl = [self StringFromNumerousData:value];
    }
    return _noti_dotUrl;
}

//: gender
- (NSString *)app_ballotStr {
    if (!_app_ballotStr) {
		NSString *origin = @"063d0ac57fc0db3c14bba4a2aba1a2af2e";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_ballotStr = [self StringFromNumerousData:value];
    }
    return _app_ballotStr;
}

//: invitecode
- (NSString *)main_cheerBubbleLegislationPath {
    if (!_main_cheerBubbleLegislationPath) {
		NSString *origin = @"0a160ccd42e20cacbc0fbbc87f848c7f8a7b79857a7b79";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_cheerBubbleLegislationPath = [self StringFromNumerousData:value];
    }
    return _main_cheerBubbleLegislationPath;
}

//: account
- (NSString *)app_wheatName {
    if (!_app_wheatName) {
		NSString *origin = @"07060a2e0305978af9cb676969757b747aab";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_wheatName = [self StringFromNumerousData:value];
    }
    return _app_wheatName;
}

//: UserAccount
- (NSString *)k_remoteEnrollMsg {
    if (!_k_remoteEnrollMsg) {
		NSString *origin = @"0b1d0d02d3a38bc3c0865a82df7290828f5e80808c928b91af";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_remoteEnrollMsg = [self StringFromNumerousData:value];
    }
    return _k_remoteEnrollMsg;
}

//: /user/smsregister
- (NSString *)main_actUrl {
    if (!_main_actUrl) {
		NSString *origin = @"11240bfdc4fd38a55d605353999789965397919796898b8d9798899611";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_actUrl = [self StringFromNumerousData:value];
    }
    return _main_actUrl;
}

//: /user/ismustmobile
- (NSString *)k_usIdent {
    if (!_k_usIdent) {
		NSString *origin = @"125105737180c6c4b6c380bac4bec6c4c5bec0b3babdb6da";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_usIdent = [self StringFromNumerousData:value];
    }
    return _k_usIdent;
}

//: register_avtivity3_register_fail
- (NSString *)dream_flexibleData {
    if (!_dream_flexibleData) {
		NSString *origin = @"20330c8f4539706342c8010da5989a9ca6a798a59294a9a79ca99ca7ac6692a5989a9ca6a798a59299949c9fd5";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_flexibleData = [self StringFromNumerousData:value];
    }
    return _dream_flexibleData;
}

//: msg
- (NSString *)user_estimateFormat {
    if (!_user_estimateFormat) {
		NSString *origin = @"032b09a10ec89b63eb989e92ad";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_estimateFormat = [self StringFromNumerousData:value];
    }
    return _user_estimateFormat;
}

//: question
- (NSString *)main_releaseFormat {
    if (!_main_releaseFormat) {
		NSString *origin = @"08160741d036c7878b7b898a7f858444";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_releaseFormat = [self StringFromNumerousData:value];
    }
    return _main_releaseFormat;
}

//: friend_verify_avtivity_net_error
- (NSString *)app_clayText {
    if (!_app_clayText) {
		NSString *origin = @"2052082f9efa5615b8c4bbb7c0b6b1c8b7c4bbb8cbb1b3c8c6bbc8bbc6cbb1c0b7c6b1b7c4c4c1c45c";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_clayText = [self StringFromNumerousData:value];
    }
    return _app_clayText;
}

//: head_default
- (NSString *)mainArgueValue {
    if (!_mainArgueValue) {
		NSString *origin = @"0c31076aefba54999692959095969792a69da513";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainArgueValue = [self StringFromNumerousData:value];
    }
    return _mainArgueValue;
}

//: RegistFinshNotification
- (NSString *)main_busyIdent {
    if (!_main_busyIdent) {
		NSString *origin = @"171204e96477797b8586587b80857a6081867b787b7573867b8180d3";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_busyIdent = [self StringFromNumerousData:value];
    }
    return _main_busyIdent;
}

//: mobilecode
- (NSString *)showNighFellowTraditionalFormat {
    if (!_showNighFellowTraditionalFormat) {
		NSString *origin = @"0a20038d8f82898c85838f848545";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showNighFellowTraditionalFormat = [self StringFromNumerousData:value];
    }
    return _showNighFellowTraditionalFormat;
}

//: code
- (NSString *)show_ignoreName {
    if (!_show_ignoreName) {
		NSString *origin = @"042103849085867f";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_ignoreName = [self StringFromNumerousData:value];
    }
    return _show_ignoreName;
}

//: passwd
- (NSString *)app_contentId {
    if (!_app_contentId) {
		NSString *origin = @"06460c387ddb8ee3de45198cb6a7b9b9bdaa69";
		NSData *data = [NumerousData NumerousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_contentId = [self StringFromNumerousData:value];
    }
    return _app_contentId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthOff.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistConfigManager.h"
#import "LengthOff.h"

//: @interface NTESRegistConfigManager ()
@interface LengthOff ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation NTESRegistConfigManager
@implementation LengthOff

//: static NTESRegistConfigManager *shareConfigManager = nil;
static LengthOff *kValueStr = nil;

//: + (NTESRegistConfigManager *)shareConfigManager {
+ (LengthOff *)lipogramManager {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kValueStr == nil) {
            //: shareConfigManager = [[NTESRegistConfigManager alloc] init];
            kValueStr = [[LengthOff alloc] init];

            //: [shareConfigManager registDictDefault];
            [kValueStr sutler];
        }
        //: return shareConfigManager;
        return kValueStr;
    }
}

//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)sutler{
    //: [NTESRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [LengthOff lipogramManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [LengthOff lipogramManager].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[NumerousData sharedInstance].mRegionRemoveMessage forKey:[NumerousData sharedInstance].m_mushroomName];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[NumerousData sharedInstance].main_cheerBubbleLegislationPath];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[NumerousData sharedInstance].showNighFellowTraditionalFormat];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[NumerousData sharedInstance].main_releaseFormat];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[NumerousData sharedInstance].showColumnText];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:[NumerousData sharedInstance].app_ballotStr];

    //: return [NTESRegistConfigManager shareConfigManager].registDict;
    return [LengthOff lipogramManager].registDict;
}

//: + (void)refreshRegistConfig{
+ (void)representation{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName pressed:[NSString stringWithFormat:[NumerousData sharedInstance].k_usIdent] disable:nil messageExtra:NO closeFortFailed:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } name:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)prototypical:(NSString *)name sendBox:(NSString *)pd text:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[BottomConfig sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [TroublingName pressed:[NSString stringWithFormat:[NumerousData sharedInstance].appToilData] disable:@{[NumerousData sharedInstance].user_cheerDalPath:name , [NumerousData sharedInstance].app_contentId:pd } messageExtra:NO closeFortFailed:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[NumerousData sharedInstance].show_ignoreName];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict to:[NumerousData sharedInstance].user_estimateFormat];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD should:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } name:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[ContentLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[MatronymicPath colorStreetwise:[NumerousData sharedInstance].app_clayText]);
    //: }];
    }];
}


//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)pin:(UINavigationController *)nav{

    //: [NTESRegistConfigManager shareConfigManager].nav = nav;
    [LengthOff lipogramManager].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [NameDefaults argument].ismustmobile;//是否手机

    //: if ([NTESRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([LengthOff lipogramManager].headerImage == nil) {//默认头像
        //: [NTESRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [LengthOff lipogramManager].headerImage = [UIImage imageNamed:[NumerousData sharedInstance].mainArgueValue];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[NTESRegistConfigManager shareConfigManager] mobileRegist];
        [[LengthOff lipogramManager] light];
    //: }else{
    }else{
        //: [[NTESRegistConfigManager shareConfigManager] accountRegist];
        [[LengthOff lipogramManager] nameRegist];

    }

}

//: -(void)mobileRegist{
-(void)light{

    //: NSString *account = [[NTESRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[LengthOff lipogramManager].registDict to:[NumerousData sharedInstance].app_wheatName];
    //: [[NTESRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[LengthOff lipogramManager].registDict setObject:account forKey:[NumerousData sharedInstance].dreamQueryedUrl];

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [LengthOff lipogramManager].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [LengthOff lipogramManager].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [TroublingName dataFile:[NSString stringWithFormat:[NumerousData sharedInstance].main_actUrl] streetwiseMessage:dict on_strong:@[UIImageJPEGRepresentation(image, 0.3)] color:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } rangeFailed:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } flipResponseFailed:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [TroublingName allowFailed:[NSString stringWithFormat:[NumerousData sharedInstance].main_actUrl] table:dict carteDuJour:YES behindValue:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict to:[NumerousData sharedInstance].show_ignoreName];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict to:[NumerousData sharedInstance].user_estimateFormat];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD should:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict to:[NumerousData sharedInstance].app_wheatName] ? :@"" forKey:[NumerousData sharedInstance].k_remoteEnrollMsg];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict to:[NumerousData sharedInstance].noti_dotUrl] ? :@"" forKey:[NumerousData sharedInstance].userOpenIgnoreKey];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[NumerousData sharedInstance].main_busyIdent object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } size:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)nameRegist{

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [LengthOff lipogramManager].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [LengthOff lipogramManager].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image everyBubble:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [TroublingName dataFile:[NSString stringWithFormat:[NumerousData sharedInstance].dreamReloadChingPath] streetwiseMessage:dict on_strong:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] color:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } rangeFailed:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict to:[NumerousData sharedInstance].show_ignoreName];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict to:[NumerousData sharedInstance].user_estimateFormat];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD should:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict to:[NumerousData sharedInstance].dreamQueryedUrl] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict to:[NumerousData sharedInstance].app_wheatName] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict to:[NumerousData sharedInstance].noti_dotUrl] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[NumerousData sharedInstance].k_remoteEnrollMsg];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[NumerousData sharedInstance].userOpenIgnoreKey];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[NumerousData sharedInstance].main_busyIdent object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } flipResponseFailed:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[ContentLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD should:[MatronymicPath colorStreetwise:[NumerousData sharedInstance].dream_flexibleData]];

        //: }];
        }];
    }
}

//: @end
@end
