// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "ViewInfo.h"
//: #import "NTESContactDataMember.h"
#import "EmptyOption.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESUserListCellDelegate <NSObject>
@protocol NameCompartmentMenu <NSObject>

//: - (void)didTouchMessageButton:(NSString *)memberId;
- (void)contentWith:(NSString *)memberId;

//: @end
@end

//: @interface NTESFriendListTableViewCell : UITableViewCell
@interface TeamView : UITableViewCell

//: @property(nonatomic, strong) UIImageView *iconImageView;
@property(nonatomic, strong) UIImageView *iconImageView;
//: @property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *messageBtn;
@property (nonatomic,strong) UIButton *messageBtn;
//: @property (nonatomic,strong) UIButton *videoBtn;
@property (nonatomic,strong) UIButton *videoBtn;

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)cell:(UITableView *)tableView;

//: + (CGFloat)getCellHeight:(NSDictionary*)information;
+ (CGFloat)content:(NSDictionary*)information;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)viewOn:(id<AlterDate>)member;

//: - (void)reloadUserItem:(NIMUser *)user;
- (void)blue:(NIMUser *)user;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)teamNeed:(NIMTeam *)team;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<NameCompartmentMenu> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END