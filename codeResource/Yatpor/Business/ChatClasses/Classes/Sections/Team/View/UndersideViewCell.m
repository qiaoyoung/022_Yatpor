
#import <Foundation/Foundation.h>

@interface DialData : NSObject

+ (instancetype)sharedInstance;

//: #F7BA00
@property (nonatomic, copy) NSString *dreamAgeIdent;

@end

@implementation DialData

+ (instancetype)sharedInstance {
    static DialData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DialDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DialDataToCache:(Byte *)data {
    int ambitCussDeck = data[0];
    int spendingBubble = data[1];
    for (int i = 0; i < ambitCussDeck / 2; i++) {
        int begin = spendingBubble + i;
        int end = spendingBubble + ambitCussDeck - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[spendingBubble + ambitCussDeck] = 0;
    return data + spendingBubble;
}

- (NSString *)StringFromDialData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DialDataToCache:data]];
}  

//: #F7BA00
- (NSString *)dreamAgeIdent {
    if (!_dreamAgeIdent) {
		NSArray<NSString *> *origin = @[@"7", @"5", @"224", @"64", @"55", @"48", @"48", @"65", @"66", @"55", @"70", @"35", @"80"];
		NSData *data = [DialData DialDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamAgeIdent = [self StringFromDialData:value];
    }
    return _dreamAgeIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamSwitchTableViewCell.h"
#import "UndersideViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation FFFTeamSwitchTableViewCell
@implementation UndersideViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#F7BA00"];
        _switcher.onTintColor = [UIColor recordView:[DialData sharedInstance].dreamAgeIdent];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(sessionChanged:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)sessionChanged:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(time:markBackgroundChanged:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate time:self markBackgroundChanged:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end