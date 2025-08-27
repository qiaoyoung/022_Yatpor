// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomControl.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "ObligatoView.h"

//: @class M80AttributedLabel;
@class WithSessionNameView;

//: @interface FFFSessionTextContentView : FFFSessionMessageContentView
@interface BottomControl : ObligatoView

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) WithSessionNameView *textView;

//: @end
@end