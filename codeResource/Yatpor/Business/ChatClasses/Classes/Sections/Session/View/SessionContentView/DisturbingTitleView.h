// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionMessageContentView.h"
#import "ObligatoView.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol EqualUidelegate <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)activityBy; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)edgeKey; //重收消息
//: @end
@end

//: @interface ContentSessionAudioContentView : ContentSessionMessageContentView
@interface DisturbingTitleView : ObligatoView

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<EqualUidelegate> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setWithPlaying:(BOOL)isPlaying;

//: @end
@end
