// __DEBUG__
// __CLOSE_PRINT__
//
//  CardViewController.h
// UserKit
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  基础UI

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFTeamCardRowItem.h"
#import "SuccessItem.h"
//: #import "FFFTeamMemberListCell.h"
#import "TapViewCell.h"
//: #import "FFFTeamSwitchTableViewCell.h"
#import "UndersideViewCell.h"
//: #import "FFFTeamListDataManager.h"
#import "ManagerEnable.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
    //: NIMTeamCardSwithCellTypeTop = 1,
    NIMTeamCardSwithCellTypeTop = 1,
    //: NIMTeamCardSwithCellTypeNotify,
    NIMTeamCardSwithCellTypeNotify,
    //: NIMTeamCardSwithCellTypeMute,
    NIMTeamCardSwithCellTypeMute,
//: };
};

//: typedef void(^NIMTeamCardPickerHandle)(UIImage *image);
typedef void(^NIMTeamCardPickerHandle)(UIImage *image);

//: @protocol FFFTeamCardViewControllerDelegate <NSObject>
@protocol ViewLanguage <NSObject>

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)on;
- (void)quantityervalTo:(BOOL)on;

//: - (void)NIMTeamCardVCDidSetMute:(BOOL)on;
- (void)nameTeam:(BOOL)on;

//: @end
@end

//: #pragma mark - UI基类
#pragma mark - UI基类
//: @interface FFFTeamCardViewController : UIViewController
@interface CardViewController : UIViewController

//: @property (nonatomic,weak) id <FFFTeamCardViewControllerDelegate> delegate;
@property (nonatomic,weak) id <ViewLanguage> delegate;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//数据源
//: @property (nonatomic,strong) NSArray <NSArray <FFFTeamCardRowItem *> *> *datas;
@property (nonatomic,strong) NSArray <NSArray <SuccessItem *> *> *datas;

// "canMemberInfo": 1,//0 不允许查看资料 1 是允许
//: @property (nonatomic,assign) BOOL canMemberInfo;
@property (nonatomic,assign) BOOL canMemberInfo;

//显示相册
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)spectacles:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion;
             expanseLength:(NIMTeamCardPickerHandle)completion;

//弹框 - 标题
//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)circle:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions;
                                       extra:(NSArray <UIAlertAction *>*)actions;

//弹框 - 取消action
//: - (UIAlertAction *)makeCancelAction;
- (UIAlertAction *)bluish;

//显示弹框
//: - (void)showAlert:(UIAlertController *)alert;
- (void)scale:(UIAlertController *)alert;

//显示Toast
//: - (void)showToastMsg:(NSString *)msg;
- (void)info:(NSString *)msg;


/* --- need reload by child class ---- */
// 子类自定义头文件
//: - (UIView *)didGetHeaderView;
- (UIView *)pictureView;

// 子类自定义cell
//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell;
- (void)compartmentTeam:(TapViewCell *)cell;

// 子类刷新tableview
//: - (void)reloadTableViewData;
- (void)progress;

// 子类刷新header
//: - (void)reloadTableHeaderData;
- (void)recording;

// 子类刷新其他数据
//: - (void)reloadOtherData;
- (void)enable;

//: @end
@end




//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END