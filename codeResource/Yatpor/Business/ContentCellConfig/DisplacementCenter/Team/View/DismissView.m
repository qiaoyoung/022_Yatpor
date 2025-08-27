
#import <Foundation/Foundation.h>

@interface MorroData : NSObject

+ (instancetype)sharedInstance;

//: icon_me_arrow
@property (nonatomic, copy) NSString *mainNighValue;

//: #F7BA00
@property (nonatomic, copy) NSString *dream_gatorFormat;

//: #ECECEC
@property (nonatomic, copy) NSString *userEmbraceGuyStateFormat;

//: #2C3042
@property (nonatomic, copy) NSString *dreamTaxpayerIdent;

@end

@implementation MorroData

+ (instancetype)sharedInstance {
    static MorroData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MorroDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)MorroDataToCache:(Byte *)data {
    int fork = data[0];
    Byte stouthearted = data[1];
    int born = data[2];
    for (int i = born; i < born + fork; i++) {
        int value = data[i] + stouthearted;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[born + fork] = 0;
    return data + born;
}

- (NSString *)StringFromMorroData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MorroDataToCache:data]];
}

//: #ECECEC
- (NSString *)userEmbraceGuyStateFormat {
    if (!_userEmbraceGuyStateFormat) {
		NSArray<NSNumber *> *origin = @[@7, @69, @4, @72, @222, @0, @254, @0, @254, @0, @254, @58];
		NSData *data = [MorroData MorroDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userEmbraceGuyStateFormat = [self StringFromMorroData:value];
    }
    return _userEmbraceGuyStateFormat;
}

//: #2C3042
- (NSString *)dreamTaxpayerIdent {
    if (!_dreamTaxpayerIdent) {
		NSArray<NSNumber *> *origin = @[@7, @74, @7, @220, @93, @181, @252, @217, @232, @249, @233, @230, @234, @232, @7];
		NSData *data = [MorroData MorroDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTaxpayerIdent = [self StringFromMorroData:value];
    }
    return _dreamTaxpayerIdent;
}

//: #F7BA00
- (NSString *)dream_gatorFormat {
    if (!_dream_gatorFormat) {
		NSArray<NSNumber *> *origin = @[@7, @80, @7, @76, @175, @118, @127, @211, @246, @231, @242, @241, @224, @224, @122];
		NSData *data = [MorroData MorroDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_gatorFormat = [self StringFromMorroData:value];
    }
    return _dream_gatorFormat;
}

//: icon_me_arrow
- (NSString *)mainNighValue {
    if (!_mainNighValue) {
		NSArray<NSNumber *> *origin = @[@13, @39, @10, @197, @180, @37, @173, @216, @140, @41, @66, @60, @72, @71, @56, @70, @62, @56, @58, @75, @75, @72, @80, @133];
		NSData *data = [MorroData MorroDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainNighValue = [self StringFromMorroData:value];
    }
    return _mainNighValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentGroupEditTableViewCell.h"
#import "DismissView.h"

//: @implementation ContentGroupEditTableViewCell
@implementation DismissView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initWill];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initWill {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor recordView:[MorroData sharedInstance].userEmbraceGuyStateFormat];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[MorroData sharedInstance].mainNighValue];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor recordView:[MorroData sharedInstance].dreamTaxpayerIdent];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#F7BA00"];
        _contentLabel.textColor = [UIColor recordView:[MorroData sharedInstance].dream_gatorFormat];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end
