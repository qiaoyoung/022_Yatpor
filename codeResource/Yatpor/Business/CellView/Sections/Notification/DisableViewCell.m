
#import <Foundation/Foundation.h>

@interface SkinnyData : NSObject

+ (instancetype)sharedInstance;

//: ic_btn_accept
@property (nonatomic, copy) NSString *notiBubbleIdent;

//: message_helper_refuse_you_apply
@property (nonatomic, copy) NSString *app_tagValueKey;

//: rejected_group_invitation
@property (nonatomic, copy) NSString *user_onName;

//: #F6F6F6
@property (nonatomic, copy) NSString *dreamResourceTitle;

//: message_helper_already_ok
@property (nonatomic, copy) NSString *main_searchTagUrl;

//: message_helper_refuse_group
@property (nonatomic, copy) NSString *k_frameWithTitle;

//: is_read
@property (nonatomic, copy) NSString *appLayerMessage;

//: ic_btn_disaccept
@property (nonatomic, copy) NSString *app_endDataPath;

//: large_group
@property (nonatomic, copy) NSString *main_imageId;

//: message_helper_apply_to_group
@property (nonatomic, copy) NSString *kGlobalPath;

//: message_helper_refuse_you
@property (nonatomic, copy) NSString *main_enableCommentBeginStr;

//: message_helper_already_add
@property (nonatomic, copy) NSString *notiSizeContent;

//: invite_you_join_us
@property (nonatomic, copy) NSString *app_searchKey;

//: 000000
@property (nonatomic, copy) NSString *mVerticalFormat;

//: contact_fragment_group
@property (nonatomic, copy) NSString *user_modelId;

//: %@ attach:%@
@property (nonatomic, copy) NSString *userSingleMessage;

//: #999999
@property (nonatomic, copy) NSString *k_userStr;

//: message_helper_invite
@property (nonatomic, copy) NSString *show_tagMsg;

//: to_deny_entry
@property (nonatomic, copy) NSString *k_touchIdent;

//: message_helper_allow_you_apply
@property (nonatomic, copy) NSString *appBackgroundValue;

//: #F7BA00
@property (nonatomic, copy) NSString *m_labData;

//: invite_you_group
@property (nonatomic, copy) NSString *k_needShareDataKey;

//: message_helper_already_time
@property (nonatomic, copy) NSString *user_frameKeyTitle;

//: 未知请求
@property (nonatomic, copy) NSString *mRangeTitle;

//: message_helper_already_no
@property (nonatomic, copy) NSString *show_userBubbleMessage;

//: request_add_you_as_a_friend
@property (nonatomic, copy) NSString *mainBackProcessorName;

//: apply_join_supergroup
@property (nonatomic, copy) NSString *main_searchStr;

@end

@implementation SkinnyData

+ (instancetype)sharedInstance {
    static SkinnyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SkinnyDataToData:(NSString *)value {
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

- (Byte *)SkinnyDataToCache:(Byte *)data {
    int showOffTable = data[0];
    Byte tingTable = data[1];
    int rangeVerticalNeed = data[2];
    for (int i = rangeVerticalNeed; i < rangeVerticalNeed + showOffTable; i++) {
        int value = data[i] - tingTable;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[rangeVerticalNeed + showOffTable] = 0;
    return data + rangeVerticalNeed;
}

- (NSString *)StringFromSkinnyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SkinnyDataToCache:data]];
}

//: ic_btn_accept
- (NSString *)notiBubbleIdent {
    if (!_notiBubbleIdent) {
		NSString *origin = @"0D0706D13DF0706A66697B7566686A6A6C777B78";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiBubbleIdent = [self StringFromSkinnyData:value];
    }
    return _notiBubbleIdent;
}

//: 未知请求
- (NSString *)mRangeTitle {
    if (!_mRangeTitle) {
		NSString *origin = @"0C230C4BE81B59080260339509BFCD0AC2C80BD2DA09D4A510";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRangeTitle = [self StringFromSkinnyData:value];
    }
    return _mRangeTitle;
}

//: large_group
- (NSString *)main_imageId {
    if (!_main_imageId) {
		NSString *origin = @"0B510B090DAD19F58C5B80BDB2C3B8B6B0B8C3C0C6C1DD";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_imageId = [self StringFromSkinnyData:value];
    }
    return _main_imageId;
}

//: invite_you_join_us
- (NSString *)app_searchKey {
    if (!_app_searchKey) {
		NSString *origin = @"125B0898449A6E15C4C9D1C4CFC0BAD4CAD0BAC5CAC4C9BAD0CE7E";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_searchKey = [self StringFromSkinnyData:value];
    }
    return _app_searchKey;
}

//: message_helper_invite
- (NSString *)show_tagMsg {
    if (!_show_tagMsg) {
		NSString *origin = @"154A042CB7AFBDBDABB1AFA9B2AFB6BAAFBCA9B3B8C0B3BEAF25";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_tagMsg = [self StringFromSkinnyData:value];
    }
    return _show_tagMsg;
}

//: 000000
- (NSString *)mVerticalFormat {
    if (!_mVerticalFormat) {
		NSString *origin = @"065C07C7F928B98C8C8C8C8C8C9C";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mVerticalFormat = [self StringFromSkinnyData:value];
    }
    return _mVerticalFormat;
}

//: apply_join_supergroup
- (NSString *)main_searchStr {
    if (!_main_searchStr) {
		NSString *origin = @"1514058ACF758484808D737E837D827387898479867B868389845A";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_searchStr = [self StringFromSkinnyData:value];
    }
    return _main_searchStr;
}

//: message_helper_refuse_you
- (NSString *)main_enableCommentBeginStr {
    if (!_main_enableCommentBeginStr) {
		NSString *origin = @"192E0C461E19B4028511388B9B93A1A18F95938D96939A9E93A08DA09394A3A1938DA79DA3C2";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_enableCommentBeginStr = [self StringFromSkinnyData:value];
    }
    return _main_enableCommentBeginStr;
}

//: ic_btn_disaccept
- (NSString *)app_endDataPath {
    if (!_app_endDataPath) {
		NSString *origin = @"104D0A2227629FDDBEE6B6B0ACAFC1BBACB1B6C0AEB0B0B2BDC1C4";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_endDataPath = [self StringFromSkinnyData:value];
    }
    return _app_endDataPath;
}

//: #999999
- (NSString *)k_userStr {
    if (!_k_userStr) {
		NSString *origin = @"072C0B0A591CCAE589E7DB4F65656565656562";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_userStr = [self StringFromSkinnyData:value];
    }
    return _k_userStr;
}

//: #F7BA00
- (NSString *)m_labData {
    if (!_m_labData) {
		NSString *origin = @"07220D4AEBAAD79DA7D352E079456859646352529A";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_labData = [self StringFromSkinnyData:value];
    }
    return _m_labData;
}

//: request_add_you_as_a_friend
- (NSString *)mainBackProcessorName {
    if (!_mainBackProcessorName) {
		NSString *origin = @"1B5A0D97AC05355559371BEF66CCBFCBCFBFCDCEB9BBBEBEB9D3C9CFB9BBCDB9BBB9C0CCC3BFC8BE55";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainBackProcessorName = [self StringFromSkinnyData:value];
    }
    return _mainBackProcessorName;
}

//: contact_fragment_group
- (NSString *)user_modelId {
    if (!_user_modelId) {
		NSString *origin = @"16240B5E7C71A317F109E387939298858798838A96858B91899298838B96939994B1";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_modelId = [self StringFromSkinnyData:value];
    }
    return _user_modelId;
}

//: message_helper_refuse_group
- (NSString *)k_frameWithTitle {
    if (!_k_frameWithTitle) {
		NSString *origin = @"1B3C03A9A1AFAF9DA3A19BA4A1A8ACA1AE9BAEA1A2B1AFA19BA3AEABB1AC5E";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_frameWithTitle = [self StringFromSkinnyData:value];
    }
    return _k_frameWithTitle;
}

//: message_helper_apply_to_group
- (NSString *)kGlobalPath {
    if (!_kGlobalPath) {
		NSString *origin = @"1D310A534711976E81AE9E96A4A49298969099969DA196A39092A1A19DAA90A5A09098A3A0A6A12F";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kGlobalPath = [self StringFromSkinnyData:value];
    }
    return _kGlobalPath;
}

//: is_read
- (NSString *)appLayerMessage {
    if (!_appLayerMessage) {
		NSString *origin = @"0702091F147F330D6E6B756174676366AE";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appLayerMessage = [self StringFromSkinnyData:value];
    }
    return _appLayerMessage;
}

//: %@ attach:%@
- (NSString *)userSingleMessage {
    if (!_userSingleMessage) {
		NSString *origin = @"0C63047F88A383C4D7D7C4C6CB9D88A370";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userSingleMessage = [self StringFromSkinnyData:value];
    }
    return _userSingleMessage;
}

//: rejected_group_invitation
- (NSString *)user_onName {
    if (!_user_onName) {
		NSString *origin = @"192306AAB26395888D8886978887828A95929893828C91998C9784978C92916F";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_onName = [self StringFromSkinnyData:value];
    }
    return _user_onName;
}

//: message_helper_already_add
- (NSString *)notiSizeContent {
    if (!_notiSizeContent) {
		NSString *origin = @"1A350A0B0B7D807BC318A29AA8A8969C9A949D9AA1A59AA79496A1A79A9699AE94969999E2";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiSizeContent = [self StringFromSkinnyData:value];
    }
    return _notiSizeContent;
}

//: invite_you_group
- (NSString *)k_needShareDataKey {
    if (!_k_needShareDataKey) {
		NSString *origin = @"10290695C1A492979F929D8E88A2989E88909B989E9975";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_needShareDataKey = [self StringFromSkinnyData:value];
    }
    return _k_needShareDataKey;
}

//: message_helper_allow_you_apply
- (NSString *)appBackgroundValue {
    if (!_appBackgroundValue) {
		NSString *origin = @"1E020A1704E282704D7D6F677575636967616A676E72677461636E6E7179617B7177616372726E7B5D";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appBackgroundValue = [self StringFromSkinnyData:value];
    }
    return _appBackgroundValue;
}

//: message_helper_refuse_you_apply
- (NSString *)app_tagValueKey {
    if (!_app_tagValueKey) {
		NSString *origin = @"1F3C06D2C385A9A1AFAF9DA3A19BA4A1A8ACA1AE9BAEA1A2B1AFA19BB5ABB19B9DACACA8B52F";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_tagValueKey = [self StringFromSkinnyData:value];
    }
    return _app_tagValueKey;
}

//: #F6F6F6
- (NSString *)dreamResourceTitle {
    if (!_dreamResourceTitle) {
		NSString *origin = @"0750037396869686968685";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamResourceTitle = [self StringFromSkinnyData:value];
    }
    return _dreamResourceTitle;
}

//: message_helper_already_time
- (NSString *)user_frameKeyTitle {
    if (!_user_frameKeyTitle) {
		NSString *origin = @"1B3B0D858A342206D869F85AB5A8A0AEAE9CA2A09AA3A0A7ABA0AD9A9CA7ADA09C9FB49AAFA4A8A0B2";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_frameKeyTitle = [self StringFromSkinnyData:value];
    }
    return _user_frameKeyTitle;
}

//: message_helper_already_no
- (NSString *)show_userBubbleMessage {
    if (!_show_userBubbleMessage) {
		NSString *origin = @"19270D3C326A82BB51719912B6948C9A9A888E8C868F8C93978C99868893998C888BA08695967A";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_userBubbleMessage = [self StringFromSkinnyData:value];
    }
    return _show_userBubbleMessage;
}

//: message_helper_already_ok
- (NSString *)main_searchTagUrl {
    if (!_main_searchTagUrl) {
		NSString *origin = @"19320A513CFD7E716D2F9F97A5A5939997919A979EA297A491939EA4979396AB91A19D7F";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_searchTagUrl = [self StringFromSkinnyData:value];
    }
    return _main_searchTagUrl;
}

//: to_deny_entry
- (NSString *)k_touchIdent {
    if (!_k_touchIdent) {
		NSString *origin = @"0D3D05DDFBB1AC9CA1A2ABB69CA2ABB1AFB630";
		NSData *data = [SkinnyData SkinnyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_touchIdent = [self StringFromSkinnyData:value];
    }
    return _k_touchIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableViewCell.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationCell.h"
#import "DisableViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"

//: @interface NTESSystemNotificationCell ()
@interface DisableViewCell ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet MessageSendView *avatarImageView;
//: @end
@end

//: @implementation NTESSystemNotificationCell
@implementation DisableViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.avatarImageView];
        //: [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.titleLabel];
        //: [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.timeLabel];
        //: [self.contentView addSubview:self.messageLabel];
        [self.contentView addSubview:self.messageLabel];
        //: [self.contentView addSubview:self.handleInfoLabel];
        [self.contentView addSubview:self.handleInfoLabel];
        //: [self.contentView addSubview:self.acceptButton];
        [self.contentView addSubview:self.acceptButton];
        //: [self.contentView addSubview:self.refuseButton];
        [self.contentView addSubview:self.refuseButton];
//        [self.contentView addSubview:self.handleInfoLabel];

        //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        self.backgroundColor = [UIColor recordView:[SkinnyData sharedInstance].dreamResourceTitle];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
    }
    //: return self;
    return self;
}

//: - (UIImageView *)avatarImageView {
- (UIImageView *)avatarImageView {
    //: if (!_avatarImageView) {
    if (!_avatarImageView) {
        //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        //: _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        //: _avatarImageView.layer.cornerRadius = 25;
        _avatarImageView.layer.cornerRadius = 25;
        //: _avatarImageView.layer.masksToBounds = YES;
        _avatarImageView.layer.masksToBounds = YES;

//        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//        [_avatarImageView addGestureRecognizer:panGesture];
    }
    //: return _avatarImageView;
    return _avatarImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"000000"];
        _titleLabel.textColor = [UIColor recordView:[SkinnyData sharedInstance].mVerticalFormat];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)timeLabel {
- (UILabel *)timeLabel {
    //: if (!_timeLabel) {
    if (!_timeLabel) {
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.textColor = [UIColor recordView:[SkinnyData sharedInstance].k_userStr];
        //: _timeLabel.textAlignment = NSTextAlignmentLeft;
        _timeLabel.textAlignment = NSTextAlignmentLeft;
        //: _timeLabel.numberOfLines = 1;
        _timeLabel.numberOfLines = 1;
        //: _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _timeLabel;
    return _timeLabel;
}

//: - (YYLabel *)messageLabel {
- (YYLabel *)messageLabel {
    //: if (!_messageLabel) {
    if (!_messageLabel) {
        //: _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        //: _messageLabel.font = [UIFont systemFontOfSize:12.f];
        _messageLabel.font = [UIFont systemFontOfSize:12.f];
//        _messageLabel.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5);
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _messageLabel.textColor = [UIColor recordView:[SkinnyData sharedInstance].k_userStr];
        //: _messageLabel.textAlignment = NSTextAlignmentLeft;
        _messageLabel.textAlignment = NSTextAlignmentLeft;
//        _messageLabel.numberOfLines = 3;
//        _messageLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//        _messageLabel.layer.cornerRadius = 6;
//        _messageLabel.layer.borderColor = TextColor_Subtitle.CGColor;
//        _messageLabel.layer.borderWidth = 1.f/[UIScreen mainScreen].scale;
//        _messageLabel.layer.masksToBounds = YES;
    }
    //: return _messageLabel;
    return _messageLabel;
}

//: - (UILabel *)handleInfoLabel {
- (UILabel *)handleInfoLabel {
    //: if (!_handleInfoLabel) {
    if (!_handleInfoLabel) {
        //: _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        //: _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        //: _handleInfoLabel.centerY = self.avatarImageView.centerY;
        _handleInfoLabel.centerY = self.avatarImageView.centerY;
        //: _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        //: _handleInfoLabel.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        _handleInfoLabel.textColor = [UIColor recordView:[SkinnyData sharedInstance].m_labData];
        //: _handleInfoLabel.textAlignment = NSTextAlignmentRight;
        _handleInfoLabel.textAlignment = NSTextAlignmentRight;
//        _handleInfoLabel.numberOfLines = 1;
//        _handleInfoLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _handleInfoLabel;
    return _handleInfoLabel;
}

//: - (UIButton *)acceptButton {
- (UIButton *)acceptButton {
    //: if (!_acceptButton) {
    if (!_acceptButton) {
        //: _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
        _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
//        _acceptButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_acceptButton setTitle:LangKey(@"request_add_accept") forState:(UIControlStateNormal)];
        //: [_acceptButton addTarget:self action:@selector(onAcceptBtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_acceptButton addTarget:self action:@selector(statusBlue) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffContent")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[SkinnyData sharedInstance].notiBubbleIdent] forState:UIControlStateNormal];
//        _acceptButton.layer.cornerRadius = 16;
//        _acceptButton.layer.masksToBounds = YES;
    }
    //: return _acceptButton;
    return _acceptButton;
}

//: - (UIButton *)refuseButton {
- (UIButton *)refuseButton {
    //: if (!_refuseButton) {
    if (!_refuseButton) {
        //: _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        //: _refuseButton.right = self.acceptButton.left - 10;
        _refuseButton.right = self.acceptButton.left - 10;
        //: _refuseButton.top = self.acceptButton.top;
        _refuseButton.top = self.acceptButton.top;
//        _refuseButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_refuseButton setTitle:LangKey(@"request_add_reject") forState:(UIControlStateNormal)];
        //: [_refuseButton addTarget:self action:@selector(onRefusebtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_refuseButton addTarget:self action:@selector(pressedAt) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffContent")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[SkinnyData sharedInstance].app_endDataPath] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}


//: - (void)update:(NIMSystemNotification *)notification{
- (void)gray:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self moreDoing];
}

//: - (void)updateUI{
- (void)moreDoing{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self fixing];

    //: [self.acceptButton setHidden:hideActionButton];
    [self.acceptButton setHidden:hideActionButton];
    //: [self.refuseButton setHidden:hideActionButton];
    [self.refuseButton setHidden:hideActionButton];
    //: if(hideActionButton) {
    if(hideActionButton) {
        //: self.handleInfoLabel.hidden = NO;
        self.handleInfoLabel.hidden = NO;
        //: switch (self.notification.handleStatus) {
        switch (self.notification.handleStatus) {
            //: case NotificationHandleTypeOk:
            case NotificationHandleTypeOk:
                //: self.handleInfoLabel.text = [ContentLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].main_searchTagUrl];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [ContentLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].show_userBubbleMessage];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [ContentLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].user_frameKeyTitle];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [ContentLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].appLayerMessage];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [ContentKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [TextWithUtil table:self.notification.timestamp max:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: ContentKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    ViewInfo *sourceMember = [[UserKit totalSend] color:sourceID image:nil];
    //: [self updateSourceMember:sourceMember];
    [self habitMember:sourceMember];
}

//: - (void)updateSourceMember:(ContentKitInfo *)sourceMember{
- (void)habitMember:(ViewInfo *)sourceMember{

    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: NSString *avatarUrlString = sourceMember.avatarUrlString;
    NSString *avatarUrlString = sourceMember.avatarUrlString;
    //: NSURL *url;
    NSURL *url;
    //: if (avatarUrlString.length) {
    if (avatarUrlString.length) {
        //: url = [NSURL URLWithString:avatarUrlString];
        url = [NSURL URLWithString:avatarUrlString];
    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
    //: [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    //: self.titleLabel.text = sourceMember.showName;
    self.titleLabel.text = sourceMember.showName;
    //: switch (type) {
    switch (type) {
        //: case NIMSystemNotificationTypeTeamApply:
        case NIMSystemNotificationTypeTeamApply:
        {
            //: NSString *message_helper_apply_to_group = [ContentLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].kGlobalPath];//@"申请加入群".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamApplyReject:
        case NIMSystemNotificationTypeTeamApplyReject:
        {
            //: NSString *contact_fragment_group = [ContentLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].user_modelId];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [ContentLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].main_enableCommentBeginStr];//@"拒绝你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_refuse_you];
                                         message_helper_refuse_you];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamInvite:
        case NIMSystemNotificationTypeTeamInvite:
        {
            //: NSString *contact_fragment_group = [ContentLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].user_modelId];//@"群".nim_localized
            //: NSString *invite_you_group = [ContentLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].k_needShareDataKey];//@"邀请你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];

            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: invite_you_group];
                                         invite_you_group];

            //: if (self.notification.notifyExt.length>0) {
            if (self.notification.notifyExt.length>0) {
                //: self.messageLabel.text = [NSString stringWithFormat:@"%@ attach:%@",self.messageLabel.text , self.notification.notifyExt?:@""];
                self.messageLabel.text = [NSString stringWithFormat:[SkinnyData sharedInstance].userSingleMessage,self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [ContentLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].k_frameWithTitle];
            //: NSString *message_helper_invite = [ContentLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].show_tagMsg];//@"邀请".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: message_helper_refuse_group,
                                         message_helper_refuse_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_invite];
                                         message_helper_invite];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamApply:
        case NIMSystemNotificationTypeSuperTeamApply:
        {
            //: NSString *apply_join_supergroup = [ContentLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].main_searchStr];//@"申请加入超大群 %@".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApplyReject:
        case NIMSystemNotificationTypeSuperTeamApplyReject:
        {
            //: NSString *large_group = [ContentLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].main_imageId];//超大群
            //: NSString *to_deny_entry = [ContentLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].k_touchIdent];//拒绝你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: NSString *large_group = [ContentLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].main_imageId];//超大群
            //: NSString *invite_you_join_us = [ContentLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].app_searchKey];//邀请你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamIviteReject:
        case NIMSystemNotificationTypeSuperTeamIviteReject:
        {
            //: NSString *rejected_group_invitation = [ContentLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].user_onName];
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NSString *text = @"未知请求".nim_localized;
            NSString *text = [SkinnyData sharedInstance].mRangeTitle.resign;
            //: id object = self.notification.attachment;
            id object = self.notification.attachment;
            //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
                //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                //: NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];

                //: switch (operation) {
                switch (operation) {
                    //: case NIMUserOperationAdd:
                    case NIMUserOperationAdd:
                        //: text = [ContentLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].notiSizeContent];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [ContentLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].mainBackProcessorName];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [ContentLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].appBackgroundValue];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [ContentLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [MatronymicPath colorStreetwise:[SkinnyData sharedInstance].app_tagValueKey];//@"拒绝了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (serverExt && [serverExt length]) {
                if (serverExt && [serverExt length]) {
                    //: text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                }
            }

            //: self.messageLabel.text = text;
            self.messageLabel.text = text;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (self.notification.postscript.length > 0) {
//        self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",self.notification.postscript, self.messageLabel.text];
//    }

//    CGSize contentSize = [self.messageLabel.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-48-15-12-15, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil].size;
//
//    self.messageLabel.height = contentSize.height + 10;

//    _refuseButton.top = _handleInfoLabel.top = _acceptButton.top = self.messageLabel.bottom + 8;
}

//: - (void)onAcceptBtn{
- (void)statusBlue{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(canStyle:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate canStyle:self.notification];
    }
}
//: - (void)onRefusebtn {
- (void)pressedAt {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(cells:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate cells:self.notification];
    }
}

//: - (BOOL)shouldHideActionButton
- (BOOL)fixing
{
    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: BOOL handled = self.notification.handleStatus != 0;
    BOOL handled = self.notification.handleStatus != 0;
    //: BOOL needHandle = NO;
    BOOL needHandle = NO;
    //: if (type == NIMSystemNotificationTypeTeamApply ||
    if (type == NIMSystemNotificationTypeTeamApply ||
        //: type == NIMSystemNotificationTypeTeamInvite ||
        type == NIMSystemNotificationTypeTeamInvite ||
        //: type == NIMSystemNotificationTypeSuperTeamApply ||
        type == NIMSystemNotificationTypeSuperTeamApply ||
        //: type == NIMSystemNotificationTypeSuperTeamInvite) {
        type == NIMSystemNotificationTypeSuperTeamInvite) {
        //: needHandle = YES;
        needHandle = YES;
    }
    //: if (type == NIMSystemNotificationTypeFriendAdd) {
    if (type == NIMSystemNotificationTypeFriendAdd) {
        //: id object = self.notification.attachment;
        id object = self.notification.attachment;
        //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            //: needHandle = operation == NIMUserOperationRequest;
            needHandle = operation == NIMUserOperationRequest;
        }
    }
    //: return !(!handled && needHandle);
    return !(!handled && needHandle);

}
//- (void)awakeFromNib{
//    [super awakeFromNib];
//    self.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.detailTextLabel.backgroundColor = [UIColor clearColor];
//    self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.avatarImageView = [[MessageSendView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [self.contentView addSubview:self.avatarImageView];
//
////    UIButton *a = (UIButton *)self.acceptButton;
////    UIButton *b = (UIButton *)self.refuseButton;
////    [a setTitle:LangKey(@"request_add_accept") forState:UIControlStateNormal];
////    [b setTitle:LangKey(@"request_add_reject") forState:UIControlStateNormal];
//
//}
//
//- (void)update:(NIMSystemNotification *)notification{
//    self.notification = notification;
//    [self updateUI];
//}
//
//- (void)updateUI{
//    BOOL hideActionButton = [self shouldHideActionButton];
//
//    [self.acceptButton setHidden:hideActionButton];
//    [self.refuseButton setHidden:hideActionButton];
//    if(hideActionButton) {
//        self.handleInfoLabel.hidden = NO;
//        switch (self.notification.handleStatus) {
//            case NotificationHandleTypeOk:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_ok");//@"已同意".ntes_localized;
//                break;
//            case NotificationHandleTypeNo:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_no");//@"已拒绝".ntes_localized;
//                break;
//            case NotificationHandleTypeOutOfDate:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_time");//@"已过期".ntes_localized;
//                break;
//            default:
//                self.handleInfoLabel.text = nil;
//                break;
//        }
//    } else {
//        self.handleInfoLabel.hidden = YES;
//    }
//
//
//    NSString *sourceID = self.notification.sourceID;
//    ViewInfo *sourceMember = [[UserKit sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(ViewInfo *)sourceMember{
//    NIMSystemNotificationType type = self.notification.type;
//    NSString *avatarUrlString = sourceMember.avatarUrlString;
//    NSURL *url;
//    if (avatarUrlString.length) {
//        url = [NSURL URLWithString:avatarUrlString];
//    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
//    self.textLabel.text        = sourceMember.showName;
//    [self.textLabel sizeToFit];
//    switch (type) {
//        case NIMSystemNotificationTypeTeamApply:
//        {
//            NSString *message_helper_apply_to_group = LangKey(@"message_helper_apply_to_group");//@"申请加入群".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamApplyReject:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *message_helper_refuse_you = LangKey(@"message_helper_refuse_you");//@"拒绝你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         message_helper_refuse_you];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamInvite:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *invite_you_group = LangKey(@"invite_you_group");//@"邀请你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ attach:%@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         invite_you_group,
//                                         self.notification.notifyExt ? : @""];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamIviteReject:
//        {
//            NSString *message_helper_refuse_group = LangKey(@"message_helper_refuse_group");
//            NSString *message_helper_invite = LangKey(@"message_helper_invite");//@"邀请".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         message_helper_refuse_group,
//                                         team.teamName,
//                                         message_helper_invite];
//        }
//            break;
//        case NIMSystemNotificationTypeSuperTeamApply:
//        {
//            NSString *apply_join_supergroup = LangKey(@"apply_join_supergroup");//@"申请加入超大群 %@".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamApplyReject:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *to_deny_entry = LangKey(@"to_deny_entry");//拒绝你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamInvite:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *invite_you_join_us = LangKey(@"invite_you_join_us");//邀请你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamIviteReject:
//        {
//            NSString *rejected_group_invitation = LangKey(@"rejected_group_invitation");
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NSString *text = @"未知请求".ntes_localized;
//            id object = self.notification.attachment;
//            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
//
//                switch (operation) {
//                    case NIMUserOperationAdd:
//                        text = LangKey(@"message_helper_already_add");//@"已添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationRequest:
//                        text = LangKey(@"request_add_you_as_a_friend");//@"请求添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationVerify:
//                        text = LangKey(@"message_helper_allow_you_apply");//@"通过了你的好友请求".ntes_localized;
//                        break;
//                    case NIMUserOperationReject:
//                        text = LangKey(@"message_helper_refuse_you_apply");//@"拒绝了你的好友请求".ntes_localized;
//                        break;
//                    default:
//                        break;
//                }
//
//                if (serverExt && [serverExt length]) {
//                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
//                }
//            }
//
//            self.detailTextLabel.text = text;
//        }
//            break;
//        default:
//            break;
//    }
//    [self.detailTextLabel sizeToFit];
//    self.messageLabel.text = self.notification.postscript;
//    [self.messageLabel sizeToFit];
//    [self setNeedsLayout];
//}
//
//- (IBAction)onAccept:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
//        [_actionDelegate onAccept:self.notification];
//    }
//}
//- (IBAction)onRefuse:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
//        [_actionDelegate onRefuse:self.notification];
//    }
//}
//
//- (BOOL)shouldHideActionButton
//{
//    NIMSystemNotificationType type = self.notification.type;
//    BOOL handled = self.notification.handleStatus != 0;
//    BOOL needHandle = NO;
//    if (type == NIMSystemNotificationTypeTeamApply ||
//        type == NIMSystemNotificationTypeTeamInvite ||
//        type == NIMSystemNotificationTypeSuperTeamApply ||
//        type == NIMSystemNotificationTypeSuperTeamInvite) {
//        needHandle = YES;
//    }
//    if (type == NIMSystemNotificationTypeFriendAdd) {
//        id object = self.notification.attachment;
//        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//            needHandle = operation == NIMUserOperationRequest;
//        }
//    }
//    return !(!handled && needHandle);
//
//}
//
//#define MaxTextLabelWidth 120.0 * UISreenWidthScale
//#define MaxDetailLabelWidth 160.0 * UISreenWidthScale
//#define MaxMessageLabelWidth 150.0 * UISreenWidthScale
//#define TextLabelAndMessageLabelSpacing 20.f
//#define AvatarImageViewLeft 15.f
//#define MessageAndAvatarSpacing 15.f
//- (void)layoutSubviews{
//    [super layoutSubviews];
//    self.avatarImageView.centerY = self.height * .5f;
//    self.avatarImageView.left = AvatarImageViewLeft;
//    if (self.textLabel.width > MaxTextLabelWidth) {
//        self.textLabel.width = MaxTextLabelWidth;
//    }
//    if (self.detailTextLabel.width > MaxDetailLabelWidth) {
//        self.detailTextLabel.width = MaxDetailLabelWidth;
//    }
//    self.textLabel.left = self.avatarImageView.right + MessageAndAvatarSpacing;
//    self.detailTextLabel.left = self.textLabel.left;
//    self.detailTextLabel.bottom = self.avatarImageView.bottom;
//
////    if (self.messageLabel.width > MaxMessageLabelWidth) {
////        self.messageLabel.width = MaxMessageLabelWidth;
////    }
////    self.messageLabel.left = self.textLabel.right + TextLabelAndMessageLabelSpacing;
//
//}

//: @end
@end
