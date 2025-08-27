
#import <Foundation/Foundation.h>

typedef struct {
    Byte shareToilNigh;
    Byte *traditional;
    unsigned int proposal;
} StructDayData;

@interface DayData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DayData

+ (instancetype)sharedInstance {
    static DayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DayDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DayDataToByte:(StructDayData *)data {
    for (int i = 0; i < data->proposal; i++) {
        data->traditional[i] ^= data->shareToilNigh;
    }
    data->traditional[data->proposal] = 0;
    return data->traditional;
}

- (NSString *)StringFromDayData:(StructDayData *)data {
    return [NSString stringWithUTF8String:(char *)[self DayDataToByte:data]];
}

//: playbackBufferFull
- (NSString *)kDotMsg {
    /* static */ NSString *kDotMsg = nil;
    if (!kDotMsg) {
		NSString *origin = @"5e424f574c4f4d456c5b48484b5c685b4242bf";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){46, (Byte *)data.bytes, 18};
        kDotMsg = [self StringFromDayData:&value];
    }
    return kDotMsg;
}

//: player item cancelled
- (NSString *)mWheatExamineedStr {
    /* static */ NSString *mWheatExamineedStr = nil;
    if (!mWheatExamineedStr) {
		NSString *origin = @"2a363b233f287a332e3f377a393b34393f36363f3ea6";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){90, (Byte *)data.bytes, 21};
        mWheatExamineedStr = [self StringFromDayData:&value];
    }
    return mWheatExamineedStr;
}

//: AVMoviePlayer
- (NSString *)m_quarterbackMsg {
    /* static */ NSString *m_quarterbackMsg = nil;
    if (!m_quarterbackMsg) {
		NSString *origin = @"6d7a61435a45497c404d55495ed6";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){44, (Byte *)data.bytes, 13};
        m_quarterbackMsg = [self StringFromDayData:&value];
    }
    return m_quarterbackMsg;
}

//: playable
- (NSString *)noti_infoFormat {
    /* static */ NSString *noti_infoFormat = nil;
    if (!noti_infoFormat) {
		NSString *origin = @"e4f8f5edf5f6f8f1d1";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){148, (Byte *)data.bytes, 8};
        noti_infoFormat = [self StringFromDayData:&value];
    }
    return noti_infoFormat;
}

//: status
- (NSString *)show_textValue {
    /* static */ NSString *show_textValue = nil;
    if (!show_textValue) {
		NSString *origin = @"a2a5b0a5a4a2a5";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){209, (Byte *)data.bytes, 6};
        show_textValue = [self StringFromDayData:&value];
    }
    return show_textValue;
}

//: currentItem
- (NSString *)dream_traditionalKey {
    /* static */ NSString *dream_traditionalKey = nil;
    if (!dream_traditionalKey) {
		NSString *origin = @"fbedeaeafdf6ecd1ecfdf552";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){152, (Byte *)data.bytes, 11};
        dream_traditionalKey = [self StringFromDayData:&value];
    }
    return dream_traditionalKey;
}

//: playbackBufferEmpty
- (NSString *)appContentPath {
    /* static */ NSString *appContentPath = nil;
    if (!appContentPath) {
		NSString *origin = @"0a161b03181b1911380f1c1c1f083f170a0e03c3";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){122, (Byte *)data.bytes, 19};
        appContentPath = [self StringFromDayData:&value];
    }
    return appContentPath;
}

//: rate
- (NSString *)showUsUrl {
    /* static */ NSString *showUsUrl = nil;
    if (!showUsUrl) {
		NSString *origin = @"d1c2d7c67a";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){163, (Byte *)data.bytes, 4};
        showUsUrl = [self StringFromDayData:&value];
    }
    return showUsUrl;
}

//: error
- (NSString *)user_messageFellowTextName {
    /* static */ NSString *user_messageFellowTextName = nil;
    if (!user_messageFellowTextName) {
		NSString *origin = @"2e39392439a9";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){75, (Byte *)data.bytes, 5};
        user_messageFellowTextName = [self StringFromDayData:&value];
    }
    return user_messageFellowTextName;
}

//: playbackLikelyToKeepUp
- (NSString *)m_contentId {
    /* static */ NSString *m_contentId = nil;
    if (!m_contentId) {
		NSString *origin = @"7569647c6764666e496c6e60697c516a4e6060755075b6";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){5, (Byte *)data.bytes, 22};
        m_contentId = [self StringFromDayData:&value];
    }
    return m_contentId;
}

//: loadedTimeRanges
- (NSString *)k_quarterbackFormat {
    /* static */ NSString *k_quarterbackFormat = nil;
    if (!k_quarterbackFormat) {
		NSString *origin = @"63606e6b6a6b5b66626a5d6e61686a7c2f";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){15, (Byte *)data.bytes, 16};
        k_quarterbackFormat = [self StringFromDayData:&value];
    }
    return k_quarterbackFormat;
}

//: current player item is nil
- (NSString *)appNameMsg {
    /* static */ NSString *appNameMsg = nil;
    if (!appNameMsg) {
		NSString *origin = @"9a8c8b8b9c978dd9899598809c8bd9908d9c94d9908ad9979095e9";
		NSData *data = [DayData DayDataToData:origin];
        StructDayData value = (StructDayData){249, (Byte *)data.bytes, 26};
        appNameMsg = [self StringFromDayData:&value];
    }
    return appNameMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerController.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVMoivePlayerController.h"
#import "PlayerController.h"
//: #import "NTESAVPlayerView.h"
#import "SizeHandleView.h"

//: static NSString *kErrorDomain = @"IJKAVMoviePlayer";
static NSString *userViewKey = @"IJKAVMoviePlayer";
//: static const NSInteger kEC_CurrentPlayerItemIsNil = 5001;
static const NSInteger user_positionStr = 5001;
//: static const NSInteger kEC_PlayerItemCancelled = 5002;
static const NSInteger mainOldTitle = 5002;

//: static const float kMaxHighWaterMarkMilli = 15 * 1000;
static const float kMyText = 15 * 1000;

//: static void *KVO_AVPlayer_rate = &KVO_AVPlayer_rate;
static void *userDateStr = &userDateStr;
//: static void *KVO_AVPlayer_currentItem = &KVO_AVPlayer_currentItem;
static void *notiEmptyNameId = &notiEmptyNameId;
//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *user_normalKey = &user_normalKey;
//: static void *KVO_AVPlayerItem_loadedTimeRanges = &KVO_AVPlayerItem_loadedTimeRanges;
static void *kContextObjectData = &kContextObjectData;
//: static void *KVO_AVPlayerItem_playbackLikelyToKeepUp = &KVO_AVPlayerItem_playbackLikelyToKeepUp;
static void *app_sizeData = &app_sizeData;
//: static void *KVO_AVPlayerItem_playbackBufferFull = &KVO_AVPlayerItem_playbackBufferFull;
static void *appRangeId = &appRangeId;
//: static void *KVO_AVPlayerItem_playbackBufferEmpty = &KVO_AVPlayerItem_playbackBufferEmpty;
static void *app_recentMinMsg = &app_recentMinMsg;

//: NSString *const NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification =
NSString *const userToControlMarginPath =
//: @"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
@"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishNotification =
NSString *const show_itemPathMsg =
//: @"NTESAVMoviePlayerPlaybackDidFinishNotification";
@"NTESAVMoviePlayerPlaybackDidFinishNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey =
NSString *const showStatusMsg =
//: @"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
@"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
//: NSString *const NTESAVMoviePlayerPlaybackStateDidChangeNotification =
NSString *const user_labelScaleTitle =
//: @"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
@"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
//: NSString *const NTESAVMoviePlayerLoadStateDidChangeNotification =
NSString *const kAssetEventData =
//: @"NTESAVMoviePlayerLoadStateDidChangeNotification";
@"NTESAVMoviePlayerLoadStateDidChangeNotification";

//: inline static BOOL isFloatZero(float value)
inline static BOOL viewBorderPoint(float value)
{
    //: return fabsf(value) <= 0.00001f;
    return fabsf(value) <= 0.00001f;
}

//: static dispatch_once_t _readyToPlayToken;
static dispatch_once_t dreamCurrentText;

//: @interface NTESAVMoivePlayerController ()
@interface PlayerController ()
{
    //: BOOL _isPrerolling;
    BOOL _isPrerolling;
    //: BOOL _isSeeking;
    BOOL _isSeeking;
    //: BOOL _isError;
    BOOL _isError;
    //: BOOL _isCompleted;
    BOOL _isCompleted;
    //: BOOL _isShutdown;
    BOOL _isShutdown;

    //: BOOL _playbackLikelyToKeeyUp;
    BOOL _playbackLikelyToKeeyUp;
    //: BOOL _playbackBufferEmpty;
    BOOL _playbackBufferEmpty;
    //: BOOL _playbackBufferFull;
    BOOL _playbackBufferFull;
    //: BOOL _playingBeforeInterruption;
    BOOL _playingBeforeInterruption;

    //: NSTimeInterval _seekingTime;
    NSTimeInterval _seekingTime;
}
//: @property (nonatomic, strong) NSURL *playUrl;
@property (nonatomic, strong) NSURL *playUrl;
//: @property (nonatomic, strong) AVURLAsset *playAsset;
@property (nonatomic, strong) AVURLAsset *playAsset;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;

//: @property (nonatomic, strong) id timeObserve; 
@property (nonatomic, strong) id timeObserve; //监听播放进度

//: @property (nonatomic, strong) NTESAVPlayerView *view;
@property (nonatomic, strong) SizeHandleView *view;
//: @property (nonatomic, assign) NSInteger bufferingProgress;
@property (nonatomic, assign) NSInteger bufferingProgress;
//: @property (nonatomic, assign) BOOL isPreparedToPlay;
@property (nonatomic, assign) BOOL isPreparedToPlay;
//: @property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) NSTimeInterval duration;
//: @property (nonatomic, assign) NSTimeInterval playableDuration;
@property (nonatomic, assign) NSTimeInterval playableDuration;
//: @property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
@property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
//: @property (nonatomic, assign) NTESAVMovieLoadState loadState;
@property (nonatomic, assign) NTESAVMovieLoadState loadState;

//: @end
@end

//: @implementation NTESAVMoivePlayerController
@implementation PlayerController

//: @synthesize currentPlaybackTime = _currentPlaybackTime;
@synthesize currentPlaybackTime = _currentPlaybackTime;

//: - (void)dealloc {
- (void)dealloc {
    //: [self shutdown];
    [self along];
}

//: - (id)initWithContentURL:(NSURL *)aUrl {
- (id)initWithObject:(NSURL *)aUrl {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _scalingMode = NTESAVMovieScalingModeAspectFit;
        _scalingMode = NTESAVMovieScalingModeAspectFit;
        //: _playUrl = aUrl;
        _playUrl = aUrl;
        //: _view = [[NTESAVPlayerView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _view = [[SizeHandleView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        //: _isSeeking = NO;
        _isSeeking = NO;
        //: _isError = NO;
        _isError = NO;
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: _bufferingProgress = 0;
        _bufferingProgress = 0;
        //: _playbackLikelyToKeeyUp = NO;
        _playbackLikelyToKeeyUp = NO;
        //: _playbackBufferEmpty = YES;
        _playbackBufferEmpty = YES;
        //: _playbackBufferFull = NO;
        _playbackBufferFull = NO;
        //: _playbackRate = 1.0f;
        _playbackRate = 1.0f;
        //: _playbackVolume = 1.0f;
        _playbackVolume = 1.0f;
        //: _shouldAutoplay = YES;
        _shouldAutoplay = YES;
        //: [self setScreenOn:YES];
        [self setScreen:YES];
        //: [self registerApplicationObservers];
        [self greenish];
    }
    //: return self;
    return self;
}

//: - (void)prepareToPlay {
- (void)teeDoingShouldPlay {
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    //: NSArray *requestedKeys = @[@"playable"];
    NSArray *requestedKeys = @[[[DayData sharedInstance] noti_infoFormat]];

    //: _playAsset = asset;
    _playAsset = asset;
    //: [asset loadValuesAsynchronouslyForKeys:requestedKeys
    [asset loadValuesAsynchronouslyForKeys:requestedKeys
                         //: completionHandler:^{
                         completionHandler:^{
                             //: dispatch_async( dispatch_get_main_queue(), ^{
                             dispatch_async( dispatch_get_main_queue(), ^{
                                 //: [self didPrepareToPlayAsset:asset withKeys:requestedKeys];
                                 [self keys:asset sound:requestedKeys];
                                 //: [self setPlaybackVolume:_playbackVolume];
                                 [self setPlaybackVolume:_playbackVolume];
                             //: });
                             });
                         //: }];
                         }];
}

//: - (void)play {
- (void)file {
    //: if (_isCompleted)
    if (_isCompleted)
    {
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: [_player seekToTime:kCMTimeZero];
        [_player seekToTime:kCMTimeZero];
    }
    //: [_player play];
    [_player play];
}

//: - (void)pause {
- (void)menu {
    //: _isPrerolling = NO;
    _isPrerolling = NO;
    //: [_player pause];
    [_player pause];
}

//: - (void)stop {
- (void)send {
    //: [_player pause];
    [_player pause];
    //: [self setScreenOn:NO];
    [self setScreen:NO];
    //: _isCompleted = YES;
    _isCompleted = YES;
}

//: - (BOOL)isPlaying
- (BOOL)team
{
    //: if (!isFloatZero(_player.rate)) {
    if (!viewBorderPoint(_player.rate)) {
        //: return YES;
        return YES;
    //: } else {
    } else {
        //: if (_isPrerolling) {
        if (_isPrerolling) {
            //: return YES;
            return YES;
        //: } else {
        } else {
            //: return NO;
            return NO;
        }
    }
}

//: - (void)shutdown {
- (void)along {
    //: _isShutdown = YES;
    _isShutdown = YES;
    //: [self stop];
    [self send];

    //: if (_playerItem != nil) {
    if (_playerItem != nil) {
        //: [_playerItem cancelPendingSeeks];
        [_playerItem cancelPendingSeeks];
    }
    //: if (self.timeObserve) {
    if (self.timeObserve) {
        //: [self.player removeTimeObserver:self.timeObserve];
        [self.player removeTimeObserver:self.timeObserve];
        //: self.timeObserve = nil;
        self.timeObserve = nil;
    }

    //: [self removeItemKeyValueObservers];
    [self stateFrame];
    //: [self removePlayerKeyValueObservers];
    [self addObservers];
    //: [self unregisterApplicationObservers];
    [self item];

    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
}

//: - (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
- (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return;
        return;

    //: _seekingTime = aCurrentPlaybackTime;
    _seekingTime = aCurrentPlaybackTime;
    //: _isSeeking = YES;
    _isSeeking = YES;
    //: _bufferingProgress = 0;
    _bufferingProgress = 0;
    //: [self didPlaybackStateChange];
    [self ting];
    //: [self didLoadStateChange];
    [self stanza];
    //: if (_isPrerolling) {
    if (_isPrerolling) {
        //: [_player pause];
        [_player pause];
    }

    //: [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
    [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
      //: completionHandler:^(BOOL finished) {
      completionHandler:^(BOOL finished) {
          //: dispatch_async(dispatch_get_main_queue(), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
              //: _isSeeking = NO;
              _isSeeking = NO;
              //: if (_isPrerolling) {
              if (_isPrerolling) {
                  //: [_player play];
                  [_player play];
              }
              //: [self didPlaybackStateChange];
              [self ting];
              //: [self didLoadStateChange];
              [self stanza];
          //: });
          });
      //: }];
      }];
}

//: - (NSTimeInterval)currentPlaybackTime
- (NSTimeInterval)currentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return 0.0f;
        return 0.0f;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return _seekingTime;
        return _seekingTime;

    //: return CMTimeGetSeconds([_player currentTime]);
    return CMTimeGetSeconds([_player currentTime]);
}

//: - (NTESAVMoviePlaybackState)playbackState
- (NTESAVMoviePlaybackState)playbackState
{
    //: if (!_player)
    if (!_player)
        //: return NTESAVMoviePlaybackStateStopped;
        return NTESAVMoviePlaybackStateStopped;

    //: NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    //: if (_isCompleted) {
    if (_isCompleted) {
        //: mpState = NTESAVMoviePlaybackStateStopped;
        mpState = NTESAVMoviePlaybackStateStopped;
    //: } else if (_isSeeking) {
    } else if (_isSeeking) {
        //: mpState = NTESAVPMoviePlaybackStateSeekingForward;
        mpState = NTESAVPMoviePlaybackStateSeekingForward;
    //: } else if ([self isPlaying]) {
    } else if ([self team]) {
        //: mpState = NTESAVMoviePlaybackStatePlaying;
        mpState = NTESAVMoviePlaybackStatePlaying;
    //: } else {
    } else {
        //: mpState = NTESAVMoviePlaybackStatePaused;
        mpState = NTESAVMoviePlaybackStatePaused;
    }
    //: return mpState;
    return mpState;
}

//: - (NTESAVMovieLoadState)loadState
- (NTESAVMovieLoadState)loadState
{
    //: if (_player == nil)
    if (_player == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;

    //: AVPlayerItem *playerItem = [_player currentItem];
    AVPlayerItem *playerItem = [_player currentItem];
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !viewBorderPoint(_player.rate)) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferFull]) {
    } else if ([playerItem isPlaybackBufferFull]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackLikelyToKeepUp]) {
    } else if ([playerItem isPlaybackLikelyToKeepUp]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferEmpty]) {
    } else if ([playerItem isPlaybackBufferEmpty]) {
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;
    //: } else {
    } else {
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;
    }
}

//: -(void)setPlaybackRate:(float)playbackRate
-(void)setPlaybackRate:(float)playbackRate
{
    //: _playbackRate = playbackRate;
    _playbackRate = playbackRate;
    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !viewBorderPoint(_player.rate)) {
        //: _player.rate = _playbackRate;
        _player.rate = _playbackRate;
    }
}

//: -(void)setPlaybackVolume:(float)playbackVolume
-(void)setPlaybackVolume:(float)playbackVolume
{
    //: _playbackVolume = playbackVolume;
    _playbackVolume = playbackVolume;
    //: if (_player != nil && _player.volume != playbackVolume) {
    if (_player != nil && _player.volume != playbackVolume) {
        //: _player.volume = playbackVolume;
        _player.volume = playbackVolume;
    }
    //: BOOL muted = fabs(playbackVolume) < 1e-6;
    BOOL muted = fabs(playbackVolume) < 1e-6;
    //: if (_player != nil && _player.muted != muted) {
    if (_player != nil && _player.muted != muted) {
        //: _player.muted = muted;
        _player.muted = muted;
    }
}

//: - (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
- (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
{
    //: NTESAVMovieScalingMode newScalingMode = aScalingMode;
    NTESAVMovieScalingMode newScalingMode = aScalingMode;
    //: switch (aScalingMode) {
    switch (aScalingMode) {
        //: case NTESAVMovieScalingModeNone:
        case NTESAVMovieScalingModeNone:
            //: [_view setContentMode:UIViewContentModeCenter];
            [_view setContentMode:UIViewContentModeCenter];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFit:
        case NTESAVMovieScalingModeAspectFit:
            //: [_view setContentMode:UIViewContentModeScaleAspectFit];
            [_view setContentMode:UIViewContentModeScaleAspectFit];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFill:
        case NTESAVMovieScalingModeAspectFill:
            //: [_view setContentMode:UIViewContentModeScaleAspectFill];
            [_view setContentMode:UIViewContentModeScaleAspectFill];
            //: break;
            break;
        //: case NTESAVMovieScalingModeFill:
        case NTESAVMovieScalingModeFill:
            //: [_view setContentMode:UIViewContentModeScaleToFill];
            [_view setContentMode:UIViewContentModeScaleToFill];
            //: break;
            break;
        //: default:
        default:
            //: newScalingMode = _scalingMode;
            newScalingMode = _scalingMode;
    }
    //: _scalingMode = newScalingMode;
    _scalingMode = newScalingMode;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)setScreenOn: (BOOL)on
- (void)setScreen: (BOOL)on
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [UIApplication sharedApplication].idleTimerDisabled = YES;
        [UIApplication sharedApplication].idleTimerDisabled = YES;
    //: });
    });
}

//: - (void)didPrepareToPlayAsset:(AVURLAsset *)asset withKeys:(NSArray *)requestedKeys
- (void)keys:(AVURLAsset *)asset sound:(NSArray *)requestedKeys
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: for (NSString *thisKey in requestedKeys)
    for (NSString *thisKey in requestedKeys)
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        //: if (keyStatus == AVKeyValueStatusFailed)
        if (keyStatus == AVKeyValueStatusFailed)
        {
            //: [self assetFailedToPrepareForPlayback:error];
            [self suspension:error];
            //: return;
            return;
        //: } else if (keyStatus == AVKeyValueStatusCancelled) {
        } else if (keyStatus == AVKeyValueStatusCancelled) {
            // TODO [AVAsset cancelLoading]
            //: error = [self createErrorWithCode:kEC_PlayerItemCancelled
            error = [self account:mainOldTitle
                                  //: description:@"player item cancelled"
                                  line:[[DayData sharedInstance] mWheatExamineedStr]
                                       //: reason:nil];
                                       session:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self suspension:error];
            //: return;
            return;
        }
    }

    //: if (!asset.playable)
    if (!asset.playable)
    {
        //: NSError *assetCannotBePlayedError = [NSError errorWithDomain:@"AVMoviePlayer"
        NSError *assetCannotBePlayedError = [NSError errorWithDomain:[[DayData sharedInstance] m_quarterbackMsg]
                                                                //: code:0
                                                                code:0
                                                            //: userInfo:nil];
                                                            userInfo:nil];

        //: [self assetFailedToPrepareForPlayback:assetCannotBePlayedError];
        [self suspension:assetCannotBePlayedError];
        //: return;
        return;
    }

    //player item
    //: [self setupPlayerItem:asset];
    [self calendarMonth:asset];

    //player
    //: [self setupPlayer];
    [self full];

    //: _isCompleted = NO;
    _isCompleted = NO;

    //: if (_player.currentItem != _playerItem){
    if (_player.currentItem != _playerItem){
        //: [_player replaceCurrentItemWithPlayerItem:_playerItem];
        [_player replaceCurrentItemWithPlayerItem:_playerItem];
    }
}

//: - (void)setupPlayerItem:(AVURLAsset *)asset {
- (void)calendarMonth:(AVURLAsset *)asset {
    //: [self unregisterPlayerItemNoticationObservers];
    [self colorCardPlayer];
    //: [self removeItemKeyValueObservers];
    [self stateFrame];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [self addItemKeyValueObservers];
    [self toCustom];
    //: [self registerPlayerItemNoticationObservers];
    [self belowCenter];
}

//: - (void)setupPlayer {
- (void)full {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: [self addPlayerKeyValueObservers];
        [self message];

        //监听播放进度
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
            //: CGFloat current = CMTimeGetSeconds(time);
            CGFloat current = CMTimeGetSeconds(time);
            //: CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            //: _duration = current;
            _duration = current;

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayertotalTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(addDoingEvent:)]) {
                //: [weakSelf.delegate videoPlayertotalTime:total];
                [weakSelf.delegate addDoingEvent:total];
            }

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayercurrentTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(texted:)]) {
                //: [weakSelf.delegate videoPlayercurrentTime:current];
                [weakSelf.delegate texted:current];
            }
    //
    ////        /***** 这里是比较蛋疼的，当拖动滑块到没有缓冲的地方并且没有开始播放时，也会走到这里 *************/
    ////        if (weakSelf.isCanToGetLocalTime) {
    ////            weakSelf.localTime = [weakSelf getLocalTime];
    ////        }
    //        NSInteger timeNow = [weakSelf getLocalTime];
    //        if (timeNow - weakSelf.localTime > 1.5) {
    //            [weakSelf delegateDidEndBuffer];
    //            weakSelf.isCanToGetLocalTime = YES;
    //        }
        //: }];
        }];
    }
}

//: - (void)assetFailedToPrepareForPlayback:(NSError *)error
- (void)suspension:(NSError *)error
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:error];
    [self checkByError:error];
}

//: - (void)didPlaybackStateChange
- (void)ting
{
    //: if (_playbackState != self.playbackState) {
    if (_playbackState != self.playbackState) {
        //: _playbackState = self.playbackState;
        _playbackState = self.playbackState;
        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackStateDidChangeNotification
         postNotificationName:user_labelScaleTitle
         //: object:self];
         object:self];
    }
}

//: - (void)didLoadStateChange
- (void)stanza
{
    //: [[NSNotificationCenter defaultCenter]
    [[NSNotificationCenter defaultCenter]
     //: postNotificationName:NTESAVMoviePlayerLoadStateDidChangeNotification
     postNotificationName:kAssetEventData
     //: object:self];
     object:self];
}

//: - (void)fetchLoadStateFromItem:(AVPlayerItem*)playerItem
- (void)messageNet:(AVPlayerItem*)playerItem
{
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return;
        return;

    //: _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    //: _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    //: _playbackBufferFull = playerItem.isPlaybackBufferFull;
    _playbackBufferFull = playerItem.isPlaybackBufferFull;
}

//: - (void)didPlayableDurationUpdate
- (void)system
{
    //: NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    //: int playableDurationMilli = (int)(self.playableDuration * 1000);
    int playableDurationMilli = (int)(self.playableDuration * 1000);
    //: int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);
    int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);

    //: int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    //: if (bufferedDurationMilli > 0) {
    if (bufferedDurationMilli > 0) {
        //: self.bufferingProgress = bufferedDurationMilli * 100 / kMaxHighWaterMarkMilli;
        self.bufferingProgress = bufferedDurationMilli * 100 / kMyText;

        //: if (self.bufferingProgress > 100) {
        if (self.bufferingProgress > 100) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (self.bufferingProgress > 100) {
                if (self.bufferingProgress > 100) {
                    //: if ([self isPlaying]) {
                    if ([self team]) {
                        //: _player.rate = _playbackRate;
                        _player.rate = _playbackRate;
                    }
                }
            //: });
            });
        }
    }
}

//拖动
//: - (void)seekToTimePlay:(float)toTime{
- (void)clip:(float)toTime{

    //: if (self.player) {
    if (self.player) {
//        [self.player pause];

        //: __weak typeof(self) weak_self = self;
        __weak typeof(self) weak_self = self;
        //: [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
        [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
            //: __strong typeof(weak_self) strong_self = weak_self;
            __strong typeof(weak_self) strong_self = weak_self;
            //: if (!strong_self) return;
            if (!strong_self) return;
//            [strong_self play];
        //: }];
        }];
    }
}

//: - (void)playerItemFailedToPlayToEndTime:(NSNotification *)notification
- (void)infoed:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:[notification.userInfo objectForKey:@"error"]];
    [self checkByError:[notification.userInfo objectForKey:[[DayData sharedInstance] user_messageFellowTextName]]];
}

//: - (void)playerItemDidReachEnd:(NSNotification *)notification
- (void)convertRange:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: _isCompleted = YES;
    _isCompleted = YES;

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self ting];
        //: [self didLoadStateChange];
        [self stanza];
        //: [self setScreenOn:NO];
        [self setScreen:NO];

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:show_itemPathMsg
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackEnded)
                    showStatusMsg: @(NTESAVMovieFinishReasonPlaybackEnded)
                    //: }];
                    }];
    //: });
    });
}


//: #pragma mark app state changed
#pragma mark app state changed

//: - (void)registerApplicationObservers
- (void)greenish
{
    //: NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(audioSessionInterrupt:)
                             selector:@selector(commenting:)
                                 //: name:AVAudioSessionInterruptionNotification
                                 name:AVAudioSessionInterruptionNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidBecomeActive)
                             selector:@selector(dateOrigin)
                                 //: name:UIApplicationDidBecomeActiveNotification
                                 name:UIApplicationDidBecomeActiveNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidEnterBackground)
                             selector:@selector(titleText)
                                 //: name:UIApplicationDidEnterBackgroundNotification
                                 name:UIApplicationDidEnterBackgroundNotification
                               //: object:nil];
                               object:nil];
}

//: - (void)unregisterApplicationObservers
- (void)item
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)registerPlayerItemNoticationObservers {
- (void)belowCenter {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemDidReachEnd:)
                                             selector:@selector(convertRange:)
                                                 //: name:AVPlayerItemDidPlayToEndTimeNotification
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemFailedToPlayToEndTime:)
                                             selector:@selector(infoed:)
                                                 //: name:AVPlayerItemFailedToPlayToEndTimeNotification
                                                 name:AVPlayerItemFailedToPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];
}

//: - (void)unregisterPlayerItemNoticationObservers {
- (void)colorCardPlayer {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    //: name:nil
                                                    name:nil
                                                  //: object:_playerItem];
                                                  object:_playerItem];
}

//: - (void)audioSessionInterrupt:(NSNotification *)notification
- (void)commenting:(NSNotification *)notification
{
    //: int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    //: switch (reason) {
    switch (reason) {
        //: case AVAudioSessionInterruptionTypeBegan: {
        case AVAudioSessionInterruptionTypeBegan: {
            //: switch (self.playbackState) {
            switch (self.playbackState) {
                //: case NTESAVMoviePlaybackStatePaused:
                case NTESAVMoviePlaybackStatePaused:
                //: case NTESAVMoviePlaybackStateStopped:
                case NTESAVMoviePlaybackStateStopped:
                    //: _playingBeforeInterruption = NO;
                    _playingBeforeInterruption = NO;
                    //: break;
                    break;
                //: default:
                default:
                    //: _playingBeforeInterruption = YES;
                    _playingBeforeInterruption = YES;
                    //: break;
                    break;
            }
            //: [self pause];
            [self menu];
            //: break;
            break;
        }
        //: case AVAudioSessionInterruptionTypeEnded: {
        case AVAudioSessionInterruptionTypeEnded: {
            //: if (_playingBeforeInterruption) {
            if (_playingBeforeInterruption) {
                //: [self play];
                [self file];
            }
            //: break;
            break;
        }
    }
}

//: - (void)applicationDidBecomeActive
- (void)dateOrigin
{
    //: [_view setPlayer:_player];
    [_view setPlayer:_player];
}

//: - (void)applicationDidEnterBackground
- (void)titleText
{
    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
    //: if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        //: if ([self isPlaying]) {
        if ([self team]) {
            //: dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
                //: [self play];
                [self file];
            //: });
            });
        }
    }
}

//: #pragma mark KVO
#pragma mark KVO

//: - (void)addPlayerKeyValueObservers {
- (void)message {
    //: [_player addObserver:self
    [_player addObserver:self
                  //: forKeyPath:@"currentItem"
                  forKeyPath:[[DayData sharedInstance] dream_traditionalKey]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayer_currentItem];
                     context:notiEmptyNameId];


    //: [_player addObserver:self
    [_player addObserver:self
              //: forKeyPath:@"rate"
              forKeyPath:[[DayData sharedInstance] showUsUrl]
                 //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 //: context:KVO_AVPlayer_rate];
                 context:userDateStr];
}

//: - (void)removePlayerKeyValueObservers {
- (void)addObservers {
    //: [_player removeObserver:self forKeyPath:@"currentItem" context:KVO_AVPlayer_currentItem];
    [_player removeObserver:self forKeyPath:[[DayData sharedInstance] dream_traditionalKey] context:notiEmptyNameId];
    //: [_player removeObserver:self forKeyPath:@"rate" context:KVO_AVPlayer_rate];
    [_player removeObserver:self forKeyPath:[[DayData sharedInstance] showUsUrl] context:userDateStr];
}

//: - (void)addItemKeyValueObservers {
- (void)toCustom {
    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"status"
                  forKeyPath:[[DayData sharedInstance] show_textValue]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_state];
                     context:user_normalKey];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"loadedTimeRanges"
                  forKeyPath:[[DayData sharedInstance] k_quarterbackFormat]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_loadedTimeRanges];
                     context:kContextObjectData];


    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackLikelyToKeepUp"
                  forKeyPath:[[DayData sharedInstance] m_contentId]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
                     context:app_sizeData];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferEmpty"
                  forKeyPath:[[DayData sharedInstance] appContentPath]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferEmpty];
                     context:app_recentMinMsg];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferFull"
                  forKeyPath:[[DayData sharedInstance] kDotMsg]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferFull];
                     context:appRangeId];
}

//: - (void)removeItemKeyValueObservers {
- (void)stateFrame {
    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:[[DayData sharedInstance] show_textValue] context:user_normalKey];
    //: [_playerItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:KVO_AVPlayerItem_loadedTimeRanges];
    [_playerItem removeObserver:self forKeyPath:[[DayData sharedInstance] k_quarterbackFormat] context:kContextObjectData];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
    [_playerItem removeObserver:self forKeyPath:[[DayData sharedInstance] m_contentId] context:app_sizeData];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:KVO_AVPlayerItem_playbackBufferEmpty];
    [_playerItem removeObserver:self forKeyPath:[[DayData sharedInstance] appContentPath] context:app_recentMinMsg];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:KVO_AVPlayerItem_playbackBufferFull];
    [_playerItem removeObserver:self forKeyPath:[[DayData sharedInstance] kDotMsg] context:appRangeId];
}

//: - (void)observeValueForKeyPath:(NSString*)path
- (void)observeValueForKeyPath:(NSString*)path
                      //: ofObject:(id)object
                      ofObject:(id)object
                        //: change:(NSDictionary*)change
                        change:(NSDictionary*)change
                       //: context:(void*)context
                       context:(void*)context
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: if (context == KVO_AVPlayerItem_state)
    if (context == user_normalKey)
    {
        /* AVPlayerItem "status" property value observer. */
        //: AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        //: switch (status)
        switch (status)
        {
            //: case AVPlayerItemStatusUnknown:
            case AVPlayerItemStatusUnknown:
            {
                /* Indicates that the status of the player is not yet known because
                 it has not tried to load new media resources for playback */
            }
                //: break;
                break;

            //: case AVPlayerItemStatusReadyToPlay:
            case AVPlayerItemStatusReadyToPlay:
            {
                /* Once the AVPlayerItem becomes ready to play, i.e.
                 [playerItem status] == AVPlayerItemStatusReadyToPlay,
                 its duration can be fetched from the item. */
                //: _dispatch_once(&_readyToPlayToken, ^{
                _dispatch_once(&dreamCurrentText, ^{
                    //: [_view setPlayer:_player];
                    [_view setPlayer:_player];

                    //: self.isPreparedToPlay = YES;
                    self.isPreparedToPlay = YES;
                    //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    //: NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    //: if (duration <= 0)
                    if (duration <= 0)
                        //: self.duration = 0.0f;
                        self.duration = 0.0f;
                    //: else
                    else
                        //: self.duration = duration;
                        self.duration = duration;

                    //: [[NSNotificationCenter defaultCenter]
                    [[NSNotificationCenter defaultCenter]
                     //: postNotificationName:NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification
                     postNotificationName:userToControlMarginPath
                     //: object:self];
                     object:self];

                    //: if (_shouldAutoplay)
                    if (_shouldAutoplay)
                        //: [_player play];
                        [_player play];
                //: });
                });
            }
                //: break;
                break;

            //: case AVPlayerItemStatusFailed:
            case AVPlayerItemStatusFailed:
            {
                //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                AVPlayerItem *playerItem = (AVPlayerItem *)object;
                //: [self assetFailedToPrepareForPlayback:playerItem.error];
                [self suspension:playerItem.error];
            }
                //: break;
                break;
        }

        //: [self didPlaybackStateChange];
        [self ting];
    }
    //: else if (context == KVO_AVPlayerItem_loadedTimeRanges)
    else if (context == kContextObjectData)
    {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
        if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
            //: NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            //: CMTime currentTime = [_player currentTime];
            CMTime currentTime = [_player currentTime];

            //: BOOL foundRange = NO;
            BOOL foundRange = NO;
            //: CMTimeRange aTimeRange = {0};
            CMTimeRange aTimeRange = {0};

            //: if (timeRangeArray.count) {
            if (timeRangeArray.count) {
                //: aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                //: if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                    //: foundRange = YES;
                    foundRange = YES;
                }
            }

            //: if (foundRange) {
            if (foundRange) {
                //: CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                //: NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                //: if (playableDuration > 0) {
                if (playableDuration > 0) {
                    //: self.playableDuration = playableDuration;
                    self.playableDuration = playableDuration;
                    //: [self didPlayableDurationUpdate];
                    [self system];
                }
            }
        }
        //: else
        else
        {
            //: self.playableDuration = 0;
            self.playableDuration = 0;
        }
    }
    //: else if (context == KVO_AVPlayerItem_playbackLikelyToKeepUp) {
    else if (context == app_sizeData) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackLikelyToKeepUp: %@\n", playerItem.isPlaybackLikelyToKeepUp ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self messageNet:playerItem];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferEmpty) {
    else if (context == app_recentMinMsg) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferEmpty: %@\n", isPlaybackBufferEmpty ? @"YES" : @"NO");
        //: if (isPlaybackBufferEmpty)
        if (isPlaybackBufferEmpty)
            //: _isPrerolling = YES;
            _isPrerolling = YES;
        //: [self fetchLoadStateFromItem:playerItem];
        [self messageNet:playerItem];
        //: [self didLoadStateChange];
        [self stanza];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferFull) {
    else if (context == appRangeId) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferFull: %@\n", playerItem.isPlaybackBufferFull ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self messageNet:playerItem];
        //: [self didLoadStateChange];
        [self stanza];
    }
    //: else if (context == KVO_AVPlayer_rate)
    else if (context == userDateStr)
    {
        //: if (_player != nil && !isFloatZero(_player.rate))
        if (_player != nil && !viewBorderPoint(_player.rate))
            //: _isPrerolling = NO;
            _isPrerolling = NO;
        /* AVPlayer "rate" property value observer. */
        //: [self didPlaybackStateChange];
        [self ting];
        //: [self didLoadStateChange];
        [self stanza];
    }
    //: else if (context == KVO_AVPlayer_currentItem)
    else if (context == notiEmptyNameId)
    {
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        /* AVPlayer "currentItem" property observer.
         Called when the AVPlayer replaceCurrentItemWithPlayerItem:
         replacement will/did occur. */
        //: AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];
        AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];

        /* Is the new player item null? */
        //: if (newPlayerItem == (id)[NSNull null])
        if (newPlayerItem == (id)[NSNull null])
        {
            //: NSError *error = [self createErrorWithCode:kEC_CurrentPlayerItemIsNil
            NSError *error = [self account:user_positionStr
                                           //: description:@"current player item is nil"
                                           line:[[DayData sharedInstance] appNameMsg]
                                                //: reason:nil];
                                                session:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self suspension:error];
        }
        //: else /|* Replacement of player currentItem has occurred *|/
        else /* Replacement of player currentItem has occurred */
        {
            //: [_view setPlayer:_player];
            [_view setPlayer:_player];

            //: [self didPlaybackStateChange];
            [self ting];
            //: [self didLoadStateChange];
            [self stanza];
        }
    }
    //: else
    else
    {
        //: [super observeValueForKeyPath:path ofObject:object change:change context:context];
        [super observeValueForKeyPath:path ofObject:object change:change context:context];
    }
}


//: #pragma mark - Error
#pragma mark - Error
//: - (void)onError:(NSError *)error
- (void)checkByError:(NSError *)error
{
    //: _isError = YES;
    _isError = YES;

    //: __block NSError *blockError = error;
    __block NSError *blockError = error;

    //: NSLog(@"AVPlayer: onError\n");
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self ting];
        //: [self didLoadStateChange];
        [self stanza];
        //: [self setScreenOn:NO];
        [self setScreen:NO];

        //: if (blockError == nil) {
        if (blockError == nil) {
            //: blockError = [[NSError alloc] init];
            blockError = [[NSError alloc] init];
        }

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:show_itemPathMsg
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackError),
                    showStatusMsg: @(NTESAVMovieFinishReasonPlaybackError),
                    //: @"error": blockError
                    [[DayData sharedInstance] user_messageFellowTextName]: blockError
                    //: }];
                    }];
    //: });
    });
}

//: - (NSError*)createErrorWithCode: (NSInteger)code
- (NSError*)account: (NSInteger)code
                    //: description: (NSString*)description
                    line: (NSString*)description
                         //: reason: (NSString*)reason
                         session: (NSString*)reason
{
    //: NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    //: errorDict[NSLocalizedDescriptionKey] = description;
    errorDict[NSLocalizedDescriptionKey] = description;
    //: errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    //: NSError *error = [NSError errorWithDomain:kErrorDomain
    NSError *error = [NSError errorWithDomain:userViewKey
                                         //: code:code
                                         code:code
                                     //: userInfo:errorDict];
                                     userInfo:errorDict];
    //: return error;
    return error;
}

//: @end
@end
