// __DEBUG__
// __CLOSE_PRINT__
//
//  PoliceSquadView.h
// UserKit
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol ContentTeamCardHeaderViewDelegate <NSObject>
@protocol NameDelegate <NSObject>

//: - (void)onTouchAvatar:(id)sender;
- (void)spaced:(id)sender;

//: @end
@end

//: @interface ContentTeamCardHeaderView : UIView
@interface PoliceSquadView : UIView

//: @property (nonatomic, weak) id<ContentTeamCardHeaderViewDelegate> delegate;
@property (nonatomic, weak) id<NameDelegate> delegate;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
