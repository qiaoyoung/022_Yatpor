// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @protocol NIMGroupMemberProtocol <NSObject>
@protocol AlterDate <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)statusContent;

//: - (NSString *)memberId;
- (NSString *)target;

//: - (NSString *)showName;
- (NSString *)range;

//: - (NSString *)avatarUrlString;
- (NSString *)subIn;

//: - (UIImage *)avatarImage;
- (UIImage *)yard;

//: - (id)sortKey;
- (id)borderlineKey;

//: @end
@end

//: @protocol NIMContactItemCollection <NSObject>
@protocol FundamentalMeasureView <NSObject>

//显示的title名
//: - (NSString*)title;
- (NSString*)centerAcross;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)towardSession;

//重用id
//: - (NSString*)reuseId;
- (NSString*)mId;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)change;

//: @end
@end




//: static const CGFloat NIMContactUtilRowHeight = 57;
static const CGFloat show_viewStr = 57;//util类Cell行高
//: static const CGFloat NIMContactDataRowHeight = 50;
static const CGFloat show_normalValue = 50;//data类Cell行高
//: static const NSInteger NIMContactAccessoryLeft = 10;
static const NSInteger kInfoMsg = 10;//选择框到左边的距离
//: static const NSInteger NIMContactAvatarLeft = 15;
static const NSInteger user_customTitle = 15;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NIMContactAvatarAndAccessorySpacing = 10;
static const NSInteger appTipData = 10;//头像和选择框之间的距离
//: static const NSInteger NIMContactAvatarAndTitleSpacing = 20;
static const NSInteger kMakeData = 20;//头像和文字之间的间距
