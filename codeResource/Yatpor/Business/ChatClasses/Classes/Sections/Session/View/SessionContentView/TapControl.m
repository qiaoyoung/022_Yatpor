// __DEBUG__
// __CLOSE_PRINT__
//
//  TapControl.m
// UserKit
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionNetChatNotifyContentView.h"
#import "TapControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation ContentSessionNetChatNotifyContentView
@implementation TapControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ContentMessageModel *)data
- (void)valueRow:(PossibilityMessageStyle *)data
{
    //: [super refresh:data];
    [super valueRow:data];
    //: NSString *text = [ContentKitUtil messageTipContent:data.message];
    NSString *text = [TextWithUtil messageSessionValue:data.message];

    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:data.message];
    //: self.textLabel.textColor = setting.textColor;;
    self.textLabel.textColor = setting.textColor;;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;

    //: [self.textLabel nim_setText:text];
    [self.textLabel maturity:text];


}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model onSize:tableViewWidth];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}


//: @end
@end
