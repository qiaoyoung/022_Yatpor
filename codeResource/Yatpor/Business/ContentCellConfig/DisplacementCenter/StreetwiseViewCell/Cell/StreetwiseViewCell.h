// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ContentContactDefines.h"
#import "ContentContactDefines.h"
//: #import "ContentKitInfo.h"
#import "ViewInfo.h"

//: @protocol ContentContactDataCellDelegate <NSObject>
@protocol ImageDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)textBy:(NSString *)memberId;

//: @end
@end

//: @class ContentAvatarImageView;
@class MessageSendView;

//: @interface ContentContactDataCell : UITableViewCell
@interface StreetwiseViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) ContentAvatarImageView * avatarImageView;
@property (nonatomic,strong) MessageSendView * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<ContentContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<ImageDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)flush:(id<AlterDate>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)voiceColor:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)language:(id<AlterDate>)member;

//: @end
@end
