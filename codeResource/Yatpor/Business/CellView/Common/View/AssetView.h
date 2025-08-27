// __DEBUG__
// __CLOSE_PRINT__
//
//  AssetView.h
//  NIM
//
//  Created by Yan Wang on 2024/8/10.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface CustomGifView : UIView
@interface AssetView : UIView

//: - (instancetype)initWithGifData:(NSData *)gifData;
- (instancetype)initWithThread:(NSData *)gifData;



//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END