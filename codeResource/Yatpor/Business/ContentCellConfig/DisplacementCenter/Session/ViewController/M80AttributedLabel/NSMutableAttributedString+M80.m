// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.m
//  WithSessionNameView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableAttributedString+M80.h"
#import "NSMutableAttributedString+M80.h"

//: @implementation NSMutableAttributedString (M80)
@implementation NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color
- (void)ofShelve:(UIColor*)color
{
    //: [self m80_setTextColor:color range:NSMakeRange(0, [self length])];
    [self domain:color tribesmanRange:NSMakeRange(0, [self length])];
}

//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range
- (void)domain:(UIColor*)color tribesmanRange:(NSRange)range
{
    //: [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
    [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
}


//: - (void)m80_setFont:(UIFont*)font
- (void)buttonDown:(UIFont*)font
{
    //: [self m80_setFont:font range:NSMakeRange(0, [self length])];
    [self frank:font ting:NSMakeRange(0, [self length])];
}

//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range
- (void)frank:(UIFont*)font ting:(NSRange)range
{
    //: if (font)
    if (font)
    {
        //: [self addAttributes:@{NSFontAttributeName:font} range:range];
        [self addAttributes:@{NSFontAttributeName:font} range:range];
    }
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)positionStepTitle:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 send:(CTUnderlineStyleModifiers)modifier
{
    //: [self m80_setUnderlineStyle:style
    [self title:style
                   //: modifier:modifier
                   present:modifier
                      //: range:NSMakeRange(0, self.length)];
                      styleKey:NSMakeRange(0, self.length)];
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)title:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 present:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range
                    styleKey:(NSRange)range
{
    //: [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
    [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
}

//: @end
@end