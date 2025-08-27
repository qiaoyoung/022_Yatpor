
#import <Foundation/Foundation.h>

@interface SumData : NSObject

+ (instancetype)sharedInstance;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *app_processorId;

@end

@implementation SumData

+ (instancetype)sharedInstance {
    static SumData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SumDataToCache:(Byte *)data {
    int emic = data[0];
    Byte armySingle = data[1];
    int emendWith = data[2];
    for (int i = emendWith; i < emendWith + emic; i++) {
        int value = data[i] - armySingle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[emendWith + emic] = 0;
    return data + emendWith;
}

- (NSString *)StringFromSumData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SumDataToCache:data]];
}

//: icon_session_time_bg
- (NSString *)app_processorId {
    if (!_app_processorId) {
        Byte value[] = {20, 10, 8, 169, 79, 250, 64, 6, 115, 109, 121, 120, 105, 125, 111, 125, 125, 115, 121, 120, 105, 126, 115, 119, 111, 105, 108, 113, 114};
        _app_processorId = [self StringFromSumData:value];
    }
    return _app_processorId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionTimestampCell.h"
#import "TingViewCell.h"
//: #import "ContentCellConfig.h"
#import "ContentCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentTimestampModel.h"
#import "AlongBar.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentSessionTimestampCell()
@interface TingViewCell()

//: @property (nonatomic,strong) ContentTimestampModel *model;
@property (nonatomic,strong) AlongBar *model;

//: @end
@end

//: @implementation ContentSessionTimestampCell
@implementation TingViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [UserKit sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:[SumData sharedInstance].app_processorId] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(ContentTimestampModel *)data{
- (void)etymologyData:(AlongBar *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self find]){
        //: ContentTimestampModel *model = (ContentTimestampModel *)data;
        AlongBar *model = (AlongBar *)data;
        //: [_timeLabel setText:[ContentKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[TextWithUtil table:model.messageTime max:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)find{
    //: return [self.model isKindOfClass:[ContentTimestampModel class]];
    return [self.model isKindOfClass:[AlongBar class]];
}

//: @end
@end
