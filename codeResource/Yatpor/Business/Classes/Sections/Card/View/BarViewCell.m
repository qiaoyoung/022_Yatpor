
#import <Foundation/Foundation.h>

typedef struct {
    Byte spectacles;
    Byte *image;
    unsigned int back;
	int viewResource;
} StructSumelligenceData;

@interface SumelligenceData : NSObject

+ (instancetype)sharedInstance;

//: icon_cell_red_normal
@property (nonatomic, copy) NSString *dream_infoIdent;

//: icon_cell_blue_normal
@property (nonatomic, copy) NSString *k_touchId;

//: #A148FF
@property (nonatomic, copy) NSString *appValueTeamStr;

@end

@implementation SumelligenceData

+ (instancetype)sharedInstance {
    static SumelligenceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SumelligenceDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SumelligenceDataToByte:(StructSumelligenceData *)data {
    for (int i = 0; i < data->back; i++) {
        data->image[i] ^= data->spectacles;
    }
    data->image[data->back] = 0;
	if (data->back >= 1) {
		data->viewResource = data->image[0];
	}
    return data->image;
}

- (NSString *)StringFromSumelligenceData:(StructSumelligenceData *)data {
    return [NSString stringWithUTF8String:(char *)[self SumelligenceDataToByte:data]];
}

//: icon_cell_red_normal
- (NSString *)dream_infoIdent {
    if (!_dream_infoIdent) {
		NSString *origin = @"0f0509083905030a0a39140302390809140b070af7";
		NSData *data = [SumelligenceData SumelligenceDataToData:origin];
        StructSumelligenceData value = (StructSumelligenceData){102, (Byte *)data.bytes, 20, 200};
        _dream_infoIdent = [self StringFromSumelligenceData:&value];
    }
    return _dream_infoIdent;
}

//: icon_cell_blue_normal
- (NSString *)k_touchId {
    if (!_k_touchId) {
		NSString *origin = @"88828e8fbe82848d8dbe838d9484be8f8e938c808dbe";
		NSData *data = [SumelligenceData SumelligenceDataToData:origin];
        StructSumelligenceData value = (StructSumelligenceData){225, (Byte *)data.bytes, 21, 19};
        _k_touchId = [self StringFromSumelligenceData:&value];
    }
    return _k_touchId;
}

//: #A148FF
- (NSString *)appValueTeamStr {
    if (!_appValueTeamStr) {
		NSString *origin = @"9af8888d81ffff57";
		NSData *data = [SumelligenceData SumelligenceDataToData:origin];
        StructSumelligenceData value = (StructSumelligenceData){185, (Byte *)data.bytes, 7, 79};
        _appValueTeamStr = [self StringFromSumelligenceData:&value];
    }
    return _appValueTeamStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarViewCell.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESColorButtonCell.h"
#import "BarViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @interface NTESColorButtonCell()
@interface BarViewCell()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) LanguageSizeView *rowData;

//: @end
@end

//: @implementation NTESColorButtonCell
@implementation BarViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NTESColorButton alloc] initWithFrame:CGRectZero];
        _button = [[FasteningView alloc] initWithFrame:CGRectZero];
        //: _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.maxSum action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.maxSum action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: if (self.rowData.cellActionName.length) {
    if (self.rowData.cellActionName.length) {
        //: return [super hitTest:point withEvent:event];
        return [super hitTest:point withEvent:event];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.centerX = self.width * .5f;
    _button.centerX = self.width * .5f;
    //: _button.centerY = self.height * .5f;
    _button.centerY = self.height * .5f;
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NTESColorButton : UIButton
@implementation FasteningView : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self time];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(ColorButtonCellStyle)style{
- (void)setStyle:(ColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self time];
}

//: - (void)reset{
- (void)time{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ColorButtonCellStyleRed:{
        case ColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [SumelligenceData sharedInstance].dream_infoIdent;
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: case ColorButtonCellStyleBlue:{
        case ColorButtonCellStyleBlue:{
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = [SumelligenceData sharedInstance].k_touchId;
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage green:imageNormalName down:[UIColor recordView:[SumelligenceData sharedInstance].appValueTeamStr]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end