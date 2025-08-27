// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentMessageCellProtocol.h"
#import "ContentMessageCellProtocol.h"

//: @class ContentTimestampModel;
@class AlongBar;

//: @interface ContentSessionTimestampCell : UITableViewCell
@interface TingViewCell : UITableViewCell

//: @property (strong, nonatomic) UIImageView *timeBGView;
@property (strong, nonatomic) UIImageView *timeBGView;

//: @property (strong, nonatomic) UILabel *timeLabel;
@property (strong, nonatomic) UILabel *timeLabel;

//: - (void)refreshData:(ContentTimestampModel *)data;
- (void)etymologyData:(AlongBar *)data;

//: @end
@end
