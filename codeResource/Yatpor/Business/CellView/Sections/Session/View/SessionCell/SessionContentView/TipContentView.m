
#import <Foundation/Foundation.h>

@interface DeleteData : NSObject

@end

@implementation DeleteData

+ (NSData *)DeleteDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)DeleteDataToCache:(Byte *)data {
    int lineWith = data[0];
    int processorTag = data[1];
    for (int i = 0; i < lineWith / 2; i++) {
        int begin = processorTag + i;
        int end = processorTag + lineWith - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[processorTag + lineWith] = 0;
    return data + processorTag;
}

+ (NSString *)StringFromDeleteData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DeleteDataToCache:data]];
}  

//: {8,20,8,20}
+ (NSString *)mElementaryUrl {
    /* static */ NSString *mElementaryUrl = nil;
    if (!mElementaryUrl) {
		NSString *origin = @"0B08690ECDDE78BF7D30322C382C30322C387B78";
		NSData *data = [DeleteData DeleteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mElementaryUrl = [self StringFromDeleteData:value];
    }
    return mElementaryUrl;
}

//: icon_session_time_bg
+ (NSString *)user_processorUrl {
    /* static */ NSString *user_processorUrl = nil;
    if (!user_processorUrl) {
		NSString *origin = @"140C6796CC0105DA22A58FB767625F656D69745F6E6F69737365735F6E6F636952";
		NSData *data = [DeleteData DeleteDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_processorUrl = [self StringFromDeleteData:value];
    }
    return user_processorUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TipContentView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "TipContentView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @implementation NTESSessionTipContentView
@implementation TipContentView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ContentMessageModel *)model{
- (void)valueRow:(PossibilityMessageStyle *)model{
    //: [super refresh:model];
    [super valueRow:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ViewStyle> attachment = (id<ViewStyle>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(colorAction)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment colorAction];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)ting:(UIControlState)state sharedOutgoing:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[DeleteData user_processorUrl]];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([DeleteData mElementaryUrl]);
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: @end
@end
