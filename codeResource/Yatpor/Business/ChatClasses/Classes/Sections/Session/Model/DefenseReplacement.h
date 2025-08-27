// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "ContentImageView.h"
//: #import "FFFSessionTimestampCell.h"
#import "TingViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface DefenseReplacement : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (ContentImageView *)can:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 input:(PossibilityMessageStyle *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TingViewCell *)time:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            searchTap:(AlongBar *)model;

//: @end
@end