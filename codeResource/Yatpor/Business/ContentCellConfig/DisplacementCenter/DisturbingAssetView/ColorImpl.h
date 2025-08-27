// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// UserKit
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionConfigurator.h"
#import "HandleConfigurator.h"
//: #import "ContentSessionPrivateProtocol.h"
#import "ContentSessionPrivateProtocol.h"

//: @interface ContentSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface ColorImpl : NSObject<ToolLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) ContentInputView *inputView;
@property (nonatomic,strong) InputView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithShared:(NIMSession *)session
                         //: config:(id<ContentSessionConfig>)sessionConfig;
                         showSkullSessionText:(id<SaloonConfig>)sessionConfig;

//: @end
@end
