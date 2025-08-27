// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.m
// UserKit
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentQuickCommentCell.h"
#import "SignalingView.h"
//: #import "ContentKitQuickCommentUtil.h"
#import "TapOption.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+UserKit.h"

//: @interface ContentQuickCommentCell ()
@interface SignalingView ()

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) WithSessionNameView *textLabel;
//: @property (nonatomic, strong) UIView *divider;
@property (nonatomic, strong) UIView *divider;

//: @end
@end

//: @implementation ContentQuickCommentCell
@implementation SignalingView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _textLabel = [ContentKitQuickCommentUtil newCommentLabel];
        _textLabel = [TapOption textLabel];
        //: [self.contentView addSubview:_textLabel];
        [self.contentView addSubview:_textLabel];
        //: self.layer.cornerRadius = 12.0;
        self.layer.cornerRadius = 12.0;
        //: self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];

        //: _divider = [[UIView alloc] initWithFrame:CGRectZero];
        _divider = [[UIView alloc] initWithFrame:CGRectZero];
        //: _divider.backgroundColor = UIColor.lightGrayColor;
        _divider.backgroundColor = UIColor.lightGrayColor;
        //: [self.contentView addSubview:_divider];
        [self.contentView addSubview:_divider];

    }
    //: return self;
    return self;
}

//: - (void)refreshWithData:(NSArray *)comments model:(ContentMessageModel *)data
- (void)shouldModel:(NSArray *)comments completeForModel:(PossibilityMessageStyle *)data
{
    //: self.textLabel.textColor = data.shouldShowLeft ? [UIColor colorWithHex:0x000000 alpha:1] : [UIColor colorWithHex:0xFFFContent alpha:1];
    self.textLabel.textColor = data.shouldShowLeft ? [UIColor max:0x000000 titleMessage:1] : [UIColor max:0xFFFFFF titleMessage:1];
    //: [self.textLabel nim_setText:[ContentKitQuickCommentUtil commentsContent:comments]];
    [self.textLabel maturity:[TapOption max:comments]];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.textLabel.nim_width = self.nim_width - NIMKitCommentUtilCellContentPadding * 2;
    self.textLabel.nim_width = self.nim_width - appManagerName * 2;
    //: self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    //: self.textLabel.nim_centerY = self.nim_height * .5f;
    self.textLabel.nim_centerY = self.nim_height * .5f;
    //: self.textLabel.nim_left = NIMKitCommentUtilCellPadding;
    self.textLabel.nim_left = showNameFormat;

    //: self.divider.nim_width = 0.5;
    self.divider.nim_width = 0.5;
    //: self.divider.nim_height = self.contentView.nim_height - 8;
    self.divider.nim_height = self.contentView.nim_height - 8;
    //: self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    //: self.divider.nim_left = 22;
    self.divider.nim_left = 22;
}

//: @end
@end
