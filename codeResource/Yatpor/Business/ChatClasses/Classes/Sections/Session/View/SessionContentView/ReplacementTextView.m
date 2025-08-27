
#import <Foundation/Foundation.h>

@interface SoapBubbleData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SoapBubbleData

+ (instancetype)sharedInstance {
    static SoapBubbleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SoapBubbleDataToData:(NSString *)value {
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

- (Byte *)SoapBubbleDataToCache:(Byte *)data {
    int tent = data[0];
    Byte wheatGrape = data[1];
    int orangeTouch = data[2];
    for (int i = orangeTouch; i < orangeTouch + tent; i++) {
        int value = data[i] - wheatGrape;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[orangeTouch + tent] = 0;
    return data + orangeTouch;
}

- (NSString *)StringFromSoapBubbleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SoapBubbleDataToCache:data]];
}

//: player_play
- (NSString *)show_concertStr {
    /* static */ NSString *show_concertStr = nil;
    if (!show_concertStr) {
		NSString *origin = @"0B1C038C887D95818E7B8C887D9513";
		NSData *data = [SoapBubbleData SoapBubbleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_concertStr = [self StringFromSoapBubbleData:value];
    }
    return show_concertStr;
}

//: status
- (NSString *)k_rescuePath {
    /* static */ NSString *k_rescuePath = nil;
    if (!k_rescuePath) {
		NSString *origin = @"06490A60558FFEC8335EBCBDAABDBEBC8A";
		NSData *data = [SoapBubbleData SoapBubbleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_rescuePath = [self StringFromSoapBubbleData:value];
    }
    return k_rescuePath;
}

//: player_push
- (NSString *)mCoachPath {
    /* static */ NSString *mCoachPath = nil;
    if (!mCoachPath) {
		NSString *origin = @"0B5203C2BEB3CBB7C4B1C2C7C5BA8A";
		NSData *data = [SoapBubbleData SoapBubbleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCoachPath = [self StringFromSoapBubbleData:value];
    }
    return mCoachPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementTextView.m
// UserKit
//
//  Created by chris on 15/4/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "WMPlayerModel.h"
//#import "WMPlayer.h"

// __M_A_C_R_O__
//: #import "ContentSessionVideoContentView.h"
#import "ReplacementTextView.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "ContentLoadProgressView.h"
#import "StanzaView.h"
//: #import "NTESAVMoivePlayerController.h"
#import "PlayerController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *user_normalKey = &user_normalKey;

//: @interface ContentSessionVideoContentView()
@interface ReplacementTextView()

//: @property (nonatomic,strong,readwrite) UIImageView * imageView;
@property (nonatomic,strong,readwrite) UIImageView * imageView;

//: @property (nonatomic,strong) UIButton *playBtn;
@property (nonatomic,strong) UIButton *playBtn;

//: @property (nonatomic,strong) ContentLoadProgressView * progressView;
@property (nonatomic,strong) StanzaView * progressView;

//: @property (nonatomic, strong) NSURL *fileURL;
@property (nonatomic, strong) NSURL *fileURL;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;
//: @property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayer *player;
//: @property (nonatomic, strong) AVPlayerLayer *playerLayer;
@property (nonatomic, strong) AVPlayerLayer *playerLayer;

//: @property (nonatomic,strong) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic,strong) PlayerController *avPlayer;
//: @property (nonatomic, strong) UCZProgressView *progress;
@property (nonatomic, strong) UCZProgressView *progress;
//: @property (nonatomic, strong) UIActivityIndicatorView *activity;
@property (nonatomic, strong) UIActivityIndicatorView *activity;
//: @end
@end

//: @implementation ContentSessionVideoContentView
@implementation ReplacementTextView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;

        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor clearColor];
        _imageView.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
//        _activity.color = [UIColor grayColor];
//        [self addSubview:_activity];


        //: _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_playBtn setImage:[UIImage imageNamed:@"player_play"] forState:UIControlStateNormal];
        [_playBtn setImage:[UIImage imageNamed:[[SoapBubbleData sharedInstance] show_concertStr]] forState:UIControlStateNormal];
        //: [_playBtn setImage:[UIImage imageNamed:@"player_push"] forState:UIControlStateSelected];
        [_playBtn setImage:[UIImage imageNamed:[[SoapBubbleData sharedInstance] mCoachPath]] forState:UIControlStateSelected];
        //: [_playBtn addTarget:self action:@selector(onTap:) forControlEvents:UIControlEventTouchUpInside];
        [_playBtn addTarget:self action:@selector(buttoning:) forControlEvents:UIControlEventTouchUpInside];
        //: [_playBtn sizeToFit];
        [_playBtn sizeToFit];
//        [_playBtn setUserInteractionEnabled:NO];
        //: [self addSubview:_playBtn];
        [self addSubview:_playBtn];

        //: _progressView = [[ContentLoadProgressView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        _progressView = [[StanzaView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        //: _progressView.maxProgress = 1.0;
        _progressView.maxProgress = 1.0;
        //: [self addSubview:_progressView];
        [self addSubview:_progressView];

//
    }
    //: return self;
    return self;
}

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    //: if ([keyPath isEqualToString:@"status"]) {
    if ([keyPath isEqualToString:[[SoapBubbleData sharedInstance] k_rescuePath]]) {
        //: AVPlayerItem * item = (AVPlayerItem *)object;
        AVPlayerItem * item = (AVPlayerItem *)object;
        //: if (item.status == AVPlayerItemStatusReadyToPlay) {
        if (item.status == AVPlayerItemStatusReadyToPlay) {
            //: _progressView.hidden = YES;
            _progressView.hidden = YES;
//            self.progress.hidden = YES;

//             [self.player replaceCurrentItemWithPlayerItem:item];
             //: [self.player play];
             [self.player play];
        //: }else if (item.status == AVPlayerItemStatusFailed){
        }else if (item.status == AVPlayerItemStatusFailed){
             //: NSLog(@"failed");
//            _progressView.hidden = NO;

//            [self.player replaceCurrentItemWithPlayerItem:item];
//            [self.player play];
        }
   }
}

//: - (void)refresh:(ContentMessageModel *)data{
- (void)valueRow:(PossibilityMessageStyle *)data{
    //: [super refresh:data];
    [super valueRow:data];
    //: NIMVideoObject * videoObject = (NIMVideoObject*)self.model.message.messageObject;
    NIMVideoObject * videoObject = (NIMVideoObject*)self.model.message.messageObject;
    //: UIImage * image = [UIImage imageWithContentsOfFile:videoObject.coverPath];
    UIImage * image = [UIImage imageWithContentsOfFile:videoObject.coverPath];
    //: if (image) {
    if (image) {
         //: self.imageView.image = image;
         self.imageView.image = image;
     //: } else {
     } else {
         //: if (videoObject.url.length > 0)
         if (videoObject.url.length > 0)
         {
             //: NSString *videoUrl = videoObject.coverUrl;
             NSString *videoUrl = videoObject.coverUrl;
             //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:[videoUrl stringByReplacingOccurrencesOfString:@" " withString:@""]]];
             [self.imageView sd_setImageWithURL:[NSURL URLWithString:[videoUrl stringByReplacingOccurrencesOfString:@" " withString:@""]]];
         }
     }

    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:[[SoapBubbleData sharedInstance] k_rescuePath] context:user_normalKey];
    //: NSURL *fileURL = [NSURL URLWithString:videoObject.url];
    NSURL *fileURL = [NSURL URLWithString:videoObject.url];
    //: AVAsset *asset = [AVURLAsset URLAssetWithURL:fileURL options:nil];
    AVAsset *asset = [AVURLAsset URLAssetWithURL:fileURL options:nil];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [_playerItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:KVO_AVPlayerItem_state];
    [_playerItem addObserver:self forKeyPath:[[SoapBubbleData sharedInstance] k_rescuePath] options:NSKeyValueObservingOptionNew context:user_normalKey];

    //player
    //: [self setupPlayer];
    [self searched];

    //: [self.imageView.layer addSublayer:self.playerLayer];
    [self.imageView.layer addSublayer:self.playerLayer];
//    self.playerLayer.frame = self.imageView.bounds;

//    [self.player replaceCurrentItemWithPlayerItem:_playerItem];
//    [self.player play];

    //: NSLog(@"加载状态- %ld",(long)self.model.message.attachmentDownloadState);
    //: BOOL isSending = (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering);
    BOOL isSending = (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering);
    //: BOOL isDowning = (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading);
    BOOL isDowning = (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading);

    //: _progressView.hidden = !(isSending || isDowning);
    _progressView.hidden = !(isSending || isDowning);

//    _progressView.hidden         = YES;
    //: if (!_progressView.hidden) {
    if (!_progressView.hidden) {
        //: [_progressView setProgress:[[[NIMSDK sharedSDK] chatManager] messageTransportProgress:self.model.message]];
        [_progressView setLanguage:[[[NIMSDK sharedSDK] chatManager] messageTransportProgress:self.model.message]];
    }
}

//: - (void)onTap:(UIButton *)sender
- (void)buttoning:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) {
    if (sender.selected) {
        //: [self.player play];
        [self.player play];
    //: }else{
    }else{
        //: [self.player pause];
        [self.player pause];
    }
}


//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)setupPlayer {
- (void)searched {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: _player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
        _player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    }
}

//: - (AVPlayerLayer *)playerLayer
- (AVPlayerLayer *)playerLayer
{
    //: if(!_playerLayer){
    if(!_playerLayer){
        //: _playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
        _playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
        //: _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
        _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
        //: _playerLayer.frame = self.imageView.bounds;
        _playerLayer.frame = self.imageView.bounds;
        //: [self.imageView.layer addSublayer:_playerLayer];
        [self.imageView.layer addSublayer:_playerLayer];
    }
    //: return _playerLayer;
    return _playerLayer;
}

//: - (void)startPlay{
- (void)quantitativeRelationHandle{
    //: self.avPlayer.view.frame = self.imageView.bounds;
    self.avPlayer.view.frame = self.imageView.bounds;
    //: self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: [self.avPlayer prepareToPlay];
    [self.avPlayer teeDoingShouldPlay];
    //: [self.imageView addSubview:self.avPlayer.view];
    [self.imageView addSubview:self.avPlayer.view];

}

//: - (NTESAVMoivePlayerController *)avPlayer {
- (PlayerController *)avPlayer {
    //: if (!_avPlayer) {
    if (!_avPlayer) {
        //: _avPlayer = [[NTESAVMoivePlayerController alloc] initWithContentURL:self.fileURL];
        _avPlayer = [[PlayerController alloc] initWithObject:self.fileURL];
        //: _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
        _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
    }
    //: return _avPlayer;
    return _avPlayer;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model onSize:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: _progressView.frame = imageViewFrame;
    _progressView.frame = imageViewFrame;
//
////    self.progress.frame = CGRectMake(contentInsets.left+5, contentInsets.top+5, contentsize.width-10, contentsize.height-10);
//        self.progress.nim_centerX = self.nim_width  * .5f;
//        self.progress.nim_centerY = self.nim_height * .5f;

    //: self.playerLayer.frame = self.imageView.bounds;
    self.playerLayer.frame = self.imageView.bounds;


    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.masksToBounds = YES;
    maskLayer.masksToBounds = YES;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.imageView.bounds;
    maskLayer.frame = self.imageView.bounds;
    //: self.imageView.layer.mask = maskLayer;
    self.imageView.layer.mask = maskLayer;

    //: self.playBtn.nim_centerX = self.nim_width * .5f;
    self.playBtn.nim_centerX = self.nim_width * .5f;
    //: self.playBtn.nim_centerY = self.nim_height * .5f;
    self.playBtn.nim_centerY = self.nim_height * .5f;
}

//: - (void)onTouchUpInside:(id)sender
- (void)recording:(id)sender
{
    //: ContentKitEvent *event = [[ContentKitEvent alloc] init];
    KitEvent *event = [[KitEvent alloc] init];
    //: event.eventName = ContentKitEventNameTapContent;
    event.eventName = user_quickCommentValue;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate need:event];
}

//: - (void)updateProgress:(float)progress
- (void)background:(float)progress
{
    //: if (progress > 1.0) {
    if (progress > 1.0) {
        //: progress = 1.0;
        progress = 1.0;
    }
    //: self.progressView.progress = progress;
    self.progressView.language = progress;
}


//: - (UIImage *)thumbnailImageForVideo:(NSURL *)videoURL atTime:(NSTimeInterval)time
- (UIImage *)high:(NSURL *)videoURL shouldTime:(NSTimeInterval)time
{

    //: AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL options:nil];
    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL options:nil];
    //: if (!asset)
    if (!asset)
    {
        //: return nil;
        return nil;
    }

    //: AVAssetImageGenerator *generator =[[AVAssetImageGenerator alloc] initWithAsset:asset];
    AVAssetImageGenerator *generator =[[AVAssetImageGenerator alloc] initWithAsset:asset];
    //: generator.appliesPreferredTrackTransform = YES;
    generator.appliesPreferredTrackTransform = YES;
    //: generator.apertureMode = AVAssetImageGeneratorApertureModeEncodedPixels;
    generator.apertureMode = AVAssetImageGeneratorApertureModeEncodedPixels;

    //: CGImageRef thumbnailImageRef = NULL;
    CGImageRef thumbnailImageRef = NULL;
    //: CFTimeInterval thumbnailImageTime = time;
    CFTimeInterval thumbnailImageTime = time;
    //: NSError *thumbnailImageGenerationError = nil;
    NSError *thumbnailImageGenerationError = nil;
    //: thumbnailImageRef = [generator copyCGImageAtTime:CMTimeMake(thumbnailImageTime, 60)
    thumbnailImageRef = [generator copyCGImageAtTime:CMTimeMake(thumbnailImageTime, 60)
                                          //: actualTime:NULL
                                          actualTime:NULL
                                               //: error:&thumbnailImageGenerationError];
                                               error:&thumbnailImageGenerationError];

    //: UIImage *thumbnailImage = thumbnailImageRef ? [[UIImage alloc] initWithCGImage:thumbnailImageRef] : nil;
    UIImage *thumbnailImage = thumbnailImageRef ? [[UIImage alloc] initWithCGImage:thumbnailImageRef] : nil;
    //: thumbnailImage = [thumbnailImage nim_cropedImageWithSize:CGSizeMake(600, 600)];
    thumbnailImage = [thumbnailImage quick:CGSizeMake(600, 600)];

    //: CGImageRelease(thumbnailImageRef);
    CGImageRelease(thumbnailImageRef);
    //: return thumbnailImage;
    return thumbnailImage;
}

//: @end
@end
