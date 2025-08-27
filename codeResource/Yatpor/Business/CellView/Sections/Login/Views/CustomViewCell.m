
#import <Foundation/Foundation.h>

@interface DateDropData : NSObject

+ (instancetype)sharedInstance;

//: #3F3F3F
@property (nonatomic, copy) NSString *dream_coverValue;

//: head_default
@property (nonatomic, copy) NSString *m_valueTitle;

//: mine_btn_right
@property (nonatomic, copy) NSString *appInfoId;

//: eeeeee
@property (nonatomic, copy) NSString *show_needMsg;

@end

@implementation DateDropData

+ (instancetype)sharedInstance {
    static DateDropData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DateDropDataToCache:(Byte *)data {
    int sizeStart = data[0];
    Byte operationComment = data[1];
    int singleStart = data[2];
    for (int i = singleStart; i < singleStart + sizeStart; i++) {
        int value = data[i] - operationComment;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[singleStart + sizeStart] = 0;
    return data + singleStart;
}

- (NSString *)StringFromDateDropData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DateDropDataToCache:data]];
}

//: eeeeee
- (NSString *)show_needMsg {
    if (!_show_needMsg) {
        Byte value[] = {6, 97, 11, 129, 60, 114, 74, 27, 19, 24, 216, 198, 198, 198, 198, 198, 198, 110};
        _show_needMsg = [self StringFromDateDropData:value];
    }
    return _show_needMsg;
}

//: head_default
- (NSString *)m_valueTitle {
    if (!_m_valueTitle) {
        Byte value[] = {12, 35, 4, 169, 139, 136, 132, 135, 130, 135, 136, 137, 132, 152, 143, 151, 10};
        _m_valueTitle = [self StringFromDateDropData:value];
    }
    return _m_valueTitle;
}

//: mine_btn_right
- (NSString *)appInfoId {
    if (!_appInfoId) {
        Byte value[] = {14, 76, 4, 57, 185, 181, 186, 177, 171, 174, 192, 186, 171, 190, 181, 179, 180, 192, 15};
        _appInfoId = [self StringFromDateDropData:value];
    }
    return _appInfoId;
}

//: #3F3F3F
- (NSString *)dream_coverValue {
    if (!_dream_coverValue) {
        Byte value[] = {7, 27, 10, 249, 135, 179, 1, 236, 99, 139, 62, 78, 97, 78, 97, 78, 97, 247};
        _dream_coverValue = [self StringFromDateDropData:value];
    }
    return _dream_coverValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistCustomCell.h"
#import "CustomViewCell.h"

//: @implementation NTESRegistCustomCell
@implementation CustomViewCell

//: - (void)initSubviews{
- (void)initCell{


    //: CGFloat scale = 1.f;
    CGFloat scale = 1.f;

    //: if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
    if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
        //: scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
        scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
    }

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _titleLabel.textColor = [UIColor recordView:[DateDropData sharedInstance].dream_coverValue];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(20*scale);
        make.top.mas_offset(20*scale);
        //: make.bottom.mas_offset(-20*scale);
        make.bottom.mas_offset(-20*scale);
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.width.mas_equalTo(100*scale);
        make.width.mas_equalTo(100*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];

    //: _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView = [[UIImageView alloc] init];
    //: _arrowImageView.image = [UIImage imageNamed:@"mine_btn_right"];
    _arrowImageView.image = [UIImage imageNamed:[DateDropData sharedInstance].appInfoId];
    //: [self addSubview:_arrowImageView];
    [self addSubview:_arrowImageView];
    //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
    //: }];
    }];


    //: _contentTextField = [[UITextField alloc] init];
    _contentTextField = [[UITextField alloc] init];
    //: _contentTextField.textAlignment = NSTextAlignmentRight;
    _contentTextField.textAlignment = NSTextAlignmentRight;
    //: _contentTextField.userInteractionEnabled = NO;
    _contentTextField.userInteractionEnabled = NO;
    //: [self addSubview:_contentTextField];
    [self addSubview:_contentTextField];
    //: [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50);
        make.right.mas_offset(-50);
        //: make.width.mas_equalTo(180*scale);
        make.width.mas_equalTo(180*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];


    //: _headerImageView = [[UIImageView alloc] init];
    _headerImageView = [[UIImageView alloc] init];
    //: _headerImageView.image = [UIImage imageNamed:@"head_default"];
    _headerImageView.image = [UIImage imageNamed:[DateDropData sharedInstance].m_valueTitle];
    //: _headerImageView.backgroundColor = [UIColor clearColor];
    _headerImageView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_headerImageView];
    [self addSubview:_headerImageView];
    //: _headerImageView.layer.masksToBounds = YES;
    _headerImageView.layer.masksToBounds = YES;
    //: _headerImageView.layer.cornerRadius = 23*scale;
    _headerImageView.layer.cornerRadius = 23*scale;
    //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50*scale);
        make.right.mas_offset(-50*scale);
        //: make.width.mas_equalTo(46*scale);
        make.width.mas_equalTo(46*scale);
        //: make.height.mas_equalTo(46*scale);
        make.height.mas_equalTo(46*scale);
    //: }];
    }];



    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor recordView:[DateDropData sharedInstance].show_needMsg];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.right.mas_offset(-25);
        make.right.mas_offset(-25);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];
}

//: @end
@end