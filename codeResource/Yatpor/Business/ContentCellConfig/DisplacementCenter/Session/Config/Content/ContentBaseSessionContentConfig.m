// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentBaseSessionContentConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentBaseSessionContentConfig.h"
#import "ContentBaseSessionContentConfig.h"
//: #import "ContentTextContentConfig.h"
#import "TitleConfig.h"
//: #import "ContentImageContentConfig.h"
#import "InputConfig.h"
//: #import "ContentAudioContentConfig.h"
#import "QuickConfig.h"
//: #import "ContentVideoContentConfig.h"
#import "ViewConfig.h"
//: #import "ContentFileContentConfig.h"
#import "BlankConfig.h"
//: #import "ContentNotificationContentConfig.h"
#import "ObjectConfig.h"
//: #import "ContentLocationContentConfig.h"
#import "NameOnConfig.h"
//: #import "ContentUnsupportContentConfig.h"
#import "SubstitutionSuccess.h"
//: #import "ContentTipContentConfig.h"
#import "EmptyHandedConfig.h"
//: #import "ContentReplyedTextContentConfig.h"
#import "ContentConfig.h"
//: #import "ContentRtcCallRecordContentConfig.h"
#import "RangeMessageConfig.h"

//: @interface ContentSessionContentConfigFactory ()
@interface ColorImageFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) ContentUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) SubstitutionSuccess *unsupportConfig;
//: @end
@end

//: @implementation ContentSessionContentConfigFactory
@implementation ColorImageFactory

//: + (instancetype)sharedFacotry
+ (instancetype)should
{
    //: static ContentSessionContentConfigFactory *instance = nil;
    static ColorImageFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentSessionContentConfigFactory alloc] init];
        instance = [[ColorImageFactory alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _dict = @{@(NIMMessageTypeText) : [ContentTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [TitleConfig new],
                  //: @(NIMMessageTypeImage) : [ContentImageContentConfig new],
                  @(NIMMessageTypeImage) : [InputConfig new],
                  //: @(NIMMessageTypeAudio) : [ContentAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [QuickConfig new],
                  //: @(NIMMessageTypeVideo) : [ContentVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [ViewConfig new],
                  //: @(NIMMessageTypeFile) : [ContentFileContentConfig new],
                  @(NIMMessageTypeFile) : [BlankConfig new],
                  //: @(NIMMessageTypeLocation) : [ContentLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [NameOnConfig new],
                  //: @(NIMMessageTypeNotification) : [ContentNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [ObjectConfig new],
                  //: @(NIMMessageTypeTip) : [ContentTipContentConfig new],
                  @(NIMMessageTypeTip) : [EmptyHandedConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [ContentRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [RangeMessageConfig new],
        //: };
        };

        //: ContentReplyedTextContentConfig *replyedTextConfig = [ContentReplyedTextContentConfig new];
        ContentConfig *replyedTextConfig = [ContentConfig new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[ContentUnsupportContentConfig alloc] init];
        _unsupportConfig = [[SubstitutionSuccess alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<QuantitativeRelationConfig>)month:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<QuantitativeRelationConfig>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<QuantitativeRelationConfig>)item:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<QuantitativeRelationConfig>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
