// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONScanToolBar : UIView
@interface MenuView : UIView

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction;
- (void)orderedSeries:(id)aTarget travelKit:(SEL)aAction;
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction;
- (void)disable:(id)aTarget want:(SEL)aAction;

//: - (void)showTorch;
- (void)corner;
//: - (void)dismissTorch;
- (void)post;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END