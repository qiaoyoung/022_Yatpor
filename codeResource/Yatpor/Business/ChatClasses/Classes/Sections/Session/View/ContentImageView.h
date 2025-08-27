// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentImageView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentMessageCellProtocol.h"
#import "ContentMessageCellProtocol.h"
//: #import "ContentTimestampModel.h"
#import "AlongBar.h"

//: @class ContentSessionMessageContentView;
@class ObligatoView;
//: @class ContentAvatarImageView;
@class MessageSendView;
//: @class ContentBadgeView;
@class PutOptionView;

//: @interface ContentMessageCell : UITableViewCell
@interface ContentImageView : UITableViewCell

//: @property (nonatomic, strong) ContentAvatarImageView *headImageView;
@property (nonatomic, strong) MessageSendView *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) ContentSessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) ObligatoView *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) ContentSessionMessageContentView *bubbleView;
@property (nonatomic, strong) ObligatoView *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) ContentBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) PutOptionView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) ContentMessageModel *model;
@property (nonatomic, readonly) PossibilityMessageStyle *model;

//: @property (nonatomic, weak) id<ContentMessageCellDelegate> delegate;
@property (nonatomic, weak) id<AllowMessageSuccess> delegate;

//: - (void)refreshData:(ContentMessageModel *)data;
- (void)backData:(PossibilityMessageStyle *)data;

//: @end
@end
