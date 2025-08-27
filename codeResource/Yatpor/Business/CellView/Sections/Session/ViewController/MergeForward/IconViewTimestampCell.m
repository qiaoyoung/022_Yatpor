
#import <Foundation/Foundation.h>

NSString *StringFromEtherData(Byte *data);        


//: yyyy-MM-dd
Byte mainRangeMessage[] = {31, 10, 21, 14, 145, 224, 249, 216, 237, 145, 38, 225, 138, 209, 100, 100, 100, 100, 24, 56, 56, 24, 79, 79, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconViewTimestampCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimestampCell.h"
#import "IconViewTimestampCell.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "ContentTimestampModel.h"
#import "AlongBar.h"

//: @interface NTESTimestampCell ()
@interface IconViewTimestampCell ()

//: @property (nonatomic, strong) UIView *lineLeft;
@property (nonatomic, strong) UIView *lineLeft;
//: @property (nonatomic, strong) UIView *lineRight;
@property (nonatomic, strong) UIView *lineRight;

//: @end
@end

//: @implementation NTESTimestampCell
@implementation IconViewTimestampCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.timeBGView removeFromSuperview];
        [self.timeBGView removeFromSuperview];
        //: self.timeLabel.textColor = [MyUserKit sharedKit].config.nickColor;
        self.timeLabel.textColor = [UserKit totalSend].config.nickColor;
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        //: [self.contentView addSubview:self.lineLeft];
        [self.contentView addSubview:self.lineLeft];
        //: [self.contentView addSubview:self.lineRight];
        [self.contentView addSubview:self.lineRight];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 8.0;
    CGFloat padding = 8.0;
    //: self.timeLabel.centerY = self.height/2;
    self.timeLabel.centerY = self.height/2;
    //: _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    //: _lineLeft.centerY = self.timeLabel.centerY;
    _lineLeft.centerY = self.timeLabel.centerY;
    //: _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    //: _lineRight.centerY = self.timeLabel.centerY;
    _lineRight.centerY = self.timeLabel.centerY;
}

//: - (void)refreshData:(ContentTimestampModel *)data {
- (void)etymologyData:(AlongBar *)data {
    //: if ([data isKindOfClass:[ContentTimestampModel class]]) {
    if ([data isKindOfClass:[AlongBar class]]) {
        //: self.timeLabel.text = [self timeFormatString:data.messageTime];
        self.timeLabel.text = [self point:data.messageTime];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)timestamp {
- (NSString *)point:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setDateFormat:StringFromEtherData(mainRangeMessage)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)lineLeft {
- (UIView *)lineLeft {
    //: if (!_lineLeft) {
    if (!_lineLeft) {
        //: _lineLeft = [self setupLine];
        _lineLeft = [self red];
    }
    //: return _lineLeft;
    return _lineLeft;
}

//: - (UIView *)lineRight {
- (UIView *)lineRight {
    //: if (!_lineRight) {
    if (!_lineRight) {
        //: _lineRight = [self setupLine];
        _lineRight = [self red];
    }
    //: return _lineRight;
    return _lineRight;
}

//: - (UIView *)setupLine {
- (UIView *)red {
    //: UIView *ret = [[UIView alloc] init];
    UIView *ret = [[UIView alloc] init];
    //: ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    //: return ret;
    return ret;
}

//: @end
@end

Byte * EtherDataToCache(Byte *data) {
    int creasedRemove = data[0];
    int disease = data[1];
    Byte guyGray = data[2];
    int examineed = data[3];
    if (!creasedRemove) return data + examineed;
    for (int i = examineed; i < examineed + disease; i++) {
        int value = data[i] + guyGray;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[examineed + disease] = 0;
    return data + examineed;
}

NSString *StringFromEtherData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EtherDataToCache(data)];
}
