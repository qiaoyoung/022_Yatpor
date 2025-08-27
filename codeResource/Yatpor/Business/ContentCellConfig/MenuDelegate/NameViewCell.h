// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, ContentKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ContentKitColorButtonCellStyle){
    //: ContentKitColorButtonCellStyleRed,
    ContentKitColorButtonCellStyleRed,
    //: ContentKitColorButtonCellStyleBlue,
    ContentKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class BubbleGroundView;

//: @interface ContentKitColorButtonCell : UITableViewCell
@interface NameViewCell : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) BubbleGroundView *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface BubbleGroundView : UIButton

//: @property (nonatomic,assign) ContentKitColorButtonCellStyle style;
@property (nonatomic,assign) ContentKitColorButtonCellStyle style;

//: @end
@end
