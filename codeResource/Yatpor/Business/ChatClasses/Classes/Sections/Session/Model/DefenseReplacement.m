
#import <Foundation/Foundation.h>

@interface TaDistantData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TaDistantData

+ (instancetype)sharedInstance {
    static TaDistantData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TaDistantDataToCache:(Byte *)data {
    int seeLibrary = data[0];
    int yeShallow = data[1];
    for (int i = 0; i < seeLibrary / 2; i++) {
        int begin = yeShallow + i;
        int end = yeShallow + seeLibrary - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[yeShallow + seeLibrary] = 0;
    return data + yeShallow;
}

- (NSString *)StringFromTaDistantData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TaDistantDataToCache:data]];
}  

//: time
- (NSString *)mCheerTitle {
    /* static */ NSString *mCheerTitle = nil;
    if (!mCheerTitle) {
        Byte value[] = {4, 7, 230, 28, 196, 227, 119, 101, 109, 105, 116, 113};
        mCheerTitle = [self StringFromTaDistantData:value];
    }
    return mCheerTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "DefenseReplacement.h"
//: #import "FFFMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "FFFTimestampModel.h"
#import "AlongBar.h"
//: #import "FFFSessionAudioContentView.h"
#import "DisturbingTitleView.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitAudioCenter.h"
#import "DisplacementCenter.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface DefenseReplacement()

//: @end
@end

//: @implementation FFFMessageCellFactory
@implementation DefenseReplacement

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{

}

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (ContentImageView *)can:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 input:(PossibilityMessageStyle *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig doTeamImage:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ContentImageView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"CompartmentMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (ContentImageView *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TingViewCell *)time:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            searchTap:(AlongBar *)model
{
    //: NSString *identity = @"time";
    NSString *identity = [[TaDistantData sharedInstance] mCheerTitle];
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    TingViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"TingViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell etymologyData:model];
    //: return (FFFSessionTimestampCell *)cell;
    return (TingViewCell *)cell;
}

//: @end
@end