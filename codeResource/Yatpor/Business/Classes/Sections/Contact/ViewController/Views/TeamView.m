
#import <Foundation/Foundation.h>

typedef struct {
    Byte bubble;
    Byte *of;
    unsigned int closeNeed;
	int close;
	int share;
} StructTeamData;

@interface TeamData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TeamData

+ (instancetype)sharedInstance {
    static TeamData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TeamDataToData:(NSString *)value {
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

- (Byte *)TeamDataToByte:(StructTeamData *)data {
    for (int i = 0; i < data->closeNeed; i++) {
        data->of[i] ^= data->bubble;
    }
    data->of[data->closeNeed] = 0;
	if (data->closeNeed >= 2) {
		data->close = data->of[0];
		data->share = data->of[1];
	}
    return data->of;
}

- (NSString *)StringFromTeamData:(StructTeamData *)data {
    return [NSString stringWithUTF8String:(char *)[self TeamDataToByte:data]];
}

//: head_default_group
- (NSString *)mMessageKey {
    /* static */ NSString *mMessageKey = nil;
    if (!mMessageKey) {
		NSString *origin = @"505D595C675C5D5E594D544C675F4A574D487B";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){56, (Byte *)data.bytes, 18, 181, 255};
        mMessageKey = [self StringFromTeamData:&value];
    }
    return mMessageKey;
}

//: f6f6f6
- (NSString *)userStateName {
    /* static */ NSString *userStateName = nil;
    if (!userStateName) {
		NSString *origin = @"7E2E7E2E7E2E73";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){24, (Byte *)data.bytes, 6, 195, 116};
        userStateName = [self StringFromTeamData:&value];
    }
    return userStateName;
}

//: #2C3042
- (NSString *)userBubbleShouldLabValue {
    /* static */ NSString *userBubbleShouldLabValue = nil;
    if (!userBubbleShouldLabValue) {
		NSString *origin = @"1B0A7B0B080C0A88";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){56, (Byte *)data.bytes, 7, 37, 55};
        userBubbleShouldLabValue = [self StringFromTeamData:&value];
    }
    return userBubbleShouldLabValue;
}

//: _UITableViewCellSeparatorView
- (NSString *)showFrameData {
    /* static */ NSString *showFrameData = nil;
    if (!showFrameData) {
		NSString *origin = @"757F637E4B48464F7C434F5D694F4646794F5A4B584B5E45587C434F5DC6";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){42, (Byte *)data.bytes, 29, 24, 177};
        showFrameData = [self StringFromTeamData:&value];
    }
    return showFrameData;
}

//: btn_video
- (NSString *)appRangePath {
    /* static */ NSString *appRangePath = nil;
    if (!appRangePath) {
		NSString *origin = @"D5C3D9E8C1DED3D2D868";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){183, (Byte *)data.bytes, 9, 181, 74};
        appRangePath = [self StringFromTeamData:&value];
    }
    return appRangePath;
}

//: head_default
- (NSString *)showTextMsg {
    /* static */ NSString *showTextMsg = nil;
    if (!showTextMsg) {
		NSString *origin = @"515C585D665D5C5F584C554D56";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){57, (Byte *)data.bytes, 12, 27, 116};
        showTextMsg = [self StringFromTeamData:&value];
    }
    return showTextMsg;
}

//: btn_message
- (NSString *)mDataTextMessage {
    /* static */ NSString *mDataTextMessage = nil;
    if (!mDataTextMessage) {
		NSString *origin = @"37213B0A3830262634323045";
		NSData *data = [TeamData TeamDataToData:origin];
        StructTeamData value = (StructTeamData){85, (Byte *)data.bytes, 11, 183, 205};
        mDataTextMessage = [self StringFromTeamData:&value];
    }
    return mDataTextMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "TeamView.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @implementation NTESFriendListTableViewCell
@implementation TeamView


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initChanceSubviews];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)cell:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"TeamView";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TeamView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TeamView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initChanceSubviews {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor recordView:[[TeamData sharedInstance] userStateName]];
    //: bgView.layer.cornerRadius = 12;
    bgView.layer.cornerRadius = 12;
    //: [self.contentView addSubview:bgView];
    [self.contentView addSubview:bgView];

    //: [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.iconImageView];
    //: [bgView addSubview:self.titleLabel];
    [bgView addSubview:self.titleLabel];

    //: self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    //: self.titleLabel.frame = CGRectMake(70, 0, 230, 56);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);

}


//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)viewOn:(id<AlterDate>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.range;
    //: self.memberId = [member memberId];
    self.memberId = [member target];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    ViewInfo *info = [[UserKit totalSend] color:self.memberId image:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[[TeamData sharedInstance] showTextMsg]]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)teamNeed:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    ViewInfo *info = [[UserKit totalSend] search:self.memberId speedy:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[[TeamData sharedInstance] mMessageKey]]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)blue:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)content:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[TeamData sharedInstance] showFrameData]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)sharedButton {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(contentWith:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate contentWith:self.memberId];
    }
}


//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 20;
        _iconImageView.layer.cornerRadius = 20;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor recordView:[[TeamData sharedInstance] userBubbleShouldLabValue]];
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

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(sharedButton) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[[TeamData sharedInstance] mDataTextMessage]] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:[[TeamData sharedInstance] appRangePath]] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end
