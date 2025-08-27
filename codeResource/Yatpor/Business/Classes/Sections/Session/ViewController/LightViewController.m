
#import <Foundation/Foundation.h>

@interface CreasedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CreasedData

+ (instancetype)sharedInstance {
    static CreasedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CreasedDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CreasedDataToCache:(Byte *)data {
    int customRemote = data[0];
    Byte processorComment = data[1];
    int bubbleThirty = data[2];
    for (int i = bubbleThirty; i < bubbleThirty + customRemote; i++) {
        int value = data[i] + processorComment;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bubbleThirty + customRemote] = 0;
    return data + bubbleThirty;
}

- (NSString *)StringFromCreasedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CreasedDataToCache:data]];
}

//: 回复详情
- (NSString *)user_relationData {
    /* static */ NSString *user_relationData = nil;
    if (!user_relationData) {
		NSArray<NSString *> *origin = @[@"12", @"95", @"12", @"153", @"224", @"69", @"187", @"20", @"9", @"52", @"164", @"220", @"134", @"60", @"63", @"134", @"69", @"46", @"137", @"80", @"71", @"135", @"36", @"38", @"242"];
		NSData *data = [CreasedData CreasedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_relationData = [self StringFromCreasedData:value];
    }
    return user_relationData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LightViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "LightViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "ContentSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface LightViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) ContentSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation LightViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithView:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithNameExtra:message.session];
    //: if (self)
    if (self)
    {
        //: _threadMesssage = message;
        _threadMesssage = message;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)setupNormalNav
- (void)mainFor
{
}

//: - (NSString *)sessionTitle
- (NSString *)user
{
    //: return @"回复详情".ntes_localized;
    return [[CreasedData sharedInstance] user_relationData].with;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self containerInsert:message])
    {
        //: return;
        return;
    }
    //: [super willSendMessage:message];
    [super willSendMessage:message];
}

//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self containerInsert:message])
    {
       //: return;
       return;
    }

    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
     //: if (![self shouldReceive:message])
     if (![self containerInsert:message])
     {
         //: return;
         return;
     }

    //: [super sendMessage:message progress:progress];
    [super sendMessage:message progress:progress];
}

//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: NSMutableArray *subMessages = [NSMutableArray array];
    NSMutableArray *subMessages = [NSMutableArray array];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self shouldReceive:message])
        if ([self containerInsert:message])
        {
            //: [subMessages addObject:message];
            [subMessages addObject:message];
        }
    }
    //: if (subMessages.count == 0)
    if (subMessages.count == 0)
    {
        //: return;
        return;
    }
    //: [super onRecvMessages:messages];
    [super onRecvMessages:messages];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if (![self shouldReceive:message])
    if (![self containerInsert:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message progress:progress];
    [super fetchMessageAttachment:message progress:progress];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self containerInsert:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message didCompleteWithError:error];
    [super fetchMessageAttachment:message didCompleteWithError:error];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
}


//: - (BOOL)shouldReceive:(NIMMessage *)message
- (BOOL)containerInsert:(NIMMessage *)message
{
    //: BOOL should = [message.session isEqual:self.session] &&
    BOOL should = [message.session isEqual:self.session] &&
    //: [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    //: should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];
    should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];

    //: return should;
    return should;
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<SaloonConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[ContentSessionConfig alloc] initWithRecord:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)alongs:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)app:(NIMMessage *)message
                 //: inView:(UIView *)view
                 tapOpen:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end