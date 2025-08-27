// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESOpenRedPackageSheet : UIView
@interface ToolView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithFile:(CGRect)frame value:(NSDictionary *)dictionary;

//: - (void)show;
- (void)totUp;

//: - (void)dismissPicker;
- (void)slightPicker;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol CutDelegate <NSObject>

//: -(void)myWalletDelegate;
-(void)tableSession;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)infos:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END