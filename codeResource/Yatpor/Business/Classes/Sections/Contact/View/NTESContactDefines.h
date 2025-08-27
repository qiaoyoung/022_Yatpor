// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol SizeCollectionTo <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)begin;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)keyMembers;

//重用id
//: - (NSString*)reuseId;
- (NSString*)should;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)spick;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol NameItem<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)outSize;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)shouldText;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)anTing;

//重用id
//: - (NSString*)reuseId;
- (NSString*)save;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)temp;

//badge
//: - (NSString *)badge;
- (NSString *)sumManager;

//显示名
//: - (NSString *)nick;
- (NSString *)totaly;

//占位图
//: - (UIImage *)icon;
- (UIImage *)spectacles;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)size;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)coloring;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)managerView;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol ViewEqualText <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)picture:(id<NameItem>)item;

//: - (void)addDelegate:(id)delegate;
- (void)wateringCan:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat showEdgeData = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat show_textCreateFormat = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger show_commentTitle = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger user_borderMessage = 10;//头像和选择框之间的距离