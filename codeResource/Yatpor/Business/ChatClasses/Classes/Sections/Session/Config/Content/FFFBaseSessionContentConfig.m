// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFBaseSessionContentConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFBaseSessionContentConfig.h"
#import "FFFBaseSessionContentConfig.h"
//: #import "FFFTextContentConfig.h"
#import "TitleConfig.h"
//: #import "FFFImageContentConfig.h"
#import "InputConfig.h"
//: #import "FFFAudioContentConfig.h"
#import "QuickConfig.h"
//: #import "FFFVideoContentConfig.h"
#import "ViewConfig.h"
//: #import "FFFFileContentConfig.h"
#import "BlankConfig.h"
//: #import "FFFNotificationContentConfig.h"
#import "ObjectConfig.h"
//: #import "FFFLocationContentConfig.h"
#import "NameOnConfig.h"
//: #import "FFFUnsupportContentConfig.h"
#import "SubstitutionSuccess.h"
//: #import "FFFTipContentConfig.h"
#import "EmptyHandedConfig.h"
//: #import "FFFReplyedTextContentConfig.h"
#import "ContentConfig.h"
//: #import "FFFRtcCallRecordContentConfig.h"
#import "RangeMessageConfig.h"

//: @interface FFFSessionContentConfigFactory ()
@interface ColorImageFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) FFFUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) SubstitutionSuccess *unsupportConfig;
//: @end
@end

//: @implementation FFFSessionContentConfigFactory
@implementation ColorImageFactory

//: + (instancetype)sharedFacotry
+ (instancetype)should
{
    //: static FFFSessionContentConfigFactory *instance = nil;
    static ColorImageFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSessionContentConfigFactory alloc] init];
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
        //: _dict = @{@(NIMMessageTypeText) : [FFFTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [TitleConfig new],
                  //: @(NIMMessageTypeImage) : [FFFImageContentConfig new],
                  @(NIMMessageTypeImage) : [InputConfig new],
                  //: @(NIMMessageTypeAudio) : [FFFAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [QuickConfig new],
                  //: @(NIMMessageTypeVideo) : [FFFVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [ViewConfig new],
                  //: @(NIMMessageTypeFile) : [FFFFileContentConfig new],
                  @(NIMMessageTypeFile) : [BlankConfig new],
                  //: @(NIMMessageTypeLocation) : [FFFLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [NameOnConfig new],
                  //: @(NIMMessageTypeNotification) : [FFFNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [ObjectConfig new],
                  //: @(NIMMessageTypeTip) : [FFFTipContentConfig new],
                  @(NIMMessageTypeTip) : [EmptyHandedConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [FFFRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [RangeMessageConfig new],
        //: };
        };

        //: FFFReplyedTextContentConfig *replyedTextConfig = [FFFReplyedTextContentConfig new];
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
        //: _unsupportConfig = [[FFFUnsupportContentConfig alloc] init];
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