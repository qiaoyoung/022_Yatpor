// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "LanguageBottomConfig.h"

//: @class NIMMessage;
@class NIMMessage;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESThreadSessionConfig : NTESSessionConfig
@interface ContentSessionConfig : LanguageBottomConfig

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWithRecord:(NIMMessage *)message;

//: @end
@end

//: @interface NTESThreadDataSourceProvider : NSObject <ContentKitMessageProvider>
@interface OriginProvider : NSObject <MessageCustom>

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
