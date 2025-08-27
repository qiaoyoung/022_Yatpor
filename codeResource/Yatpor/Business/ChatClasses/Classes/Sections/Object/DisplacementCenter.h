// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplacementCenter.h
// UserKit
//
//  Created by chris on 2017/1/13.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NIMMessage;
@class NIMMessage;

//: @interface ContentKitAudioCenter : NSObject
@interface DisplacementCenter : NSObject

//: @property (nonatomic,strong) NIMMessage *currentPlayingMessage;
@property (nonatomic,strong) NIMMessage *currentPlayingMessage;

//: + (instancetype)instance;
+ (instancetype)range;

//: - (void)play:(NIMMessage *)message;
- (void)fast:(NIMMessage *)message;

//: @end
@end
