
#import <Foundation/Foundation.h>

typedef struct {
    Byte jurisdictionEnable;
    Byte *ratio;
    unsigned int celebrity;
	int animal;
	int barBy;
	int budge;
} StructCountData;

@interface CountData : NSObject

+ (instancetype)sharedInstance;

//: HH:mm
@property (nonatomic, copy) NSString *dream_diseaseAnxiousTitle;

//: 00:00
@property (nonatomic, copy) NSString *userScalePath;

@end

@implementation CountData

+ (instancetype)sharedInstance {
    static CountData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CountDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CountDataToByte:(StructCountData *)data {
    for (int i = 0; i < data->celebrity; i++) {
        data->ratio[i] ^= data->jurisdictionEnable;
    }
    data->ratio[data->celebrity] = 0;
	if (data->celebrity >= 3) {
		data->animal = data->ratio[0];
		data->barBy = data->ratio[1];
		data->budge = data->ratio[2];
	}
    return data->ratio;
}

- (NSString *)StringFromCountData:(StructCountData *)data {
    return [NSString stringWithUTF8String:(char *)[self CountDataToByte:data]];
}

//: 00:00
- (NSString *)userScalePath {
    if (!_userScalePath) {
		NSArray<NSNumber *> *origin = @[@192, @192, @202, @192, @192, @49];
		NSData *data = [CountData CountDataToData:origin];
        StructCountData value = (StructCountData){240, (Byte *)data.bytes, 5, 252, 223, 119};
        _userScalePath = [self StringFromCountData:&value];
    }
    return _userScalePath;
}

//: HH:mm
- (NSString *)dream_diseaseAnxiousTitle {
    if (!_dream_diseaseAnxiousTitle) {
		NSArray<NSNumber *> *origin = @[@152, @152, @234, @189, @189, @107];
		NSData *data = [CountData CountDataToData:origin];
        StructCountData value = (StructCountData){208, (Byte *)data.bytes, 5, 154, 188, 83};
        _dream_diseaseAnxiousTitle = [self StringFromCountData:&value];
    }
    return _dream_diseaseAnxiousTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginMessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "OriginMessageCell.h"
//: #import "FFFBadgeView.h"
#import "PutOptionView.h"
//: #import "FFFSessionTextContentView.h"
#import "BottomControl.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESMessageModel.h"
#import "DismissMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface OriginMessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation OriginMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [MyUserKit sharedKit].config.nickFont;
        _timeLab.font = [UserKit totalSend].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [UserKit totalSend].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = [CountData sharedInstance].userScalePath;
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(FFFMessageModel *)data {
- (void)backData:(PossibilityMessageStyle *)data {
    //: [super refreshData:data];
    [super backData:data];

    //: NTESMessageModel *model = nil;
    DismissMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[DismissMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (DismissMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self domain:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: [CountData sharedInstance].userScalePath;

        //: self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[BottomControl class]]) {
        //: ((FFFSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((BottomControl *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)domain:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:[CountData sharedInstance].dream_diseaseAnxiousTitle];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end