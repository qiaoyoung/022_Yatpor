// __DEBUG__
// __CLOSE_PRINT__
//
//  BarNameView.m
// UserKit
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionNotificationContentView.h"
#import "BarNameView.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation ContentSessionNotificationContentView
@implementation BarNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ContentMessageModel *)model
- (void)valueRow:(PossibilityMessageStyle *)model
{
    //: [super refresh:model];
    [super valueRow:model];
    //: self.label.text = [ContentKitUtil messageTipContent:model.message];
    self.label.text = [TextWithUtil messageSessionValue:model.message];
    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:model.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:model.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;

//    self.label.hidden = YES;
//    self.bubbleImageView.hidden = YES;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [UserKit totalSend].config.view;
    //: self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.nim_centerX = self.nim_width * .5f;
    self.label.nim_centerX = self.nim_width * .5f;
    //: self.label.nim_centerY = self.nim_height * .5f;
    self.label.nim_centerY = self.nim_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end
