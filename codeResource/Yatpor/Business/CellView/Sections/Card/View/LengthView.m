
#import <Foundation/Foundation.h>

@interface LineData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LineData

+ (instancetype)sharedInstance {
    static LineData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LineDataToData:(NSString *)value {
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

- (Byte *)LineDataToCache:(Byte *)data {
    int slice = data[0];
    Byte buttonLayer = data[1];
    int tabularMatter = data[2];
    for (int i = tabularMatter; i < tabularMatter + slice; i++) {
        int value = data[i] + buttonLayer;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[tabularMatter + slice] = 0;
    return data + tabularMatter;
}

- (NSString *)StringFromLineData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LineDataToCache:data]];
}

//: icon_gender_male
- (NSString *)show_imageMsg {
    /* static */ NSString *show_imageMsg = nil;
    if (!show_imageMsg) {
		NSString *origin = @"10050ba772b3a0e80b6c33645e6a695a6260695f606d5a685c6760e8";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_imageMsg = [self StringFromLineData:value];
    }
    return show_imageMsg;
}

//: account
- (NSString *)main_teamCommentKey {
    /* static */ NSString *main_teamCommentKey = nil;
    if (!main_teamCommentKey) {
		NSString *origin = @"07500c4baac7ace281bcb22f1113131f251e2495";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_teamCommentKey = [self StringFromLineData:value];
    }
    return main_teamCommentKey;
}

//: data
- (NSString *)showGrayUrl {
    /* static */ NSString *showGrayUrl = nil;
    if (!showGrayUrl) {
		NSString *origin = @"0419068e12634b485b48e3";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showGrayUrl = [self StringFromLineData:value];
    }
    return showGrayUrl;
}

//: /user/detail
- (NSString *)mainModelName {
    /* static */ NSString *mainModelName = nil;
    if (!mainModelName) {
		NSString *origin = @"0c2b09ddea0c604fa9044a483a4704393a49363e419f";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainModelName = [self StringFromLineData:value];
    }
    return mainModelName;
}

//: icon_gender_female
- (NSString *)k_buttonBackIdent {
    /* static */ NSString *k_buttonBackIdent = nil;
    if (!k_buttonBackIdent) {
		NSString *origin = @"124e0a6fa5a8a5fe6e5f1b152120111917201617241118171f131e1745";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_buttonBackIdent = [self StringFromLineData:value];
    }
    return k_buttonBackIdent;
}

//: register_avtivity_account
- (NSString *)showDismissWindowId {
    /* static */ NSString *showDismissWindowId = nil;
    if (!showDismissWindowId) {
		NSString *origin = @"19280bf6e823b004d9d01b4a3d3f414b4c3d4a37394e4c414e414c5137393b3b474d464c1d";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showDismissWindowId = [self StringFromLineData:value];
    }
    return showDismissWindowId;
}

//: user_id
- (NSString *)mainFrameFormat {
    /* static */ NSString *mainFrameFormat = nil;
    if (!mainFrameFormat) {
		NSString *origin = @"07290b212a2af590bce94a4c4a3c4936403b3a";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainFrameFormat = [self StringFromLineData:value];
    }
    return mainFrameFormat;
}

//: code
- (NSString *)mainUpUrl {
    /* static */ NSString *mainUpUrl = nil;
    if (!mainUpUrl) {
		NSString *origin = @"044e041815211617be";
		NSData *data = [LineData LineDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainUpUrl = [self StringFromLineData:value];
    }
    return mainUpUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthView.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "LengthView.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @interface NTESCardPortraitCell()
@interface LengthView()

//: @property (nonatomic,strong) ContentAvatarImageView *avatar;
@property (nonatomic,strong) MessageSendView *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation LengthView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[ContentAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[MessageSendView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        ViewInfo *info = [[UserKit totalSend] color:uid image:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [ContentLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [MatronymicPath colorStreetwise:[[LineData sharedInstance] showDismissWindowId]];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar press:[NSURL URLWithString:info.avatarUrlString] remoteOptions:info.avatarImage begin:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:[[LineData sharedInstance] show_imageMsg]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:[[LineData sharedInstance] k_buttonBackIdent]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self title:rowData historyButton:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)title:(LanguageSizeView *)rowData historyButton:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[[[LineData sharedInstance] mainFrameFormat]] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[[LineData sharedInstance] mainModelName]] table:dict carteDuJour:YES behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[[LineData sharedInstance] mainUpUrl]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict arrayMust:[[LineData sharedInstance] showGrayUrl]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data to:[[LineData sharedInstance] main_teamCommentKey]];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [ContentLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [MatronymicPath colorStreetwise:[[LineData sharedInstance] showDismissWindowId]];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end
