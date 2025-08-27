// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "AdministratorSendProtocol.h"
#import "AdministratorSendProtocol.h"

//: @class ContentAvatarImageView;
@class MessageSendView;
//: @protocol ContentCardHeaderCellDelegate;
@protocol TingViewA;



//: @interface ContentCardHeaderCell : UICollectionViewCell
@interface ModeOriginView : UICollectionViewCell

//: @property (nonatomic,strong) ContentAvatarImageView *imageView;
@property (nonatomic,strong) MessageSendView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<ContentCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<TingViewA>delegate;

//: @property (nonatomic,readonly) id<ContentKitCardHeaderData> data;
@property (nonatomic,readonly) id<ContentKitCardHeaderData> data;

//: - (void)refreshData:(id<ContentKitCardHeaderData>)data;
- (void)tag:(id<ContentKitCardHeaderData>)data;

//: @end
@end


//: @protocol ContentCardHeaderCellDelegate <NSObject>
@protocol TingViewA <NSObject>

//: - (void)cellDidSelected:(ContentCardHeaderCell*)cell;
- (void)infoComplete:(ModeOriginView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(ContentCardHeaderCell*)cell;
- (void)utmosted:(ModeOriginView*)cell;

//: @end
@end
