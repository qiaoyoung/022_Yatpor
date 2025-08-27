
#import <Foundation/Foundation.h>

NSString *StringFromMedicoData(Byte *data);        


//: icon_cell_blue_normal
Byte showTacticText[] = {58, 21, 79, 10, 41, 122, 222, 216, 11, 230, 26, 20, 32, 31, 16, 20, 22, 29, 29, 16, 19, 29, 38, 22, 16, 31, 32, 35, 30, 18, 29, 209};

//: #ffffff
Byte user_showData[] = {81, 7, 88, 8, 42, 12, 46, 116, 203, 14, 14, 14, 14, 14, 14, 107};

//: #EEEEEE
Byte showLegislationKey[] = {37, 7, 61, 4, 230, 8, 8, 8, 8, 8, 8, 37};

//: contact_tag_fragment_sure
Byte userUnderlyIdent[] = {28, 25, 35, 6, 196, 195, 64, 76, 75, 81, 62, 64, 81, 60, 81, 62, 68, 60, 67, 79, 62, 68, 74, 66, 75, 81, 60, 80, 82, 79, 66, 55};

//: #A148FF
Byte dream_messageContent[] = {29, 7, 96, 9, 33, 151, 235, 94, 15, 195, 225, 209, 212, 216, 230, 230, 19};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExcerptTipView.m
// UserKit
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "ExcerptTipView.h"
//: #import "FFFContactPickedView.h"
#import "DisturbingAssetView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation FFFContactSelectTabView
@implementation ExcerptTipView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[DisturbingAssetView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage green:StringFromMedicoData(showTacticText) down:[UIColor recordView:StringFromMedicoData(dream_messageContent)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage green:StringFromMedicoData(showTacticText) down:[UIColor recordView:StringFromMedicoData(dream_messageContent)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[MatronymicPath colorStreetwise:StringFromMedicoData(userUnderlyIdent)] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor recordView:StringFromMedicoData(user_showData)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor recordView:StringFromMedicoData(showLegislationKey)];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * MedicoDataToCache(Byte *data) {
    int morroAccount = data[0];
    int tail = data[1];
    Byte claimContainer = data[2];
    int resortAss = data[3];
    if (!morroAccount) return data + resortAss;
    for (int i = resortAss; i < resortAss + tail; i++) {
        int value = data[i] + claimContainer;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[resortAss + tail] = 0;
    return data + resortAss;
}

NSString *StringFromMedicoData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MedicoDataToCache(data)];
}
