
#import <Foundation/Foundation.h>

@interface ShowShareData : NSObject

@end

@implementation ShowShareData

+ (NSData *)ShowShareDataToData:(NSString *)value {
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

+ (Byte *)ShowShareDataToCache:(Byte *)data {
    int manyView = data[0];
    Byte pilotTactic = data[1];
    int proposalKit = data[2];
    for (int i = proposalKit; i < proposalKit + manyView; i++) {
        int value = data[i] - pilotTactic;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[proposalKit + manyView] = 0;
    return data + proposalKit;
}

+ (NSString *)StringFromShowShareData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShowShareDataToCache:data]];
}

//: emoji_bar_bg
+ (NSString *)main_scripIdent {
    /* static */ NSString *main_scripIdent = nil;
    if (!main_scripIdent) {
		NSString *origin = @"0C5106F89A92B6BEC0BBBAB0B3B2C3B0B3B80A";
		NSData *data = [ShowShareData ShowShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_scripIdent = [self StringFromShowShareData:value];
    }
    return main_scripIdent;
}

//: emoji_delete
+ (NSString *)dream_hormoneTitle {
    /* static */ NSString *dream_hormoneTitle = nil;
    if (!dream_hormoneTitle) {
		NSString *origin = @"0C2804A58D95979291878C8D948D9C8D34";
		NSData *data = [ShowShareData ShowShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_hormoneTitle = [self StringFromShowShareData:value];
    }
    return dream_hormoneTitle;
}

//: #F7BA00
+ (NSString *)dreamMessageData {
    /* static */ NSString *dreamMessageData = nil;
    if (!dreamMessageData) {
		NSString *origin = @"070E07729B63C4315445504F3E3E7F";
		NSData *data = [ShowShareData ShowShareDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamMessageData = [self StringFromShowShareData:value];
    }
    return dreamMessageData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyControl.m
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonTabView.h"
#import "EmptyControl.h"
//: #import "FFFInputEmoticonManager.h"
#import "CompleteManager.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: const NSInteger FFFInputEmoticonTabViewHeight = 44;
const NSInteger showSumResourceMessage = 44;
//: const NSInteger NIMInputEmoticonSendButtonWidth = 56;
const NSInteger appBorderId = 56;

//: const CGFloat NIMInputLineBoarder = .5f;
const CGFloat noti_infoMsg = .5f;

//: @interface FFFInputEmoticonTabView()
@interface EmptyControl()

//: @property (nonatomic,strong) NSMutableArray * tabs;
@property (nonatomic,strong) NSMutableArray * tabs;

//: @property (nonatomic,strong) NSMutableArray * seps;
@property (nonatomic,strong) NSMutableArray * seps;

//: @end
@end



//: @implementation FFFInputEmoticonTabView
@implementation EmptyControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, FFFInputEmoticonTabViewHeight)];
    self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, showSumResourceMessage)];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"emoji_bar_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        //: bg.image = [UIImage imageNamed:@"emoji_bar_bg"];
        bg.image = [UIImage imageNamed:[ShowShareData main_scripIdent]];
        //: [self addSubview:bg];
        [self addSubview:bg];


        //: _tabs = [[NSMutableArray alloc] init];
        _tabs = [[NSMutableArray alloc] init];
        //: _seps = [[NSMutableArray alloc] init];
        _seps = [[NSMutableArray alloc] init];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"emoji_delete"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[ShowShareData dream_hormoneTitle]] forState:UIControlStateNormal];
//        [_sendButton setTitle:@"发送".nim_localized forState:UIControlStateNormal];
//        _sendButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
//        [_sendButton setBackgroundColor:NEEKIT_UIColorFromRGB(0x0079FF)];

//        _sendButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _sendButton.layer.cornerRadius = 10;
//        _sendButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _sendButton.layer.shadowOffset = CGSizeMake(0,1);
//        _sendButton.layer.shadowOpacity = 1;
//        _sendButton.layer.shadowRadius = 8;
//        
        //: _sendButton.nim_height = FFFInputEmoticonTabViewHeight;
        _sendButton.nim_height = showSumResourceMessage;
        //: _sendButton.nim_width = NIMInputEmoticonSendButtonWidth;
        _sendButton.nim_width = appBorderId;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];

//        self.layer.borderColor = sepColor.CGColor;
//        self.layer.borderWidth = NIMInputLineBoarder;

    }
    //: return self;
    return self;
}


//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs
- (void)belowReason:(NSArray*)emoticonCatalogs
{
    //: for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
    for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
        //: [subView removeFromSuperview];
        [subView removeFromSuperview];
    }
    //: [_tabs removeAllObjects];
    [_tabs removeAllObjects];
    //: [_seps removeAllObjects];
    [_seps removeAllObjects];
    //: for (NIMInputEmoticonCatalog * catelog in emoticonCatalogs) {
    for (SpecialSessionView * catelog in emoticonCatalogs) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: button.frame = CGRectMake(0, 0, 48, 40);
        button.frame = CGRectMake(0, 0, 48, 40);
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.icon] forState:UIControlStateNormal];
        [button setImage:[UIImage secretRandom:catelog.icon] forState:UIControlStateNormal];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateHighlighted];
        [button setImage:[UIImage secretRandom:catelog.iconPressed] forState:UIControlStateHighlighted];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateSelected];
        [button setImage:[UIImage secretRandom:catelog.iconPressed] forState:UIControlStateSelected];
        //: [button addTarget:self action:@selector(onTouchTab:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(tabView:) forControlEvents:UIControlEventTouchUpInside];
        //: [button sizeToFit];
        [button sizeToFit];
        //: [self addSubview:button];
        [self addSubview:button];
        //: button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: button.layer.cornerRadius = 10;
        button.layer.cornerRadius = 10;
        //: button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: button.layer.shadowOffset = CGSizeMake(0,1);
        button.layer.shadowOffset = CGSizeMake(0,1);
        //: button.layer.shadowOpacity = 1;
        button.layer.shadowOpacity = 1;
        //: button.layer.shadowRadius = 8;
        button.layer.shadowRadius = 8;


        //: [_tabs addObject:button];
        [_tabs addObject:button];

//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NIMInputLineBoarder, FFFInputEmoticonTabViewHeight)];
////        sep.backgroundColor = sepColor;
//        sep.backgroundColor = [UIColor whiteColor];
//        [_seps addObject:sep];
//        [self addSubview:sep];
    }
    //: [self selectTabIndex:0];
    [self direction:0];
}

//: - (void)onTouchTab:(id)sender{
- (void)tabView:(id)sender{
    //: NSInteger index = [self.tabs indexOfObject:sender];
    NSInteger index = [self.tabs indexOfObject:sender];
    //: [self selectTabIndex:index];
    [self direction:index];
    //: if ([self.delegate respondsToSelector:@selector(tabView:didSelectTabIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(key:cover:)]) {
        //: [self.delegate tabView:self didSelectTabIndex:index];
        [self.delegate key:self cover:index];
    }
}


//: - (void)selectTabIndex:(NSInteger)index{
- (void)direction:(NSInteger)index{
    //: for (NSInteger i = 0; i < self.tabs.count ; i++) {
    for (NSInteger i = 0; i < self.tabs.count ; i++) {
        //: UIButton *btn = self.tabs[i];
        UIButton *btn = self.tabs[i];
        //: btn.layer.borderWidth = 0;
        btn.layer.borderWidth = 0;
        //: btn.selected = i == index;
        btn.selected = i == index;
        //: if(btn.selected){
        if(btn.selected){
            //: btn.layer.borderWidth = 1.5;
            btn.layer.borderWidth = 1.5;
            //: btn.layer.borderColor = [UIColor colorWithHexString:@"#F7BA00"].CGColor;
            btn.layer.borderColor = [UIColor recordView:[ShowShareData dreamMessageData]].CGColor;
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 10;
    CGFloat spacing = 10;
    //: CGFloat left = spacing;
    CGFloat left = spacing;
    //: for (NSInteger index = 0; index < self.tabs.count ; index++) {
    for (NSInteger index = 0; index < self.tabs.count ; index++) {
        //: UIButton *button = self.tabs[index];
        UIButton *button = self.tabs[index];
        //: button.nim_width = NIMInputEmoticonSendButtonWidth;
        button.nim_width = appBorderId;
        //: button.nim_height = FFFInputEmoticonTabViewHeight;
        button.nim_height = showSumResourceMessage;
        //: button.nim_left = left;
        button.nim_left = left;
        //: button.nim_centerY = self.nim_height * .5f;
        button.nim_centerY = self.nim_height * .5f;

        //: left = (int)(button.nim_right + spacing);
        left = (int)(button.nim_right + spacing);

//        UIView *sep = self.seps[index];
//        sep.nim_left = (int)(button.nim_right + spacing);
//        left = (int)(sep.nim_right + spacing);
    }
    //: _sendButton.nim_right = (int)self.nim_width;
    _sendButton.nim_right = (int)self.nim_width;
}


//: @end
@end