// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentSessionPrivateProtocol.h"
#import "ContentSessionPrivateProtocol.h"
//: #import "ContentSessionConfigurateProtocol.h"
#import "ContentSessionConfigurateProtocol.h"

//: @interface ContentSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface ToolReplacement : NSObject<LengthCounteractor,DisableStyleDelegate>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithStep:(NIMSession *)session
                         //: config:(id<ContentSessionConfig>)sessionConfig;
                         draftConfig:(id<SaloonConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<ApproximateRangeDelegate> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<ArrayIcon> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<ToolLayout> layout;

//: @end
@end
