// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCellConfig.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class FFFSessionMessageContentView;
@class ObligatoView;
//: @class FFFMessageModel;
@class PossibilityMessageStyle;

//: @protocol FFFCellLayoutConfig <NSObject>
@protocol MenuConfig <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)text:(PossibilityMessageStyle *)model recent:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(FFFMessageModel *)model;
- (NSString *)doTeamImage:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)message:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)inputInsets:(PossibilityMessageStyle *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)stateTable:(PossibilityMessageStyle *)model perimeter:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(FFFMessageModel *)model;
- (NSString *)infoTo:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)with:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)date:(PossibilityMessageStyle *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model;
- (BOOL)red:(PossibilityMessageStyle *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(FFFMessageModel *)model;
- (CGPoint)contentKeyMargin:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(FFFMessageModel *)model;
- (CGSize)viewOf:(PossibilityMessageStyle *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model;
- (BOOL)team:(PossibilityMessageStyle *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model;
- (CGPoint)nameMargin:(PossibilityMessageStyle *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model;
- (BOOL)bottom:(PossibilityMessageStyle *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(FFFMessageModel *)model;
- (NSArray *)memberBy:(PossibilityMessageStyle *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(FFFMessageModel *)model;
- (BOOL)headerButton:(PossibilityMessageStyle *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model;
- (BOOL)chronicleBackground:(PossibilityMessageStyle *)model;


//: @end
@end