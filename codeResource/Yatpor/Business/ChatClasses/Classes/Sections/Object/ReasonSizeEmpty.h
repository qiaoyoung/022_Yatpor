// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentSessionConfigurateProtocol.h"
#import "ContentSessionConfigurateProtocol.h"
//: #import "ContentMessageCellProtocol.h"
#import "ContentMessageCellProtocol.h"

//: @interface ContentSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface ReasonSizeEmpty : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<LengthCounteractor> interactor;

//: @property (nonatomic,weak) id<ContentMessageCellDelegate> delegate;
@property (nonatomic,weak) id<AllowMessageSuccess> delegate;

//: @end
@end
