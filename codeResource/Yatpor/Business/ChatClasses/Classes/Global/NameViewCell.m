
#import <Foundation/Foundation.h>

NSString *StringFromThirtyWindowData(Byte *data);


//: #A148FF
Byte k_labValue[] = {96, 7, 78, 8, 151, 108, 218, 215, 113, 143, 127, 130, 134, 148, 148, 114};

//: icon_cell_red_normal
Byte dream_braveValue[] = {31, 20, 99, 6, 26, 82, 204, 198, 210, 209, 194, 198, 200, 207, 207, 194, 213, 200, 199, 194, 209, 210, 213, 208, 196, 207, 138};

//: icon_cell_blue_normal
Byte k_faceKey[] = {47, 21, 21, 9, 90, 130, 171, 156, 13, 126, 120, 132, 131, 116, 120, 122, 129, 129, 116, 119, 129, 138, 122, 116, 131, 132, 135, 130, 118, 129, 227};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewCell.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitColorButtonCell.h"
#import "NameViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @interface FFFKitColorButtonCell()
@interface NameViewCell()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) LanguageSizeView *rowData;

//: @end
@end

//: @implementation FFFKitColorButtonCell
@implementation NameViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[BubbleGroundView alloc] initWithFrame:CGRectZero];
        //: _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
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
    //: FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.nim_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.file action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.nim_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.file action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect buttonRect = self.button.frame;
    CGRect buttonRect = self.button.frame;
    //: if(CGRectContainsPoint(buttonRect, point)){
    if(CGRectContainsPoint(buttonRect, point)){
        //: return self;
        return self;
    }
    //: return [super hitTest:point withEvent:event];
    return [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.nim_centerX = self.nim_width * .5f;
    _button.nim_centerX = self.nim_width * .5f;
    //: _button.nim_centerY = self.nim_height * .5f;
    _button.nim_centerY = self.nim_height * .5f;
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


//: @implementation NIMKitColorButton : UIButton
@implementation BubbleGroundView : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self show];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(FFFKitColorButtonCellStyle)style{
- (void)setStyle:(FFFKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self show];
}

//: - (void)reset{
- (void)show{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case FFFKitColorButtonCellStyleRed:{
        case FFFKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = StringFromThirtyWindowData(dream_braveValue);
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: case FFFKitColorButtonCellStyleBlue:
        case FFFKitColorButtonCellStyleBlue:
        {
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = StringFromThirtyWindowData(k_faceKey);
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage green:imageNormalName down:[UIColor recordView:StringFromThirtyWindowData(k_labValue)]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
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

Byte * ThirtyWindowDataToCache(Byte *data) {
    int nurse = data[0];
    int processorAssumption = data[1];
    Byte embrace = data[2];
    int valueShould = data[3];
    if (!nurse) return data + valueShould;
    for (int i = valueShould; i < valueShould + processorAssumption; i++) {
        int value = data[i] - embrace;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[valueShould + processorAssumption] = 0;
    return data + valueShould;
}

NSString *StringFromThirtyWindowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ThirtyWindowDataToCache(data)];
}
