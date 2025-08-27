
#import <Foundation/Foundation.h>

typedef struct {
    Byte agitate;
    Byte *viewer;
    unsigned int proposition;
	int starchWheat;
} StructNighData;

@interface NighData : NSObject

@end

@implementation NighData

+ (NSData *)NighDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)NighDataToByte:(StructNighData *)data {
    for (int i = 0; i < data->proposition; i++) {
        data->viewer[i] ^= data->agitate;
    }
    data->viewer[data->proposition] = 0;
	if (data->proposition >= 1) {
		data->starchWheat = data->viewer[0];
	}
    return data->viewer;
}

+ (NSString *)StringFromNighData:(StructNighData *)data {
    return [NSString stringWithUTF8String:(char *)[self NighDataToByte:data]];
}

//: 文件解码错误
+ (NSString *)dream_byPath {
    /* static */ NSString *dream_byPath = nil;
    if (!dream_byPath) {
		NSArray<NSNumber *> *origin = @[@182, @198, @215, @180, @235, @230, @184, @247, @243, @183, @240, @209, @185, @196, @201, @184, @255, @255, @118];
		NSData *data = [NighData NighDataToData:origin];
        StructNighData value = (StructNighData){80, (Byte *)data.bytes, 18, 237};
        dream_byPath = [self StringFromNighData:&value];
    }
    return dream_byPath;
}

//: 附件下载错误
+ (NSString *)noti_valueIdent {
    /* static */ NSString *noti_valueIdent = nil;
    if (!noti_valueIdent) {
		NSArray<NSNumber *> *origin = @[@98, @18, @15, @111, @48, @61, @111, @51, @0, @99, @54, @54, @98, @31, @18, @99, @36, @36, @150];
		NSData *data = [NighData NighDataToData:origin];
        StructNighData value = (StructNighData){139, (Byte *)data.bytes, 18, 32};
        noti_valueIdent = [self StringFromNighData:&value];
    }
    return noti_valueIdent;
}

//: %@。error:%zd
+ (NSString *)dreamTeamContent {
    /* static */ NSString *dreamTeamContent = nil;
    if (!dreamTeamContent) {
		NSArray<NSNumber *> *origin = @[@3, @102, @197, @166, @164, @67, @84, @84, @73, @84, @28, @3, @92, @66, @114];
		NSData *data = [NighData NighDataToData:origin];
        StructNighData value = (StructNighData){38, (Byte *)data.bytes, 14, 189};
        dreamTeamContent = [self StringFromNighData:&value];
    }
    return dreamTeamContent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageSource.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "MessageSource.h"
//: #import "NTESMessageSerialization.h"
#import "MetronymicSerialization.h"
//: #import "NTESMessageModel.h"
#import "DismissMessageModel.h"
//: #import "FFFTimestampModel.h"
#import "AlongBar.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "NameSessionSuccess.h"

//: @interface NTESMergeMessageDataSource ()
@interface MessageSource ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) MetronymicSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation MessageSource

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[MetronymicSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)size:(NameSessionSuccess *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    shouldPathCompletion:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization image:filePath
                               //: encrypt:attachment.encrypted
                               down:attachment.encrypted
                              //: password:attachment.password
                              size:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            decodeAndProvider:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[NighData dreamTeamContent],[NighData dream_byPath].with, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf to:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf messageMessages:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[NighData dreamTeamContent],[NighData noti_valueIdent].with, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization image:filePath
                                       //: encrypt:attachment.encrypted
                                       down:attachment.encrypted
                                      //: password:attachment.password
                                      size:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    decodeAndProvider:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:[NighData dreamTeamContent],[NighData dream_byPath].with, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf to:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf messageMessages:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)revolution:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    DismissMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[DismissMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        DismissMessageModel *modelItem = (DismissMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        DismissMessageModel *target = [self titleDisable:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (DismissMessageModel *)titleDisable:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    DismissMessageModel *model = [[DismissMessageModel alloc] initWithIconRefresh:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (FFFTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (AlongBar *)language:(NSTimeInterval)timestamp {
    //: FFFTimestampModel *ret = [[FFFTimestampModel alloc] init];
    AlongBar *ret = [[AlongBar alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<DismissMessageModel *> *)messageMessages:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf glom:obj.timestamp];
            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            AlongBar *timeModel = [weakSelf language:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            DismissMessageModel *msgModel = [self titleDisable:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf pressed:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[DismissMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                DismissMessageModel *model = (DismissMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            AlongBar *timeModel = [weakSelf language:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            DismissMessageModel *msgModel = [self titleDisable:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            DismissMessageModel *msgModel = [self titleDisable:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)pressed:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self glom:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)glom:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)to:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[FFFMessageModel class]]) {
        if ([item isKindOfClass:[PossibilityMessageStyle class]]) {
            //: message = [(FFFMessageModel *)item message];
            message = [(PossibilityMessageStyle *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end