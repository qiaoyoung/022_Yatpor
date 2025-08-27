// __DEBUG__
// __CLOSE_PRINT__
//
//  TextViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContentAvatarImageView;
@class MessageSendView;
//: @class NTESContactDataMember;
@class EmptyOption;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol NameCompartmentMenu <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)candiding:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface TextViewCell : UITableViewCell

//: @property (nonatomic,strong) ContentAvatarImageView * avatarImageView;
@property (nonatomic,strong) MessageSendView * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<NameCompartmentMenu> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)streetwise:(EmptyOption *)member;

//: @end
@end
