
#import <Foundation/Foundation.h>
typedef struct {
    Byte layerDate;
    Byte *history;
    unsigned int dismissLab;
    Byte showBubble;
} HarvestMoonData;

NSString *StringFromHarvestMoonData(HarvestMoonData *data);


//: user_device_phone
HarvestMoonData noti_byName = (HarvestMoonData){196, (Byte []){177, 183, 161, 182, 155, 160, 161, 178, 173, 167, 161, 155, 180, 172, 171, 170, 161, 122}, 17, 225};

//: telname
HarvestMoonData showStartFormat = (HarvestMoonData){165, (Byte []){209, 192, 201, 203, 196, 200, 192, 57}, 7, 247};

//: iPhone
HarvestMoonData show_valueName = (HarvestMoonData){149, (Byte []){252, 197, 253, 250, 251, 240, 241}, 6, 205};

//: systems
HarvestMoonData notiTextValue = (HarvestMoonData){158, (Byte []){237, 231, 237, 234, 251, 243, 237, 170}, 7, 195};

//: addtime
HarvestMoonData dream_shouldDeleteIdent = (HarvestMoonData){198, (Byte []){167, 162, 162, 178, 175, 171, 163, 134}, 7, 245};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "TitleViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation TitleViewCell

//: - (void)initSubviews{
- (void)initCell{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = StringFromHarvestMoonData(&show_valueName);
    //: _deviceName.font = [UIFont systemFontOfSize:16];
    _deviceName.font = [UIFont systemFontOfSize:16];
    //: _deviceName.textColor = [UIColor blackColor];
    _deviceName.textColor = [UIColor blackColor];
    //: [self addSubview:_deviceName];
    [self addSubview:_deviceName];
    //: [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _imageViewIcon = [[UIImageView alloc] init];
    _imageViewIcon = [[UIImageView alloc] init];
    //: _imageViewIcon.image = [UIImage imageNamed:@"user_device_phone"];
    _imageViewIcon.image = [UIImage imageNamed:StringFromHarvestMoonData(&noti_byName)];
    //: [self addSubview:_imageViewIcon];
    [self addSubview:_imageViewIcon];
    //: [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);

    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.text = @"iPhone";
    _timeLabel.text = StringFromHarvestMoonData(&show_valueName);
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: _timeLabel.textAlignment = NSTextAlignmentRight;
    _timeLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _deveceVersion = [[UILabel alloc] init];
    _deveceVersion = [[UILabel alloc] init];
    //: _deveceVersion.text = @"iPhone";
    _deveceVersion.text = StringFromHarvestMoonData(&show_valueName);
    //: _deveceVersion.font = [UIFont systemFontOfSize:14];
    _deveceVersion.font = [UIFont systemFontOfSize:14];
    //: _deveceVersion.textAlignment = NSTextAlignmentRight;
    _deveceVersion.textAlignment = NSTextAlignmentRight;
    //: _deveceVersion.textColor = [UIColor lightGrayColor];
    _deveceVersion.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_deveceVersion];
    [self addSubview:_deveceVersion];
    //: [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.bottom.mas_offset(-15);
        make.bottom.mas_offset(-15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];
}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)untilTargetInformation:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information to:StringFromHarvestMoonData(&showStartFormat)];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information to:StringFromHarvestMoonData(&notiTextValue)];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information to:StringFromHarvestMoonData(&dream_shouldDeleteIdent)];
}

//: @end
@end

Byte *HarvestMoonDataToByte(HarvestMoonData *data) {
    if (data->showBubble < 113) return data->history;
    for (int i = 0; i < data->dismissLab; i++) {
        data->history[i] ^= data->layerDate;
    }
    data->history[data->dismissLab] = 0;
    data->showBubble = 37;
    return data->history;
}

NSString *StringFromHarvestMoonData(HarvestMoonData *data) {
    return [NSString stringWithUTF8String:(char *)HarvestMoonDataToByte(data)];
}
