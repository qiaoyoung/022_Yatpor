// __DEBUG__
// __CLOSE_PRINT__
//
//  TingDataCell.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "TingDataCell.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @implementation NTESContactDataCell
@implementation TingDataCell

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)flush:(id<AlterDate>)member
{
    //: [super refreshUser:member];
    [super flush:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [LanguageUtil startLength:self.memberId provinceText:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.range];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end