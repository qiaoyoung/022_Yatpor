// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissTextView.h
// UserKit
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionUnknowContentView.h"
#import "DismissTextView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"

//: @interface ContentSessionUnknowContentView()
@interface DismissTextView()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation ContentSessionUnknowContentView
@implementation DismissTextView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.userInteractionEnabled = NO;
        _label.userInteractionEnabled = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ContentMessageModel *)data{
- (void)valueRow:(PossibilityMessageStyle *)data{
    //: [super refresh:data];
    [super valueRow:data];
    //: NSString *text = @"";
    NSString *text = @"";
//    NSString *text = @"未知类型消息".nim_localized;
    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:data.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: [self.label setText:text];
    [self.label setText:text];
    //: [self.label sizeToFit];
    [self.label sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _label.nim_centerX = self.nim_width * .5f;
    _label.nim_centerX = self.nim_width * .5f;
    //: _label.nim_centerY = self.nim_height * .5f;
    _label.nim_centerY = self.nim_height * .5f;
}

//: @end
@end
