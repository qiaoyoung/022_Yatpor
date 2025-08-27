
#import <Foundation/Foundation.h>

typedef struct {
    Byte blueCustom;
    Byte *census;
    unsigned int modelBackground;
} StructCoverData;

@interface CoverData : NSObject

+ (instancetype)sharedInstance;

//: Vertify_login_password
@property (nonatomic, copy) NSString *user_commentLayerName;

//: #5D5F66
@property (nonatomic, copy) NSString *user_grayShowName;

//: ic-delete_account
@property (nonatomic, copy) NSString *show_countName;

//: #2C3042
@property (nonatomic, copy) NSString *app_viewName;

//: Irreversible_Operation_content
@property (nonatomic, copy) NSString *mTagInfoTitle;

//: #BCC1C8
@property (nonatomic, copy) NSString *dream_ofValue;

//: Confirm_Account_Deletion
@property (nonatomic, copy) NSString *appTeamValue;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *mButtonUrl;

//: Consequences_Account_Deletion_content
@property (nonatomic, copy) NSString *noti_coverId;

//: Explanation_Data_Deletion_content
@property (nonatomic, copy) NSString *k_viewRefreshForKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *appViewTitle;

//: #333333
@property (nonatomic, copy) NSString *show_messageData;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *appRedUrl;

//: Irreversible_Operation
@property (nonatomic, copy) NSString *mainBarData;

//: agree_account_deletion_terms
@property (nonatomic, copy) NSString *userStartIdent;

//: #FF483D
@property (nonatomic, copy) NSString *appUpIdent;

//: #F7BA00
@property (nonatomic, copy) NSString *dream_enableFormat;

//: safe_arrow_next
@property (nonatomic, copy) NSString *kTextKey;

//: login_agreement_press
@property (nonatomic, copy) NSString *user_remoteTitle;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *show_normalMessage;

//: login_agreement_normal
@property (nonatomic, copy) NSString *app_viewValueData;

//: Complete_operation
@property (nonatomic, copy) NSString *dreamBackgroundValue;

//: Explanation_Data_Deletion
@property (nonatomic, copy) NSString *mCheckedStr;

//: Consequences_Account_Deletion
@property (nonatomic, copy) NSString *user_singleUrl;

@end

@implementation CoverData

+ (instancetype)sharedInstance {
    static CoverData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CoverDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CoverDataToByte:(StructCoverData *)data {
    for (int i = 0; i < data->modelBackground; i++) {
        data->census[i] ^= data->blueCustom;
    }
    data->census[data->modelBackground] = 0;
    return data->census;
}

- (NSString *)StringFromCoverData:(StructCoverData *)data {
    return [NSString stringWithUTF8String:(char *)[self CoverDataToByte:data]];
}

//: #BCC1C8
- (NSString *)dream_ofValue {
    if (!_dream_ofValue) {
		NSArray<NSNumber *> *origin = @[@14, @111, @110, @110, @28, @110, @21, @48];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){45, (Byte *)data.bytes, 7};
        _dream_ofValue = [self StringFromCoverData:&value];
    }
    return _dream_ofValue;
}

//: Vertify_login_password
- (NSString *)user_commentLayerName {
    if (!_user_commentLayerName) {
		NSArray<NSNumber *> *origin = @[@165, @150, @129, @135, @154, @149, @138, @172, @159, @156, @148, @154, @157, @172, @131, @146, @128, @128, @132, @156, @129, @151, @132];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){243, (Byte *)data.bytes, 22};
        _user_commentLayerName = [self StringFromCoverData:&value];
    }
    return _user_commentLayerName;
}

//: Explanation_Data_Deletion_content
- (NSString *)k_viewRefreshForKey {
    if (!_k_viewRefreshForKey) {
		NSArray<NSNumber *> *origin = @[@211, @238, @230, @250, @247, @248, @247, @226, @255, @249, @248, @201, @210, @247, @226, @247, @201, @210, @243, @250, @243, @226, @255, @249, @248, @201, @245, @249, @248, @226, @243, @248, @226, @6];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){150, (Byte *)data.bytes, 33};
        _k_viewRefreshForKey = [self StringFromCoverData:&value];
    }
    return _k_viewRefreshForKey;
}

//: #2C3042
- (NSString *)app_viewName {
    if (!_app_viewName) {
		NSArray<NSNumber *> *origin = @[@249, @232, @153, @233, @234, @238, @232, @233];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){218, (Byte *)data.bytes, 7};
        _app_viewName = [self StringFromCoverData:&value];
    }
    return _app_viewName;
}

//: login_agreement_press
- (NSString *)user_remoteTitle {
    if (!_user_remoteTitle) {
		NSArray<NSNumber *> *origin = @[@140, @143, @135, @137, @142, @191, @129, @135, @146, @133, @133, @141, @133, @142, @148, @191, @144, @146, @133, @147, @147, @136];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){224, (Byte *)data.bytes, 21};
        _user_remoteTitle = [self StringFromCoverData:&value];
    }
    return _user_remoteTitle;
}

//: Confirm_Account_Deletion
- (NSString *)appTeamValue {
    if (!_appTeamValue) {
		NSArray<NSNumber *> *origin = @[@116, @88, @89, @81, @94, @69, @90, @104, @118, @84, @84, @88, @66, @89, @67, @104, @115, @82, @91, @82, @67, @94, @88, @89, @140];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){55, (Byte *)data.bytes, 24};
        _appTeamValue = [self StringFromCoverData:&value];
    }
    return _appTeamValue;
}

//: Complete_operation
- (NSString *)dreamBackgroundValue {
    if (!_dreamBackgroundValue) {
		NSArray<NSNumber *> *origin = @[@151, @187, @185, @164, @184, @177, @160, @177, @139, @187, @164, @177, @166, @181, @160, @189, @187, @186, @73];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){212, (Byte *)data.bytes, 18};
        _dreamBackgroundValue = [self StringFromCoverData:&value];
    }
    return _dreamBackgroundValue;
}

//: #F7BA00
- (NSString *)dream_enableFormat {
    if (!_dream_enableFormat) {
		NSArray<NSNumber *> *origin = @[@144, @245, @132, @241, @242, @131, @131, @36];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){179, (Byte *)data.bytes, 7};
        _dream_enableFormat = [self StringFromCoverData:&value];
    }
    return _dream_enableFormat;
}

//: ic-delete_account
- (NSString *)show_countName {
    if (!_show_countName) {
		NSArray<NSNumber *> *origin = @[@238, @228, @170, @227, @226, @235, @226, @243, @226, @216, @230, @228, @228, @232, @242, @233, @243, @224];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){135, (Byte *)data.bytes, 17};
        _show_countName = [self StringFromCoverData:&value];
    }
    return _show_countName;
}

//: agree_account_deletion_terms
- (NSString *)userStartIdent {
    if (!_userStartIdent) {
		NSArray<NSNumber *> *origin = @[@26, @28, @9, @30, @30, @36, @26, @24, @24, @20, @14, @21, @15, @36, @31, @30, @23, @30, @15, @18, @20, @21, @36, @15, @30, @9, @22, @8, @54];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){123, (Byte *)data.bytes, 28};
        _userStartIdent = [self StringFromCoverData:&value];
    }
    return _userStartIdent;
}

//: Explanation_Data_Deletion
- (NSString *)mCheckedStr {
    if (!_mCheckedStr) {
		NSArray<NSNumber *> *origin = @[@60, @1, @9, @21, @24, @23, @24, @13, @16, @22, @23, @38, @61, @24, @13, @24, @38, @61, @28, @21, @28, @13, @16, @22, @23, @238];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){121, (Byte *)data.bytes, 25};
        _mCheckedStr = [self StringFromCoverData:&value];
    }
    return _mCheckedStr;
}

//: Read_agree_agreement
- (NSString *)appRedUrl {
    if (!_appRedUrl) {
		NSArray<NSNumber *> *origin = @[@58, @13, @9, @12, @55, @9, @15, @26, @13, @13, @55, @9, @15, @26, @13, @13, @5, @13, @6, @28, @221];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){104, (Byte *)data.bytes, 20};
        _appRedUrl = [self StringFromCoverData:&value];
    }
    return _appRedUrl;
}

//: Irreversible_Operation
- (NSString *)mainBarData {
    if (!_mainBarData) {
		NSArray<NSNumber *> *origin = @[@153, @162, @162, @181, @166, @181, @162, @163, @185, @178, @188, @181, @143, @159, @160, @181, @162, @177, @164, @185, @191, @190, @202];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){208, (Byte *)data.bytes, 22};
        _mainBarData = [self StringFromCoverData:&value];
    }
    return _mainBarData;
}

//: activity_comment_setting_cancel_account
- (NSString *)mButtonUrl {
    if (!_mButtonUrl) {
		NSArray<NSNumber *> *origin = @[@129, @131, @148, @137, @150, @137, @148, @153, @191, @131, @143, @141, @141, @133, @142, @148, @191, @147, @133, @148, @148, @137, @142, @135, @191, @131, @129, @142, @131, @133, @140, @191, @129, @131, @131, @143, @149, @142, @148, @45];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){224, (Byte *)data.bytes, 39};
        _mButtonUrl = [self StringFromCoverData:&value];
    }
    return _mButtonUrl;
}

//: safe_arrow_next
- (NSString *)kTextKey {
    if (!_kTextKey) {
		NSArray<NSNumber *> *origin = @[@229, @247, @240, @243, @201, @247, @228, @228, @249, @225, @201, @248, @243, @238, @226, @52];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){150, (Byte *)data.bytes, 15};
        _kTextKey = [self StringFromCoverData:&value];
    }
    return _kTextKey;
}

//: #333333
- (NSString *)show_messageData {
    if (!_show_messageData) {
		NSArray<NSNumber *> *origin = @[@94, @78, @78, @78, @78, @78, @78, @206];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){125, (Byte *)data.bytes, 7};
        _show_messageData = [self StringFromCoverData:&value];
    }
    return _show_messageData;
}

//: contact_tag_fragment_sure
- (NSString *)show_normalMessage {
    if (!_show_normalMessage) {
		NSArray<NSNumber *> *origin = @[@171, @167, @166, @188, @169, @171, @188, @151, @188, @169, @175, @151, @174, @186, @169, @175, @165, @173, @166, @188, @151, @187, @189, @186, @173, @152];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){200, (Byte *)data.bytes, 25};
        _show_normalMessage = [self StringFromCoverData:&value];
    }
    return _show_normalMessage;
}

//: Irreversible_Operation_content
- (NSString *)mTagInfoTitle {
    if (!_mTagInfoTitle) {
		NSArray<NSNumber *> *origin = @[@228, @223, @223, @200, @219, @200, @223, @222, @196, @207, @193, @200, @242, @226, @221, @200, @223, @204, @217, @196, @194, @195, @242, @206, @194, @195, @217, @200, @195, @217, @148];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){173, (Byte *)data.bytes, 30};
        _mTagInfoTitle = [self StringFromCoverData:&value];
    }
    return _mTagInfoTitle;
}

//: #FF483D
- (NSString *)appUpIdent {
    if (!_appUpIdent) {
		NSArray<NSNumber *> *origin = @[@177, @212, @212, @166, @170, @161, @214, @224];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){146, (Byte *)data.bytes, 7};
        _appUpIdent = [self StringFromCoverData:&value];
    }
    return _appUpIdent;
}

//: Consequences_Account_Deletion_content
- (NSString *)noti_coverId {
    if (!_noti_coverId) {
		NSArray<NSNumber *> *origin = @[@224, @204, @205, @208, @198, @210, @214, @198, @205, @192, @198, @208, @252, @226, @192, @192, @204, @214, @205, @215, @252, @231, @198, @207, @198, @215, @202, @204, @205, @252, @192, @204, @205, @215, @198, @205, @215, @184];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){163, (Byte *)data.bytes, 37};
        _noti_coverId = [self StringFromCoverData:&value];
    }
    return _noti_coverId;
}

//: login_agreement_normal
- (NSString *)app_viewValueData {
    if (!_app_viewValueData) {
		NSArray<NSNumber *> *origin = @[@95, @92, @84, @90, @93, @108, @82, @84, @65, @86, @86, @94, @86, @93, @71, @108, @93, @92, @65, @94, @82, @95, @120];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){51, (Byte *)data.bytes, 22};
        _app_viewValueData = [self StringFromCoverData:&value];
    }
    return _app_viewValueData;
}

//: #5D5F66
- (NSString *)user_grayShowName {
    if (!_user_grayShowName) {
		NSArray<NSNumber *> *origin = @[@48, @38, @87, @38, @85, @37, @37, @170];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){19, (Byte *)data.bytes, 7};
        _user_grayShowName = [self StringFromCoverData:&value];
    }
    return _user_grayShowName;
}

//: contact_tag_fragment_cancel
- (NSString *)appViewTitle {
    if (!_appViewTitle) {
		NSArray<NSNumber *> *origin = @[@21, @25, @24, @2, @23, @21, @2, @41, @2, @23, @17, @41, @16, @4, @23, @17, @27, @19, @24, @2, @41, @21, @23, @24, @21, @19, @26, @71];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){118, (Byte *)data.bytes, 27};
        _appViewTitle = [self StringFromCoverData:&value];
    }
    return _appViewTitle;
}

//: Consequences_Account_Deletion
- (NSString *)user_singleUrl {
    if (!_user_singleUrl) {
		NSArray<NSNumber *> *origin = @[@210, @254, @255, @226, @244, @224, @228, @244, @255, @242, @244, @226, @206, @208, @242, @242, @254, @228, @255, @229, @206, @213, @244, @253, @244, @229, @248, @254, @255, @199];
		NSData *data = [CoverData CoverDataToData:origin];
        StructCoverData value = (StructCoverData){145, (Byte *)data.bytes, 29};
        _user_singleUrl = [self StringFromCoverData:&value];
    }
    return _user_singleUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickDismissView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeleteAccountView.h"
#import "QuickDismissView.h"

//: @interface ZMONDeleteAccountView ()<UITextFieldDelegate>
@interface QuickDismissView ()<UITextFieldDelegate>

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

//: @implementation ZMONDeleteAccountView
@implementation QuickDismissView

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
        [self initTeamCan];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initTeamCan{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labtitle.textColor = [UIColor recordView:[CoverData sharedInstance].app_viewName];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Confirm_Account_Deletion"];
    labtitle.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].appTeamValue];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, SCREEN_WIDTH-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
}



//: - (void)updateTheNickname{
- (void)sendLimit{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MatronymicPath colorStreetwise:[CoverData sharedInstance].appRedUrl] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self animationEnableClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(brushCellShirtButton)]) {
        //: [self.delegate didTouchDeleteNextButton];
        [self.delegate brushCellShirtButton];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
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
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor recordView:[CoverData sharedInstance].app_viewName];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].mButtonUrl];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CoverData sharedInstance].show_countName]];
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
        numView1.backgroundColor = [UIColor recordView:[CoverData sharedInstance].dream_enableFormat];
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
        labtitle1.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].appRedUrl];
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
        numView2.backgroundColor = [UIColor recordView:[CoverData sharedInstance].dream_ofValue];
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
        labtitle2.textColor = [UIColor recordView:[CoverData sharedInstance].user_grayShowName];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].user_commentLayerName];
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
        numView3.backgroundColor = [UIColor recordView:[CoverData sharedInstance].dream_ofValue];
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
        labtitle3.textColor = [UIColor recordView:[CoverData sharedInstance].user_grayShowName];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].dreamBackgroundValue];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[CoverData sharedInstance].kTextKey];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[CoverData sharedInstance].kTextKey];
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
        labtitle1.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion"];
        labtitle1.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].user_singleUrl];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion_content"];
        labsubtitle1.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].noti_coverId];
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
        labtitle2.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion"];
        labtitle2.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].mCheckedStr];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labsubtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion_content"];
        labsubtitle2.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].k_viewRefreshForKey];
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
        labtitle3.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation"];
        labtitle3.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].mainBarData];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor recordView:[CoverData sharedInstance].show_messageData];
        //: labsubtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation_content"];
        labsubtitle3.text = [MatronymicPath colorStreetwise:[CoverData sharedInstance].mTagInfoTitle];
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
        [_agreementButton setImage:[UIImage imageNamed:[CoverData sharedInstance].app_viewValueData] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[CoverData sharedInstance].user_remoteTitle] forState:UIControlStateSelected];
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

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"agree_account_deletion_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[MatronymicPath colorStreetwise:[CoverData sharedInstance].userStartIdent]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor recordView:[CoverData sharedInstance].app_viewName] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor recordView:[CoverData sharedInstance].app_viewName] range:(NSRange){0,[tncString length]}];
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
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(asName)]) {
        //: [self.delegate didTouchDeleteProtocolButton];
        [self.delegate asName];
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
        [_closeBtn setTitleColor:[UIColor recordView:[CoverData sharedInstance].user_grayShowName] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MatronymicPath colorStreetwise:[CoverData sharedInstance].appViewTitle] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
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
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MatronymicPath colorStreetwise:[CoverData sharedInstance].show_normalMessage] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor recordView:[CoverData sharedInstance].appUpIdent];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

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
- (void)containerMax
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end