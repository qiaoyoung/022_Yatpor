// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentMessageCellMaker.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentMessageCell.h"
#import "ContentImageView.h"
//: #import "ContentSessionTimestampCell.h"
#import "TingViewCell.h"
//: #import "ContentCellConfig.h"
#import "ContentCellConfig.h"
//: #import "ContentMessageCellProtocol.h"
#import "ContentMessageCellProtocol.h"

//: @interface ContentMessageCellFactory : NSObject
@interface DefenseReplacement : NSObject

//: - (ContentMessageCell *)cellInTable:(UITableView*)tableView
- (ContentImageView *)can:(UITableView*)tableView
                 //: forMessageMode:(ContentMessageModel *)model;
                 input:(PossibilityMessageStyle *)model;

//: - (ContentSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TingViewCell *)time:(UITableView *)tableView
                            //: forTimeModel:(ContentTimestampModel *)model;
                            searchTap:(AlongBar *)model;

//: @end
@end
