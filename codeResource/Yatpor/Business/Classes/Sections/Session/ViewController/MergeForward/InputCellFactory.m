
#import <Foundation/Foundation.h>

NSString *StringFromTouchOfData(Byte *data);


//: _ntes
Byte user_statePath[] = {7, 5, 12, 53, 136, 19, 145, 219, 5, 44, 40, 127, 115, 101, 116, 110, 95, 24};

//: time_ntes
Byte mainCoverStr[] = {25, 9, 8, 99, 52, 117, 133, 130, 115, 101, 116, 110, 95, 101, 109, 105, 116, 225};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "InputCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation InputCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (OriginMessageCell *)all:(UITableView*)tableView
                         //: forMessageMode:(ContentMessageModel *)model {
                         itemMode:(PossibilityMessageStyle *)model {
    //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig doTeamImage:model] stringByAppendingString:StringFromTouchOfData(user_statePath)];
    //: ContentMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ContentImageView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"OriginMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (OriginMessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (IconViewTimestampCell *)share:(UITableView *)tableView
                            //: forTimeModel:(ContentTimestampModel *)model {
                            group:(AlongBar *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = StringFromTouchOfData(mainCoverStr);
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    IconViewTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"IconViewTimestampCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell etymologyData:model];
    //: return (NTESTimestampCell *)cell;
    return (IconViewTimestampCell *)cell;
}

//: @end
@end

Byte * TouchOfDataToCache(Byte *data) {
    int smoke = data[0];
    int deviceUp = data[1];
    int redButton = data[2];
    if (!smoke) return data + redButton;
    for (int i = 0; i < deviceUp / 2; i++) {
        int begin = redButton + i;
        int end = redButton + deviceUp - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[redButton + deviceUp] = 0;
    return data + redButton;
}

NSString *StringFromTouchOfData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TouchOfDataToCache(data)];
}  
