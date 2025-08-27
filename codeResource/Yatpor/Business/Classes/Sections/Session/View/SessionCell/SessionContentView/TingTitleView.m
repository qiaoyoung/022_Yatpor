
#import <Foundation/Foundation.h>

@interface IllData : NSObject

+ (instancetype)sharedInstance;

//: null
@property (nonatomic, copy) NSString *showTextFortyFormat;

//: 聊天记录
@property (nonatomic, copy) NSString *show_ofUrl;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *kContainerContent;

//: SendTextViewBkg
@property (nonatomic, copy) NSString *m_efficiencyMsg;

@end

@implementation IllData

+ (instancetype)sharedInstance {
    static IllData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)IllDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)IllDataToCache:(Byte *)data {
    int totalern = data[0];
    int quadraphonicSystem = data[1];
    for (int i = 0; i < totalern / 2; i++) {
        int begin = quadraphonicSystem + i;
        int end = quadraphonicSystem + totalern - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[quadraphonicSystem + totalern] = 0;
    return data + quadraphonicSystem;
}

- (NSString *)StringFromIllData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self IllDataToCache:data]];
}  

//: null
- (NSString *)showTextFortyFormat {
    if (!_showTextFortyFormat) {
		NSArray<NSString *> *origin = @[@"4", @"8", @"115", @"4", @"235", @"32", @"113", @"190", @"108", @"108", @"117", @"110", @"146"];
		NSData *data = [IllData IllDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTextFortyFormat = [self StringFromIllData:value];
    }
    return _showTextFortyFormat;
}

//: 聊天记录
- (NSString *)show_ofUrl {
    if (!_show_ofUrl) {
		NSArray<NSString *> *origin = @[@"12", @"4", @"138", @"236", @"149", @"189", @"229", @"176", @"174", @"232", @"169", @"164", @"229", @"138", @"129", @"232", @"235"];
		NSData *data = [IllData IllDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_ofUrl = [self StringFromIllData:value];
    }
    return _show_ofUrl;
}

//: {18,25,17,25}
- (NSString *)kContainerContent {
    if (!_kContainerContent) {
		NSArray<NSString *> *origin = @[@"13", @"9", @"24", @"189", @"83", @"182", @"24", @"124", @"24", @"125", @"53", @"50", @"44", @"55", @"49", @"44", @"53", @"50", @"44", @"56", @"49", @"123", @"238"];
		NSData *data = [IllData IllDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContainerContent = [self StringFromIllData:value];
    }
    return _kContainerContent;
}

//: SendTextViewBkg
- (NSString *)m_efficiencyMsg {
    if (!_m_efficiencyMsg) {
		NSArray<NSString *> *origin = @[@"15", @"4", @"174", @"172", @"103", @"107", @"66", @"119", @"101", @"105", @"86", @"116", @"120", @"101", @"84", @"100", @"110", @"101", @"83", @"127"];
		NSData *data = [IllData IllDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_efficiencyMsg = [self StringFromIllData:value];
    }
    return _m_efficiencyMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingTitleView.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMultiRetweetContentView.h"
#import "TingTitleView.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "NameSessionSuccess.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"

//: NSString *const NIMDemoEventNameOpenMergeMessage = @"NIMDemoEventNameOpenMergeMessage";
NSString *const main_dataMessage = @"NIMDemoEventNameOpenMergeMessage";

//: @interface NTESSessionMultiRetweetContentView ()
@interface TingTitleView ()

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSMutableArray <M80AttributedLabel *> *messageLabs;
@property (nonatomic, strong) NSMutableArray <WithSessionNameView *> *messageLabs;

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UIImage *bkNormalImage;
@property (nonatomic, strong) UIImage *bkNormalImage;

//: @property (nonatomic, strong) UIButton *touchBtn;
@property (nonatomic, strong) UIButton *touchBtn;

//: @end
@end

//: @implementation NTESSessionMultiRetweetContentView
@implementation TingTitleView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        //: static UIImage *bkNormalImage = nil;
        static UIImage *bkNormalImage = nil;
        //: static dispatch_once_t onceToken;
        static dispatch_once_t onceToken;
        //: _dispatch_once(&onceToken, ^{
        _dispatch_once(&onceToken, ^{
            //: bkNormalImage = [[UIImage imageNamed:@"SendTextViewBkg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            bkNormalImage = [[UIImage imageNamed:[IllData sharedInstance].m_efficiencyMsg] resizableImageWithCapInsets:UIEdgeInsetsFromString([IllData sharedInstance].kContainerContent) resizingMode:UIImageResizingModeStretch];
        //: });
        });
        //: _bkNormalImage = bkNormalImage;
        _bkNormalImage = bkNormalImage;
        //: _messageLabs = [NSMutableArray array];
        _messageLabs = [NSMutableArray array];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.line];
        [self addSubview:self.line];
        //: [self addSubview:self.subTitleLabel];
        [self addSubview:self.subTitleLabel];
        //: [self addSubview:self.touchBtn];
        [self addSubview:self.touchBtn];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)valueRow:(PossibilityMessageStyle *)data{
    //: [super refresh:data];
    [super valueRow:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESMultiRetweetAttachment *attachment = (NTESMultiRetweetAttachment *)object.attachment;
    NameSessionSuccess *attachment = (NameSessionSuccess *)object.attachment;

    //: [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: [_messageLabs removeAllObjects];
    [_messageLabs removeAllObjects];

    //: _titleLabel.text = [attachment formatTitleMessage];
    _titleLabel.text = [attachment readBook];

    //: for (NTESMessageAbstract *abstract in attachment.abstracts) {
    for (AAbstract *abstract in attachment.abstracts) {
        //: M80AttributedLabel *lab = [self setupMessageLabel];
        WithSessionNameView *lab = [self past];
        //: [lab nim_setText:[attachment formatAbstractMessage:abstract]];
        [lab maturity:[attachment elementStep:abstract]];
        //: [_messageLabs addObject:lab];
        [_messageLabs addObject:lab];
        //: [self addSubview:lab];
        [self addSubview:lab];
    }
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing {
- (UIImage *)ting:(UIControlState)state sharedOutgoing:(BOOL)outgoing {
    //: return _bkNormalImage;
    return _bkNormalImage;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat inset = 12.0;
    CGFloat inset = 12.0;
    //: _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    //: if (_messageLabs.count != 0) {
    if (_messageLabs.count != 0) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: __block CGFloat yOffset = 0;
        __block CGFloat yOffset = 0;
        //: [_messageLabs enumerateObjectsUsingBlock:^(M80AttributedLabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_messageLabs enumerateObjectsUsingBlock:^(WithSessionNameView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            //: obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            //: yOffset += (obj.height + padding);
            yOffset += (obj.height + padding);
        //: }];
        }];
        //: M80AttributedLabel *lastLab = [_messageLabs lastObject];
        WithSessionNameView *lastLab = [_messageLabs lastObject];
        //: _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
    //: } else {
    } else {
        //: _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
    }
    //: _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    //: _touchBtn.frame = self.bounds;
    _touchBtn.frame = self.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)touchAction:(UIButton *)sender {
- (void)greenMaxAction:(UIButton *)sender {
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenMergeMessage;
        event.eventName = main_dataMessage;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        //: _titleLabel.text = @"null";
        _titleLabel.text = [IllData sharedInstance].showTextFortyFormat;
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [_titleLabel sizeToFit];
        [_titleLabel sizeToFit];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subTitleLabel {
- (UILabel *)subTitleLabel {
    //: if (!_subTitleLabel) {
    if (!_subTitleLabel) {
        //: _subTitleLabel = [self setupContentLabel];
        _subTitleLabel = [self brand];
        //: _subTitleLabel.text = @"聊天记录".ntes_localized;
        _subTitleLabel.text = [IllData sharedInstance].show_ofUrl.with;
        //: [_subTitleLabel sizeToFit];
        [_subTitleLabel sizeToFit];
    }
    //: return _subTitleLabel;
    return _subTitleLabel;
}

//: - (UIButton *)touchBtn {
- (UIButton *)touchBtn {
    //: if (!_touchBtn) {
    if (!_touchBtn) {
        //: _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_touchBtn addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchUpInside];
        [_touchBtn addTarget:self action:@selector(greenMaxAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _touchBtn;
    return _touchBtn;
}


//: - (UILabel *)setupContentLabel {
- (UILabel *)brand {
    //: UILabel *ret = [[UILabel alloc] init];
    UILabel *ret = [[UILabel alloc] init];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.textAlignment = NSTextAlignmentLeft;
    ret.textAlignment = NSTextAlignmentLeft;
    //: ret.text = @"null";
    ret.text = [IllData sharedInstance].showTextFortyFormat;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: [ret sizeToFit];
    [ret sizeToFit];
    //: return ret;
    return ret;
}

//: - (M80AttributedLabel *)setupMessageLabel {
- (WithSessionNameView *)past {
    //: M80AttributedLabel *ret = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    WithSessionNameView *ret = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.numberOfLines = 1;
    ret.numberOfLines = 1;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: return ret;
    return ret;
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor lightGrayColor];
        _line.backgroundColor = [UIColor lightGrayColor];
    }
    //: return _line;
    return _line;
}
//: @end
@end