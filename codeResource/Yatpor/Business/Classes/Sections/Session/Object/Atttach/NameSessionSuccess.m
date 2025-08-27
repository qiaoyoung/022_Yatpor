
#import <Foundation/Foundation.h>

@interface ValueSelectData : NSObject

@end

@implementation ValueSelectData

+ (NSData *)ValueSelectDataToData:(NSString *)value {
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

+ (Byte *)ValueSelectDataToCache:(Byte *)data {
    int beginDate = data[0];
    Byte modelProcessor = data[1];
    int cherryRed = data[2];
    for (int i = cherryRed; i < cherryRed + beginDate; i++) {
        int value = data[i] - modelProcessor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[cherryRed + beginDate] = 0;
    return data + cherryRed;
}

+ (NSString *)StringFromValueSelectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ValueSelectDataToCache:data]];
}

//: sessionId
+ (NSString *)mBackValue {
    /* static */ NSString *mBackValue = nil;
    if (!mBackValue) {
		NSString *origin = @"09310ccbda90eea67048f516a496a4a49aa09f7a9523";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mBackValue = [self StringFromValueSelectData:value];
    }
    return mBackValue;
}

//: url
+ (NSString *)show_remoteTitle {
    /* static */ NSString *show_remoteTitle = nil;
    if (!show_remoteTitle) {
		NSString *origin = @"032c09f5ff67620423a19e9865";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_remoteTitle = [self StringFromValueSelectData:value];
    }
    return show_remoteTitle;
}

//: sender
+ (NSString *)k_imageFormat {
    /* static */ NSString *k_imageFormat = nil;
    if (!k_imageFormat) {
		NSString *origin = @"064f0d05e2be35a5f9e248a3f5c2b4bdb3b4c1db";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_imageFormat = [self StringFromValueSelectData:value];
    }
    return k_imageFormat;
}

//: type
+ (NSString *)mainTeamStateUrl {
    /* static */ NSString *mainTeamStateUrl = nil;
    if (!mainTeamStateUrl) {
		NSString *origin = @"0413050634878c83786d";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTeamStateUrl = [self StringFromValueSelectData:value];
    }
    return mainTeamStateUrl;
}

//: messageAbstract
+ (NSString *)appShowValue {
    /* static */ NSString *appShowValue = nil;
    if (!appShowValue) {
		NSString *origin = @"0f1307503b428c80788686747a785475868785747687eb";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appShowValue = [self StringFromValueSelectData:value];
    }
    return appShowValue;
}

//: password
+ (NSString *)notiOfName {
    /* static */ NSString *notiOfName = nil;
    if (!notiOfName) {
		NSString *origin = @"08220b838b9e75b49b5e83928395959991948636";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiOfName = [self StringFromValueSelectData:value];
    }
    return notiOfName;
}

//: null
+ (NSString *)mInfoContainerTitle {
    /* static */ NSString *mInfoContainerTitle = nil;
    if (!mInfoContainerTitle) {
		NSString *origin = @"042a09603a3ab033b3989f969674";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mInfoContainerTitle = [self StringFromValueSelectData:value];
    }
    return mInfoContainerTitle;
}

//: md5
+ (NSString *)showReleaseDismissUrl {
    /* static */ NSString *showReleaseDismissUrl = nil;
    if (!showReleaseDismissUrl) {
		NSString *origin = @"033a03a79e6f89";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showReleaseDismissUrl = [self StringFromValueSelectData:value];
    }
    return showReleaseDismissUrl;
}

//: 聊天记录
+ (NSString *)noti_coverMsg {
    /* static */ NSString *noti_coverMsg = nil;
    if (!noti_coverMsg) {
		NSString *origin = @"0c5707da9af4993fd8e13cfb003f05073c14ec49";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_coverMsg = [self StringFromValueSelectData:value];
    }
    return noti_coverMsg;
}

//: compressed
+ (NSString *)appGlobalUpStr {
    /* static */ NSString *appGlobalUpStr = nil;
    if (!appGlobalUpStr) {
		NSString *origin = @"0a0b0775cfa76e6e7a787b7d707e7e706f32";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appGlobalUpStr = [self StringFromValueSelectData:value];
    }
    return appGlobalUpStr;
}

//: sessionName
+ (NSString *)appBubbleName {
    /* static */ NSString *appBubbleName = nil;
    if (!appBubbleName) {
		NSString *origin = @"0b0a0c894fa860b17fc7b2e87d6f7d7d737978586b776f22";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBubbleName = [self StringFromValueSelectData:value];
    }
    return appBubbleName;
}

//: message
+ (NSString *)mainViewMsg {
    /* static */ NSString *mainViewMsg = nil;
    if (!mainViewMsg) {
		NSString *origin = @"0746055d46b3abb9b9a7adab8d";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainViewMsg = [self StringFromValueSelectData:value];
    }
    return mainViewMsg;
}

//: encrypted
+ (NSString *)dreamResourceMessage {
    /* static */ NSString *dreamResourceMessage = nil;
    if (!dreamResourceMessage) {
		NSString *origin = @"0949063ae06aaeb7acbbc2b9bdaead0f";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamResourceMessage = [self StringFromValueSelectData:value];
    }
    return dreamResourceMessage;
}

//: data
+ (NSString *)user_viewId {
    /* static */ NSString *user_viewId = nil;
    if (!user_viewId) {
		NSString *origin = @"044c0d24141e23ec43b8dc938cb0adc0ade1";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_viewId = [self StringFromValueSelectData:value];
    }
    return user_viewId;
}

//: fileName
+ (NSString *)user_valueMessage {
    /* static */ NSString *user_valueMessage = nil;
    if (!user_valueMessage) {
		NSString *origin = @"083c06f6161ea2a5a8a18a9da9a1a2";
		NSData *data = [ValueSelectData ValueSelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_valueMessage = [self StringFromValueSelectData:value];
    }
    return user_valueMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameSessionSuccess.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "NameSessionSuccess.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Occurrent.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "NTESMessageUtil.h"
#import "NatalDayComplete.h"
//: #import "FFFInputEmoticonParser.h"
#import "ReasonTeamParser.h"

//: @interface NTESMultiRetweetAttachment ()
@interface NameSessionSuccess ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) WithSessionNameView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation NameSessionSuccess

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[[ValueSelectData show_remoteTitle]] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[[ValueSelectData showReleaseDismissUrl]] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[[ValueSelectData user_valueMessage]] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[[ValueSelectData appGlobalUpStr]] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[[ValueSelectData dreamResourceMessage]] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[[ValueSelectData notiOfName]] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[[ValueSelectData appShowValue]] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[[ValueSelectData appBubbleName]] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[[ValueSelectData mBackValue]] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{[ValueSelectData mainTeamStateUrl] : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           [ValueSelectData user_viewId] : dataDic};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }


    //: return content;
    return content;
}

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<AAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (AAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj blockDictionary];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                AAbstract *abstract = [AAbstract notSmartStatus:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)readBook {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            [ValueSelectData noti_coverMsg].with];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)elementStep:(AAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)tap:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"TingTitleView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self readBook];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [[ValueSelectData noti_coverMsg].with boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (AAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label maturity:[self elementStep:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)contentMode:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)tinMaxFile {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)referColor {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [BottomObjectHelper circleDown:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (WithSessionNameView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - AAbstract


//: @implementation NTESMessageAbstract
@implementation AAbstract

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)blockDictionary {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[[ValueSelectData k_imageFormat]] = _sender;
        //: dic[@"message"] = _message;
        dic[[ValueSelectData mainViewMsg]] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)with:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    AAbstract *ret = [[AAbstract alloc] init];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    ViewInfo *info = [[UserKit totalSend].provider color:message.from image:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: [ValueSelectData mInfoContainerTitle];
    //: ret.message = [ret abstract:message];
    ret.message = [ret key:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)notSmartStatus:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    AAbstract *ret = [[AAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content translate:[ValueSelectData k_imageFormat]];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content translate:[ValueSelectData mainViewMsg]];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)key:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [NatalDayComplete text:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[FFFInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[ReasonTeamParser color] fullSize:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (BarEnable *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end