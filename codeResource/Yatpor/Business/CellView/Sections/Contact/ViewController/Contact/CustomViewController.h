// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewController.h
//  NIM
//
//  Created by Genning-Work on 2020/1/2.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol NTESContactSearchDelegate <NSObject>
@protocol NobbleDelegate <NSObject>

//不搜索team
//: - (BOOL)disableSearchTeam;
- (BOOL)backgroundRequest;

//忽略大小写
//: - (BOOL)ignoreCase;
- (BOOL)cellBackground;

//: @end
@end

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactSearchViewController : UITableViewController
@interface CustomViewController : UITableViewController

//: @property (nonatomic, assign) id <NTESContactSearchDelegate> delegate;
@property (nonatomic, assign) id <NobbleDelegate> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END