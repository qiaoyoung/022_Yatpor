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
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "ViewInfo.h"

//: @protocol FFFContactDataCellDelegate <NSObject>
@protocol ImageDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)textBy:(NSString *)memberId;

//: @end
@end

//: @class FFFAvatarImageView;
@class MessageSendView;

//: @interface FFFContactDataCell : UITableViewCell
@interface StreetwiseViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) MessageSendView * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<ImageDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)flush:(id<AlterDate>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)voiceColor:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)language:(id<AlterDate>)member;

//: @end
@end