// __DEBUG__
// __CLOSE_PRINT__
//
//  CoveredOptionControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "ObligatoView.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const notiObjectMessage = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : FFFSessionMessageContentView
@interface CoveredOptionControl : ObligatoView

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) WithSessionNameView *label;

//: @end
@end