
#import <Foundation/Foundation.h>

@interface TouchData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TouchData

+ (instancetype)sharedInstance {
    static TouchData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TouchDataToData:(NSString *)value {
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

- (Byte *)TouchDataToCache:(Byte *)data {
    int brownButter = data[0];
    Byte resign = data[1];
    int ridiculous = data[2];
    for (int i = ridiculous; i < ridiculous + brownButter; i++) {
        int value = data[i] - resign;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ridiculous + brownButter] = 0;
    return data + ridiculous;
}

- (NSString *)StringFromTouchData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TouchDataToCache:data]];
}

//: VIDEO
- (NSString *)notiAnimalMessage {
    /* static */ NSString *notiAnimalMessage = nil;
    if (!notiAnimalMessage) {
		NSString *origin = @"054a04baa0938e8f999c";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiAnimalMessage = [self StringFromTouchData:value];
    }
    return notiAnimalMessage;
}

//: TEXT
- (NSString *)showPerfectlyMessage {
    /* static */ NSString *showPerfectlyMessage = nil;
    if (!showPerfectlyMessage) {
		NSString *origin = @"04170690c25f6b5c6f6bac";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPerfectlyMessage = [self StringFromTouchData:value];
    }
    return showPerfectlyMessage;
}

//: IMAGE
- (NSString *)userHeapName {
    /* static */ NSString *userHeapName = nil;
    if (!userHeapName) {
		NSString *origin = @"052b0ddf0da5a3fa5d411efd2174786c727058";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userHeapName = [self StringFromTouchData:value];
    }
    return userHeapName;
}

//: reply
- (NSString *)app_capBarId {
    /* static */ NSString *app_capBarId = nil;
    if (!app_capBarId) {
		NSString *origin = @"05440651ff97b6a9b4b0bd68";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_capBarId = [self StringFromTouchData:value];
    }
    return app_capBarId;
}

//: AUDIO
- (NSString *)appCooperativeName {
    /* static */ NSString *appCooperativeName = nil;
    if (!appCooperativeName) {
		NSString *origin = @"05090b2d130e2f14f9bb514a5e4d5258ec";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appCooperativeName = [self StringFromTouchData:value];
    }
    return appCooperativeName;
}

//: content
- (NSString *)mainNameTextUrl {
    /* static */ NSString *mainNameTextUrl = nil;
    if (!mainNameTextUrl) {
		NSString *origin = @"073205c3df95a1a0a697a0a62b";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainNameTextUrl = [self StringFromTouchData:value];
    }
    return mainNameTextUrl;
}

//: userName
- (NSString *)app_diseaseFormat {
    /* static */ NSString *app_diseaseFormat = nil;
    if (!app_diseaseFormat) {
		NSString *origin = @"082b06435721a09e909d798c98903a";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_diseaseFormat = [self StringFromTouchData:value];
    }
    return app_diseaseFormat;
}

//: #F6F7FA
- (NSString *)main_searchPath {
    /* static */ NSString *main_searchPath = nil;
    if (!main_searchPath) {
		NSString *origin = @"07220bf4161c9d9a0e8cfe45685868596863d9";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_searchPath = [self StringFromTouchData:value];
    }
    return main_searchPath;
}

//: type
- (NSString *)user_recallAdoptName {
    /* static */ NSString *user_recallAdoptName = nil;
    if (!user_recallAdoptName) {
		NSString *origin = @"0419038d92897eae";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_recallAdoptName = [self StringFromTouchData:value];
    }
    return user_recallAdoptName;
}

//: icon_receiver_voice_playing_003
- (NSString *)showBladeFormat {
    /* static */ NSString *showBladeFormat = nil;
    if (!showBladeFormat) {
		NSString *origin = @"1f2c07f6d9349e958f9b9a8b9e918f9195a2919e8ba29b958f918b9c988da5959a938b5c5c5f5a";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showBladeFormat = [self StringFromTouchData:value];
    }
    return showBladeFormat;
}

//: 5D5F66
- (NSString *)dream_stateId {
    /* static */ NSString *dream_stateId = nil;
    if (!dream_stateId) {
		NSString *origin = @"06590a74a54662a722598e9d8e9f8f8f84";
		NSData *data = [TouchData TouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_stateId = [self StringFromTouchData:value];
    }
    return dream_stateId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageControl.m
// UserKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyedTextContentView.h"
#import "LanguageControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface FFFReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface LanguageControl ()<DerivationDelegate>
//: @end
@end

//: @implementation FFFReplyedTextContentView
@implementation LanguageControl

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initPath {
    //: self = [super initSessionMessageContentView];
    self = [super initPath];

    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor recordView:[[TouchData sharedInstance] main_searchPath]];
    //: self.layer.cornerRadius = 8;
    self.layer.cornerRadius = 8;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;

    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)valueRow:(PossibilityMessageStyle *)data {
    //: [super refresh:data];
    [super valueRow:data];

    //: if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    if ([data.message.remoteExt.allKeys containsObject:[[TouchData sharedInstance] app_capBarId]])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        //: NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSDictionary *dic = [data.message.remoteExt objectForKey:[[TouchData sharedInstance] app_capBarId]];
        //: NSString *content = [dic objectForKey:@"content"];
        NSString *content = [dic objectForKey:[[TouchData sharedInstance] mainNameTextUrl]];
        //: NSString *userName = [dic objectForKey:@"userName"];
        NSString *userName = [dic objectForKey:[[TouchData sharedInstance] app_diseaseFormat]];
        //: NSString *type = [dic objectForKey:@"type"];
        NSString *type = [dic objectForKey:[[TouchData sharedInstance] user_recallAdoptName]];

        //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        //: CGFloat tableViewWidth = self.superview.width;
        CGFloat tableViewWidth = self.superview.width;
        //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        CGSize contentsize = [self.model path:tableViewWidth];

        //: self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        //: if([type isEqualToString:@"TEXT"]){
        if([type isEqualToString:[[TouchData sharedInstance] showPerfectlyMessage]]){
//            self.textLabel.text = content;
            //: [self.textLabel nim_setText:content];
            [self.textLabel maturity:content];
            //: self.textLabel.hidden = NO;
            self.textLabel.hidden = NO;
            //: self.picView.hidden = YES;
            self.picView.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;

            //: CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            //: self.fromUser.frame = userFrame;
            self.fromUser.frame = userFrame;

            //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            //: self.textLabel.frame = labelFrame;
            self.textLabel.frame = labelFrame;

//            self.fromUser.left =   contentInsets.left;
//            self.label.left =   contentInsets.left;

        //: }else if([type isEqualToString:@"IMAGE"]){
        }else if([type isEqualToString:[[TouchData sharedInstance] userHeapName]]){
//            self.textLabel.text = @"[图片]".nim_localized;

//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
//            [self.fromUser sizeToFit]; // 再次调整高度

//            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            //: self.picView.frame = picFrame;
            self.picView.frame = picFrame;



        //: }else if([type isEqualToString:@"VIDEO"]){
        }else if([type isEqualToString:[[TouchData sharedInstance] notiAnimalMessage]]){
            //            self.textLabel.text = @"[图片]".nim_localized;
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
//            [self.fromUser sizeToFit]; // 再次调整高度

            //            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);

                        //: self.picView.hidden = NO;
                        self.picView.hidden = NO;
                        //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        //: self.picView.frame = picFrame;
                        self.picView.frame = picFrame;

        }
        //: else if([type isEqualToString:@"AUDIO"]){
        else if([type isEqualToString:[[TouchData sharedInstance] appCooperativeName]]){
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.text = content;
            self.audioLabel.text = content;
//            [self.textLabel nim_setText:content];
            //: self.audioLabel.hidden = NO;
            self.audioLabel.hidden = NO;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
            self.picView.image = [UIImage imageNamed:[[TouchData sharedInstance] showBladeFormat]];
//                       if(data.shouldShowLeft){
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       }else{
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w_003"];
//                       }

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 50;
            //: CGFloat maxWidth = 70;
            CGFloat maxWidth = 70;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            //: self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            //: self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
            self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
        }

    }

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config sceneSetting:data.message];
    //: self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.textColor = setting.replyedTextColor;
    //: self.textLabel.font = setting.replyedFont;
    self.textLabel.font = setting.replyedFont;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
//    
//    CGFloat tableViewWidth = self.superview.nim_width;
//    CGSize contentsize = [self.model replyContentSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;
}

//: - (UILabel *)audioLabel
- (UILabel *)audioLabel
{
    //: if (!_audioLabel)
    if (!_audioLabel)
    {
        //: _audioLabel = [[UILabel alloc]init];
        _audioLabel = [[UILabel alloc]init];
        //: _audioLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _audioLabel.textColor = [UIColor recordView:[[TouchData sharedInstance] dream_stateId]];
        //: _audioLabel.font = [UIFont systemFontOfSize:12];
        _audioLabel.font = [UIFont systemFontOfSize:12];
        //: _audioLabel.hidden = YES;
        _audioLabel.hidden = YES;
        //: [self addSubview:_audioLabel];
        [self addSubview:_audioLabel];
    }

    //: return _audioLabel;
    return _audioLabel;
}

//: - (UIImageView *)picView
- (UIImageView *)picView
{
    //: if(!_picView){
    if(!_picView){
        //: _picView = [[UIImageView alloc]init];
        _picView = [[UIImageView alloc]init];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: _picView.hidden = YES;
        _picView.hidden = YES;
        //: [self addSubview:_picView];
        [self addSubview:_picView];
    }
    //: return _picView;
    return _picView;
}

//: - (UILabel *)fromUser
- (UILabel *)fromUser
{
    //: if(!_fromUser){
    if(!_fromUser){
        //: _fromUser = [[UILabel alloc]init];
        _fromUser = [[UILabel alloc]init];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _fromUser.textColor = [UIColor recordView:[[TouchData sharedInstance] dream_stateId]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_fromUser];
        [self addSubview:_fromUser];
    }
    //: return _fromUser;
    return _fromUser;
}

//: - (M80AttributedLabel *)textLabel
- (WithSessionNameView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.M80delegate = self;
        _textLabel.M80delegate = self;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
//        _textLabel.textColor = [UIColor grayColor];
        //: _textLabel.font = [UIFont systemFontOfSize:13];
        _textLabel.font = [UIFont systemFontOfSize:13];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }

    //: return _textLabel;
    return _textLabel;
}
//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - DerivationDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)preface:(WithSessionNameView *)label
             //: clickedOnLink:(id)linkData{
             openLink:(id)linkData{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    KitEvent *event = [[KitEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapLabelLink;
    event.eventName = m_styleIdent;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate need:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)recording:(id)sender
{
//    KitEvent *event = [[KitEvent alloc] init];
//    event.eventName = FFFKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

//: - (void)onTouchDown:(id)sender
- (void)anTag:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)itemOutside:(id)sender{

}
//: @end
@end