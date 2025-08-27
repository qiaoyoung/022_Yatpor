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
//: #import "FFFSessionConfigurator.h"
#import "HandleConfigurator.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface ColorImpl : NSObject<ToolLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) InputView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithShared:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         showSkullSessionText:(id<SaloonConfig>)sessionConfig;

//: @end
@end