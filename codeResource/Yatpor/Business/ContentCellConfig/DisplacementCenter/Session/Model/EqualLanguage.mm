
#import <Foundation/Foundation.h>

@interface IgnoreTaxpayerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation IgnoreTaxpayerData

+ (instancetype)sharedInstance {
    static IgnoreTaxpayerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)IgnoreTaxpayerDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)IgnoreTaxpayerDataToCache:(Byte *)data {
    int grayResort = data[0];
    Byte retchRhetoric = data[1];
    int relationUnderly = data[2];
    for (int i = relationUnderly; i < relationUnderly + grayResort; i++) {
        int value = data[i] - retchRhetoric;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[relationUnderly + grayResort] = 0;
    return data + relationUnderly;
}

- (NSString *)StringFromIgnoreTaxpayerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self IgnoreTaxpayerDataToCache:data]];
}

//: apns-collapse-id
- (NSString *)dreamClaimStr {
    /* static */ NSString *dreamClaimStr = nil;
    if (!dreamClaimStr) {
		NSArray<NSString *> *origin = @[@"16", @"92", @"5", @"230", @"102", @"189", @"204", @"202", @"207", @"137", @"191", @"203", @"200", @"200", @"189", @"204", @"207", @"193", @"137", @"197", @"192", @"87"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamClaimStr = [self StringFromIgnoreTaxpayerData:value];
    }
    return dreamClaimStr;
}

//: nim_test_msg_env
- (NSString *)user_armyKey {
    /* static */ NSString *user_armyKey = nil;
    if (!user_armyKey) {
		NSArray<NSString *> *origin = @[@"16", @"89", @"10", @"250", @"249", @"167", @"8", @"135", @"11", @"135", @"199", @"194", @"198", @"184", @"205", @"190", @"204", @"205", @"184", @"198", @"204", @"192", @"184", @"190", @"199", @"207", @"73"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_armyKey = [self StringFromIgnoreTaxpayerData:value];
    }
    return user_armyKey;
}

//: value
- (NSString *)m_minimizeIdent {
    /* static */ NSString *m_minimizeIdent = nil;
    if (!m_minimizeIdent) {
		NSArray<NSString *> *origin = @[@"5", @"8", @"7", @"212", @"61", @"36", @"190", @"126", @"105", @"116", @"125", @"109", @"179"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_minimizeIdent = [self StringFromIgnoreTaxpayerData:value];
    }
    return m_minimizeIdent;
}

//: key
- (NSString *)app_scaleKey {
    /* static */ NSString *app_scaleKey = nil;
    if (!app_scaleKey) {
		NSArray<NSString *> *origin = @[@"3", @"2", @"3", @"109", @"103", @"123", @"120"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_scaleKey = [self StringFromIgnoreTaxpayerData:value];
    }
    return app_scaleKey;
}

//: 发来了一段语音
- (NSString *)main_shallowContent {
    /* static */ NSString *main_shallowContent = nil;
    if (!main_shallowContent) {
		NSArray<NSString *> *origin = @[@"21", @"86", @"10", @"98", @"29", @"216", @"111", @"195", @"76", @"146", @"59", @"229", @"231", @"60", @"243", @"251", @"58", @"16", @"220", @"58", @"14", @"214", @"60", @"4", @"11", @"62", @"5", @"3", @"63", @"245", @"9", @"13"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_shallowContent = [self StringFromIgnoreTaxpayerData:value];
    }
    return main_shallowContent;
}

//: init_manager_nim_status_bar_image_message
- (NSString *)mGrainUrl {
    /* static */ NSString *mGrainUrl = nil;
    if (!mGrainUrl) {
		NSArray<NSString *> *origin = @[@"41", @"51", @"3", @"156", @"161", @"156", @"167", @"146", @"160", @"148", @"161", @"148", @"154", @"152", @"165", @"146", @"161", @"156", @"160", @"146", @"166", @"167", @"148", @"167", @"168", @"166", @"146", @"149", @"148", @"165", @"146", @"156", @"160", @"148", @"154", @"152", @"146", @"160", @"152", @"166", @"166", @"148", @"154", @"152", @"24"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mGrainUrl = [self StringFromIgnoreTaxpayerData:value];
    }
    return mGrainUrl;
}

//: 你收到了一条快捷评论
- (NSString *)app_thematicsStr {
    /* static */ NSString *app_thematicsStr = nil;
    if (!app_thematicsStr) {
		NSArray<NSString *> *origin = @[@"30", @"72", @"11", @"26", @"4", @"125", @"227", @"211", @"248", @"129", @"18", @"44", @"5", @"232", @"46", @"220", @"254", @"45", @"208", @"248", @"44", @"2", @"206", @"44", @"0", @"200", @"46", @"229", @"233", @"45", @"7", @"243", @"46", @"213", @"255", @"48", @"247", @"204", @"48", @"246", @"2", @"191"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_thematicsStr = [self StringFromIgnoreTaxpayerData:value];
    }
    return app_thematicsStr;
}

//: 发来了一段视频
- (NSString *)m_upData {
    /* static */ NSString *m_upData = nil;
    if (!m_upData) {
		NSArray<NSString *> *origin = @[@"21", @"93", @"3", @"66", @"236", @"238", @"67", @"250", @"2", @"65", @"23", @"227", @"65", @"21", @"221", @"67", @"11", @"18", @"69", @"4", @"227", @"70", @"255", @"238", @"223"];
		NSData *data = [IgnoreTaxpayerData IgnoreTaxpayerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_upData = [self StringFromIgnoreTaxpayerData:value];
    }
    return m_upData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentMessageMaker.m
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentMessageMaker.h"
#import "EqualLanguage.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "ContentInputAtCache.h"
#import "AtNameSize.h"

//: NSString * generateUUID(void) {
NSString * managerColumnUuid(void) {
    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @implementation ContentMessageMaker
@implementation EqualLanguage

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)change:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self enquiry:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)image:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = [[IgnoreTaxpayerData sharedInstance] main_shallowContent].resign;
    //: [self setupMessage:message];
    [self enquiry:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)stepTv:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = managerColumnUuid();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = [[IgnoreTaxpayerData sharedInstance] m_upData].resign;
    //: [self setupMessage:message];
    [self enquiry:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)successImage:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [ContentMessageMaker generateImageMessage:imageObject];
    return [EqualLanguage text:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)model:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [ContentMessageMaker generateImageMessage:imageObject];
    return [EqualLanguage text:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)layer:(NSData *)data broad:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [ContentMessageMaker generateImageMessage:imageObject];
    return [EqualLanguage text:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)text:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = managerColumnUuid();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [ContentLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [MatronymicPath colorStreetwise:[[IgnoreTaxpayerData sharedInstance] mGrainUrl]];
    //: [self setupMessage:message];
    [self enquiry:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)enquiry:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        [[IgnoreTaxpayerData sharedInstance] dreamClaimStr]: message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:[[IgnoreTaxpayerData sharedInstance] user_armyKey]];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation SizeMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)label:(int64_t)type
                             //: content:(NSString *)content
                             view:(NSString *)content
                                 //: ext:(NSString *)ext
                                 bar:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = [[IgnoreTaxpayerData sharedInstance] app_thematicsStr];
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        [[IgnoreTaxpayerData sharedInstance] app_scaleKey] : [[IgnoreTaxpayerData sharedInstance] m_minimizeIdent]
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end
