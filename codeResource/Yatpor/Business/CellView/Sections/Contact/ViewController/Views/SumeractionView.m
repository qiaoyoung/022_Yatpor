
#import <Foundation/Foundation.h>

typedef struct {
    Byte onValue;
    Byte *size;
    unsigned int releaseGray;
	int account;
	int reddishProcessor;
	int along;
} StructShareReleaseData;

@interface ShareReleaseData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShareReleaseData

+ (instancetype)sharedInstance {
    static ShareReleaseData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ShareReleaseDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ShareReleaseDataToByte:(StructShareReleaseData *)data {
    for (int i = 0; i < data->releaseGray; i++) {
        data->size[i] ^= data->onValue;
    }
    data->size[data->releaseGray] = 0;
	if (data->releaseGray >= 3) {
		data->account = data->size[0];
		data->reddishProcessor = data->size[1];
		data->along = data->size[2];
	}
    return data->size;
}

- (NSString *)StringFromShareReleaseData:(StructShareReleaseData *)data {
    return [NSString stringWithUTF8String:(char *)[self ShareReleaseDataToByte:data]];
}

//: #F7F8FB
- (NSString *)appUpText {
    /* static */ NSString *appUpText = nil;
    if (!appUpText) {
		NSArray<NSNumber *> *origin = @[@105, @12, @125, @12, @114, @12, @8, @174];
		NSData *data = [ShareReleaseData ShareReleaseDataToData:origin];
        StructShareReleaseData value = (StructShareReleaseData){74, (Byte *)data.bytes, 7, 42, 151, 231};
        appUpText = [self StringFromShareReleaseData:&value];
    }
    return appUpText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SumeractionView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactTableHeader.h"
#import "SumeractionView.h"

//: @implementation NTESContactTableHeader
@implementation SumeractionView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor recordView:[[ShareReleaseData sharedInstance] appUpText]];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textColor = [UIColor lightGrayColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(100);
            make.width.mas_equalTo(100);
            //: make.height.mas_equalTo(15);
            make.height.mas_equalTo(15);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: @end
@end




//: @implementation NTESContactTableHeaderGroup
@implementation ContactSizeView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor recordView:[[ShareReleaseData sharedInstance] appUpText]];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _arrowImageView = [[UIImageView alloc] init];
        _arrowImageView = [[UIImageView alloc] init];
        //: [self addSubview:_arrowImageView];
        [self addSubview:_arrowImageView];
        //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.width.mas_equalTo(14);
            make.width.mas_equalTo(14);
            //: make.height.mas_equalTo(8);
            make.height.mas_equalTo(8);
        //: }];
        }];

        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(circleClick:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:button];
        [self addSubview:button];
        //: [button mas_makeConstraints:^(MASConstraintMaker *make) {
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.bottom.mas_offset(0);
            make.bottom.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: -(void)buttonClick:(UIButton *)sender{
-(void)circleClick:(UIButton *)sender{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(headerClickWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(maxes:)]) {
        //: [self.delegate headerClickWith:self.section];
        [self.delegate maxes:self.section];
    }
}

//: @end
@end