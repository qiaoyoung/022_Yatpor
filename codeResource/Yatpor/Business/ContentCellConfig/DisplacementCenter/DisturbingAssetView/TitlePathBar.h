// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentSessionConfigurateProtocol.h"
#import "ContentSessionConfigurateProtocol.h"
//: #import "ContentSessionPrivateProtocol.h"
#import "ContentSessionPrivateProtocol.h"
//: #import "ContentSessionConfig.h"
#import "SaloonConfig.h"

//: @interface ContentSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface TitlePathBar : NSObject<ArrayIcon>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithHead:(NIMSession *)session
                         //: config:(id<ContentSessionConfig>)sessionConfig;
                         shank:(id<SaloonConfig>)sessionConfig;

//: @end
@end
