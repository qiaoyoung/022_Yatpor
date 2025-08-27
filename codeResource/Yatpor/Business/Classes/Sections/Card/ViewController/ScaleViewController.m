
#import <Foundation/Foundation.h>

typedef struct {
    Byte blueRange;
    Byte *shouldImage;
    unsigned int kitComment;
} StructLabData;

@interface LabData : NSObject

@end

@implementation LabData

+ (NSData *)LabDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)LabDataToByte:(StructLabData *)data {
    for (int i = 0; i < data->kitComment; i++) {
        data->shouldImage[i] ^= data->blueRange;
    }
    data->shouldImage[data->kitComment] = 0;
    return data->shouldImage;
}

+ (NSString *)StringFromLabData:(StructLabData *)data {
    return [NSString stringWithUTF8String:(char *)[self LabDataToByte:data]];
}

//: contact_user_default_header
+ (NSString *)show_modelValue {
    /* static */ NSString *show_modelValue = nil;
    if (!show_modelValue) {
		NSArray<NSString *> *origin = @[@"255", @"243", @"242", @"232", @"253", @"255", @"232", @"195", @"233", @"239", @"249", @"238", @"195", @"248", @"249", @"250", @"253", @"233", @"240", @"232", @"195", @"244", @"249", @"253", @"248", @"249", @"238", @"45"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){156, (Byte *)data.bytes, 27};
        show_modelValue = [self StringFromLabData:&value];
    }
    return show_modelValue;
}

//: #F7BA00
+ (NSString *)main_normalName {
    /* static */ NSString *main_normalName = nil;
    if (!main_normalName) {
		NSArray<NSString *> *origin = @[@"92", @"57", @"72", @"61", @"62", @"79", @"79", @"170"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){127, (Byte *)data.bytes, 7};
        main_normalName = [self StringFromLabData:&value];
    }
    return main_normalName;
}

//: data
+ (NSString *)noti_countStateName {
    /* static */ NSString *noti_countStateName = nil;
    if (!noti_countStateName) {
		NSArray<NSString *> *origin = @[@"152", @"157", @"136", @"157", @"144"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){252, (Byte *)data.bytes, 4};
        noti_countStateName = [self StringFromLabData:&value];
    }
    return noti_countStateName;
}

//: common_bg
+ (NSString *)show_shouldValue {
    /* static */ NSString *show_shouldValue = nil;
    if (!show_shouldValue) {
		NSArray<NSString *> *origin = @[@"177", @"189", @"191", @"191", @"189", @"188", @"141", @"176", @"181", @"111"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){210, (Byte *)data.bytes, 9};
        show_shouldValue = [self StringFromLabData:&value];
    }
    return show_shouldValue;
}

//: /user/detail
+ (NSString *)notiTeamFormat {
    /* static */ NSString *notiTeamFormat = nil;
    if (!notiTeamFormat) {
		NSArray<NSString *> *origin = @[@"90", @"0", @"6", @"16", @"7", @"90", @"17", @"16", @"1", @"20", @"28", @"25", @"236"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){117, (Byte *)data.bytes, 12};
        notiTeamFormat = [self StringFromLabData:&value];
    }
    return notiTeamFormat;
}

//: account
+ (NSString *)m_normalId {
    /* static */ NSString *m_normalId = nil;
    if (!m_normalId) {
		NSArray<NSString *> *origin = @[@"31", @"29", @"29", @"17", @"11", @"16", @"10", @"215"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){126, (Byte *)data.bytes, 7};
        m_normalId = [self StringFromLabData:&value];
    }
    return m_normalId;
}

//: user_id
+ (NSString *)userShareTextStr {
    /* static */ NSString *userShareTextStr = nil;
    if (!userShareTextStr) {
		NSArray<NSString *> *origin = @[@"56", @"62", @"40", @"63", @"18", @"36", @"41", @"97"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){77, (Byte *)data.bytes, 7};
        userShareTextStr = [self StringFromLabData:&value];
    }
    return userShareTextStr;
}

//: code
+ (NSString *)mShouldIdent {
    /* static */ NSString *mShouldIdent = nil;
    if (!mShouldIdent) {
		NSArray<NSString *> *origin = @[@"206", @"194", @"201", @"200", @"75"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){173, (Byte *)data.bytes, 4};
        mShouldIdent = [self StringFromLabData:&value];
    }
    return mShouldIdent;
}

//: contact_tag_fragment_add_success
+ (NSString *)noti_modelPath {
    /* static */ NSString *noti_modelPath = nil;
    if (!noti_modelPath) {
		NSArray<NSString *> *origin = @[@"84", @"88", @"89", @"67", @"86", @"84", @"67", @"104", @"67", @"86", @"80", @"104", @"81", @"69", @"86", @"80", @"90", @"82", @"89", @"67", @"104", @"86", @"83", @"83", @"104", @"68", @"66", @"84", @"84", @"82", @"68", @"68", @"126"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){55, (Byte *)data.bytes, 32};
        noti_modelPath = [self StringFromLabData:&value];
    }
    return noti_modelPath;
}

//: add_friend_request_fail
+ (NSString *)main_showDateKey {
    /* static */ NSString *main_showDateKey = nil;
    if (!main_showDateKey) {
		NSArray<NSString *> *origin = @[@"5", @"0", @"0", @"59", @"2", @"22", @"13", @"1", @"10", @"0", @"59", @"22", @"1", @"21", @"17", @"1", @"23", @"16", @"59", @"2", @"5", @"13", @"8", @"160"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){100, (Byte *)data.bytes, 23};
        main_showDateKey = [self StringFromLabData:&value];
    }
    return main_showDateKey;
}

//: back_arrow_bl
+ (NSString *)mainTingIdent {
    /* static */ NSString *mainTingIdent = nil;
    if (!mainTingIdent) {
		NSArray<NSString *> *origin = @[@"37", @"38", @"36", @"44", @"24", @"38", @"53", @"53", @"40", @"48", @"24", @"37", @"43", @"12"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){71, (Byte *)data.bytes, 13};
        mainTingIdent = [self StringFromLabData:&value];
    }
    return mainTingIdent;
}

//: add_friend_activity_add_friend
+ (NSString *)kImageName {
    /* static */ NSString *kImageName = nil;
    if (!kImageName) {
		NSArray<NSString *> *origin = @[@"68", @"65", @"65", @"122", @"67", @"87", @"76", @"64", @"75", @"65", @"122", @"68", @"70", @"81", @"76", @"83", @"76", @"81", @"92", @"122", @"68", @"65", @"65", @"122", @"67", @"87", @"76", @"64", @"75", @"65", @"77"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){37, (Byte *)data.bytes, 30};
        kImageName = [self StringFromLabData:&value];
    }
    return kImageName;
}

//: request_successful
+ (NSString *)mainBubbleKey {
    /* static */ NSString *mainBubbleKey = nil;
    if (!mainBubbleKey) {
		NSArray<NSString *> *origin = @[@"38", @"49", @"37", @"33", @"49", @"39", @"32", @"11", @"39", @"33", @"55", @"55", @"49", @"39", @"39", @"50", @"33", @"56", @"224"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){84, (Byte *)data.bytes, 18};
        mainBubbleKey = [self StringFromLabData:&value];
    }
    return mainBubbleKey;
}

//: #999999
+ (NSString *)mVerticalName {
    /* static */ NSString *mVerticalName = nil;
    if (!mVerticalName) {
		NSArray<NSString *> *origin = @[@"176", @"170", @"170", @"170", @"170", @"170", @"170", @"50"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){147, (Byte *)data.bytes, 7};
        mVerticalName = [self StringFromLabData:&value];
    }
    return mVerticalName;
}

//: friend_info_activity_account
+ (NSString *)mainOpenStr {
    /* static */ NSString *mainOpenStr = nil;
    if (!mainOpenStr) {
		NSArray<NSString *> *origin = @[@"37", @"49", @"42", @"38", @"45", @"39", @"28", @"42", @"45", @"37", @"44", @"28", @"34", @"32", @"55", @"42", @"53", @"42", @"55", @"58", @"28", @"34", @"32", @"32", @"44", @"54", @"45", @"55", @"190"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){67, (Byte *)data.bytes, 28};
        mainOpenStr = [self StringFromLabData:&value];
    }
    return mainOpenStr;
}

//: add_friend_add_fail
+ (NSString *)user_frameData {
    /* static */ NSString *user_frameData = nil;
    if (!user_frameData) {
		NSArray<NSString *> *origin = @[@"110", @"107", @"107", @"80", @"105", @"125", @"102", @"106", @"97", @"107", @"80", @"110", @"107", @"107", @"80", @"105", @"110", @"102", @"99", @"224"];
		NSData *data = [LabData LabDataToData:origin];
        StructLabData value = (StructLabData){15, (Byte *)data.bytes, 19};
        user_frameData = [self StringFromLabData:&value];
    }
    return user_frameData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "ScaleViewController.h"
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
//: #import "NTESOpinionBackViewController.h"
#import "EmptyWithViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface ScaleViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
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
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation ScaleViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithHandle:(NSString *)userId{
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

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[LabData show_shouldValue]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[LabData mainTingIdent]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice bearDown], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice bearDown])+30, 120, 120)];
    //: self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.cornerRadius = 60;
    //: self.accountheadImg.layer.masksToBounds = YES;
    self.accountheadImg.layer.masksToBounds = YES;
    //: [self.view addSubview:self.accountheadImg];
    [self.view addSubview:self.accountheadImg];

    //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    //: self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    //: self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textColor = [UIColor blackColor];
    //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountNickname];
    [self.view addSubview:self.accountNickname];

    //: self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    //: self.account.font = [UIFont systemFontOfSize:12];
    self.account.font = [UIFont systemFontOfSize:12];
    //: self.account.textColor = [UIColor colorWithHexString:@"#999999"];
    self.account.textColor = [UIColor recordView:[LabData mVerticalName]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(triumphFrom) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[MatronymicPath colorStreetwise:[LabData kImageName]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
    addBtn.backgroundColor = [UIColor recordView:[LabData main_normalName]];
    //: addBtn.layer.cornerRadius = 22;
    addBtn.layer.cornerRadius = 22;
    //: [self.view addSubview:addBtn];
    [self.view addSubview:addBtn];


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

                //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[LabData show_modelValue]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[LabData userShareTextStr]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[LabData notiTeamFormat]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[LabData mShouldIdent]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[LabData noti_countStateName]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data to:[LabData m_normalId]];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[MatronymicPath colorStreetwise:[LabData mainOpenStr]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
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
    NSString *contact_tag_fragment_add_success = [MatronymicPath colorStreetwise:[LabData noti_modelPath]];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [MatronymicPath colorStreetwise:[LabData mainBubbleKey]];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [MatronymicPath colorStreetwise:[LabData user_frameData]];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [MatronymicPath colorStreetwise:[LabData main_showDateKey]];//@"请求失败".ntes_localized
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];

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

//: @end
@end