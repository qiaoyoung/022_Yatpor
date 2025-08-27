// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+Distance.h
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef enum NTESScrollViewDirection {
typedef enum NTESScrollViewDirection {
    //: NTESScrollViewDirectionNone,
    NTESScrollViewDirectionNone,
    //: NTESScrollViewDirectionRight,
    NTESScrollViewDirectionRight,
    //: NTESScrollViewDirectionLeft,
    NTESScrollViewDirectionLeft,
    //: NTESScrollViewDirectionUp,
    NTESScrollViewDirectionUp,
    //: NTESScrollViewDirectionDown,
    NTESScrollViewDirectionDown,
//: } NTESScrollViewDirection;
} NTESScrollViewDirection;


//: @interface UIScrollView (Direction)
@interface UIScrollView (ConfineContent)

//: - (void)startObservingDirection;
- (void)date;
//: - (void)stopObservingDirection;
- (void)electronicImage;

//: @property (readonly, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
@property (readonly, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
//: @property (readonly, nonatomic) NTESScrollViewDirection verticalScrollingDirection;
@property (readonly, nonatomic) NTESScrollViewDirection verticalScrollingDirection;

//: @end
@end