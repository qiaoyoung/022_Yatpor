
#import <Foundation/Foundation.h>

@interface ArmyData : NSObject

@end

@implementation ArmyData

+ (NSData *)ArmyDataToData:(NSString *)value {
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

+ (Byte *)ArmyDataToCache:(Byte *)data {
    int burden = data[0];
    Byte nigh = data[1];
    int pro = data[2];
    for (int i = pro; i < pro + burden; i++) {
        int value = data[i] + nigh;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pro + burden] = 0;
    return data + pro;
}

+ (NSString *)StringFromArmyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ArmyDataToCache:data]];
}

//: null
+ (NSString *)noti_dismissTotalData {
    /* static */ NSString *noti_dismissTotalData = nil;
    if (!noti_dismissTotalData) {
		NSString *origin = @"044c032229202013";
		NSData *data = [ArmyData ArmyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_dismissTotalData = [self StringFromArmyData:value];
    }
    return noti_dismissTotalData;
}

//: nim.demo.mergeforward.task
+ (NSString *)dream_proUsPath {
    /* static */ NSString *dream_proUsPath = nil;
    if (!dream_proUsPath) {
		NSString *origin = @"1a5e092411972026ec100b0fd006070f11d00f0714090708111419031406d01603150dc5";
		NSData *data = [ArmyData ArmyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_proUsPath = [self StringFromArmyData:value];
    }
    return dream_proUsPath;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputRange.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeForwardSession.h"
#import "InputRange.h"
//: #import "NTESMessageSerialization.h"
#import "MetronymicSerialization.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "NameSessionSuccess.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"
//: #import "ContentKitInfoFetchOption.h"
#import "ImageOption.h"

//: typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);
typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);

//: @interface NTESMergeForwardSession ()
@interface InputRange ()

//: @property (nonatomic, strong) NSMutableDictionary <NSNumber *, NTESMergeForwardTask *> *tasks;
@property (nonatomic, strong) NSMutableDictionary <NSNumber *, OriginSendTask *> *tasks;

//: @end
@end

//: @interface NTESMergeForwardTask ()
@interface OriginSendTask ()

//: @property (nonatomic, assign) uint64_t identifier;
@property (nonatomic, assign) uint64_t identifier;
//: @property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
@property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
//: @property (nonatomic, strong) NTESMergeForwardProcess process;
@property (nonatomic, strong) NTESMergeForwardProcess process;
//: @property (nonatomic, strong) NTESMergeForwardTaskResult completion;
@property (nonatomic, strong) NTESMergeForwardTaskResult completion;
//: @property (nonatomic, strong) NTESMessageSerialization *serialize;
@property (nonatomic, strong) MetronymicSerialization *serialize;

//: @end
@end

//: @implementation NTESMergeForwardSession
@implementation InputRange
//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _tasks = [NSMutableDictionary dictionary];
        _tasks = [NSMutableDictionary dictionary];
    }
    //: return self;
    return self;
}

//: - (NTESMergeForwardTask *)forwardTaskWithMessages:(NSMutableArray <NIMMessage *> *)messages
- (OriginSendTask *)providerShould:(NSMutableArray <NIMMessage *> *)messages
                                          //: process:(NTESMergeForwardProcess)process
                                          image:(NTESMergeForwardProcess)process
                                       //: completion:(NTESMergeForwardResult)completion {
                                       titleApp:(NTESMergeForwardResult)completion {
    //: NTESMergeForwardTask *task = [[NTESMergeForwardTask alloc] init];
    OriginSendTask *task = [[OriginSendTask alloc] init];
    //: task.messages = messages;
    task.messages = messages;
    //: task.process = process;
    task.process = process;

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
    task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
        //: if (completion) {
        if (completion) {
            //: completion(error, message);
            completion(error, message);
        }
        //: weakSelf.tasks[@(identifier)] = nil;
        weakSelf.tasks[@(identifier)] = nil;
    //: };
    };
    //: _tasks[@(task.identifier)] = task;
    _tasks[@(task.identifier)] = task;
    //: return task;
    return task;
}

//: @end
@end


//: @implementation NTESMergeForwardTask
@implementation OriginSendTask

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _identifier = (uint64_t)self;
        _identifier = (uint64_t)self;
        //: _serialize = [[NTESMessageSerialization alloc] init];
        _serialize = [[MetronymicSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)resume {
- (void)changeInput {
    //: NSError *error = nil;
    NSError *error = nil;
    //: __block NIMMessage *message = nil;
    __block NIMMessage *message = nil;
    //: if (_messages.count == 0) {
    if (_messages.count == 0) {
        //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1000 userInfo:nil];
        error = [NSError errorWithDomain:[ArmyData dream_proUsPath] code:1000 userInfo:nil];
        //: if (_completion) {
        if (_completion) {
            //: _completion(_identifier, error, message);
            _completion(_identifier, error, message);
        }
        //: return;
        return;
    }

    //时间戳排序
    //: [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
    [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
        //: if (obj1.timestamp < obj2.timestamp) {
        if (obj1.timestamp < obj2.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        //: } else {
        } else {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
    //: }];
    }];

    //序列化
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *password = [self getRandomRCKey];
    NSString *password = [self to];
    //: [_serialize encode:_messages encrypt:YES password:password completion:^(NSError * _Nullable error, NTESMessageSerializationInfo * _Nullable info) {
    [_serialize viewChange:_messages team:YES path:password shouldWith:^(NSError * _Nullable error, AssetInfo * _Nullable info) {
        //: if (error) {
        if (error) {
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        //: } else {
        } else {
            //: NTESMultiRetweetAttachment *attach = [[NTESMultiRetweetAttachment alloc] init];
            NameSessionSuccess *attach = [[NameSessionSuccess alloc] init];
            //: attach.fileName = info.filePath.lastPathComponent;
            attach.fileName = info.filePath.lastPathComponent;
            //: attach.md5 = info.md5;
            attach.md5 = info.md5;
            //: attach.compressed = info.compressed;
            attach.compressed = info.compressed;
            //: attach.encrypted = info.encrypted;
            attach.encrypted = info.encrypted;
            //: attach.password = info.password;
            attach.password = info.password;
            //: attach.abstracts = [weakSelf messageAbstract:weakSelf.messages];
            attach.abstracts = [weakSelf counterpret:weakSelf.messages];
            //: if (attach.messageAbstract.count == 0) {
            if (attach.messageAbstract.count == 0) {
                //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:[ArmyData dream_proUsPath] code:1001 userInfo:nil];
            //: } else {;
            } else {;
                //show name
                //: NIMSession *fromSession = [weakSelf.messages firstObject].session;
                NIMSession *fromSession = [weakSelf.messages firstObject].session;
                //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
                ImageOption *option = [[ImageOption alloc] init];
                //: option.session = fromSession;
                option.session = fromSession;
                //: ContentKitInfo *info = nil;
                ViewInfo *info = nil;
                //: if (fromSession.sessionType == NIMSessionTypeP2P) {
                if (fromSession.sessionType == NIMSessionTypeP2P) {
                    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    //: info = [[MyUserKit sharedKit].provider infoByUser:userId option:option];
                    info = [[UserKit totalSend].provider color:userId image:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeTeam){
                } else if (fromSession.sessionType == NIMSessionTypeTeam){
                    //: info = [[MyUserKit sharedKit].provider infoByTeam:fromSession.sessionId option:option];
                    info = [[UserKit totalSend].provider search:fromSession.sessionId speedy:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                    //: info = [[MyUserKit sharedKit].provider infoBySuperTeam:fromSession.sessionId option:option];
                    info = [[UserKit totalSend].provider statusOption:fromSession.sessionId mergeOf:option];
                }
                //: attach.sessionName = info.showName ?: @"null";
                attach.sessionName = info.showName ?: [ArmyData noti_dismissTotalData];
                //: attach.sessionId = fromSession.sessionId;
                attach.sessionId = fromSession.sessionId;

                //message
                //: message = [NTESSessionMsgConverter msgWithMultiRetweetAttachment:attach];
                message = [TingEmptyBubble shared:attach];
            }
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        }
    //: }];
    }];
}

//: - (NSMutableArray <NTESMessageAbstract *> *)messageAbstract:(NSArray <NIMMessage *> *)messages {
- (NSMutableArray <AAbstract *> *)counterpret:(NSArray <NIMMessage *> *)messages {
    //: NSMutableArray <NTESMessageAbstract *> *abstracts = [NSMutableArray array];
    NSMutableArray <AAbstract *> *abstracts = [NSMutableArray array];
    //: for (NIMMessage *message in _messages) {
    for (NIMMessage *message in _messages) {
        //: if (abstracts.count == (2)) {
        if (abstracts.count == (2)) {
            //: break;
            break;
        }
        //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithMessage:message];
        AAbstract *abstract = [AAbstract with:message];



        //: if (abstract) {
        if (abstract) {
            //: [abstracts addObject:abstract];
            [abstracts addObject:abstract];
        }
    }
    //: return abstracts;
    return abstracts;
}

//: -(NSString *)getRandomRCKey
-(NSString *)to
{
    //: char data[16] = {0};
    char data[16] = {0};
    //: for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    //: NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    //: NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    //: return string;
    return string;
}



//: @end
@end
