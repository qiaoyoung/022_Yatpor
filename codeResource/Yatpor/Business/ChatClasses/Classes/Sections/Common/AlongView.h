// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongView.h
// UserKit
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "AdministratorSendProtocol.h"
#import "AdministratorSendProtocol.h"

//: @protocol ContentMemberGroupViewDelegate <NSObject>
@protocol SessionDelegate <NSObject>
//: @optional
@optional

//: - (void)didSelectMemberId:(NSString *)uid;
- (void)cullOut:(NSString *)uid;

//: - (void)didSelectRemoveButtonWithMemberId:(NSString *)uid;
- (void)caning:(NSString *)uid;

//: - (void)didSelectOperator:(NIMKitCardHeaderOpeator )opera;
- (void)months:(NIMKitCardHeaderOpeator )opera;

//: @end
@end

//: @interface NIMMemebrGroupData : NSObject
@interface InheritanceName : NSObject

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property (nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @property (nonatomic,readonly) BOOL isMyUserId;
@property (nonatomic,readonly) BOOL isMyUserId;

//: @end
@end

//: @interface ContentMemberGroupView : UIView
@interface AlongView : UIView

//: @property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) UICollectionView *collectionView;

//: @property (nonatomic,readonly) BOOL showAddOperator;
@property (nonatomic,readonly) BOOL showAddOperator;

//: @property (nonatomic,readonly) BOOL showRemoveOperator;
@property (nonatomic,readonly) BOOL showRemoveOperator;

//: @property (nonatomic,assign) BOOL enableRemove;
@property (nonatomic,assign) BOOL enableRemove;

//: @property (nonatomic,weak) id<ContentMemberGroupViewDelegate> delegate;
@property (nonatomic,weak) id<SessionDelegate> delegate;

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas operators:(NIMKitCardHeaderOpeator)operators;
- (void)step:(NSArray <InheritanceName *> *)datas touch:(NIMKitCardHeaderOpeator)operators;

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera;
- (void)recent:(NSString *)title insertKeyOperator:(NIMKitCardHeaderOpeator)opera;

//: @end
@end
