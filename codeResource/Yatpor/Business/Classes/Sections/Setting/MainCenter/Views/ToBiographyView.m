
#import <Foundation/Foundation.h>

@interface BackgroundTitleRemoveData : NSObject

+ (instancetype)sharedInstance;

//: deactivate_account
@property (nonatomic, copy) NSString *show_releaseMessage;

//: Data_Retention_Policy_content
@property (nonatomic, copy) NSString *userTitleStr;

//: Data_Retention_Policy
@property (nonatomic, copy) NSString *dreamOnData;

//: #F7BA00
@property (nonatomic, copy) NSString *dream_accountUrl;

//: login_agreement_normal
@property (nonatomic, copy) NSString *m_countKitStr;

//: safe_arrow_next
@property (nonatomic, copy) NSString *userBlueStr;

//: #FF483D
@property (nonatomic, copy) NSString *dreamCollectionValue;

//: ic-delete_account
@property (nonatomic, copy) NSString *appViewKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *show_sizeBlueTitle;

//: Confirm_Account_Deactivation
@property (nonatomic, copy) NSString *main_commentTagName;

//: login_agreement_press
@property (nonatomic, copy) NSString *k_onMessage;

//: Vertify_login_password
@property (nonatomic, copy) NSString *dreamOperationMsg;

//: agree_account_deactivation_terms
@property (nonatomic, copy) NSString *dream_lineData;

//: #BCC1C8
@property (nonatomic, copy) NSString *m_startIdent;

//: Consequences_Deactivation_content
@property (nonatomic, copy) NSString *userValueIdent;

//: Consequences_Deactivation
@property (nonatomic, copy) NSString *noti_dateSingleImageMsg;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *userImageGrayMessage;

//: activity_register_next
@property (nonatomic, copy) NSString *noti_removeEndModelMsg;

//: #333333
@property (nonatomic, copy) NSString *mainKitMsg;

//: #5D5F66
@property (nonatomic, copy) NSString *userCountOnName;

//: Recovery_Options_content
@property (nonatomic, copy) NSString *appCollectionKey;

//: Recovery_Options
@property (nonatomic, copy) NSString *userWithValue;

//: Complete_operation
@property (nonatomic, copy) NSString *appRemoveFormat;

@end

@implementation BackgroundTitleRemoveData

+ (instancetype)sharedInstance {
    static BackgroundTitleRemoveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BackgroundTitleRemoveDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BackgroundTitleRemoveDataToCache:(Byte *)data {
    int viewUser = data[0];
    Byte information = data[1];
    int bubbleMessage = data[2];
    for (int i = bubbleMessage; i < bubbleMessage + viewUser; i++) {
        int value = data[i] + information;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bubbleMessage + viewUser] = 0;
    return data + bubbleMessage;
}

- (NSString *)StringFromBackgroundTitleRemoveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BackgroundTitleRemoveDataToCache:data]];
}

//: Vertify_login_password
- (NSString *)dreamOperationMsg {
    if (!_dreamOperationMsg) {
		NSArray<NSString *> *origin = @[@"22", @"63", @"5", @"89", @"91", @"23", @"38", @"51", @"53", @"42", @"39", @"58", @"32", @"45", @"48", @"40", @"42", @"47", @"32", @"49", @"34", @"52", @"52", @"56", @"48", @"51", @"37", @"113"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamOperationMsg = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _dreamOperationMsg;
}

//: #BCC1C8
- (NSString *)m_startIdent {
    if (!_m_startIdent) {
		NSArray<NSString *> *origin = @[@"7", @"22", @"6", @"22", @"57", @"18", @"13", @"44", @"45", @"45", @"27", @"45", @"34", @"80"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_startIdent = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _m_startIdent;
}

//: login_agreement_press
- (NSString *)k_onMessage {
    if (!_k_onMessage) {
		NSArray<NSString *> *origin = @[@"21", @"69", @"3", @"39", @"42", @"34", @"36", @"41", @"26", @"28", @"34", @"45", @"32", @"32", @"40", @"32", @"41", @"47", @"26", @"43", @"45", @"32", @"46", @"46", @"190"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_onMessage = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _k_onMessage;
}

//: Recovery_Options_content
- (NSString *)appCollectionKey {
    if (!_appCollectionKey) {
		NSArray<NSString *> *origin = @[@"24", @"55", @"5", @"136", @"208", @"27", @"46", @"44", @"56", @"63", @"46", @"59", @"66", @"40", @"24", @"57", @"61", @"50", @"56", @"55", @"60", @"40", @"44", @"56", @"55", @"61", @"46", @"55", @"61", @"53"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCollectionKey = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _appCollectionKey;
}

//: ic-delete_account
- (NSString *)appViewKey {
    if (!_appViewKey) {
		NSArray<NSString *> *origin = @[@"17", @"89", @"13", @"128", @"240", @"6", @"69", @"68", @"134", @"25", @"118", @"105", @"140", @"16", @"10", @"212", @"11", @"12", @"19", @"12", @"27", @"12", @"6", @"8", @"10", @"10", @"22", @"28", @"21", @"27", @"248"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appViewKey = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _appViewKey;
}

//: Data_Retention_Policy_content
- (NSString *)userTitleStr {
    if (!_userTitleStr) {
		NSArray<NSString *> *origin = @[@"29", @"19", @"5", @"70", @"130", @"49", @"78", @"97", @"78", @"76", @"63", @"82", @"97", @"82", @"91", @"97", @"86", @"92", @"91", @"76", @"61", @"92", @"89", @"86", @"80", @"102", @"76", @"80", @"92", @"91", @"97", @"82", @"91", @"97", @"16"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTitleStr = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userTitleStr;
}

//: #F7BA00
- (NSString *)dream_accountUrl {
    if (!_dream_accountUrl) {
		NSArray<NSString *> *origin = @[@"7", @"3", @"10", @"111", @"9", @"238", @"243", @"91", @"220", @"191", @"32", @"67", @"52", @"63", @"62", @"45", @"45", @"28"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_accountUrl = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _dream_accountUrl;
}

//: deactivate_account
- (NSString *)show_releaseMessage {
    if (!_show_releaseMessage) {
		NSArray<NSString *> *origin = @[@"18", @"72", @"3", @"28", @"29", @"25", @"27", @"44", @"33", @"46", @"25", @"44", @"29", @"23", @"25", @"27", @"27", @"39", @"45", @"38", @"44", @"39"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_releaseMessage = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _show_releaseMessage;
}

//: activity_register_next
- (NSString *)noti_removeEndModelMsg {
    if (!_noti_removeEndModelMsg) {
		NSArray<NSString *> *origin = @[@"22", @"75", @"6", @"54", @"46", @"205", @"22", @"24", @"41", @"30", @"43", @"30", @"41", @"46", @"20", @"39", @"26", @"28", @"30", @"40", @"41", @"26", @"39", @"20", @"35", @"26", @"45", @"41", @"154"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_removeEndModelMsg = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _noti_removeEndModelMsg;
}

//: Data_Retention_Policy
- (NSString *)dreamOnData {
    if (!_dreamOnData) {
		NSArray<NSString *> *origin = @[@"21", @"53", @"12", @"151", @"180", @"42", @"212", @"183", @"62", @"83", @"18", @"166", @"15", @"44", @"63", @"44", @"42", @"29", @"48", @"63", @"48", @"57", @"63", @"52", @"58", @"57", @"42", @"27", @"58", @"55", @"52", @"46", @"68", @"253"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamOnData = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _dreamOnData;
}

//: Recovery_Options
- (NSString *)userWithValue {
    if (!_userWithValue) {
		NSArray<NSString *> *origin = @[@"16", @"58", @"13", @"249", @"198", @"234", @"105", @"77", @"255", @"62", @"220", @"1", @"64", @"24", @"43", @"41", @"53", @"60", @"43", @"56", @"63", @"37", @"21", @"54", @"58", @"47", @"53", @"52", @"57", @"122"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userWithValue = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userWithValue;
}

//: Consequences_Deactivation
- (NSString *)noti_dateSingleImageMsg {
    if (!_noti_dateSingleImageMsg) {
		NSArray<NSString *> *origin = @[@"25", @"56", @"7", @"32", @"218", @"61", @"226", @"11", @"55", @"54", @"59", @"45", @"57", @"61", @"45", @"54", @"43", @"45", @"59", @"39", @"12", @"45", @"41", @"43", @"60", @"49", @"62", @"41", @"60", @"49", @"55", @"54", @"103"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_dateSingleImageMsg = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _noti_dateSingleImageMsg;
}

//: #333333
- (NSString *)mainKitMsg {
    if (!_mainKitMsg) {
		NSArray<NSString *> *origin = @[@"7", @"83", @"7", @"150", @"151", @"97", @"176", @"208", @"224", @"224", @"224", @"224", @"224", @"224", @"142"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainKitMsg = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _mainKitMsg;
}

//: contact_tag_fragment_cancel
- (NSString *)show_sizeBlueTitle {
    if (!_show_sizeBlueTitle) {
		NSArray<NSString *> *origin = @[@"27", @"70", @"7", @"173", @"9", @"84", @"152", @"29", @"41", @"40", @"46", @"27", @"29", @"46", @"25", @"46", @"27", @"33", @"25", @"32", @"44", @"27", @"33", @"39", @"31", @"40", @"46", @"25", @"29", @"27", @"40", @"29", @"31", @"38", @"12"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_sizeBlueTitle = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _show_sizeBlueTitle;
}

//: Confirm_Account_Deactivation
- (NSString *)main_commentTagName {
    if (!_main_commentTagName) {
		NSArray<NSString *> *origin = @[@"28", @"60", @"3", @"7", @"51", @"50", @"42", @"45", @"54", @"49", @"35", @"5", @"39", @"39", @"51", @"57", @"50", @"56", @"35", @"8", @"41", @"37", @"39", @"56", @"45", @"58", @"37", @"56", @"45", @"51", @"50", @"64"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_commentTagName = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _main_commentTagName;
}

//: Complete_operation
- (NSString *)appRemoveFormat {
    if (!_appRemoveFormat) {
		NSArray<NSString *> *origin = @[@"18", @"35", @"12", @"207", @"12", @"67", @"117", @"29", @"88", @"197", @"95", @"226", @"32", @"76", @"74", @"77", @"73", @"66", @"81", @"66", @"60", @"76", @"77", @"66", @"79", @"62", @"81", @"70", @"76", @"75", @"254"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appRemoveFormat = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _appRemoveFormat;
}

//: agree_account_deactivation_terms
- (NSString *)dream_lineData {
    if (!_dream_lineData) {
		NSArray<NSString *> *origin = @[@"32", @"51", @"11", @"251", @"160", @"136", @"21", @"179", @"23", @"44", @"180", @"46", @"52", @"63", @"50", @"50", @"44", @"46", @"48", @"48", @"60", @"66", @"59", @"65", @"44", @"49", @"50", @"46", @"48", @"65", @"54", @"67", @"46", @"65", @"54", @"60", @"59", @"44", @"65", @"50", @"63", @"58", @"64", @"250"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_lineData = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _dream_lineData;
}

//: #5D5F66
- (NSString *)userCountOnName {
    if (!_userCountOnName) {
		NSArray<NSString *> *origin = @[@"7", @"4", @"9", @"208", @"223", @"63", @"254", @"6", @"156", @"31", @"49", @"64", @"49", @"66", @"50", @"50", @"183"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userCountOnName = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userCountOnName;
}

//: safe_arrow_next
- (NSString *)userBlueStr {
    if (!_userBlueStr) {
		NSArray<NSString *> *origin = @[@"15", @"51", @"6", @"40", @"130", @"231", @"64", @"46", @"51", @"50", @"44", @"46", @"63", @"63", @"60", @"68", @"44", @"59", @"50", @"69", @"65", @"33"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userBlueStr = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userBlueStr;
}

//: Read_agree_agreement
- (NSString *)userImageGrayMessage {
    if (!_userImageGrayMessage) {
		NSArray<NSString *> *origin = @[@"20", @"17", @"7", @"99", @"84", @"139", @"110", @"65", @"84", @"80", @"83", @"78", @"80", @"86", @"97", @"84", @"84", @"78", @"80", @"86", @"97", @"84", @"84", @"92", @"84", @"93", @"99", @"197"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userImageGrayMessage = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userImageGrayMessage;
}

//: Consequences_Deactivation_content
- (NSString *)userValueIdent {
    if (!_userValueIdent) {
		NSArray<NSString *> *origin = @[@"33", @"19", @"10", @"125", @"223", @"121", @"190", @"22", @"190", @"44", @"48", @"92", @"91", @"96", @"82", @"94", @"98", @"82", @"91", @"80", @"82", @"96", @"76", @"49", @"82", @"78", @"80", @"97", @"86", @"99", @"78", @"97", @"86", @"92", @"91", @"76", @"80", @"92", @"91", @"97", @"82", @"91", @"97", @"194"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userValueIdent = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _userValueIdent;
}

//: #FF483D
- (NSString *)dreamCollectionValue {
    if (!_dreamCollectionValue) {
		NSArray<NSString *> *origin = @[@"7", @"58", @"9", @"26", @"110", @"225", @"45", @"103", @"101", @"233", @"12", @"12", @"250", @"254", @"249", @"10", @"205"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamCollectionValue = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _dreamCollectionValue;
}

//: login_agreement_normal
- (NSString *)m_countKitStr {
    if (!_m_countKitStr) {
		NSArray<NSString *> *origin = @[@"22", @"51", @"4", @"165", @"57", @"60", @"52", @"54", @"59", @"44", @"46", @"52", @"63", @"50", @"50", @"58", @"50", @"59", @"65", @"44", @"59", @"60", @"63", @"58", @"46", @"57", @"111"];
		NSData *data = [BackgroundTitleRemoveData BackgroundTitleRemoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_countKitStr = [self StringFromBackgroundTitleRemoveData:value];
    }
    return _m_countKitStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToBiographyView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountView.h"
#import "ToBiographyView.h"

//: @interface ZMONDeactivateAccountView ()
@interface ToBiographyView ()

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;
//: @property (nonatomic,strong) UIButton *agreementButton;
@property (nonatomic,strong) UIButton *agreementButton;

//: @end
@end

//: @implementation ZMONDeactivateAccountView
@implementation ToBiographyView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initPunctuate];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initPunctuate{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(20, 20, 32, 32);
    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);
    self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Confirm_Account_Deactivation"];
    labtitle.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].main_commentTagName];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

    //: [_box addSubview:self.nextBox];
    [_box addSubview:self.nextBox];
    //: self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);
    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);
    self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);

}



//: - (void)updateTheNickname{
- (void)sendLimit{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].userImageGrayMessage] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(completeManager)]) {
        //: [self.delegate didTouchNextButton];
        [self.delegate completeManager];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)orientation:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)table:(UITextField *)textField key:(NSRange)range layer:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)infoWith:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)showClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)array:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
}
//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"deactivate_account"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].show_releaseMessage];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[BackgroundTitleRemoveData sharedInstance].appViewKey]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];

        //: UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView1.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        numView1.backgroundColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].dream_accountUrl];
        //: numView1.layer.cornerRadius = 10;
        numView1.layer.cornerRadius = 10;
        //: numView1.layer.masksToBounds = YES;
        numView1.layer.masksToBounds = YES;
        //: [view1 addSubview:numView1];
        [view1 addSubview:numView1];
        //: UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum1.textColor = [UIColor whiteColor];
        labtitlenum1.textColor = [UIColor whiteColor];
        //: labtitlenum1.text = @"1";
        labtitlenum1.text = @"1";
        //: labtitlenum1.textAlignment = NSTextAlignmentCenter;
        labtitlenum1.textAlignment = NSTextAlignmentCenter;
        //: [numView1 addSubview:labtitlenum1];
        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].userImageGrayMessage];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView2.backgroundColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].m_startIdent];
        //: numView2.layer.cornerRadius = 10;
        numView2.layer.cornerRadius = 10;
        //: numView2.layer.masksToBounds = YES;
        numView2.layer.masksToBounds = YES;
        //: [view2 addSubview:numView2];
        [view2 addSubview:numView2];
        //: UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum2.textColor = [UIColor whiteColor];
        labtitlenum2.textColor = [UIColor whiteColor];
        //: labtitlenum2.text = @"2";
        labtitlenum2.text = @"2";
        //: labtitlenum2.textAlignment = NSTextAlignmentCenter;
        labtitlenum2.textAlignment = NSTextAlignmentCenter;
        //: [numView2 addSubview:labtitlenum2];
        [numView2 addSubview:labtitlenum2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle2.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].userCountOnName];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].dreamOperationMsg];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView3.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView3.backgroundColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].m_startIdent];
        //: numView3.layer.cornerRadius = 10;
        numView3.layer.cornerRadius = 10;
        //: numView3.layer.masksToBounds = YES;
        numView3.layer.masksToBounds = YES;
        //: [view3 addSubview:numView3];
        [view3 addSubview:numView3];
        //: UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum3.textColor = [UIColor whiteColor];
        labtitlenum3.textColor = [UIColor whiteColor];
        //: labtitlenum3.text = @"3";
        labtitlenum3.text = @"3";
        //: labtitlenum3.textAlignment = NSTextAlignmentCenter;
        labtitlenum3.textAlignment = NSTextAlignmentCenter;
        //: [numView3 addSubview:labtitlenum3];
        [numView3 addSubview:labtitlenum3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle3.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].userCountOnName];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].appRemoveFormat];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[BackgroundTitleRemoveData sharedInstance].userBlueStr];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[BackgroundTitleRemoveData sharedInstance].userBlueStr];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Deactivation"];
        labtitle1.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].noti_dateSingleImageMsg];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Deactivation_content"];
        labsubtitle1.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].userValueIdent];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        //: labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle2.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Data_Retention_Policy"];
        labtitle2.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].dreamOnData];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labsubtitle2.text = [FFFLanguageManager getTextWithKey:@"Data_Retention_Policy_content"];
        labsubtitle2.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].userTitleStr];
        //: labsubtitle2.numberOfLines = 0;
        labsubtitle2.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle2];
        [_contentBox addSubview:labsubtitle2];
        //: [labsubtitle2 sizeToFit];
        [labsubtitle2 sizeToFit];

        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        //: labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle3.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Recovery_Options"];
        labtitle3.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].userWithValue];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor recordView:[BackgroundTitleRemoveData sharedInstance].mainKitMsg];
        //: labsubtitle3.text = [FFFLanguageManager getTextWithKey:@"Recovery_Options_content"];
        labsubtitle3.text = [MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].appCollectionKey];
        //: labsubtitle3.numberOfLines = 0;
        labsubtitle3.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle3];
        [_contentBox addSubview:labsubtitle3];
        //: [labsubtitle3 sizeToFit];
        [labsubtitle3 sizeToFit];

        //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        //: _agreementButton.selected = YES;
        _agreementButton.selected = YES;
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
        [_agreementButton setImage:[UIImage imageNamed:[BackgroundTitleRemoveData sharedInstance].m_countKitStr] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[BackgroundTitleRemoveData sharedInstance].k_onMessage] forState:UIControlStateSelected];
        //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_agreementButton addTarget:self action:@selector(fixing:) forControlEvents:UIControlEventTouchUpInside];
        //: [_contentBox addSubview:_agreementButton];
        [_contentBox addSubview:_agreementButton];

        //: UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        //: labprotocol.font = [UIFont systemFontOfSize:12.f];
        labprotocol.font = [UIFont systemFontOfSize:12.f];
//        labprotocol.textColor = TextColor_4;
//        labprotocol.text = @"I have read and agree to the account deactivation terms";
        //: labprotocol.numberOfLines = 0;
        labprotocol.numberOfLines = 0;
        //: [_contentBox addSubview:labprotocol];
        [_contentBox addSubview:labprotocol];
        //: labprotocol.userInteractionEnabled = YES;
        labprotocol.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleProtocol)];
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(nimAccount)];
        //: [labprotocol addGestureRecognizer:singleTap];
        [labprotocol addGestureRecognizer:singleTap];

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"agree_account_deactivation_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].dream_lineData]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#F7BA00"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor recordView:[BackgroundTitleRemoveData sharedInstance].dream_accountUrl] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#F7BA00"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor recordView:[BackgroundTitleRemoveData sharedInstance].dream_accountUrl] range:(NSRange){0,[tncString length]}];
        //: labprotocol.attributedText = tncString;
        labprotocol.attributedText = tncString;

        //: [labprotocol sizeToFit];
        [labprotocol sizeToFit];


    }
    //: return _contentBox;
    return _contentBox;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)fixing:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)handleProtocol
-(void)nimAccount
{
//    [self animationClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(fullImage)]) {
        //: [self.delegate didTouchProtocolButton];
        [self.delegate fullImage];
    }
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationEnableClose) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor recordView:[BackgroundTitleRemoveData sharedInstance].userCountOnName] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].show_sizeBlueTitle] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 10;
        _closeBtn.layer.cornerRadius = 10;
        //: _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _closeBtn.layer.shadowOpacity = 1;
        _closeBtn.layer.shadowOpacity = 1;
        //: _closeBtn.layer.shadowRadius = 0;
        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(sendLimit) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor recordView:[BackgroundTitleRemoveData sharedInstance].dreamCollectionValue] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[BackgroundTitleRemoveData sharedInstance].noti_removeEndModelMsg] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}



//: - (void)animationClose
- (void)animationEnableClose
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)can
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end