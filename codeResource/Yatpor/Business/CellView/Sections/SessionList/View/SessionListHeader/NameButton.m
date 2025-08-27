
#import <Foundation/Foundation.h>
typedef struct {
    Byte removeText;
    Byte *correlationTable;
    unsigned int want;
    Byte tingLayer;
	int pointOut;
	int actuarialTable;
} BackData;

NSString *StringFromBackData(BackData *data);


//: icon_arrow
BackData dreamModelTitle = (BackData){193, (Byte []){168, 162, 174, 175, 158, 160, 179, 179, 174, 182, 27}, 10, 152, 226, 51};

//: icon_muti_clients
BackData main_teamMsg = (BackData){173, (Byte []){196, 206, 194, 195, 242, 192, 216, 217, 196, 242, 206, 193, 196, 200, 195, 217, 222, 114}, 17, 200, 224, 59};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameButton.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "NameButton.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: @interface NTESMutiClientsHeaderView()
@interface NameButton()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation NameButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromBackData(&main_teamMsg)]];
        //: [self addSubview:_icon];
        [self addSubview:_icon];

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        //: _label.font = [UIFont boldSystemFontOfSize:14.f];
        _label.font = [UIFont boldSystemFontOfSize:14.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_arrow"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromBackData(&dreamModelTitle)] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat show_actionId = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + show_actionId * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setAssemblageRange:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat noti_cellFormat = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat main_kitUrl = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat showPlainName = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = noti_cellFormat;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + main_kitUrl;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - showPlainName;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end

Byte *BackDataToByte(BackData *data) {
    if (data->tingLayer < 140) return data->correlationTable;
    for (int i = 0; i < data->want; i++) {
        data->correlationTable[i] ^= data->removeText;
    }
    data->correlationTable[data->want] = 0;
    data->tingLayer = 84;
	if (data->want >= 2) {
		data->pointOut = data->correlationTable[0];
		data->actuarialTable = data->correlationTable[1];
	}
    return data->correlationTable;
}

NSString *StringFromBackData(BackData *data) {
    return [NSString stringWithUTF8String:(char *)BackDataToByte(data)];
}
