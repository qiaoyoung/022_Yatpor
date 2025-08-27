
#import <Foundation/Foundation.h>

@interface HolderData : NSObject

+ (instancetype)sharedInstance;

//: HEIC
@property (nonatomic, copy) NSString *show_traditionalKey;

@end

@implementation HolderData

+ (instancetype)sharedInstance {
    static HolderData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HolderDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HolderDataToCache:(Byte *)data {
    int refreshcyClaim = data[0];
    Byte haulUpJurisdiction = data[1];
    int artist = data[2];
    for (int i = artist; i < artist + refreshcyClaim; i++) {
        int value = data[i] - haulUpJurisdiction;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[artist + refreshcyClaim] = 0;
    return data + artist;
}

- (NSString *)StringFromHolderData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HolderDataToCache:data]];
}

//: HEIC
- (NSString *)show_traditionalKey {
    if (!_show_traditionalKey) {
		NSArray<NSString *> *origin = @[@"4", @"83", @"7", @"148", @"6", @"150", @"125", @"155", @"152", @"156", @"150", @"36"];
		NSData *data = [HolderData HolderDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_traditionalKey = [self StringFromHolderData:value];
    }
    return _show_traditionalKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteraciton.m
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionInteractorImpl.h"
#import "ToolReplacement.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "ContentSessionTableAdapter.h"
#import "ReasonSizeEmpty.h"
//: #import "ContentKitMediaFetcher.h"
#import "ArrayFetcher.h"
//: #import "ContentMessageMaker.h"
#import "EqualLanguage.h"
//: #import "ContentKitAudioCenter.h"
#import "DisplacementCenter.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "ContentKitQuickCommentUtil.h"
#import "TapOption.h"
//: #import "UIImage+SNCompress.h"
#import "UIImage+IconColorSuccess.h"

//: static const void * const NTESDispatchMessageDataPrepareSpecificKey = &NTESDispatchMessageDataPrepareSpecificKey;
static const void * const noti_buttonName = &noti_buttonName;

//: typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);
typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);

//: dispatch_queue_t NTESMessageDataPrepareQueue()
dispatch_queue_t twelveNoon()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchMessageDataPrepareSpecificKey, (void *)NTESDispatchMessageDataPrepareSpecificKey, NULL);
        dispatch_queue_set_specific(queue, noti_buttonName, (void *)noti_buttonName, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: @interface ContentSessionInteractorImpl()<NIMMediaManagerDelegate>
@interface ToolReplacement()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,strong) id<ContentSessionConfig> sessionConfig;
@property (nonatomic,strong) id<SaloonConfig> sessionConfig;

//: @property (nonatomic,strong) ContentKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ArrayFetcher *mediaFetcher;

//: @property (nonatomic,strong) NSMutableArray *pendingChatroomModels;
@property (nonatomic,strong) NSMutableArray *pendingChatroomModels;

//: @property (nonatomic,strong) NSMutableArray *pendingAudioMessages;
@property (nonatomic,strong) NSMutableArray *pendingAudioMessages;

//: @property (nonatomic,assign) NIMKitSessionState sessionState;
@property (nonatomic,assign) NIMKitSessionState sessionState;

//: @property (nonatomic,strong) NIMMessage *referenceMessage;
@property (nonatomic,strong) NIMMessage *referenceMessage;

//: @end
@end

//: @implementation ContentSessionInteractorImpl
@implementation ToolReplacement

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithStep:(NIMSession *)session
                         //: config:(id<ContentSessionConfig>)sessionConfig
                         draftConfig:(id<SaloonConfig>)sessionConfig
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: [self addListener];
        [self startListener];
    }
    //: return self;
    return self;
}


//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [self removeListenner];
    [self listennerOrigin];
}

//: - (NSArray *)items
- (NSArray *)representation
{
    //: return [self.dataSource items];
    return [self.dataSource bubbleToImage];
}

//: - (void)markRead:(BOOL)needMarkDataModel
- (void)lastex:(BOOL)needMarkDataModel
{
    //: if ([self shouldAutoMarkRead])
    if ([self examineed])
    {
        //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
        [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];

        //: if ([self shouldHandleReceipt])
        if ([self keyTing])
        {
            //: [self sendMessageReceipt:self.items];
            [self along:self.representation];
        }

        //: if (needMarkDataModel)
        if (needMarkDataModel)
        {
            //: [self markReadInDataModel];
            [self barColorLine];
        }
    }
}

//: - (void)markReadInDataModel {
- (void)barColorLine {
    //: for (id model in [self items]) {
    for (id model in [self representation]) {
        //: if ([model isKindOfClass:[ContentMessageModel class]]) {
        if ([model isKindOfClass:[PossibilityMessageStyle class]]) {
            //: ContentMessageModel *messageModel = (ContentMessageModel *)model;
            PossibilityMessageStyle *messageModel = (PossibilityMessageStyle *)model;
            //: if (messageModel.message.status == NIMMessageStatusNone) {
            if (messageModel.message.status == NIMMessageStatusNone) {
                //: messageModel.message.status = NIMMessageStatusRead;
                messageModel.message.status = NIMMessageStatusRead;
            }
        }
    }
}


//: - (void)addMessages:(NSArray *)messages
- (void)messageTable:(NSArray *)messages
{
    //: NIMMessage *message = messages.firstObject;
    NIMMessage *message = messages.firstObject;
    //: if (message.session.sessionType == NIMSessionTypeChatroom) {
    if (message.session.sessionType == NIMSessionTypeChatroom) {
        //: [self addChatroomMessages:messages];
        [self doingFile:messages];
    //: }else{
    }else{
        //: [self addNormalMessages:messages];
        [self tag:messages];
    }
}

//: - (void)insertMessages:(NSArray *)messages
- (void)view:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: ContentMessageModel *model = [[ContentMessageModel alloc] initWithMessage:message];
        PossibilityMessageStyle *model = [[PossibilityMessageStyle alloc] initWithIconRefresh:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(sizes:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig sizes:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(roundState)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig roundState];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(doingPress)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig doingPress];
        }

        //: if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
        if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
            //撤回消息过滤
        //: }else{
        }else{
            //: [models addObject:model];
            [models addObject:model];
        }
    }

    //: NIMSessionMessageOperateResult *result = [self.dataSource insertMessageModels:models];
    AnalogDigitalConverterInput *result = [self.dataSource child:models];
    //: [self refreshAllChatExtendDatasByModels:models completion:nil];
    [self info:models random:nil];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout valueKey:result.indexpaths begin:YES];
}

//: - (void)addNormalMessages:(NSArray *)messages
- (void)tag:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if (message.isDeleted)
        if (message.isDeleted)
        {
            //: continue;
            continue;
        }
        //: ContentMessageModel *model = [[ContentMessageModel alloc] initWithMessage:message];
        PossibilityMessageStyle *model = [[PossibilityMessageStyle alloc] initWithIconRefresh:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(sizes:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig sizes:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(roundState)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig roundState];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(doingPress)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig doingPress];
        }


        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]]; 
        [self chatKey:[self outsideMessage:message]]; // 刷新父消息
        //: [self refreshAllChatExtendDatasByModel:model completion:nil]; 
        [self key:model forEachOffe:nil]; // 刷新本条消息

        //: [models addObject:model];
        [models addObject:model];
    }
    //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:models];
    AnalogDigitalConverterInput *result = [self.dataSource fortify:models];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout valueKey:result.indexpaths begin:YES];
}

//: - (void)addChatroomMessages:(NSArray *)messages
- (void)doingFile:(NSArray *)messages
{
    //: if (!self.pendingChatroomModels) {
    if (!self.pendingChatroomModels) {
        //: self.pendingChatroomModels = [[NSMutableArray alloc] init];
        self.pendingChatroomModels = [[NSMutableArray alloc] init];
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(NTESMessageDataPrepareQueue(), ^{
    dispatch_async(twelveNoon(), ^{
        //: NSMutableArray *models = [[NSMutableArray alloc] init];
        NSMutableArray *models = [[NSMutableArray alloc] init];
        //: for (NIMMessage *message in messages)
        for (NIMMessage *message in messages)
        {
            //: if (message.isDeleted)
            if (message.isDeleted)
            {
                //: continue;
                continue;
            }
            //: ContentMessageModel *model = [[ContentMessageModel alloc] initWithMessage:message];
            PossibilityMessageStyle *model = [[PossibilityMessageStyle alloc] initWithIconRefresh:message];
            //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(sizes:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig sizes:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(roundState)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig roundState];
            }

            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(doingPress)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig doingPress];
            }

            //: [weakSelf.layout calculateContent:model];
            [weakSelf.layout imageLabel:model];
            //: [models addObject:model];
            [models addObject:model];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            //: [weakSelf processChatroomMessageModels];
            [weakSelf usage];
        //: });
        });
    //: });
    });
}

//: - (ContentMessageModel *)deleteMessage:(NIMMessage *)message
- (PossibilityMessageStyle *)nutsAndBolts:(NIMMessage *)message
{
    //: ContentMessageModel *model = [self findMessageModel:message];
    PossibilityMessageStyle *model = [self pull:message];
    //: if (model) {
    if (model) {
        //: NIMSessionMessageOperateResult *result = [self.dataSource deleteMessageModel:model];
        AnalogDigitalConverterInput *result = [self.dataSource typicalModel:model];
        //: [self.layout remove:result.indexpaths];
        [self.layout versions:result.indexpaths];

        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasBySubModel:model completion:nil];
        [self color:model info:nil];
    }
    //: return model;
    return model;
}

//: - (ContentMessageModel *)updateMessage:(NIMMessage *)message
- (PossibilityMessageStyle *)preserveShould:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return nil;
        return nil;
    }

    //: ContentMessageModel *model = [self findMessageModel:message];
    PossibilityMessageStyle *model = [self pull:message];
    //: if (model)
    if (model)
    {
        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]];
        [self chatKey:[self outsideMessage:message]];
        //: [self refreshAllChatExtendDatasByModel:model
        [self key:model
                                  //: completion:nil];
                                  forEachOffe:nil];
        //: NIMSessionMessageOperateResult *result = [self.dataSource updateMessageModel:model];
        AnalogDigitalConverterInput *result = [self.dataSource inflect:model];
        //: NSInteger index = [result.indexpaths.firstObject row];
        NSInteger index = [result.indexpaths.firstObject row];
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        //: [self safelyReloadRowAtIndexPath:indexPath];
        [self subKind:indexPath];
    }
    //: return model;
    return model;
}

//: - (void)addPinForMessage:(NIMMessage *)message
- (void)data:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource addPinForMessage:message callback:^(NSError *error) {
    [self.dataSource supplement:message phonation:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself preserveShould:message];
    //: }];
    }];
}

//: - (void)removePinForMessage:(NIMMessage *)message
- (void)itemMessage:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource removePinForMessage:message callback:^(NSError *error) {
    [self.dataSource name:message message:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself preserveShould:message];
    //: }];
    }];
}

//: - (void)setSessionState:(NIMKitSessionState)sessionState {
- (void)setSessionState:(NIMKitSessionState)sessionState {
    //: if (_sessionState != sessionState) {
    if (_sessionState != sessionState) {
        //: [self.dataSource refreshMessageModelShowSelect:(sessionState == NIMKitSessionStateSelect)];
        [self.dataSource should:(sessionState == NIMKitSessionStateSelect)];
        //: [self.layout reloadTable];
        [self.layout table];
        //: _sessionState = sessionState;
        _sessionState = sessionState;
    }
}

//: - (ContentMessageModel *)findMessageModel:(NIMMessage *)message
- (PossibilityMessageStyle *)pull:(NIMMessage *)message
{
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: return [self.dataSource findModel:message];
        return [self.dataSource press:message];
    }
    //: return nil;
    return nil;
}

//: - (NSInteger)findMessageIndex:(NIMMessage *)message {
- (NSInteger)canIndex:(NIMMessage *)message {
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: ContentMessageModel *model = [[ContentMessageModel alloc] initWithMessage:message];
        PossibilityMessageStyle *model = [[PossibilityMessageStyle alloc] initWithIconRefresh:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(sizes:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig sizes:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(roundState)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig roundState];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(doingPress)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig doingPress];
        }

        //: return [self.dataSource indexAtModelArray:model];
        return [self.dataSource length:model];
    }
    //: return -1;
    return -1;
}

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)keepAnEyeDoingEndedLikeNonsolidColour:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldHandleReceipt])
    if ([self keyTing])
    {
        //: NSDictionary *models = [self.dataSource checkReceipts:receipts];
        NSDictionary *models = [self.dataSource quickTeam:receipts];
        //: for (NSNumber *index in models.allKeys) {
        for (NSNumber *index in models.allKeys) {
            //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            //: [self safelyReloadRowAtIndexPath:indexPath];
            [self subKind:indexPath];
        }
    }
}

//: - (BOOL)shouldHandleReceipt
- (BOOL)keyTing
{
    //: return [self.sessionConfig respondsToSelector:@selector(shouldHandleReceipt)] &&
    return [self.sessionConfig respondsToSelector:@selector(keyTing)] &&
    //: [self.sessionConfig shouldHandleReceipt];
    [self.sessionConfig keyTing];
}

//: - (void)markAllMessagesRead
- (void)imageAdd
{
    //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
    [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
}

//: - (void)sendMessageReceipt:(NSArray *)messages
- (void)along:(NSArray *)messages
{
    //: [self.dataSource sendMessageReceipt:messages];
    [self.dataSource language:messages];
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)count:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion
             headInside:(void(^)(NSError *error))completion
{
    //: NIMMessage *message = self.referenceMessage;
    NIMMessage *message = self.referenceMessage;
    //: if (message)
    if (message)
    {
        //: [self addQuickComment:comment
        [self textEnableCompletion:comment
                    //: toMessage:message
                    viewAdd_strong:message
                   //: completion:^(NSError *error)
                   date:^(NSError *error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
        //: }];
        }];
        //: self.referenceMessage = nil;
        self.referenceMessage = nil;
    }
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)textEnableCompletion:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)message
              viewAdd_strong:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             date:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
                                                //: toMessage:message
                                                toMessage:message
                                               //: completion:^(NSError * _Nullable error)
                                               completion:^(NSError * _Nullable error)
    {
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf strikeOut:message tagTotaleractorHandler:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)save:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          setup:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             nameCompletion:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
                                                  //: completion:^(NSError * _Nullable error)
                                                  completion:^(NSError * _Nullable error)
    {
        //: weakSelf.referenceMessage = nil;
        weakSelf.referenceMessage = nil;
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf strikeOut:message tagTotaleractorHandler:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)resetLayout
- (void)bar
{
    //: [self.layout resetLayout];
    [self.layout cell];
}

//: - (void)changeLayout:(CGFloat)inputHeight
- (void)blueLayout:(CGFloat)inputHeight
{
    //: [self.layout changeLayout:inputHeight];
    [self.layout custom:inputHeight];
}

//: - (void)cleanCache
- (void)value
{
    //: [self.dataSource cleanCache];
    [self.dataSource active];
}


//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler
- (void)green:(void (^)(NSArray *messages, NSError *error))handler
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.dataSource loadHistoryMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource complete:^(NSInteger index, NSArray *messages, NSError *error) {
//        [SVProgressHUD dismiss];
        //: if (messages.count) {
        if (messages.count) {

            //: if (wself.session.sessionType != NIMSessionTypeChatroom) {
            if (wself.session.sessionType != NIMSessionTypeChatroom) {
                //: [wself refreshAllAfterFetchCommentsByMessages:messages];
                [wself candleHolderMessages:messages];
            }

            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(autoWithAttachment)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.autoWithAttachment) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource info:messages];
            }
        }
        //: if (handler) {
        if (handler) {
            //: handler(messages,error);
            handler(messages,error);
        }
    //: }];
    }];
}

//: - (void)pullUp {
- (void)max {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(didPullUpMessageData)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(replyInformation)]) {
        //: [self.delegate didPullUpMessageData];
        [self.delegate replyInformation];
    }
}

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler {
- (void)need:(void(^)(NSArray *messages, NSError *error))handler {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource loadNewMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource doCompleteDevice:^(NSInteger index, NSArray *messages, NSError *error) {
        //: if (messages.count) {
        if (messages.count) {
            //: [wself.layout layoutAfterRefresh];
            [wself.layout player];
            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(autoWithAttachment)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.autoWithAttachment) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource info:messages];
            }
        }

        //: [wself refreshAllAfterFetchCommentsByMessages:messages];
        [wself candleHolderMessages:messages];

        //: if (handler) {
        if (handler) {
            //: handler(messages, error);
            handler(messages, error);
        }
    //: }];
    }];
}

//: - (void)resetMessages:(void (^)(NSError *error))handler
- (void)messages:(void (^)(NSError *error))handler
{
//    [SVProgressHUD show];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: __block NSError *e = nil;
    __block NSError *e = nil;
    //: dispatch_group_t group = dispatch_group_create();
    dispatch_group_t group = dispatch_group_create();

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self.dataSource tillUser:^(NSError *error, NSArray *models) {
        //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
        [weakSelf picture:models];

        //: e = error;
        e = error;
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self loadMessagePins:^(NSError *error) {
    [self min:^(NSError *error) {
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{

        //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
        if([weakSelf.delegate respondsToSelector:@selector(fetchData)])
        {
            //: [weakSelf.delegate didFetchMessageData];
            [weakSelf.delegate fetchData];
            //: if (handler) {
            if (handler) {
                //: handler(e);
                handler(e);
            }
        }
    //: });
    });

//    [SVProgressHUD dismiss];

}

//: - (void)autoFetchMessages
- (void)trot
{
    //: if (![self.sessionConfig respondsToSelector:@selector(autoFetchWhenOpenSession)]
    if (![self.sessionConfig respondsToSelector:@selector(labelNormal)]
        //: || self.sessionConfig.autoFetchWhenOpenSession) {
        || self.sessionConfig.labelNormal) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_group_t group = dispatch_group_create();
        dispatch_group_t group = dispatch_group_create();

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
        [self.dataSource tillUser:^(NSError *error, NSArray *models) {
            //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
            [weakSelf picture:models];
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self loadMessagePins:^(NSError *error) {
        [self min:^(NSError *error) {
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
            //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
            if([weakSelf.delegate respondsToSelector:@selector(fetchData)])
            {
                //: [weakSelf.delegate didFetchMessageData];
                [weakSelf.delegate fetchData];

                //: if (![weakSelf.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
                if (![weakSelf.sessionConfig respondsToSelector:@selector(autoWithAttachment)]
                    //: || weakSelf.sessionConfig.autoFetchAttachment) {
                    || weakSelf.sessionConfig.autoWithAttachment) {
                    //: [weakSelf.dataSource checkAttachmentState:weakSelf.items];
                    [weakSelf.dataSource info:weakSelf.representation];
                }
            }
        //: });
        });

    }
}

//: - (void)setDataSource:(id<NIMSessionDataSource>)dataSource
- (void)setDataSource:(id<ArrayIcon>)dataSource
{
    //: _dataSource = dataSource;
    _dataSource = dataSource;
    //: [self autoFetchMessages];
    [self trot];
}


//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)container:(NIMMessage *)message
{
    //: NSError *err;
    NSError *err;
    //: [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    //: NSLog(@"sendMessageError:%@",err);
    //: [self.layout dismissReplyContent];
    [self.layout dismissBy];
}

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage
- (void)packet:(NIMMessage *)message to:(NIMMessage *)toMessage
{
    //: if (toMessage)
    if (toMessage)
    {
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:toMessage
                                                   to:toMessage
                                                //: error:nil];
                                                error:nil];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(threadTable)] && [self.sessionConfig threadTable])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig threadTable];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                                //: error:nil];
                                                error:nil];

        //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
        if ([self.sessionConfig respondsToSelector:@selector(laterDoingClearMetallicSentDedication)])
        {
            //: if ([self.sessionConfig clearThreadMessageAfterSent])
            if ([self.sessionConfig laterDoingClearMetallicSentDedication])
            {
                //: [self.sessionConfig cleanThreadMessage];
                [self.sessionConfig backgroundMessage];
            }
        }
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message];
        [self container:message];
    }

    //: [self.layout dismissReplyContent];
    [self.layout dismissBy];
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError *))completion
- (void)listMonitor:(NIMMessage *)message team:(void(^)(NSError *))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
    [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
        //: if(completion) {
        if(completion) {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf.layout dismissReplyContent];
        [weakSelf.layout dismissBy];
    //: }];
    }];
}

//: - (void)sendMessage:(NIMMessage *)message
- (void)telegram:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          name:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion
         option:(void(^)(NSError * error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
   //: if (toMessage)
   if (toMessage)
    {
        //: [[NIMSDK sharedSDK].chatExtendManager reply:message
        [[NIMSDK sharedSDK].chatExtendManager reply:message
                                                //: to:toMessage
                                                to:toMessage
                                        //: completion:^(NSError * _Nullable error)
                                        completion:^(NSError * _Nullable error)
         {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:toMessage]];
            [weakSelf chatKey:[self outsideMessage:toMessage]];

        //: }];
        }];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(threadTable)] && [self.sessionConfig threadTable])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig threadTable];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                           //: completion:^(NSError * _Nullable error) {
                                           completion:^(NSError * _Nullable error) {
            //: if ([weakSelf.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
            if ([weakSelf.sessionConfig respondsToSelector:@selector(laterDoingClearMetallicSentDedication)])
            {
                //: if ([weakSelf.sessionConfig clearThreadMessageAfterSent])
                if ([weakSelf.sessionConfig laterDoingClearMetallicSentDedication])
                {
                    //: [weakSelf.sessionConfig cleanThreadMessage];
                    [weakSelf.sessionConfig backgroundMessage];
                }
            }

            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[weakSelf threadMessageOfMessage:toMessage]];
            [weakSelf chatKey:[weakSelf outsideMessage:toMessage]];
        //: }];
        }];
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message completion:completion];
        [self listMonitor:message team:completion];
    }

    //: [self.layout dismissReplyContent];
    [self.layout dismissBy];
}

//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification
- (void)fromBubble:(NSNotification *)notification
{
//    NSArray *models = [self.dataSource items];
//    [self sendMessageReceipt:models];
}

//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)toolWith:(NSNotification *)notification {
    //: [self.delegate didRefreshMessageData];
    [self.delegate viewBook];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification {
- (void)recentsing:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *dream_bottomFormat;
    extern NSString *dream_bottomFormat;
    //: NSArray *teamIds = userInfo[dream_bottomFormat];
    NSArray *teamIds = userInfo[dream_bottomFormat];
    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate viewBook];
    }
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)topologicalSpace:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *dream_bottomFormat;
    extern NSString *dream_bottomFormat;
    //: NSArray *teamIds = userInfo[dream_bottomFormat];
    NSArray *teamIds = userInfo[dream_bottomFormat];

    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate viewBook];
    }
}

//: #pragma mark - NIMSessionTableDataDelegate
#pragma mark - NIMSessionTableDataDelegate

//: - (void)didRefreshMessageData
- (void)viewBook
{
    //: if ([self.delegate respondsToSelector:@selector(didRefreshMessageData)]) {
    if ([self.delegate respondsToSelector:@selector(viewBook)]) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate viewBook];
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)mediaAudioPressed:(ContentMessageModel *)messageModel
- (void)mediaPressed:(PossibilityMessageStyle *)messageModel
{
    //: if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
    if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
        //: [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        //: self.pendingAudioMessages = [self findRemainAudioMessages:messageModel.message];
        self.pendingAudioMessages = [self audioStatusMessages:messageModel.message];
        //: [[ContentKitAudioCenter instance] play:messageModel.message];
        [[DisplacementCenter range] fast:messageModel.message];

    //: } else {
    } else {
        //: self.pendingAudioMessages = nil;
        self.pendingAudioMessages = nil;
        //: [[NIMSDK sharedSDK].mediaManager stopPlay];
        [[NIMSDK sharedSDK].mediaManager stopPlay];
    }
}

//: - (void)mediaPicturePressed
- (void)radiogram
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchPhotoFromLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
    [self.mediaFetcher underFetch:^(NSArray *images, NSString *path, PHAssetMediaType type) {
        //: switch (type) {
        switch (type) {
            //: case PHAssetMediaTypeImage:
            case PHAssetMediaTypeImage:
            {
                //: for (UIImage *image in images) {
                for (UIImage *image in images) {



                    //: NIMMessage *message = [ContentMessageMaker msgWithImage:image];
                    NIMMessage *message = [EqualLanguage successImage:image];

                    //: NSMutableDictionary *dic = [[ContentConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[BottomConfig at] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf packet:message to:nil];
                }
                //: if (path) {
                if (path) {
                    //: NIMMessage *message;
                    NIMMessage *message;
                    //: if ([path.pathExtension isEqualToString:@"HEIC"])
                    if ([path.pathExtension isEqualToString:[HolderData sharedInstance].show_traditionalKey])
                    {
                        //iOS 11 苹果采用了新的图片格式 HEIC ，如果采用原图会导致其他设备的兼容问题，在上层做好格式的兼容转换,压成 jpeg
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [ContentMessageMaker msgWithImage:image];
                        message = [EqualLanguage successImage:image];
                    }
                    //: else
                    else
                    {
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [ContentMessageMaker msgWithImage:image];
                        message = [EqualLanguage successImage:image];
                    }


                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf packet:message to:nil];
                }
            }
                //: break;
                break;
            //: case PHAssetMediaTypeVideo:
            case PHAssetMediaTypeVideo:
            {
                //: NIMMessage *message = [ContentMessageMaker msgWithVideo:path];
                NIMMessage *message = [EqualLanguage stepTv:path];
                //: [weakSelf sendMessage:message toMessage:nil];
                [weakSelf packet:message to:nil];
            }
                //: break;
                break;
            //: default:
            default:
                //: return;
                return;
        }

    //: }];
    }];
}

//对图片尺寸进行压缩--
//: -(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
-(UIImage*)on:(UIImage*)image independent:(CGSize)newSize
{
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);
    //: [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    //: UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (void)mediaShootPressed
- (void)min
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchMediaFromCamera:^(NSString *path, UIImage *image) {
    [self.mediaFetcher origin:^(NSString *path, UIImage *image) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if (image) {
        if (image) {
            //: message = [ContentMessageMaker msgWithImage:image];
            message = [EqualLanguage successImage:image];
        //: }else{
        }else{
            //: message = [ContentMessageMaker msgWithVideo:path];
            message = [EqualLanguage stepTv:path];
        }
        //: [weakSelf sendMessage:message toMessage:nil];
        [weakSelf packet:message to:nil];
    //: }];
    }];
}

//: - (void)mediaLocationPressed
- (void)rubric
{

}

//: - (void)onSendLocation:(MyUserKitLocationPoint *)locationPoint{
- (void)page:(MyUserKitLocationPoint *)locationPoint{

}


//: - (void)onViewWillAppear
- (void)viewValue
{
    //fix bug: 竖屏进入会话界面，然后右上角进入群信息，再横屏，左上角返回，横屏的会话界面显示的就是竖屏时的大小
    //: [self cleanCache];
    [self value];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self.layout reloadTable];
//    });

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)onViewDidDisappear
- (void)naturalEvent
{
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message {
- (BOOL)wellhead:(NIMMessage *)message {
    //: return YES;
    return YES;
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)min:(void (^)(NSError *))handler
{
    //: [self.dataSource loadMessagePins:handler];
    [self.dataSource inputFillUp:handler];
}

//: - (void)willDisplayMessageModel:(ContentMessageModel *)model
- (void)velleityFilter:(PossibilityMessageStyle *)model
{
    //: [self.dataSource willDisplayMessageModel:model];
    [self.dataSource domain:model];
}

//: #pragma mark - NIMSessionLayoutDelegate
#pragma mark - DisableStyleDelegate
//: - (void)onRefresh
- (void)enableRefresh
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self loadMessages:^(NSArray *messages, NSError *error) {
    [self green:^(NSArray *messages, NSError *error) {
        //: [wself.layout layoutAfterRefresh];
        [wself.layout player];
        //: if (messages.count) {
        if (messages.count) {
            //: [wself insertMessages:messages];
            [wself view:messages];
        }
        //: if (messages.count)
        if (messages.count)
        {
            //: [wself checkReceipts:nil];
            [wself keepAnEyeDoingEndedLikeNonsolidColour:nil];
            //: [wself markRead:NO];
            [wself lastex:NO];
        }

        //: [wself refreshAllChatExtendDatasByMessages:messages];
        [wself expandEachDatasByAllMessagesChat:messages];
    //: }];
    }];
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(approximationInput)] && [self.sessionConfig approximationInput];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self length];
        }
    }
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(approximationInput)] && [self.sessionConfig approximationInput];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self length];
        }
    }
}

//: - (void)playNextAudio
- (void)length
{
    //: NIMMessage *message = self.pendingAudioMessages.lastObject;
    NIMMessage *message = self.pendingAudioMessages.lastObject;
    //: if (self.pendingAudioMessages.count) {
    if (self.pendingAudioMessages.count) {
        //: [self.pendingAudioMessages removeLastObject];
        [self.pendingAudioMessages removeLastObject];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [[ContentKitAudioCenter instance] play:message];
            [[DisplacementCenter range] fast:message];
        //: });
        });
    }
}


//: #pragma mark - Private
#pragma mark - Private

//是否需要开启自动设置所有消息已读 ： 某些场景不需要自动设置消息已读，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldAutoMarkRead
- (BOOL)examineed
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAutoMarkMessageRead)]) {
    if ([self.sessionConfig respondsToSelector:@selector(readBubble)]) {
        //: should = ![self.sessionConfig disableAutoMarkMessageRead];
        should = ![self.sessionConfig readBubble];
    }
    //: return should;
    return should;
}

//: - (ContentKitMediaFetcher *)mediaFetcher
- (ArrayFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[ContentKitMediaFetcher alloc] init];
        _mediaFetcher = [[ArrayFetcher alloc] init];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//: - (void)addListener
- (void)startListener
{
    //声音的监听放在 viewWillApear 回调里，不在这里添加
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fromBubble:) name:UIApplicationDidBecomeActiveNotification object:nil];
    //: if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
        //: extern NSString *const app_versionKey;
        extern NSString *const app_versionKey;
        //: extern NSString *const k_kitData;
        extern NSString *const k_kitData;

        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:app_versionKey object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(topologicalSpace:) name:app_versionKey object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:k_kitData object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recentsing:) name:k_kitData object:nil];
    }

    //: extern NSString *const main_kitData;
    extern NSString *const main_kitData;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:main_kitData object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toolWith:) name:main_kitData object:nil];
}

//: - (void)removeListenner
- (void)listennerOrigin
{
    //声音的监听放在 viewDidDisappear 回调里，不在这里移除
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)findRemainAudioMessages:(NIMMessage *)message
- (NSMutableArray *)audioStatusMessages:(NIMMessage *)message
{
    //: if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //如果这条音频消息被播放过了 或者这条消息是属于自己的消息，则不进行轮播
        //: return nil;
        return nil;
    }
    //: NSMutableArray *messages = [[NSMutableArray alloc] init];
    NSMutableArray *messages = [[NSMutableArray alloc] init];
    //: [self.dataSource.items enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.dataSource.bubbleToImage enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj isKindOfClass:[ContentMessageModel class]]) {
        if ([obj isKindOfClass:[PossibilityMessageStyle class]]) {
            //: ContentMessageModel *model = (ContentMessageModel *)obj;
            PossibilityMessageStyle *model = (PossibilityMessageStyle *)obj;
            //: BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            //: if ([model.message.messageId isEqualToString:message.messageId])
            if ([model.message.messageId isEqualToString:message.messageId])
            {
                //: *stop = YES;
                *stop = YES;
            }
            //: else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            {
                //: [messages addObject:model.message];
                [messages addObject:model.message];
            }
        }
    //: }];
    }];
    //: return messages;
    return messages;
}


//: - (void)processChatroomMessageModels
- (void)usage
{
    //: NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    //: if (pendingMessageCount == 0) {
    if (pendingMessageCount == 0) {
        //: return;
        return;
    }
    //: if ([self.layout canInsertChatroomMessages])
    if ([self.layout speedy])
    {
        //: static NSInteger NTESMaxInsert = 2;
        static NSInteger NTESMaxInsert = 2;
        //: NSArray *insert = nil;
        NSArray *insert = nil;
        //: NSRange range;
        NSRange range;
        //: if (pendingMessageCount > NTESMaxInsert)
        if (pendingMessageCount > NTESMaxInsert)
        {
            //: range = NSMakeRange(0, NTESMaxInsert);
            range = NSMakeRange(0, NTESMaxInsert);
        }
        //: else
        else
        {
            //: range = NSMakeRange(0, pendingMessageCount);
            range = NSMakeRange(0, pendingMessageCount);
        }
        //: insert = [self.pendingChatroomModels subarrayWithRange:range];
        insert = [self.pendingChatroomModels subarrayWithRange:range];
        //: [self.pendingChatroomModels removeObjectsInRange:range];
        [self.pendingChatroomModels removeObjectsInRange:range];
        //: NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        //: BOOL animated = leftPendingMessageCount== 0;
        BOOL animated = leftPendingMessageCount== 0;
        //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:insert];
        AnalogDigitalConverterInput *result = [self.dataSource fortify:insert];
        //: [self.layout insert:result.indexpaths animated:animated];
        [self.layout valueKey:result.indexpaths begin:animated];

        //聊天室消息最大保存消息量，超过这个消息量则把消息列表的前一半挪出内存。
        //: static NSInteger NTESMaxChatroomMessageCount = 200;
        static NSInteger NTESMaxChatroomMessageCount = 200;
        //: NSInteger count = self.dataSource.items.count;
        NSInteger count = self.dataSource.bubbleToImage.count;
        //: if (count > NTESMaxChatroomMessageCount) {
        if (count > NTESMaxChatroomMessageCount) {
            //: NSRange deleteRange = NSMakeRange(0, count/2);
            NSRange deleteRange = NSMakeRange(0, count/2);
            //: NSArray *delete = [self.dataSource deleteModels:deleteRange];
            NSArray *delete = [self.dataSource wellspringWithinIndependent:deleteRange];
            //: [self.layout remove:delete];
            [self.layout versions:delete];
        }

        //: [self processChatroomMessageModels];
        [self usage];
    }
    //: else
    else
    {
        //不能插入是为了保证界面流畅，比如滑动，此时暂停处理
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: NSTimeInterval delay = 1;
        NSTimeInterval delay = 1;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [weakSelf processChatroomMessageModels];
            [weakSelf usage];
        //: });
        });
    }
}

//: #pragma mark - 聊天扩展相关
#pragma mark - 聊天扩展相关

//: - (void)refreshAllChatExtendDatasByMessage:(NIMMessage *)message
- (void)chatKey:(NIMMessage *)message
{
    //: ContentMessageModel *model = [self findMessageModel:message];
    PossibilityMessageStyle *model = [self pull:message];
    //: if (model)
    if (model)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self key:model forEachOffe:nil];
    }
}

//: - (void)refreshAllChatExtendDatasByMessages:(NSArray<NIMMessage *> *)messages
- (void)expandEachDatasByAllMessagesChat:(NSArray<NIMMessage *> *)messages
{
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: [self refreshAllChatExtendDatasByMessage:message];
        [self chatKey:message];
    }
}

//: - (void)refreshAllAfterFetchCommentsByMessages:(NSArray<NIMMessage *> *)messages
- (void)candleHolderMessages:(NSArray<NIMMessage *> *)messages
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
    [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
                                                  //: completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
                                                  completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
    {
        //: [weakSelf refreshAllChatExtendDatasByMessages:messages];
        [weakSelf expandEachDatasByAllMessagesChat:messages];
    //: }];
    }];
}

//: - (void)refreshAllAfterFetchCommentsByModels:(NSArray<ContentMessageModel *> *)models
- (void)picture:(NSArray<PossibilityMessageStyle *> *)models
{
    //: NSMutableArray *messages = [NSMutableArray array];
    NSMutableArray *messages = [NSMutableArray array];
    //: for(ContentMessageModel *model in models)
    for(PossibilityMessageStyle *model in models)
    {
        //: [messages addObject:model.message];
        [messages addObject:model.message];
    }

    //: [self refreshAllAfterFetchCommentsByMessages:messages];
    [self candleHolderMessages:messages];
}

//: - (void)refreshAllChatExtendDatasBySubModel:(ContentMessageModel *)model
- (void)color:(PossibilityMessageStyle *)model
                                 //: completion:(NIMSessionInteractorHandler)completion
                                 info:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self outsideMessage:message];
    //: ContentMessageModel *threadMessageModel = [self findMessageModel:threadMessage];
    PossibilityMessageStyle *threadMessageModel = [self pull:threadMessage];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self refreshAllChatExtendDatasByModel:threadMessageModel completion:completion];
        [self key:threadMessageModel forEachOffe:completion];
    }
    //: else
    else
    {
       //: if (completion)
       if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)refreshAllChatExtendDatasByModel:(ContentMessageModel *)model
- (void)key:(PossibilityMessageStyle *)model
                              //: completion:(NIMSessionInteractorHandler)completion
                              forEachOffe:(NIMSessionInteractorHandler)completion

{

    // Thread & 被回复消息
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self loadThreadAndRepliedMessages:model completion:^(BOOL success, id result)
    [self upAllow:model label:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf my:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的子消息
    //: [self loadChildMessages:model completion:^(BOOL success, id result)
    [self shouldMessages:model buttonStorage:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf my:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的快捷回复
    //: [self loadQuickComments:model completion:^(BOOL success, id result)
    [self key:model shadow:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf my:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];
}


//: - (void)refreshAllChatExtendDatasByModels:(NSArray<ContentMessageModel *> *)models
- (void)info:(NSArray<PossibilityMessageStyle *> *)models
                               //: completion:(NIMSessionInteractorHandler)completion
                               random:(NIMSessionInteractorHandler)completion
{
    //: for (ContentMessageModel *model in models)
    for (PossibilityMessageStyle *model in models)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self key:model forEachOffe:nil];
    }
}

//: - (void)refreshQuickComments:(NIMMessage *)message
- (void)strikeOut:(NIMMessage *)message
                  //: completion:(NIMSessionInteractorHandler)completion
                  tagTotaleractorHandler:(NIMSessionInteractorHandler)completion
{
   //: ContentMessageModel *model = [self findMessageModel:message];
   PossibilityMessageStyle *model = [self pull:message];
    //: if (model)
    if (model)
    {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self loadQuickComments:model completion:^(BOOL success, id result) {
        [self key:model shadow:^(BOOL success, id result) {
            //: [weakSelf uiReloadMessageCell:message];
            [weakSelf my:message];
            //: if (completion)
            if (completion)
            {
                //: completion(success, result);
                completion(success, result);
            }
        //: }];
        }];
    }
    //: else
    else
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)loadThreadAndRepliedMessages:(ContentMessageModel *)model
- (void)upAllow:(PossibilityMessageStyle *)model
                          //: completion:(NIMSessionInteractorHandler)completion
                          label:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableRepliedContent || !message)
    if (!model.enableRepliedContent || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    // 父消息
    //: NIMMessage *threadMessage = nil;
    NIMMessage *threadMessage = nil;
    //: if (message.threadMessageId.length > 0)
    if (message.threadMessageId.length > 0)
    {
       //: threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       //: model.parentMessage = threadMessage;
       model.parentMessage = threadMessage;
        //: if (!threadMessage)
        if (!threadMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.threadMessageId;
            key.messageID = message.threadMessageId;
            //: key.fromAccount = message.threadMessageFrom;
            key.fromAccount = message.threadMessageFrom;
            //: key.toAccount = message.threadMessageTo;
            key.toAccount = message.threadMessageTo;
            //: key.serverID = message.threadMessageServerId;
            key.serverID = message.threadMessageServerId;
            //: key.timestamp = message.threadMessageTime;
            key.timestamp = message.threadMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (key.messageID.length == 0)
            if (key.messageID.length == 0)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self coloured:key show:^(BOOL success, NIMMessage *result) {
                //: model.parentMessage = result;
                model.parentMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
        }
    }

    // 被回复消息
    //: NIMMessage *repliedMessage = nil;
    NIMMessage *repliedMessage = nil;
    //: if (message.repliedMessageId.length > 0)
    if (message.repliedMessageId.length > 0)
    {
       //: repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
       repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
                                                                        //: messageIds:@[message.repliedMessageId]] firstObject];
                                                                        messageIds:@[message.repliedMessageId]] firstObject];
        //: if (!repliedMessage)
        if (!repliedMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.repliedMessageId;
            key.messageID = message.repliedMessageId;
            //: key.fromAccount = message.repliedMessageFrom;
            key.fromAccount = message.repliedMessageFrom;
            //: key.toAccount = message.repliedMessageTo;
            key.toAccount = message.repliedMessageTo;
            //: key.serverID = message.repliedMessageServerId;
            key.serverID = message.repliedMessageServerId;
            //: key.timestamp = message.repliedMessageTime;
            key.timestamp = message.repliedMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (!key)
            if (!key)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self coloured:key show:^(BOOL success, NIMMessage *result) {
                //: model.repliedMessage = result;
                model.repliedMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: model.repliedMessage = repliedMessage;
            model.repliedMessage = repliedMessage;
            //: if (completion)
            if (completion)
            {
                //: completion(YES, nil);
                completion(YES, nil);
            }
        }
    }
}

//: - (void)fetchMessageInfo:(NIMChatExtendBasicInfo *)info
- (void)coloured:(NIMChatExtendBasicInfo *)info
              //: completion:(NIMSessionInteractorHandler)completion
              show:(NIMSessionInteractorHandler)completion
{
    //: if (!info)
    if (!info)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
    [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
                                                      //: syncToDB:YES
                                                      syncToDB:YES
                                                    //: completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
                                                    completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
    {
        //: if (error)
        if (error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
            //: return;
            return;
        }

        //: completion(YES, [result objectForKey:info]);
        completion(YES, [result objectForKey:info]);
    //: }];
    }];
}

//: - (void)loadChildMessages:(ContentMessageModel *)model
- (void)shouldMessages:(PossibilityMessageStyle *)model
               //: completion:(NIMSessionInteractorHandler)completion
               buttonStorage:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableSubMessages || !message)
    if (!model.enableSubMessages || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        //: model.childMessages = subMessages;
        model.childMessages = subMessages;
        //: model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion && subMessages.count > 0)
            if (completion && subMessages.count > 0)
            {
                //: completion(YES, subMessages);
                completion(YES, subMessages);
            }
        //: });
        });

    //: });
    });
}

//: - (void)loadQuickComments:(ContentMessageModel *)model
- (void)key:(PossibilityMessageStyle *)model
               //: completion:(NIMSessionInteractorHandler)completion
               shadow:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableQuickComments || !message)
    if (!model.enableQuickComments || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: model.quickComments = result;
            model.quickComments = result;
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: model.emoticonsContainerSize = [ContentKitQuickCommentUtil containerSizeWithComments:result];
                model.emoticonsContainerSize = [TapOption black:result];
            }
            //: else
            else
            {
                //: model.emoticonsContainerSize = CGSizeZero;
                model.emoticonsContainerSize = CGSizeZero;
            }
            //: if (error) {
            if (error) {
                //: completion(NO, nil);
                completion(NO, nil);
            //: } else {
            } else {
                //: if (result) {
                if (result) {
                    //: completion(YES, result);
                    completion(YES, result);
                //: } else {
                } else {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
            }
        }
    //: }];
    }];
}

//: - (void)uiReloadThreadMessageBySubMessage:(ContentMessageModel *)model
- (void)standIn:(PossibilityMessageStyle *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self outsideMessage:message];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self uiReloadMessageCell:threadMessage];
        [self my:threadMessage];
    }
}

//: - (void)uiReloadMessageCell:(NIMMessage *)message
- (void)my:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return;
        return;
    }
    //: ContentMessageModel *model = [self findMessageModel:message];
    PossibilityMessageStyle *model = [self pull:message];
    //: if (model)
    if (model)
    {
//        AnalogDigitalConverterInput *result = [self.dataSource updateMessageModel:model];
//        NSInteger index = [result.indexpaths.firstObject row];
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
//        [self safelyReloadRowAtIndexPath:indexPath];

        //: [self safelyReloadRowAtIndexPath:nil];
        [self subKind:nil];
    }
    //: return;
    return;
}


//: - (NIMMessage *)threadMessageOfMessage:(NIMMessage *)message
- (NIMMessage *)outsideMessage:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: NSString *messageID = message.threadMessageId;
    NSString *messageID = message.threadMessageId;
    //: if (messageID.length == 0)
    if (messageID.length == 0)
    {
        //: return nil;
        return nil;
    }
    //: return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
    return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
}

//: - (void)safelyReloadRowAtIndexPath:(NSIndexPath *)indexPath
- (void)subKind:(NSIndexPath *)indexPath
{
    //: if (self.dataSource.items.count != [self.layout numberOfRows]) {
    if (self.dataSource.bubbleToImage.count != [self.layout month]) {
        //: NSLog(@"Error: trying to reload message while cell count: %zd is not equal to item count %zd.", [self.layout numberOfRows], self.dataSource.items.count);
        //: return;
        return;
    }

    //: if (indexPath) {
    if (indexPath) {
        // 修改批量未读消息的问题
        //: [self.layout update:indexPath];
        [self.layout last:indexPath];
    //: } else {
    } else {
        //: [self.layout reloadTable];
        [self.layout table];
    }
}


//: @end
@end
