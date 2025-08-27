
#import <Foundation/Foundation.h>

@interface RedHousingData : NSObject

@end

@implementation RedHousingData

+ (NSData *)RedHousingDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)RedHousingDataToCache:(Byte *)data {
    int waterOfft = data[0];
    int cheer = data[1];
    for (int i = 0; i < waterOfft / 2; i++) {
        int begin = cheer + i;
        int end = cheer + waterOfft - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[cheer + waterOfft] = 0;
    return data + cheer;
}

+ (NSString *)StringFromRedHousingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RedHousingDataToCache:data]];
}  

//: NTESChatroomTextContentView
+ (NSString *)userMushroomDateKey {
    /* static */ NSString *userMushroomDateKey = nil;
    if (!userMushroomDateKey) {
		NSArray<NSNumber *> *origin = @[@27, @6, @212, @121, @148, @68, @119, @101, @105, @86, @116, @110, @101, @116, @110, @111, @67, @116, @120, @101, @84, @109, @111, @111, @114, @116, @97, @104, @67, @83, @69, @84, @78, @22];
		NSData *data = [RedHousingData RedHousingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMushroomDateKey = [self StringFromRedHousingData:value];
    }
    return userMushroomDateKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AllowStyle.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "AllowStyle.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"

//: @interface NTESChatroomTextContentConfig()
@interface AllowStyle()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) WithSessionNameView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation AllowStyle

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label maturity:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return [RedHousingData userMushroomDateKey];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (WithSessionNameView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)nameBy:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end
