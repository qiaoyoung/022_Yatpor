
#import <Foundation/Foundation.h>

@interface NetProfitData : NSObject

+ (instancetype)sharedInstance;

//: icon_whiteboard_session_msg
@property (nonatomic, copy) NSString *dreamTingEnableValue;

@end

@implementation NetProfitData

+ (instancetype)sharedInstance {
    static NetProfitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NetProfitDataToData:(NSString *)value {
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

- (Byte *)NetProfitDataToCache:(Byte *)data {
    int customRange = data[0];
    int smart = data[1];
    for (int i = 0; i < customRange / 2; i++) {
        int begin = smart + i;
        int end = smart + customRange - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[smart + customRange] = 0;
    return data + smart;
}

- (NSString *)StringFromNetProfitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NetProfitDataToCache:data]];
}  

//: icon_whiteboard_session_msg
- (NSString *)dreamTingEnableValue {
    if (!_dreamTingEnableValue) {
		NSString *origin = @"1B06DFE5ADCD67736D5F6E6F69737365735F6472616F6265746968775F6E6F636985";
		NSData *data = [NetProfitData NetProfitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTingEnableValue = [self StringFromNetProfitData:value];
    }
    return _dreamTingEnableValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeContentView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "SizeContentView.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TitleAttachment.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface SizeContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation SizeContentView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NetProfitData sharedInstance].dreamTingEnableValue]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)valueRow:(PossibilityMessageStyle *)data{
    //: [super refresh:data];
    [super valueRow:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    TitleAttachment *attach = (TitleAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.colorAction;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model onSize:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end