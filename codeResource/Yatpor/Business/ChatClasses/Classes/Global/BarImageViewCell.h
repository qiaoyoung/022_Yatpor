// __DEBUG__
// __CLOSE_PRINT__
//
//  BarImageViewCell.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentCommonTableViewCell.h"
#import "BottomDisturbing.h"

//: @interface ContentKitSwitcherCell : UITableViewCell<ContentCommonTableViewCell>
@interface BarImageViewCell : UITableViewCell<BottomDisturbing>

//: @property(nonatomic,strong,readonly) UISwitch *switcher;
@property(nonatomic,strong,readonly) UISwitch *switcher;

//: @end
@end
