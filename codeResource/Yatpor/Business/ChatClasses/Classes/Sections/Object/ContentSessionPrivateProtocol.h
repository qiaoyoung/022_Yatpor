// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentSessionPrivateProtocol.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import "ContentSessionViewController.h"
#import "NameViewController.h"

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;
//: @class ContentMessageModel;
@class PossibilityMessageStyle;

//: @interface NIMSessionMessageOperateResult : NSObject
@interface AnalogDigitalConverterInput : NSObject

//: @property (nonatomic,copy) NSArray *indexpaths;
@property (nonatomic,copy) NSArray *indexpaths;

//: @property (nonatomic,copy) NSArray *messageModels;
@property (nonatomic,copy) NSArray *messageModels;

//: @end
@end

//: @protocol NIMSessionDataSource <NSObject>
@protocol ArrayIcon <NSObject>

//: - (NSArray *)items;
- (NSArray *)bubbleToImage;

//: - (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models;
- (AnalogDigitalConverterInput *)fortify:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models;
- (AnalogDigitalConverterInput *)child:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)deleteMessageModel:(ContentMessageModel *)model;
- (AnalogDigitalConverterInput *)typicalModel:(PossibilityMessageStyle *)model;

//: - (NIMSessionMessageOperateResult *)updateMessageModel:(ContentMessageModel *)model;
- (AnalogDigitalConverterInput *)inflect:(PossibilityMessageStyle *)model;

//: - (ContentMessageModel *)findModel:(NIMMessage *)message;
- (PossibilityMessageStyle *)press:(NIMMessage *)message;

//: - (NSInteger)indexAtModelArray:(ContentMessageModel *)model;
- (NSInteger)length:(PossibilityMessageStyle *)model;

//: - (NSArray *)deleteModels:(NSRange)range;
- (NSArray *)wellspringWithinIndependent:(NSRange)range;

//: - (void)resetMessages:(void(^)(NSError *error))handler;
- (void)teamTo:(void(^)(NSError *error))handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)tillUser:(void(^)(NSError *error, NSArray *))handler;

//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)complete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)loadNewMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)doCompleteDevice:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)checkAttachmentState:(NSArray *)messages;
- (void)info:(NSArray *)messages;

//: - (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (NSDictionary *)quickTeam:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)language:(NSArray *)messages;

//: - (void)cleanCache;
- (void)active;

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)should:(BOOL)isShow;

//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)inputFillUp:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(ContentMessageModel *)model;
- (void)domain:(PossibilityMessageStyle *)model;

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)supplement:(NIMMessage *)message phonation:(void (^)(NSError *))handler;

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)name:(NIMMessage *)message message:(void (^)(NSError *))handler;

//: @end
@end


//: @protocol NIMSessionLayoutDelegate <NSObject>
@protocol DisableStyleDelegate <NSObject>

//: - (void)onRefresh;
- (void)enableRefresh;

//: @end
@end

//: @protocol NIMSessionLayout <NSObject>
@protocol ToolLayout <NSObject>

//: - (void)update:(NSIndexPath *)indexPath;
- (void)last:(NSIndexPath *)indexPath;

//: - (void)insert:(NSArray *)indexPaths animated:(BOOL)animated;
- (void)valueKey:(NSArray *)indexPaths begin:(BOOL)animated;

//: - (void)remove:(NSArray *)indexPaths;
- (void)versions:(NSArray *)indexPaths;

//: - (BOOL)canInsertChatroomMessages;
- (BOOL)speedy;

//: - (void)calculateContent:(ContentMessageModel *)model;
- (void)imageLabel:(PossibilityMessageStyle *)model;

//: - (void)reloadTable;
- (void)table;

//: - (void)resetLayout;
- (void)cell;

//: - (void)changeLayout:(CGFloat)inputViewHeight;
- (void)custom:(CGFloat)inputViewHeight;

//: - (void)setDelegate:(id<NIMSessionLayoutDelegate>)delegate;
- (void)setDelegate:(id<DisableStyleDelegate>)delegate;

//: - (void)layoutAfterRefresh;
- (void)player;

//: - (void)adjustOffset:(NSInteger)row;
- (void)elite:(NSInteger)row;

//: - (void)dismissReplyContent;
- (void)dismissBy;

//: - (NSInteger)numberOfRows;
- (NSInteger)month;

//: @end
@end





//: @interface ContentSessionViewController(Interactor)
@interface NameViewController(Interactor)

//: - (void)setInteractor:(id<NIMSessionInteractor>) interactor;
- (void)setInteractor:(id<LengthCounteractor>) interactor;

//: - (void)setTableDelegate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;
- (void)setOnCover:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;

//: @end
@end
