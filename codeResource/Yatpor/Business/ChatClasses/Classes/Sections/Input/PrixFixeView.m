
#import <Foundation/Foundation.h>

@interface CollectionIsleData : NSObject

+ (instancetype)sharedInstance;

//: icon_toolview_keyboard_normal
@property (nonatomic, copy) NSString *main_constantlyKey;

//: icon_toolview_emotion_normal
@property (nonatomic, copy) NSString *k_commentUpPath;

//: icon_toolview_send
@property (nonatomic, copy) NSString *kConcertStopPath;

//: icon_toolview_album_normal
@property (nonatomic, copy) NSString *showElementaryData;

//: icon_toolview_keybord
@property (nonatomic, copy) NSString *mBallotStr;

@end

@implementation CollectionIsleData

+ (instancetype)sharedInstance {
    static CollectionIsleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CollectionIsleDataToData:(NSString *)value {
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

- (Byte *)CollectionIsleDataToCache:(Byte *)data {
    int likelyHospital = data[0];
    Byte rangeLayer = data[1];
    int gatorMessage = data[2];
    for (int i = gatorMessage; i < gatorMessage + likelyHospital; i++) {
        int value = data[i] - rangeLayer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gatorMessage + likelyHospital] = 0;
    return data + gatorMessage;
}

- (NSString *)StringFromCollectionIsleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CollectionIsleDataToCache:data]];
}

//: icon_toolview_album_normal
- (NSString *)showElementaryData {
    if (!_showElementaryData) {
		NSString *origin = @"1a44091ee061b44f29ada7b3b2a3b8b3b3b0baada9bba3a5b0a6b9b1a3b2b3b6b1a5b0ac";
		NSData *data = [CollectionIsleData CollectionIsleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showElementaryData = [self StringFromCollectionIsleData:value];
    }
    return _showElementaryData;
}

//: icon_toolview_keybord
- (NSString *)mBallotStr {
    if (!_mBallotStr) {
		NSString *origin = @"1505085ecc2e05716e68747364797474717b6e6a7c64706a7e6774776925";
		NSData *data = [CollectionIsleData CollectionIsleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mBallotStr = [self StringFromCollectionIsleData:value];
    }
    return _mBallotStr;
}

//: icon_toolview_emotion_normal
- (NSString *)k_commentUpPath {
    if (!_k_commentUpPath) {
		NSString *origin = @"1c020a487f1b5c49ee036b657170617671716e786b677961676f71766b7170617071746f636eae";
		NSData *data = [CollectionIsleData CollectionIsleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_commentUpPath = [self StringFromCollectionIsleData:value];
    }
    return _k_commentUpPath;
}

//: icon_toolview_keyboard_normal
- (NSString *)main_constantlyKey {
    if (!_main_constantlyKey) {
		NSString *origin = @"1d0e0377717d7c6d827d7d7a847773856d797387707d6f80726d7c7d807b6f7a09";
		NSData *data = [CollectionIsleData CollectionIsleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_constantlyKey = [self StringFromCollectionIsleData:value];
    }
    return _main_constantlyKey;
}

//: icon_toolview_send
- (NSString *)kConcertStopPath {
    if (!_kConcertStopPath) {
		NSString *origin = @"1232090a2c7e21c1fe9b95a1a091a6a1a19ea89b97a991a597a096b6";
		NSData *data = [CollectionIsleData CollectionIsleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kConcertStopPath = [self StringFromCollectionIsleData:value];
    }
    return _kConcertStopPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrixFixeView.m
// UserKit
//
//  Created by chris
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentInputToolBar.h"
#import "PrixFixeView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "ContentInputBarItemType.h"
#import "ContentInputBarItemType.h"
//: #import "ContentInputEmoticonManager.h"
#import "CompleteManager.h"
//: #import "YYText.h"
#import "YYText.h"
//: #import "ContentTextHighlight.h"
#import "BarNameHighlight.h"
//: #import "ContentKitKeyboardInfo.h"
#import "SuccessToolInfo.h"

//: @interface ContentInputToolBar()<ContentGrowingTextViewDelegate>
@interface PrixFixeView()<CropDelegate>

//: @property (nonatomic,copy) NSArray<NSNumber *> *types;
@property (nonatomic,copy) NSArray<NSNumber *> *types;

//: @property (nonatomic,copy) NSDictionary *dict;
@property (nonatomic,copy) NSDictionary *dict;

//: @property (nonatomic,assign) NIMInputStatus status;
@property (nonatomic,assign) NIMInputStatus status;

//: @end
@end

//: @implementation ContentInputToolBar
@implementation PrixFixeView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setBackgroundColor:[UIColor whiteColor]];
        [self setBackgroundColor:[UIColor whiteColor]];

        //: _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _voiceButton.backgroundColor = ThemeColor;
//        _voiceButton.layer.cornerRadius = 14;
        //: [_voiceButton setImage:[UIImage imageNamed:@"icon_toolview_keyboard_normal"] forState:UIControlStateNormal];
        [_voiceButton setImage:[UIImage imageNamed:[CollectionIsleData sharedInstance].main_constantlyKey] forState:UIControlStateNormal];
        //: [self addSubview:_voiceButton];
        [self addSubview:_voiceButton];

        //: _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_emoticonBtn setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
        [_emoticonBtn setImage:[UIImage imageNamed:[CollectionIsleData sharedInstance].k_commentUpPath] forState:UIControlStateNormal];
        //: [self addSubview:_emoticonBtn];
        [self addSubview:_emoticonBtn];

//        _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateSelected];
//        _emoticonBtn2.hidden = YES;
//        [self addSubview:_emoticonBtn2];

        //: _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_albunBtn setImage:[UIImage imageNamed:@"icon_toolview_album_normal"] forState:UIControlStateNormal];
        [_albunBtn setImage:[UIImage imageNamed:[CollectionIsleData sharedInstance].showElementaryData] forState:UIControlStateNormal];
        //: [self addSubview:_albunBtn];
        [self addSubview:_albunBtn];

//        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn setImage:[UIImage imageNamed:@"icon_toolview_camera_normal"] forState:UIControlStateNormal];
////        [_cameraBtn sizeToFit];
//        [self addSubview:_cameraBtn];

//        _moreMediaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_moreMediaBtn setImage:[UIImage imageNamed:@"icon_toolview_add_normal"] forState:UIControlStateNormal];
//        [_moreMediaBtn sizeToFit];

//        _recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_recordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [_recordButton.titleLabel setFont:[UIFont systemFontOfSize:14.f]];
//        [_recordButton setBackgroundImage:[[UIImage imageNamed:@"icon_input_text_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
//        _recordButton.exclusiveTouch = YES;
//        [_recordButton sizeToFit];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"icon_toolview_send"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[CollectionIsleData sharedInstance].kConcertStopPath] forState:UIControlStateNormal];
        //: _sendButton.hidden = YES;
        _sendButton.hidden = YES;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];
//        [_sendButton sizeToFit];
//        _sendButton.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);

//        _inputTextBkgImage = [[UIImageView alloc] initWithFrame:CGRectZero];
//        [_inputTextBkgImage setImage:[[UIImage imageNamed:@"icon_input_text_bg_"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch]];

        //: _inputTextView = [[ContentGrowingTextView alloc] initWithFrame:CGRectZero];
        _inputTextView = [[CuttingEdgeView alloc] initWithFrame:CGRectZero];
        //: _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        //: _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        //: _inputTextView.minNumberOfLines = 1;
        _inputTextView.minNumberOfLines = 1;
        //: _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.textColor = [UIColor blackColor];
        //: _inputTextView.backgroundColor = [UIColor clearColor];
        _inputTextView.backgroundColor = [UIColor clearColor];
        //: _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        //: _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;
        _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;

        //: _inputTextView.textViewDelegate = self;
        _inputTextView.textViewDelegate = self;
//        _inputTextView.returnKeyType = UIReturnKeySend;
        //: _inputTextView.returnKeyType = UIReturnKeyDefault;
        _inputTextView.returnKeyType = UIReturnKeyDefault;
        //: [self addSubview:self.inputTextView];
        [self addSubview:self.inputTextView];

        //顶部分割线
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectZero];
//        sep.backgroundColor = [UIColor lightGrayColor];
//        sep.nim_size = CGSizeMake(self.nim_width, .5f);
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        [self addSubview:sep];
//
//        //底部分割线
//        _bottomSep = [[UIView alloc] initWithFrame:CGRectZero];
//        _bottomSep.backgroundColor = [UIColor lightGrayColor];
//        [self addSubview:_bottomSep];

        //: self.types = @[
        self.types = @[
//            @(ContentInputBarItemTypeMore),
//            @(ContentInputBarItemTypeEmoticon),
//                         @(ContentInputBarItemTypeVoice),
                         //: @(ContentInputBarItemTypeTextAndRecord),
                         @(ContentInputBarItemTypeTextAndRecord),
                         //: @(ContentInputBarItemTypeSend),
                         @(ContentInputBarItemTypeSend),

                       //: ];
                       ];



    }
    //: return self;
    return self;
}



//: - (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
- (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
    //: self.types = types;
    self.types = types;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (NSString *)contentText
- (NSString *)contentText
{
    //: return self.inputTextView.text;
    return self.inputTextView.text;
}

//: - (void)setContentText:(NSString *)contentText
- (void)setContentText:(NSString *)contentText
{
    //: self.inputTextView.text = contentText;
    self.inputTextView.text = contentText;
}

//: - (NSArray *)inputBarItemTypes
- (NSArray *)inputBarItemTypes
{
    //: return self.types;
    return self.types;
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: CGFloat viewHeight = 0.0f;
    CGFloat viewHeight = 0.0f;
  //: if(self.status == NIMInputStatusText){
  if(self.status == NIMInputStatusText){
        //算出 TextView 的宽度
        //: [self adjustTextViewWidth:size.width];
        [self distance:size.width];
        // TextView 自适应高度
        //: [self.inputTextView layoutIfNeeded];
        [self.inputTextView layoutIfNeeded];
        //: viewHeight = (int)self.inputTextView.frame.size.height;
        viewHeight = (int)self.inputTextView.frame.size.height;
        //得到 ToolBar 自身高度
        //: viewHeight = viewHeight + 2*self.spacing;
        viewHeight = viewHeight + 2*self.search;

    //: }else {
    }else {
        //: viewHeight = 51;
        viewHeight = 51;

    }

    //: return CGSizeMake(size.width,viewHeight);
    return CGSizeMake(size.width,viewHeight);
}

//: - (void)adjustTextViewWidth:(CGFloat)width
- (void)distance:(CGFloat)width
{
//    CGFloat textViewWidth = 0;
//    for (NSNumber *type in self.types) {
//        if (type.integerValue == ContentInputBarItemTypeTextAndRecord) {
//            continue;
//        }
//        UIView *view = [self subViewForType:type.integerValue];
//        textViewWidth += view.nim_width;
//    }
//    textViewWidth += (self.spacing * (self.types.count + 1));
    //: self.inputTextView.nim_width = width - 140 - 4*self.textViewPadding;
    self.inputTextView.nim_width = width - 140 - 4*self.letterByTing;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.emoticonBtn.frame = CGRectMake(12, self.spacing+2, 32, 32);
    self.emoticonBtn.frame = CGRectMake(12, self.search+2, 32, 32);
    //: self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.spacing+2, 32, 32);
    self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.search+2, 32, 32);

    //: self.inputTextView.nim_left = 56;
    self.inputTextView.nim_left = 56;
    //: self.inputTextView.nim_top = self.spacing;
    self.inputTextView.nim_top = self.search;

    //: self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.spacing+2, 32, 32);
    self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.search+2, 32, 32);

    //: self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;
    self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;



    //: self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.spacing, 48, 32);
    self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.search, 48, 32);
    //: self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    self.sendButton.nim_centerY = self.inputTextView.nim_centerY;

    //: self.sendButton.hidden = YES;
    self.sendButton.hidden = YES;
    //: self.albunBtn.hidden = NO;
    self.albunBtn.hidden = NO;
    //: self.emoticonBtn.hidden = NO;
    self.emoticonBtn.hidden = NO;
    //: self.voiceButton.hidden = NO;
    self.voiceButton.hidden = NO;

    //: if (self.inputTextView.text.length > 0) {
    if (self.inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
    }
}



//: - (void)adjustTextAndRecordView
- (void)recent
{
    //: if ([self.types containsObject:@(ContentInputBarItemTypeTextAndRecord)])
    if ([self.types containsObject:@(ContentInputBarItemTypeTextAndRecord)])
    {
//        self.inputTextView.center  = self.inputTextBkgImage.center;

        //: if (!self.inputTextView.superview)
        if (!self.inputTextView.superview)
        {
            //输入框
            //: [self addSubview:self.inputTextView];
            [self addSubview:self.inputTextView];
        }
//        if (!self.recordButton.superview)
//        {
//            //中间点击录音按钮
//            self.recordButton.frame    = self.inputTextBkgImage.frame;
//            [self addSubview:self.recordButton];
//        }
    }
}

//: - (BOOL)showsKeyboard
- (BOOL)showsKeyboard
{
    //: return [self.inputTextView isFirstResponder];
    return [self.inputTextView isFirstResponder];
}


//: - (void)setShowsKeyboard:(BOOL)showsKeyboard
- (void)setShowsKeyboard:(BOOL)showsKeyboard
{
    //: if (showsKeyboard)
    if (showsKeyboard)
    {
        //: [self.inputTextView becomeFirstResponder];
        [self.inputTextView becomeFirstResponder];
    }
    //: else
    else
    {
        //: [self.inputTextView resignFirstResponder];
        [self.inputTextView resignFirstResponder];
    }
}


//: - (void)update:(NIMInputStatus)status
- (void)videoPath:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self sizeToFit];
    [self sizeToFit];

    //: if (status == NIMInputStatusText || status == NIMInputStatusMore)
    if (status == NIMInputStatusText || status == NIMInputStatusMore)
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:YES];
        [self text:YES];
        //: [self layoutSubviews];
        [self layoutSubviews];

    }
    //: else if(status == NIMInputStatusAudio)
    else if(status == NIMInputStatusAudio)
    {
        //: [self.inputTextView setHidden:YES];
        [self.inputTextView setHidden:YES];
        //: [self updateEmotAndTextBtnImages:YES];
        [self text:YES];
    }
    //: else
    else
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:NO];
        [self text:NO];
    }
}

//: - (void)updateEmotAndTextBtnImages:(BOOL)selected
- (void)text:(BOOL)selected
{
    //: [self.emoticonBtn setImage:selected?[UIImage imageNamed:@"icon_toolview_emotion_normal"]:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateNormal];
    [self.emoticonBtn setImage:selected?[UIImage imageNamed:[CollectionIsleData sharedInstance].k_commentUpPath]:[UIImage imageNamed:[CollectionIsleData sharedInstance].mBallotStr] forState:UIControlStateNormal];
}


//: #pragma mark - ContentGrowingTextViewDelegate
#pragma mark - CropDelegate
//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText
- (BOOL)keyDropPenQuadruplicate:(NSRange)range edge:(NSString *)replacementText
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
    if ([self.delegate respondsToSelector:@selector(keyDropPenQuadruplicate:edge:)]) {
        //: should = [self.delegate shouldChangeTextInRange:range replacementText:replacementText];
        should = [self.delegate keyDropPenQuadruplicate:range edge:replacementText];
    }
    //: return should;
    return should;
}


//: - (BOOL)textViewShouldBeginEditing:(ContentGrowingTextView *)growingTextView
- (BOOL)shadinessEditing:(CuttingEdgeView *)growingTextView
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(textViewShouldBeginEditing)]) {
    if ([self.delegate respondsToSelector:@selector(languageMore)]) {
        //: should = [self.delegate textViewShouldBeginEditing];
        should = [self.delegate languageMore];
    }
    //: return should;
    return should;
}

//: - (void)textViewDidEndEditing:(ContentGrowingTextView *)growingTextView
- (void)openWindow:(CuttingEdgeView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidEndEditing)]) {
    if ([self.delegate respondsToSelector:@selector(disableMember)]) {
        //: [self.delegate textViewDidEndEditing];
        [self.delegate disableMember];
    }
}


//: - (void)textViewDidChange:(ContentGrowingTextView *)growingTextView
- (void)spaced:(CuttingEdgeView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidChange)]) {
    if ([self.delegate respondsToSelector:@selector(containerValue)]) {
        //: [self.delegate textViewDidChange];
        [self.delegate containerValue];
    }

    //: if (_inputTextView.text.length > 0) {
    if (_inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);


    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }
}

//: - (void)willChangeHeight:(CGFloat)height
- (void)willTool:(CGFloat)height
{
    //: CGFloat toolBarHeight = height + 2 * self.spacing +50 ;
    CGFloat toolBarHeight = height + 2 * self.search +50 ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarWillChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(shoulded:)]) {
        //: [self.delegate toolBarWillChangeHeight:toolBarHeight];
        [self.delegate shoulded:toolBarHeight];
    }
}

//: - (void)didChangeHeight:(CGFloat)height
- (void)circumferences:(CGFloat)height
{
    //去掉了+50
    //: self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding;
    self.nim_height = height + 2 * self.search + 2 * self.letterByTing;
//    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarDidChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(lowed:)]) {
        //: [self.delegate toolBarDidChangeHeight:self.nim_height];
        [self.delegate lowed:self.nim_height];
    }
}


//: #pragma mark - Get
#pragma mark - Get
//: - (UIView *)subViewForType:(ContentInputBarItemType)type{
- (UIView *)pressedType:(ContentInputBarItemType)type{
    //: if (!_dict) {
    if (!_dict) {
        //: _dict = @{
        _dict = @{
//                  @(ContentInputBarItemTypeVoice) : self.voiceButton,
//                  @(ContentInputBarItemTypeTextAndRecord)  : self.inputTextBkgImage,
                  //: @(ContentInputBarItemTypeEmoticon) : self.emoticonBtn,
                  @(ContentInputBarItemTypeEmoticon) : self.emoticonBtn,
//                  @(ContentInputBarItemTypeMore)     : self.moreMediaBtn,
                  //: @(ContentInputBarItemTypeSend) : self.sendButton,
                  @(ContentInputBarItemTypeSend) : self.sendButton,
                //: };
                };
    }
    //: return _dict[@(type)];
    return _dict[@(type)];
}

//: - (CGFloat)spacing{
- (CGFloat)search{
    //: return 6.f;
    return 6.f;
}

//: - (CGFloat)textViewPadding
- (CGFloat)letterByTing
{
    //: return 3.f;
    return 3.f;
}


//: @end
@end


//: @implementation ContentInputToolBar(InputText)
@implementation PrixFixeView(InputText)

//: - (NSRange)selectedRange
- (NSRange)vertical
{
    //: return self.inputTextView.selectedRange;
    return self.inputTextView.selectedRange;
}

//: - (void)setPlaceHolder:(NSString *)placeHolder
- (void)setCommunication:(NSString *)placeHolder
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
}

//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor
- (void)recordColor:(NSString *)placeHolder start:(UIColor *)placeholderColor
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

//: - (void)insertText:(NSString *)text
- (void)table:(NSString *)text
{
//    NSRange range = self.inputTextView.selectedRange;
//    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
//    range = NSMakeRange(range.location + text.length, 0);
//    self.inputTextView.text = replaceText;
//    self.inputTextView.selectedRange = range;

    //: [self insertAttributedText:text withEmoji:NO];
    [self message:text to:NO];
}

//: - (void)deleteText:(NSRange)range
- (void)viewTitle:(NSRange)range
{
    //: NSString *text = self.contentText;
    NSString *text = self.contentText;
    //: if (range.location + range.length <= [text length]
    if (range.location + range.length <= [text length]
        //: && range.location != NSNotFound && range.length != 0)
        && range.location != NSNotFound && range.length != 0)
    {
        //: NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        //: NSRange newSelectRange = NSMakeRange(range.location, 0);
        NSRange newSelectRange = NSMakeRange(range.location, 0);
        //: [self.inputTextView setText:newText];
        [self.inputTextView setText:newText];
        //: self.inputTextView.selectedRange = newSelectRange;
        self.inputTextView.selectedRange = newSelectRange;
    }
}

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji {
- (void)message:(NSString *)text to:(BOOL)isEmoji {

//    if (text.length > 0) {
//        self.inputTextView.placeholderAttributedText = nil;
//    }
    //: if (text.length > 0) {
    if (text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.inputTextView.placeholderAttributedText = nil;
        self.inputTextView.placeholderAttributedText = nil;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.emoticonBtn2.hidden = YES;

//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;


//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }

    //: if (isEmoji) {
    if (isEmoji) {

        //: NSRange range = self.inputTextView.selectedRange;
        NSRange range = self.inputTextView.selectedRange;
        //: self.inputTextView.attributedText = [self nim_setText:text];
        self.inputTextView.attributedText = [self beggarMyNeighborPolicy:text];
        //: range = NSMakeRange(range.location + 2, 0);
        range = NSMakeRange(range.location + 2, 0);
        //: self.inputTextView.selectedRange = range;
        self.inputTextView.selectedRange = range;
        //: [self.inputTextView scrollRangeToVisible:self.inputTextView.selectedRange];
        [self.inputTextView frame:self.inputTextView.selectedRange];

        //: return;
        return;
    }


    //: NSRange range = self.inputTextView.selectedRange;
    NSRange range = self.inputTextView.selectedRange;
    //: NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    //: range = NSMakeRange(range.location + text.length, 0);
    range = NSMakeRange(range.location + text.length, 0);

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    //: self.inputTextView.attributedText = attributedStringM;
    self.inputTextView.attributedText = attributedStringM;
    //: self.inputTextView.selectedRange = range;
    self.inputTextView.selectedRange = range;
}

//: - (NSMutableAttributedString *)nim_setText:(NSString *)text
- (NSMutableAttributedString *)beggarMyNeighborPolicy:(NSString *)text
{

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];

    //: NIMInputEmoticon *emoticon = [[ContentInputEmoticonManager sharedManager] emoticonByTag:text];
    BackgroundBar *emoticon = [[CompleteManager index] labelMessage:text];
    //: UIImage *image = nil;
    UIImage *image = nil;

    //: if(emoticon.filename &&
    if(emoticon.filename &&
       //: emoticon.filename.length>0 &&
       emoticon.filename.length>0 &&
        //: (image = [UIImage nim_emoticonInKit:emoticon.filename])!= nil) {
        (image = [UIImage secretRandom:emoticon.filename])!= nil) {

        //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        //: attachment.image = image;
        attachment.image = image;
        //: CGFloat emojiHeight = _inputTextView.font.lineHeight;
        CGFloat emojiHeight = _inputTextView.font.lineHeight;
        //: attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);
        attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        //: [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        //: [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];
        [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: ContentTextHighlight *highlight = [[ContentTextHighlight alloc] init];
        BarNameHighlight *highlight = [[BarNameHighlight alloc] init];
        //: highlight.type = ContentTextHighlightTypeEmoji;
        highlight.type = ContentTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;

    }

    //: else {
    else {

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: ContentTextHighlight *highlight = [[ContentTextHighlight alloc] init];
        BarNameHighlight *highlight = [[BarNameHighlight alloc] init];
        //: highlight.type = ContentTextHighlightTypeEmoji;
        highlight.type = ContentTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;
    }

    //: return attributedStringM;
    return attributedStringM;
}

//: @end
@end
