
#import <Foundation/Foundation.h>

NSString *StringFromSmokeMessageData(Byte *data);


//: 按住查看
Byte showNighContainerTitle[] = {34, 12, 82, 12, 217, 61, 96, 35, 26, 33, 140, 159, 56, 222, 219, 54, 15, 225, 56, 241, 247, 57, 238, 221, 226};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleNameView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "BubbleNameView.h"
//: #import "NTESSnapchatAttachment.h"
#import "DisableTo.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const dreamSnapFormat = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const main_colorCellPath = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface BubbleNameView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation BubbleNameView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(membering:)];
        //: [self addGestureRecognizer:_longpressGesture];
        [self addGestureRecognizer:_longpressGesture];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;//图片背景自带气泡。。

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:13.f];
        _label.font = [UIFont systemFontOfSize:13.f];
        //: _label.textColor = [UIColor grayColor];
        _label.textColor = [UIColor grayColor];
        //: _label.text = @"按住查看".ntes_localized;
        _label.text = StringFromSmokeMessageData(showNighContainerTitle).with;
        //: [_label sizeToFit];
        [_label sizeToFit];
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
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    DisableTo *attachment = (DisableTo *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉ContentMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self header:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)header:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(weeklonged:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate weeklonged:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    DisableTo *attachment = (DisableTo *)customObject.attachment;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: UIImage *showCoverImage = attachment.showCoverImage;
    UIImage *showCoverImage = attachment.showCoverImage;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CGFloat customSnapMessageImageRightToText = 5.f;
    CGFloat customSnapMessageImageRightToText = 5.f;
    //: CGFloat customSnapMessageTextBottom = 20.f;
    CGFloat customSnapMessageTextBottom = 20.f;
    //: self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    //: self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
    self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
}



//: - (void)onLongPressDown:(UILongPressGestureRecognizer *)recognizer
- (void)membering:(UILongPressGestureRecognizer *)recognizer
{
    //: NIMMessage *message = self.model.message;
    NIMMessage *message = self.model.message;
    //: if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
    if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
        //: return;
        return;
    }
    //: if (recognizer.state != UIGestureRecognizerStateBegan) {
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        //: return;
        return;
    }
    //: recognizer.enabled = NO;
    recognizer.enabled = NO;
    //: [self goOpen];
    [self page];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)recording:(id)sender{
    //: if (self.presentedView) {
    if (self.cornerSession) {
        //: [self goClose];
        [self aggregation];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)itemOutside:(id)sender{
    //: if (self.presentedView) {
    if (self.cornerSession) {
        //: [self goClose];
        [self aggregation];
    }
}

//: - (void)goOpen{
- (void)page{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: ContentKitEvent *event = [[ContentKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = dreamSnapFormat;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];
    }
}

//: - (void)goClose{
- (void)aggregation{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: ContentKitEvent *event = [[ContentKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = main_colorCellPath;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];
    }
}


//: @end
@end

Byte * SmokeMessageDataToCache(Byte *data) {
    int labFlame = data[0];
    int lestArmy = data[1];
    Byte singleBlue = data[2];
    int chromatic = data[3];
    if (!labFlame) return data + chromatic;
    for (int i = chromatic; i < chromatic + lestArmy; i++) {
        int value = data[i] - singleBlue;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[chromatic + lestArmy] = 0;
    return data + chromatic;
}

NSString *StringFromSmokeMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SmokeMessageDataToCache(data)];
}
