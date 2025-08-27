// __DEBUG__
// __CLOSE_PRINT__
//
//  OnslaughtButton.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class BackgroundBar;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol PropertySession <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)electId:(BackgroundBar*)emoticon tinkle:(NSString*)catalogID;

//: @end
@end



//: @interface FFFInputEmoticonButton : UIButton
@interface OnslaughtButton : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) BackgroundBar *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<PropertySession> delegate;

//: + (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (OnslaughtButton*)customDelegate:(BackgroundBar*)data icon:(NSString*)catalogID thread:( id<PropertySession>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)sessionsed:(id)sender;

//: @end
@end