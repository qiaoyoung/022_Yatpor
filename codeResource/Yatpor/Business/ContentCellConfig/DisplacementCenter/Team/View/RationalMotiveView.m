
#import <Foundation/Foundation.h>

@interface NorthernData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NorthernData

+ (instancetype)sharedInstance {
    static NorthernData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NorthernDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)NorthernDataToCache:(Byte *)data {
    int civilization = data[0];
    Byte protection = data[1];
    int directly = data[2];
    for (int i = directly; i < directly + civilization; i++) {
        int value = data[i] - protection;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[directly + civilization] = 0;
    return data + directly;
}

- (NSString *)StringFromNorthernData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NorthernDataToCache:data]];
}

//: icon_accessory_selected
- (NSString *)main_contentTitle {
    /* static */ NSString *main_contentTitle = nil;
    if (!main_contentTitle) {
		NSArray<NSString *> *origin = @[@"23", @"3", @"3", @"108", @"102", @"114", @"113", @"98", @"100", @"102", @"102", @"104", @"118", @"118", @"114", @"117", @"124", @"98", @"118", @"104", @"111", @"104", @"102", @"119", @"104", @"103", @"68"];
		NSData *data = [NorthernData NorthernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_contentTitle = [self StringFromNorthernData:value];
    }
    return main_contentTitle;
}

//: _UITableViewCellSeparatorView
- (NSString *)k_imagePath {
    /* static */ NSString *k_imagePath = nil;
    if (!k_imagePath) {
		NSArray<NSString *> *origin = @[@"29", @"69", @"13", @"18", @"216", @"78", @"194", @"35", @"205", @"153", @"94", @"246", @"138", @"164", @"154", @"142", @"153", @"166", @"167", @"177", @"170", @"155", @"174", @"170", @"188", @"136", @"170", @"177", @"177", @"152", @"170", @"181", @"166", @"183", @"166", @"185", @"180", @"183", @"155", @"174", @"170", @"188", @"232"];
		NSData *data = [NorthernData NorthernDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_imagePath = [self StringFromNorthernData:value];
    }
    return k_imagePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RationalMotiveView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTeamCartSetTableViewCell.h"
#import "RationalMotiveView.h"

//: @implementation ContentTeamCartSetTableViewCell
@implementation RationalMotiveView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 8;
        self.layer.cornerRadius = 8;
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        self.layer.cornerRadius = 8;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initNameSubviews];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)enable:(UITableView *)tableView
{
    //: static NSString *identifier = @"ContentTeamCartSetTableViewCell";
    static NSString *identifier = @"RationalMotiveView";
    //: ContentTeamCartSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    RationalMotiveView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[ContentTeamCartSetTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[RationalMotiveView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initNameSubviews {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];


    //: self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);

    //: self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;
    self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;

}


//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)haveMinDimension:(NSDictionary *)information {
    //: return 56.f;
    return 56.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[NorthernData sharedInstance] k_imagePath]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
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
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_accessory_selected"];
        _arrowsImageView.image = [UIImage imageNamed:[[NorthernData sharedInstance] main_contentTitle]];
        //: _arrowsImageView.hidden = YES;
        _arrowsImageView.hidden = YES;
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
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
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





//: @end
@end
