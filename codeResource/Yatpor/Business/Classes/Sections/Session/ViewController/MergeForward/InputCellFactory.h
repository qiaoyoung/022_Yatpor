// __DEBUG__
// __CLOSE_PRINT__
//
//  InputCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "DefenseReplacement.h"
//: #import "NTESTimestampCell.h"
#import "IconViewTimestampCell.h"
//: #import "NTESMergeMessageCell.h"
#import "OriginMessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : FFFMessageCellFactory
@interface InputCellFactory : DefenseReplacement

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (OriginMessageCell *)all:(UITableView*)tableView
                           //: forMessageMode:(FFFMessageModel *)model;
                           itemMode:(PossibilityMessageStyle *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (IconViewTimestampCell *)share:(UITableView *)tableView
                          //: forTimeModel:(FFFTimestampModel *)model;
                          group:(AlongBar *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END