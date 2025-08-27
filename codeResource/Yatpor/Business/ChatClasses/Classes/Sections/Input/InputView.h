// __DEBUG__
// __CLOSE_PRINT__
//
//  InputView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFInputProtocol.h"
#import "FFFInputProtocol.h"
//: #import "FFFSessionConfig.h"
#import "SaloonConfig.h"
//: #import "FFFInputToolBar.h"
#import "PrixFixeView.h"
//: #import "FFFInputAtCache.h"
#import "AtNameSize.h"

//: @class FFFInputMoreContainerView;
@class GroundView;
//: @class FFFInputEmoticonContainerView;
@class TapView;
//: @class FFFReplyContentView;
@class PitchingChangeView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol GroundDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)signalses:(CGFloat)inputHeight;

//: @end
@end

//: @interface FFFInputView : UIView
@interface InputView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) FFFInputToolBar *toolBar;
@property (strong, nonatomic) PrixFixeView *toolBar;
//: @property (strong, nonatomic) FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic) GroundView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) FFFReplyContentView *replyedContent;
@property (nonatomic, strong) PitchingChangeView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) FFFInputAtCache *atCache;
@property (nonatomic, strong) AtNameSize *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFileAllocationTable:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config;
                       view:(id<SaloonConfig>)config;

//: - (void)reset;
- (void)successInputReset;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)nonparasitic:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<GroundDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setAllow:(id<OnDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setTextTap:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)chemicalElementColor:(NSString*)placeHolder duringCan:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)supplier:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)fast:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)colorInfoItems:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)current:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)pastViewFile;

//: @end
@end