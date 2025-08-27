
#import <Foundation/Foundation.h>

typedef struct {
    Byte messageToil;
    Byte *symptomCreased;
    unsigned int labClose;
	int blighter;
	int lestName;
	int us;
} StructResourceCreasedData;

@interface ResourceCreasedData : NSObject

@end

@implementation ResourceCreasedData

+ (NSData *)ResourceCreasedDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ResourceCreasedDataToByte:(StructResourceCreasedData *)data {
    for (int i = 0; i < data->labClose; i++) {
        data->symptomCreased[i] ^= data->messageToil;
    }
    data->symptomCreased[data->labClose] = 0;
	if (data->labClose >= 3) {
		data->blighter = data->symptomCreased[0];
		data->lestName = data->symptomCreased[1];
		data->us = data->symptomCreased[2];
	}
    return data->symptomCreased;
}

+ (NSString *)StringFromResourceCreasedData:(StructResourceCreasedData *)data {
    return [NSString stringWithUTF8String:(char *)[self ResourceCreasedDataToByte:data]];
}

//: #000000
+ (NSString *)appCustomData {
    /* static */ NSString *appCustomData = nil;
    if (!appCustomData) {
		NSArray<NSString *> *origin = @[@"4", @"23", @"23", @"23", @"23", @"23", @"23", @"61"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){39, (Byte *)data.bytes, 7, 102, 108, 232};
        appCustomData = [self StringFromResourceCreasedData:&value];
    }
    return appCustomData;
}

//: 5D5F66
+ (NSString *)notiBackgroundStr {
    /* static */ NSString *notiBackgroundStr = nil;
    if (!notiBackgroundStr) {
		NSArray<NSString *> *origin = @[@"177", @"192", @"177", @"194", @"178", @"178", @"244"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){132, (Byte *)data.bytes, 6, 248, 235, 231};
        notiBackgroundStr = [self StringFromResourceCreasedData:&value];
    }
    return notiBackgroundStr;
}

//: group_remove
+ (NSString *)k_budgeValue {
    /* static */ NSString *k_budgeValue = nil;
    if (!k_budgeValue) {
		NSArray<NSString *> *origin = @[@"4", @"17", @"12", @"22", @"19", @"60", @"17", @"6", @"14", @"12", @"21", @"6", @"167"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){99, (Byte *)data.bytes, 12, 3, 37, 197};
        k_budgeValue = [self StringFromResourceCreasedData:&value];
    }
    return k_budgeValue;
}

//: group_mute
+ (NSString *)show_tagData {
    /* static */ NSString *show_tagData = nil;
    if (!show_tagData) {
		NSArray<NSString *> *origin = @[@"254", @"235", @"246", @"236", @"233", @"198", @"244", @"236", @"237", @"252", @"47"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){153, (Byte *)data.bytes, 10, 35, 78, 239};
        show_tagData = [self StringFromResourceCreasedData:&value];
    }
    return show_tagData;
}

//: group_mute_no
+ (NSString *)mCommentValue {
    /* static */ NSString *mCommentValue = nil;
    if (!mCommentValue) {
		NSArray<NSString *> *origin = @[@"9", @"28", @"1", @"27", @"30", @"49", @"3", @"27", @"26", @"11", @"49", @"0", @"1", @"83"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){110, (Byte *)data.bytes, 13, 182, 163, 92};
        mCommentValue = [self StringFromResourceCreasedData:&value];
    }
    return mCommentValue;
}

//: #F6F6F6
+ (NSString *)mShouldOffPath {
    /* static */ NSString *mShouldOffPath = nil;
    if (!mShouldOffPath) {
		NSArray<NSString *> *origin = @[@"25", @"124", @"12", @"124", @"12", @"124", @"12", @"154"];
		NSData *data = [ResourceCreasedData ResourceCreasedDataToData:origin];
        StructResourceCreasedData value = (StructResourceCreasedData){58, (Byte *)data.bytes, 7, 239, 197, 248};
        mShouldOffPath = [self StringFromResourceCreasedData:&value];
    }
    return mShouldOffPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupMemberTableViewCell.h"
#import "BarView.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFTeamHelper.h"
#import "HandleImageHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"

//: @interface FFFGroupMemberTableViewCell()
@interface BarView()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFGroupMemberTableViewCell
@implementation BarView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initDaySub];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)line:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFGroupMemberTableViewCell";
    static NSString *identifier = @"BarView";
    //: FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    BarView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[BarView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor recordView:[ResourceCreasedData mShouldOffPath]];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initDaySub {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor recordView:[ResourceCreasedData appCustomData]];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor recordView:[ResourceCreasedData notiBackgroundStr]];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)noticeLanguage:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(FFFKitInfo *)userInfo
- (void)setUserInfo:(ViewInfo *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)subed:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(utmosted:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate utmosted:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)oned:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(utmosted:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate table:self.userId comment:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(subed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[ResourceCreasedData k_budgeValue]] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(oned:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:[ResourceCreasedData mCommentValue]] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:[ResourceCreasedData show_tagData]] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end