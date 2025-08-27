
#import <Foundation/Foundation.h>

NSString *StringFromBubbleScripData(Byte *data);        


//: icon_reply_close
Byte dreamElementaryMessage[] = {77, 16, 66, 5, 218, 39, 33, 45, 44, 29, 48, 35, 46, 42, 55, 29, 33, 42, 45, 49, 35, 228};

//: F6F7FA
Byte show_seniorPath[] = {67, 6, 35, 10, 203, 123, 37, 125, 102, 175, 35, 19, 35, 20, 35, 30, 141};

//: #2B2F36
Byte dreamKeyMsg[] = {43, 7, 28, 8, 28, 133, 23, 105, 7, 22, 38, 22, 42, 23, 26, 241};

//: #fffContent
Byte user_tingBurdenFormat[] = {95, 7, 37, 11, 160, 51, 199, 141, 178, 232, 45, 254, 65, 65, 65, 65, 65, 65, 18};

//: B391FF
Byte k_fortyModelIdent[] = {99, 6, 50, 10, 16, 50, 35, 6, 215, 58, 16, 1, 7, 255, 20, 20, 72};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PitchingChangeView.m
// UserKit
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentReplyContentView.h"
#import "PitchingChangeView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+UserKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @interface ContentReplyContentView ()
@interface PitchingChangeView ()

//: @end
@end

//: @implementation ContentReplyContentView
@implementation PitchingChangeView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffContent"];
        self.backgroundColor = [UIColor recordView:StringFromBubbleScripData(user_tingBurdenFormat)];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor recordView:StringFromBubbleScripData(show_seniorPath)];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor recordView:StringFromBubbleScripData(k_fortyModelIdent)];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor recordView:StringFromBubbleScripData(dreamKeyMsg)];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:StringFromBubbleScripData(dreamElementaryMessage)]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(recording:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)of
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)recording:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(nimLength:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate nimLength:sender];
    }
}

//: @end
@end

Byte * BubbleScripDataToCache(Byte *data) {
    int pitaToilet = data[0];
    int tingZone = data[1];
    Byte ambitRegion = data[2];
    int buttonOpen = data[3];
    if (!pitaToilet) return data + buttonOpen;
    for (int i = buttonOpen; i < buttonOpen + tingZone; i++) {
        int value = data[i] + ambitRegion;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[buttonOpen + tingZone] = 0;
    return data + buttonOpen;
}

NSString *StringFromBubbleScripData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BubbleScripDataToCache(data)];
}
