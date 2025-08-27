
#import <Foundation/Foundation.h>

@interface MiniEtherData : NSObject

+ (instancetype)sharedInstance;

//: NTESMessageTranslate
@property (nonatomic, copy) NSString *mLikelyMessage;

//: invalid item selector!
@property (nonatomic, copy) NSString *noti_textMsg;

@end

@implementation MiniEtherData

+ (instancetype)sharedInstance {
    static MiniEtherData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MiniEtherDataToData:(NSString *)value {
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

- (Byte *)MiniEtherDataToCache:(Byte *)data {
    int rockConcert = data[0];
    Byte pane = data[1];
    int spendingThirty = data[2];
    for (int i = spendingThirty; i < spendingThirty + rockConcert; i++) {
        int value = data[i] + pane;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[spendingThirty + rockConcert] = 0;
    return data + spendingThirty;
}

- (NSString *)StringFromMiniEtherData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MiniEtherDataToCache:data]];
}

//: NTESMessageTranslate
- (NSString *)mLikelyMessage {
    if (!_mLikelyMessage) {
		NSString *origin = @"14140B33D35CE3B30820E53A40313F39515F5F4D5351405E4D5A5F584D605195";
		NSData *data = [MiniEtherData MiniEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mLikelyMessage = [self StringFromMiniEtherData:value];
    }
    return _mLikelyMessage;
}

//: invalid item selector!
- (NSString *)noti_textMsg {
    if (!_noti_textMsg) {
		NSString *origin = @"165F0A7D7323826E128E0A0F17020D0A05C10A15060EC114060D0604151013C2F1";
		NSData *data = [MiniEtherData MiniEtherDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_textMsg = [self StringFromMiniEtherData:value];
    }
    return _noti_textMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomControl.m
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionTextContentView.h"
#import "BottomControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "ContentTextView.h"
#import "ArrayScrollView.h"
//: #import "ContentSessionConfig.h"
#import "SaloonConfig.h"
//: #import "NTESSessionViewController.h"
#import "SessionSizeViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Counternal.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const kSizePath = @"NIMTextMessageLabelLinkData";

//: @interface ContentSessionTextContentView()<M80AttributedLabelDelegate>
@interface BottomControl()<DerivationDelegate>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation ContentSessionTextContentView
@implementation BottomControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _textView.M80delegate = self;
        _textView.M80delegate = self;
        //: _textView.numberOfLines = 0;
        _textView.numberOfLines = 0;
        //: _textView.autoDetectLinks = YES;
        _textView.autoDetectLinks = YES;
        //: _textView.underLineForLink = YES;
        _textView.underLineForLink = YES;
        //: _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textView.backgroundColor = [UIColor clearColor];
        _textView.backgroundColor = [UIColor clearColor];
        //: _textView.isShowTextSelection = YES;
        _textView.isShowTextSelection = YES;
        //        _textView.selectable = YES;


        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _textView.selectBlock = ^(ContentMediaItem *item) {
        _textView.selectBlock = ^(LanguageItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(selected:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.Counternal = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate selected:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(statuses:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate statuses:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, [MiniEtherData sharedInstance].noti_textMsg);
                    }
                }
            }
        //: };
        };
        //: _textView.praiseSelectBlock = ^(NSInteger tag){
        _textView.praiseSelectBlock = ^(NSInteger tag){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapPraiseItem: withMessage:)]) {
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(green: should:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate green:tag should:self.model.message];
                }
        //: };
        };

        //: [self addSubview:_textView];
        [self addSubview:_textView];
    }
    //: return self;
    return self;
}

//: -(void)gotoUrl
-(void)willText
{
    //: if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        //: [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        //: }];
        }];
    }
}

//: - (BOOL)checkUrlWithString:(NSString *)str
- (BOOL)changeHouse:(NSString *)str
{
    //: __block BOOL isUrl = NO;
    __block BOOL isUrl = NO;
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDataDetector *detector = [NSDataDetector
    NSDataDetector *detector = [NSDataDetector
                                //: dataDetectorWithTypes:NSTextCheckingTypeLink
                                dataDetectorWithTypes:NSTextCheckingTypeLink
                                //: error:&error];
                                error:&error];

    //: [detector enumerateMatchesInString:str
    [detector enumerateMatchesInString:str
                               //: options:0
                               options:0
                                 //: range:NSMakeRange(0, str.length)
                                 range:NSMakeRange(0, str.length)
                            //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        //: if (result.resultType == NSTextCheckingTypeLink) {
        if (result.resultType == NSTextCheckingTypeLink) {
            //: isUrl = YES;
            isUrl = YES;
            //: self.url = result.URL;
            self.url = result.URL;
        }
    //: }];
    }];

    //: return isUrl;
    return isUrl;
}

//: - (void)refresh:(ContentMessageModel *)data
- (void)valueRow:(PossibilityMessageStyle *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super valueRow:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView maturity:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(languageComplete:readComplete:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate languageComplete:data.message readComplete:^(id data) {
            //: if ([data isKindOfClass:[NTESSessionViewController class]]) {
            if ([data isKindOfClass:[SessionSizeViewController class]]) {
                //: NTESSessionViewController *vc = (NTESSessionViewController *)data;
                SessionSizeViewController *vc = (SessionSizeViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.sessionConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView curMessage:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self changeHouse:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(willText)];
            //: [_textView addGestureRecognizer:singleTap];
            [_textView addGestureRecognizer:singleTap];
        }
    //: }else{
    }else{
        //: NSLog(@"xiaoxiID:%@",self.model.message.messageId);
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model onSize:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ballplayer:(CGFloat)cellWidth ironed:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if ([message.localExt.allKeys containsObject:[MiniEtherData sharedInstance].mLikelyMessage])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:[MiniEtherData sharedInstance].mLikelyMessage]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[UserKit totalSend].config color:message].font;
    //: [self.textView nim_setText:text];
    [self.textView maturity:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - DerivationDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)preface:(WithSessionNameView *)label
             //: clickedOnLink:(id)linkData{
             openLink:(id)linkData{
    //: ContentKitEvent *event = [[ContentKitEvent alloc] init];
    KitEvent *event = [[KitEvent alloc] init];
    //: event.eventName = ContentKitEventNameTapLabelLink;
    event.eventName = m_styleIdent;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate need:event];
}

//: @end
@end
