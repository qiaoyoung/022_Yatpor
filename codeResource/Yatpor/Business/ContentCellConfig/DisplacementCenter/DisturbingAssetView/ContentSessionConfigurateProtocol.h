// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentSessionConfigurateProtocol.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol ApproximateRangeDelegate <NSObject>

//: - (void)didFetchMessageData;
- (void)fetchData;

//: - (void)didRefreshMessageData;
- (void)viewBook;

//: - (void)didPullUpMessageData;
- (void)replyInformation;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol LengthCounteractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)container:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)packet:(NIMMessage *)message to:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)listMonitor:(NIMMessage *)message team:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)telegram:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          name:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         option:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)along:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)count:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             headInside:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)textEnableCompletion:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              viewAdd_strong:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             date:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)save:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          setup:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             nameCompletion:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)messageTable:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)view:(NSArray *)messages;

//: - (ContentMessageModel *)updateMessage:(NIMMessage *)message;
- (PossibilityMessageStyle *)preserveShould:(NIMMessage *)message;

//: - (ContentMessageModel *)deleteMessage:(NIMMessage *)message;
- (PossibilityMessageStyle *)nutsAndBolts:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)data:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)itemMessage:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)representation;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)lastex:(BOOL)needMarkDataModel;

//: - (ContentMessageModel *)findMessageModel:(NIMMessage *)message;
- (PossibilityMessageStyle *)pull:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)keyTing;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)keepAnEyeDoingEndedLikeNonsolidColour:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)messages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)green:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)need:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)canIndex:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)wellhead:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)min:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(ContentMessageModel *)model;
- (void)velleityFilter:(PossibilityMessageStyle *)model;

//排版接口

//: - (void)resetLayout;
- (void)bar;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)blueLayout:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)value;

//: - (void)pullUp;
- (void)max;

//按钮响应接口
//: - (void)mediaAudioPressed:(ContentMessageModel *)messageModel;
- (void)mediaPressed:(PossibilityMessageStyle *)messageModel;

//: - (void)mediaPicturePressed;
- (void)radiogram;

//: - (void)mediaShootPressed;
- (void)min;

//: - (void)mediaLocationPressed;
- (void)rubric;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)viewValue;

//: - (void)onViewDidDisappear;
- (void)naturalEvent;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)tableIcon;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setTableIcon:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setReferenceMessage:(NIMMessage *)message;

//: @end
@end
