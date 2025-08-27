// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFKitInfo;
@class ViewInfo;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol SectionDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)user:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface DisturbingAssetView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<SectionDelegate> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)month:(ViewInfo *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)point:(ViewInfo *)info;

//: @end
@end