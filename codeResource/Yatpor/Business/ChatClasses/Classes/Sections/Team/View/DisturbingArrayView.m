
#import <Foundation/Foundation.h>

typedef struct {
    Byte symptomShallow;
    Byte *emphasizeComfort;
    unsigned int brave;
	int rhetoric;
	int chest;
	int ret;
} StructSweepData;

@interface SweepData : NSObject

@end

@implementation SweepData

+ (NSData *)SweepDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)SweepDataToByte:(StructSweepData *)data {
    for (int i = 0; i < data->brave; i++) {
        data->emphasizeComfort[i] ^= data->symptomShallow;
    }
    data->emphasizeComfort[data->brave] = 0;
	if (data->brave >= 3) {
		data->rhetoric = data->emphasizeComfort[0];
		data->chest = data->emphasizeComfort[1];
		data->ret = data->emphasizeComfort[2];
	}
    return data->emphasizeComfort;
}

+ (NSString *)StringFromSweepData:(StructSweepData *)data {
    return [NSString stringWithUTF8String:(char *)[self SweepDataToByte:data]];
}

//: user
+ (NSString *)appPitaFormat {
    /* static */ NSString *appPitaFormat = nil;
    if (!appPitaFormat) {
		NSArray<NSNumber *> *origin = @[@219, @221, @203, @220, @185];
		NSData *data = [SweepData SweepDataToData:origin];
        StructSweepData value = (StructSweepData){174, (Byte *)data.bytes, 4, 248, 100, 115};
        appPitaFormat = [self StringFromSweepData:&value];
    }
    return appPitaFormat;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisturbingArrayView.m
// UserKit
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardHeaderCell.h"
#import "DisturbingArrayView.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"

//: @interface FFFTeamMemberCardHeaderCell()
@interface DisturbingArrayView()

//: @property (nonatomic,strong) FFFAvatarImageView *avatarView;
@property (nonatomic,strong) MessageSendView *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation FFFTeamMemberCardHeaderCell
@implementation DisturbingArrayView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.avatarView];
        //: [self.contentView addSubview:self.nickLabel];
        [self.contentView addSubview:self.nickLabel];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView;{
    //: FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    ViewInfo *userInfo = rowData.extraInfo[[SweepData appPitaFormat]];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView modelEnable:avatarURL mentalPicture:userInfo.avatarImage];
    //: self.nickLabel.text = userInfo.showName;
    self.nickLabel.text = userInfo.showName;
    //: [self.nickLabel sizeToFit];
    [self.nickLabel sizeToFit];
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatarView.nim_top = 52.f;
    self.avatarView.nim_top = 52.f;
    //: self.avatarView.nim_centerX = self.nim_width * .5f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    //: self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    //: self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


//: - (FFFAvatarImageView *)avatarView
- (MessageSendView *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[MessageSendView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        //: _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    //: return _avatarView;
    return _avatarView;
}

//: - (UILabel *)nickLabel
- (UILabel *)nickLabel
{
    //: if (!_nickLabel) {
    if (!_nickLabel) {
        //: _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        //: _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        //: _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    //: return _nickLabel;
    return _nickLabel;
}


//: @end
@end