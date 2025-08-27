// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissScaleDatasource.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentKitMessageProvider.h"
#import "MessageCustom.h"
//: #import "ContentSessionConfig.h"
#import "SaloonConfig.h"

//: @class ContentMessageModel;
@class PossibilityMessageStyle;

//: @interface ContentSessionMsgDatasource : NSObject
@interface DismissScaleDatasource : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithSelect:(NIMSession*)session
                         //: config:(id<ContentSessionConfig>)sessionConfig;
                         session:(id<SaloonConfig>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<ContentSessionConfig> sessionConfig;
@property (nonatomic, weak) id<SaloonConfig> sessionConfig;

//: - (NSInteger)indexAtModelArray:(ContentMessageModel*)model;
- (NSInteger)secretName:(PossibilityMessageStyle*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)add:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)user:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)loadDown:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)ting:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)vox:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(ContentMessageModel *)model;
- (void)recordingByModel:(PossibilityMessageStyle *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)dismiss:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)spy:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(ContentMessageModel*)model;
- (NSArray<NSNumber *> *)image:(PossibilityMessageStyle*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)line:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)dedication:(NIMMessage *)message filter:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)tingManager:(NIMMessage *)message range:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)session;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)joint:(BOOL)isShow;

//: @end
@end
