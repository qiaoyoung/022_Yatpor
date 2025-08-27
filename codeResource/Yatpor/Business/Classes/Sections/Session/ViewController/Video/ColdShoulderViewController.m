
#import <Foundation/Foundation.h>
typedef struct {
    Byte witness;
    Byte *letOut;
    unsigned int burdenReload;
    Byte startOutComment;
	int fellowComfort;
} MdData;

NSString *StringFromMdData(MdData *data);


//: player_play
MdData user_lineIntervalernIdent = (MdData){251, (Byte []){139, 151, 154, 130, 158, 137, 164, 139, 151, 154, 130, 81}, 11, 243, 92};

//: ic_pic_save
MdData appBubbleMessage = (MdData){148, (Byte []){253, 247, 203, 228, 253, 247, 203, 231, 245, 226, 241, 244}, 11, 221, 91};

//: player_push
MdData mNameCoverStr = (MdData){114, (Byte []){2, 30, 19, 11, 23, 0, 45, 2, 7, 1, 26, 241}, 11, 163, 46};

//: /  00:00
MdData dreamToilOperationStr = (MdData){157, (Byte []){178, 189, 189, 173, 173, 167, 173, 173, 151}, 8, 227, 109};

//: 0.5x
MdData dream_thirtyReloadId = (MdData){131, (Byte []){179, 173, 182, 251, 21}, 4, 210, 88};

//: 播放失败
MdData dreamGuyFormat = (MdData){31, (Byte []){249, 141, 178, 249, 139, 161, 250, 187, 174, 247, 171, 186, 27}, 12, 172, 204};

//: #ffffff
MdData userDismissMessage = (MdData){158, (Byte []){189, 248, 248, 248, 248, 248, 248, 154}, 7, 217, 146};

//: ic_pic_share
MdData mMorroMsg = (MdData){154, (Byte []){243, 249, 197, 234, 243, 249, 197, 233, 242, 251, 232, 255, 115}, 12, 239, 157};

//: 1.5x
MdData kWitnessTitle = (MdData){233, (Byte []){216, 199, 220, 145, 110}, 4, 238, 221};

//: error
MdData notiEtherName = (MdData){108, (Byte []){9, 30, 30, 3, 30, 202}, 5, 242, 36};

//: 00:00
MdData main_viewMessage = (MdData){29, (Byte []){45, 45, 39, 45, 45, 186}, 5, 179, 200};

//: friend_verify_avtivity_net_error
MdData user_diseaseName = (MdData){12, (Byte []){106, 126, 101, 105, 98, 104, 83, 122, 105, 126, 101, 106, 117, 83, 109, 122, 120, 101, 122, 101, 120, 117, 83, 98, 105, 120, 83, 105, 126, 126, 99, 126, 137}, 32, 253, 65};

//: group_info_activity_update_success
MdData noti_dataPath = (MdData){117, (Byte []){18, 7, 26, 0, 5, 42, 28, 27, 19, 26, 42, 20, 22, 1, 28, 3, 28, 1, 12, 42, 0, 5, 17, 20, 1, 16, 42, 6, 0, 22, 22, 16, 6, 6, 160}, 34, 161, 234};

//: ic_close_w
MdData k_barFormat = (MdData){238, (Byte []){135, 141, 177, 141, 130, 129, 157, 139, 177, 153, 97}, 10, 230, 67};

//: group_info_activity_update_failed
MdData dreamVerticalFormat = (MdData){224, (Byte []){135, 146, 143, 149, 144, 191, 137, 142, 134, 143, 191, 129, 131, 148, 137, 150, 137, 148, 153, 191, 149, 144, 132, 129, 148, 133, 191, 134, 129, 137, 140, 133, 132, 182}, 33, 246, 198};

//: #66FFFFFF
MdData notiKeyTitle = (MdData){148, (Byte []){183, 162, 162, 210, 210, 210, 210, 210, 210, 111}, 9, 177, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColdShoulderViewController.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideoViewController.h"
#import "ColdShoulderViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+OpenSend.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESNavigationHandler.h"
#import "BarObject.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "LYSlider.h"
#import "AccumulationView.h"
//: #import "UIImage+ComPress.h"
#import "UIImage+Replacement.h"
//: #import "ZMONCustomLoadingView.h"
#import "BillView.h"
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "WMZDialog.h"
#import "WMZDialog.h"

//: @interface NTESVideoViewController ()<LYVideoPlayerDelegate>
@interface ColdShoulderViewController ()<BubbleTo>

//: @property (nonatomic,strong) NTESVideoViewItem *item;
@property (nonatomic,strong) BottomTitle *item;
//: @property (nonatomic,strong) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic,strong) PlayerController *avPlayer;

//: @property (nonatomic,strong) UIButton *btnSave;
@property (nonatomic,strong) UIButton *btnSave;
//: @property (nonatomic,strong) UIButton *btnShare;
@property (nonatomic,strong) UIButton *btnShare;
//: @property (nonatomic,strong) UIButton *btnPlay;
@property (nonatomic,strong) UIButton *btnPlay;
//: @property (nonatomic,strong) UIButton *btnRate;
@property (nonatomic,strong) UIButton *btnRate;

//: @property (nonatomic, strong) UILabel *currentLabel; 
@property (nonatomic, strong) UILabel *currentLabel; //当前播放时间
//: @property (nonatomic, strong) UILabel *totalLabel; 
@property (nonatomic, strong) UILabel *totalLabel; //视频总时间
//: @property (nonatomic, strong) LYSlider *videoSlider; 
@property (nonatomic, strong) AccumulationView *videoSlider; //滑动条
//: @property (nonatomic, assign) NSInteger currentTime;
@property (nonatomic, assign) NSInteger currentTime;
//: @property (nonatomic, assign) NSInteger totalTime;
@property (nonatomic, assign) NSInteger totalTime;
//: @property (nonatomic, assign) CGFloat playValue; 
@property (nonatomic, assign) CGFloat playValue; //播放进度
//: @property (nonatomic, assign) CGFloat progress; 
@property (nonatomic, assign) CGFloat progress; //缓冲进度


//: @property (nonatomic,strong) UIImageView *imgPlay;
@property (nonatomic,strong) UIImageView *imgPlay;

//: @property (nonatomic,strong) UIProgressView *progres;
@property (nonatomic,strong) UIProgressView *progres;
//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture; 
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture; //滑动手势

//: @property (strong, nonatomic) UISlider *progressSlider;
@property (strong, nonatomic) UISlider *progressSlider;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) BillView *loadingView;

//: @end
@end

//: @implementation NTESVideoViewController
@implementation ColdShoulderViewController
{
    //: CGPoint _startPoint; 
    CGPoint _startPoint; //手势滑动的起始点
    //: CGPoint _lastPoint; 
    CGPoint _lastPoint; //记录上次滑动的点
    //: BOOL _isStartPan; 
    BOOL _isStartPan; //记录手势开始滑动
    //: CGFloat _fastCurrentTime;
    CGFloat _fastCurrentTime;//记录当前快进快退的时间
}

//: - (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item
- (instancetype)initWithComment:(BottomTitle *)item
{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self)
    if (self)
    {
        //: _item = item;
        _item = item;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [_avPlayer stop];
    [_avPlayer send];
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //    [[NIMSDK sharedSDK].resourceManager cancelTask:_item.path];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
//    if (_avPlayer.playbackState == NTESAVMoviePlaybackStatePlaying) {//不要调用.get方法，会过早的初始化播放器
//        [self topStatusUIHidden:YES];
//    }else{
//        [self topStatusUIHidden:NO];
//    }
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
//    if (![[self.navigationController viewControllers] containsObject: self])
//    {
//        [self topStatusUIHidden:NO];
//    }
}


//: - (void)viewDidDisappear:(BOOL)animated{
- (void)viewDidDisappear:(BOOL)animated{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.avPlayer pause];
    [self.avPlayer menu];
}

//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor blackColor];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+10, 24, 24);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+10, 24, 24);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_w"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromMdData(&k_barFormat)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice bearDown]+10, 24, 24);
    //: [_btnShare setImage:[UIImage imageNamed:@"ic_pic_share"] forState:UIControlStateNormal];
    [_btnShare setImage:[UIImage imageNamed:StringFromMdData(&mMorroMsg)] forState:UIControlStateNormal];
    //: [_btnShare addTarget:self action:@selector(onTouchshare) forControlEvents:UIControlEventTouchUpInside];
    [_btnShare addTarget:self action:@selector(monthTo) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnShare];
    [self.view addSubview:_btnShare];

    //: _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice bearDown]+10, 24, 24);
    //: [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
    [_btnSave setImage:[UIImage imageNamed:StringFromMdData(&appBubbleMessage)] forState:UIControlStateNormal];
    //: [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnSave addTarget:self action:@selector(itemEnable) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnSave];
    [self.view addSubview:_btnSave];




    //: UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    //: [self.view addSubview:btnView];
    [self.view addSubview:btnView];
    //: [self.view bringSubviewToFront:btnView];
    [self.view bringSubviewToFront:btnView];

    //: _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_play"] forState:UIControlStateNormal];
    [_btnPlay setImage:[UIImage imageNamed:StringFromMdData(&user_lineIntervalernIdent)] forState:UIControlStateNormal];
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_push"] forState:UIControlStateSelected];
    [_btnPlay setImage:[UIImage imageNamed:StringFromMdData(&mNameCoverStr)] forState:UIControlStateSelected];
    //: [_btnPlay addTarget:self action:@selector(onTap) forControlEvents:UIControlEventTouchUpInside];
    [_btnPlay addTarget:self action:@selector(kitOff) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnPlay];
    [btnView addSubview:_btnPlay];

    //: [btnView addSubview:self.currentLabel];
    [btnView addSubview:self.currentLabel];
    //: self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);
    self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);

    //: [btnView addSubview:self.totalLabel];
    [btnView addSubview:self.totalLabel];
    //: self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);
    self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);

//    [btnView addSubview:self.videoSlider];
//    self.videoSlider.frame = CGRectMake(15, 5, 3*width-30, 20);

    //: self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    //: self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    //: self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
    self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
//    self.progressSlider.thumbTintColor = ThemeColor;
    //: [self.progressSlider setThumbImage:[UIImage createImageWithColor:[UIColor colorWithHexString:@"#ffffff"] radius:3.0] forState:UIControlStateNormal];
    [self.progressSlider setThumbImage:[UIImage tab:[UIColor recordView:StringFromMdData(&userDismissMessage)] name:3.0] forState:UIControlStateNormal];
    //: self.progressSlider.layer.cornerRadius = 3;
    self.progressSlider.layer.cornerRadius = 3;
    //: self.progressSlider.layer.masksToBounds = YES;
    self.progressSlider.layer.masksToBounds = YES;
    //: [btnView addSubview:self.progressSlider];
    [btnView addSubview:self.progressSlider];
    //: [self.progressSlider addTarget:self action:@selector(progressSliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.progressSlider addTarget:self action:@selector(areaInput:) forControlEvents:UIControlEventValueChanged];

    //: self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    //: _btnRate.backgroundColor = [UIColor blackColor];
    _btnRate.backgroundColor = [UIColor blackColor];
    //: _btnRate.layer.cornerRadius = 9;
    _btnRate.layer.cornerRadius = 9;
    //: _btnRate.layer.borderColor = [UIColor colorWithHexString:@"#66FFFFFF"].CGColor;
    _btnRate.layer.borderColor = [UIColor recordView:StringFromMdData(&notiKeyTitle)].CGColor;
    //: _btnRate.layer.borderWidth = 1;
    _btnRate.layer.borderWidth = 1;
    //: [_btnRate addTarget:self action:@selector(handlerTheRate:) forControlEvents:UIControlEventTouchUpInside];
    [_btnRate addTarget:self action:@selector(handlerred:) forControlEvents:UIControlEventTouchUpInside];
    //: _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [_btnRate setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
    [_btnRate setTitleColor:[UIColor recordView:StringFromMdData(&userDismissMessage)] forState:UIControlStateNormal];
    //: [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
    [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: [btnView addSubview:_btnRate];
    [btnView addSubview:_btnRate];


    //: if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
        //: [self startPlay];
        [self analogDigitalConverter];
    //: }else{
    }else{
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [self downLoadVideo:^(NSError *error) {
        [self broadcasting:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself startPlay];
                [wself analogDigitalConverter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                [wself.view makeToast:[MatronymicPath colorStreetwise:StringFromMdData(&user_diseaseName)]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    }

//    @weakify(self)
//    [self.avPlayer.player addPeriodicTimeObserverForInterval:CMTimeMakeWithSeconds(1, NSEC_PER_SEC)
//                                                      queue:NULL
//                                                 usingBlock:^(CMTime time) {
//        @strongify(self)
//        //进度 当前时间/总时间
//        CGFloat progress = CMTimeGetSeconds(self.avPlayer.player.currentItem.currentTime) / CMTimeGetSeconds(self.avPlayer.player.currentItem.duration);
//        //在这里截取播放进度并处理
//        self.progres.progress = progress;
//    }];
}

//: - (void)handlerTheRate:(UIButton *)sender
- (void)handlerred:(UIButton *)sender
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: Dialog().wTypeSet(DialogTypePop)
    Dialog().wTypeSet(DialogTypePop)
    //: .wEventFinishSet(^(id anyID, NSIndexPath *path, DialogType type) {
    .wEventFinishSet(^(id anyID, NSIndexPath *path, DialogType type) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.btnRate setTitle:anyID forState:UIControlStateNormal];
        [self.btnRate setTitle:anyID forState:UIControlStateNormal];
        //: if (path.row == 0) {
        if (path.row == 0) {
            //: [self setPlaybackRate:0.5f];
            [self setValueOpen:0.5f];
        //: }else if (path.row == 1){
        }else if (path.row == 1){
            //: [self setPlaybackRate:1.0f];
            [self setValueOpen:1.0f];
        //: }else if (path.row == 2){
        }else if (path.row == 2){
            //: [self setPlaybackRate:1.5f];
            [self setValueOpen:1.5f];
        //: }else if (path.row == 3){
        }else if (path.row == 3){
            //: [self setPlaybackRate:2.0f];
            [self setValueOpen:2.0f];
        }
    //: })
    })
    //: .wTextAlignmentSet(NSTextAlignmentCenter)
    .wTextAlignmentSet(NSTextAlignmentCenter)
    //: .wPopViewRectCornerSet(DialogRectCornerAllCorners)
    .wPopViewRectCornerSet(DialogRectCornerAllCorners)
    //: .wCellBackgroundColorSet([UIColor blackColor])
    .wCellBackgroundColorSet([UIColor blackColor])
    //: .wTapViewSet(sender)
    .wTapViewSet(sender)
    //: .wWidthSet(72)
    .wWidthSet(72)
    //: .wDataSet(@[@"0.5x",@"1x",@"1.5x",@"2x"])
    .wDataSet(@[StringFromMdData(&dream_thirtyReloadId),@"1x",StringFromMdData(&kWitnessTitle),@"2x"])
    //: .wStart();
    .wStart();
}

// 设置播放速率
//: - (void)setPlaybackRate:(float)rate {
- (void)setValueOpen:(float)rate {
    //: if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
    if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
        // iOS 10+ 推荐方式
        //: if (@available(iOS 10.0, *)) {
        if (@available(iOS 10.0, *)) {
            //: [self.avPlayer.player playImmediatelyAtRate:rate];
            [self.avPlayer.player playImmediatelyAtRate:rate];
        //: } else {
        } else {
            // iOS 10 以下方式
            //: self.avPlayer.player.rate = rate;
            self.avPlayer.player.rate = rate;
        }
    }
}

//: - (void)onTouchshare {
- (void)monthTo {
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    TipViewController *vc = [[TipViewController alloc]init];
    //: vc.message = self.message;
    vc.message = self.message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)onTouchSaveBtn {
- (void)itemEnable {

    //: PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    //: [photoLibrary performChanges:^{
    [photoLibrary performChanges:^{
        //: [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
                                                                         //: fileURLWithPath:self.item.path]];
                                                                         fileURLWithPath:self.item.path]];
    //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: NSString *toast = (success)?[FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"] :[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
            NSString *toast = (success)?[MatronymicPath colorStreetwise:StringFromMdData(&noti_dataPath)] :[MatronymicPath colorStreetwise:StringFromMdData(&dreamVerticalFormat)];
            //: [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
        //: });
        });
    //: }];
    }];
}


//: - (void)downLoadVideo:(void(^)(NSError *error))handler{
- (void)broadcasting:(void(^)(NSError *error))handler{
//    [SVProgressHUD show];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
    [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
//        if (wself)
//        {
//            [SVProgressHUD showProgress:progress];
//        }
    //: } completion:^(NSError *error) {
    } completion:^(NSError *error) {
        //: if (wself) {
        if (wself) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationEnableClose];
            //: if (handler) {
            if (handler) {
                //: handler(error);
                handler(error);
            }
        }
    //: }];
    }];
}

//: - (void)videoPlayertotalTime:(NSInteger)totalTime
- (void)addDoingEvent:(NSInteger)totalTime
{
    //: self.totalTime = totalTime;
    self.totalTime = totalTime;
    //: self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self timeFormatted:totalTime]];
    self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self formatted:totalTime]];
}

//: - (void)videoPlayercurrentTime:(NSInteger)currentTime
- (void)texted:(NSInteger)currentTime
{
    //: self.currentTime = currentTime;
    self.currentTime = currentTime;
    //: self.currentLabel.text = [self timeFormatted:currentTime];
    self.currentLabel.text = [self formatted:currentTime];
//    self.videoSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    //: self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;

}

//: - (void)progressSliderValueChanged:(UISlider *)sender {
- (void)areaInput:(UISlider *)sender {
    //: CGFloat totime = sender.value * (CGFloat)self.totalTime;
    CGFloat totime = sender.value * (CGFloat)self.totalTime;
    //: [self.avPlayer seekToTimePlay:totime];
    [self.avPlayer clip:totime];

//    CMTime newTime = CMTimeMakeWithSeconds(sender.value, NSEC_PER_SEC);
//    [self.avPlayer.player seekToTime:newTime completionHandler:^(BOOL finished) {
//        if (finished) {
//            [self.avPlayer play];
//        }
//    }];
}

//转换时间格式
//: - (NSString *)timeFormatted:(NSInteger)totalSeconds
- (NSString *)formatted:(NSInteger)totalSeconds
{
    //: NSInteger seconds = totalSeconds % 60;
    NSInteger seconds = totalSeconds % 60;
    //: NSInteger minutes = (totalSeconds / 60) % 60;
    NSInteger minutes = (totalSeconds / 60) % 60;

    //: return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
    return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
}


//: - (void)startPlay{
- (void)analogDigitalConverter{
    //: self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: [self.avPlayer prepareToPlay];
    [self.avPlayer teeDoingShouldPlay];
    //: [self.view addSubview:self.avPlayer.view];
    [self.view addSubview:self.avPlayer.view];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlaybackComplete:)
                                             selector:@selector(quantitied:)
                                                 //: name:NTESAVMoviePlayerPlaybackDidFinishNotification
                                                 name:show_itemPathMsg
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlayStateChanged:)
                                             selector:@selector(buttonChanged:)
                                                 //: name:NTESAVMoviePlayerPlaybackStateDidChangeNotification
                                                 name:user_labelScaleTitle
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];


//    CGRect bounds = self.avPlayer.view.bounds;
//    CGRect tapViewFrame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
//    UIView *tapView = [[UIView alloc]initWithFrame:tapViewFrame];
//    [tapView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
//    tapView.backgroundColor = [UIColor clearColor];
//    [self.avPlayer.view addSubview:tapView];
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTap:)];
//    [tapView  addGestureRecognizer:tap];
//    
//    [self.view addSubview:self.imgPlay];


}

//: - (void)moviePlaybackComplete: (NSNotification *)aNotification
- (void)quantitied: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: [self topStatusUIHidden:NO];
        [self stockist:NO];
        //: NSDictionary *notificationUserInfo = [aNotification userInfo];
        NSDictionary *notificationUserInfo = [aNotification userInfo];
        //: NSNumber *resultValue = [notificationUserInfo objectForKey:NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey];
        NSNumber *resultValue = [notificationUserInfo objectForKey:showStatusMsg];
        //: NTESAVMovieFinishReason reason = [resultValue intValue];
        NTESAVMovieFinishReason reason = [resultValue intValue];
        //: if (reason == NTESAVMovieFinishReasonPlaybackError)
        if (reason == NTESAVMovieFinishReasonPlaybackError)
        {
            //: NSError *mediaPlayerError = [notificationUserInfo objectForKey:@"error"];
            NSError *mediaPlayerError = [notificationUserInfo objectForKey:StringFromMdData(&notiEtherName)];
            //: NSString *errorTip = [NSString stringWithFormat:@"%@: %@", @"播放失败".ntes_localized, [mediaPlayerError localizedDescription]];
            NSString *errorTip = [NSString stringWithFormat:@"%@: %@", StringFromMdData(&dreamGuyFormat).with, [mediaPlayerError localizedDescription]];
            //: [self.view makeToast:errorTip
            [self.view makeToast:errorTip
                        //: duration:2
                        duration:2
                        //: position:CSToastPositionCenter];
                        position:CSToastPositionCenter];
        }
    }

}

//: - (void)moviePlayStateChanged: (NSNotification *)aNotification
- (void)buttonChanged: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: switch (self.avPlayer.playbackState)
        switch (self.avPlayer.playbackState)
        {
            //: case NTESAVMoviePlaybackStatePlaying:
            case NTESAVMoviePlaybackStatePlaying:
                //: [self topStatusUIHidden:YES];
                [self stockist:YES];
                //: break;
                break;
            //: case NTESAVMoviePlaybackStatePaused:
            case NTESAVMoviePlaybackStatePaused:
            //: case NTESAVMoviePlaybackStateStopped:
            case NTESAVMoviePlaybackStateStopped:
            //: case NTESAVMoviePlaybackStateInterrupted:
            case NTESAVMoviePlaybackStateInterrupted:
                //: [self topStatusUIHidden:NO];
                [self stockist:NO];
            //: case NTESAVPMoviePlaybackStateSeekingBackward:
            case NTESAVPMoviePlaybackStateSeekingBackward:
            //: case NTESAVPMoviePlaybackStateSeekingForward:
            case NTESAVPMoviePlaybackStateSeekingForward:
                //: break;
                break;
        }

    }
}

//: - (void)topStatusUIHidden:(BOOL)isHidden
- (void)stockist:(BOOL)isHidden
{
//    self.imgPlay.hidden = isHidden;
    //: self.btnPlay.selected = isHidden;
    self.btnPlay.selected = isHidden;
}

//: - (void)onTap
- (void)kitOff
{
    //: [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: switch (self.avPlayer.playbackState)
    switch (self.avPlayer.playbackState)
    {
        //: case NTESAVMoviePlaybackStatePlaying:
        case NTESAVMoviePlaybackStatePlaying:
            //: [self.avPlayer pause];
            [self.avPlayer menu];
            //: break;
            break;
        //: case NTESAVMoviePlaybackStatePaused:
        case NTESAVMoviePlaybackStatePaused:
        //: case NTESAVMoviePlaybackStateStopped:
        case NTESAVMoviePlaybackStateStopped:
        //: case NTESAVMoviePlaybackStateInterrupted:
        case NTESAVMoviePlaybackStateInterrupted:
            //: [self.avPlayer play];
            [self.avPlayer file];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NTESAVMoivePlayerController *)avPlayer {
- (PlayerController *)avPlayer {
    //: if (!_avPlayer) {
    if (!_avPlayer) {
        //: _avPlayer = [[NTESAVMoivePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:self.item.path]];
        _avPlayer = [[PlayerController alloc] initWithObject:[NSURL fileURLWithPath:self.item.path]];
        //: _avPlayer.delegate = self;
        _avPlayer.delegate = self;
        //: _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
        _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
    }
    //: return _avPlayer;
    return _avPlayer;
}

//: - (UIImageView *)imgPlay{
- (UIImageView *)imgPlay{
    //: if(!_imgPlay){
    if(!_imgPlay){
        //: _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
        _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
//        _imgPlay.center = self.view.center;
        //: _imgPlay.image = [UIImage imageNamed:@"player_push"];
        _imgPlay.image = [UIImage imageNamed:StringFromMdData(&mNameCoverStr)];
        //: _imgPlay.hidden = YES;
        _imgPlay.hidden = YES;
    }
    //: return _imgPlay;
    return _imgPlay;
}

//: - (UILabel *)currentLabel{
- (UILabel *)currentLabel{
    //: if (!_currentLabel) {
    if (!_currentLabel) {
        //: _currentLabel = [[UILabel alloc] init];
        _currentLabel = [[UILabel alloc] init];
        //: _currentLabel.text = @"00:00";
        _currentLabel.text = StringFromMdData(&main_viewMessage);
        //: _currentLabel.textColor = [UIColor whiteColor];
        _currentLabel.textColor = [UIColor whiteColor];
//        _currentLabel.textAlignment = NSTextAlignmentLeft;
        //: _currentLabel.font = [UIFont systemFontOfSize:12];
        _currentLabel.font = [UIFont systemFontOfSize:12];
    }
    //: return _currentLabel;
    return _currentLabel;
}
//: - (UILabel *)totalLabel{
- (UILabel *)totalLabel{
    //: if (!_totalLabel) {
    if (!_totalLabel) {
        //: _totalLabel = [[UILabel alloc] init];
        _totalLabel = [[UILabel alloc] init];
        //: _totalLabel.text = @"/  00:00";
        _totalLabel.text = StringFromMdData(&dreamToilOperationStr);
        //: _totalLabel.textColor = [UIColor whiteColor];
        _totalLabel.textColor = [UIColor whiteColor];
        //: _totalLabel.font = [UIFont systemFontOfSize:12];
        _totalLabel.font = [UIFont systemFontOfSize:12];
//        _totalLabel.textAlignment = NSTextAlignmentRight;
    }
    //: return _totalLabel;
    return _totalLabel;
}

//: - (LYSlider *)videoSlider{
- (AccumulationView *)videoSlider{
    //: if (!_videoSlider) {
    if (!_videoSlider) {
        //: _videoSlider = [[LYSlider alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];
        _videoSlider = [[AccumulationView alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];

//        //设置滑块图片样式
        // 1 通过颜色创建 Image
        //: UIImage *normalImage = [UIImage createImageWithColor:[UIColor colorWithHexString:@"#ffffff"] radius:7.0];
        UIImage *normalImage = [UIImage tab:[UIColor recordView:StringFromMdData(&userDismissMessage)] name:7.0];

        //        UIView *normalImageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 8, 8)];
        //        normalImageView.layer.cornerRadius = 1;
        //        normalImageView.layer.masksToBounds = YES;
        //        normalImageView.backgroundColor = [UIColor whiteColor];
        //        UIImage *normalImage = [UIImage creatImageWithView:normalImageView];

//        // 2 通过view 创建 Image
//        UIView *highlightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 12, 12)];
//        highlightView.layer.cornerRadius = 6;
//        highlightView.layer.masksToBounds = YES;
//        highlightView.backgroundColor = [UIColor redColor];
//        UIImage *highlightImage = [UIImage creatImageWithView:highlightView];

        //: [_videoSlider setThumbImage:normalImage forState:UIControlStateNormal];
        [_videoSlider ting:normalImage data:UIControlStateNormal];
//        [_videoSlider setThumbImage:highlightImage forState:UIControlStateHighlighted];

//        _videoSlider.trackColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];//轨道的颜色
//        _videoSlider.bufferColor = RGB_COLOR_String(@"#ffffff");//缓冲的颜色
//        _videoSlider.thumbValueColor = RGB_COLOR_String(@"#ffffff");///播放进度的颜色
        ///
        //: _videoSlider.trackHeight = 6;
        _videoSlider.trackHeight = 6;
        //: _videoSlider.thumbVisibleSize = 14;
        _videoSlider.thumbVisibleSize = 14;//设置滑块（可见的）大小

//        [_videoSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];//正在拖动
//        [_videoSlider addTarget:self action:@selector(sliderTouchEnd:) forControlEvents:UIControlEventEditingDidEnd];//拖动结束
        //: [_videoSlider addGestureRecognizer:self.panGesture];
        [_videoSlider addGestureRecognizer:self.panGesture];

//        [self.bottomView addSubview:_videoSlider];
    }
    //: return _videoSlider;
    return _videoSlider;
}

//: - (ZMONCustomLoadingView *)loadingView
- (BillView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
        _loadingView = [[BillView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-(49.0f))];
    }
    //: return _loadingView;
    return _loadingView;
}


//: #pragma mark - Event
#pragma mark - Event
//: - (void)sliderValueChange:(LYSlider *)slider{
- (void)value:(AccumulationView *)slider{

//    _sliderIsTouching = YES;
//    self.currentLabel.text = [self timeFormatted:slider.value * self.totalTime];
//    [self startHideControlTimer];
}
//: - (void)sliderTouchEnd:(LYSlider *)slider{
- (void)margin:(AccumulationView *)slider{

//    if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//        [_delegate videoControl:self didPlayToTime:slider.value * self.totalTime];
//    }
//    _sliderIsTouching = NO;
//    [self startHideControlTimer];
    //: NSLog(@"12345678");
    //: NSLog(@"%f",slider.value);
    //: [self.avPlayer seekToTimePlay: slider.value];
    [self.avPlayer clip: slider.value];
}

//: - (UIPanGestureRecognizer *)panGesture{
- (UIPanGestureRecognizer *)panGesture{
    //: if (!_panGesture) {
    if (!_panGesture) {
        //: _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureTouch:)];
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(colorReply:)];
    }
    //: return _panGesture;
    return _panGesture;
}
//: - (void)panGestureTouch:(UIPanGestureRecognizer *)panGestureTouch{
- (void)colorReply:(UIPanGestureRecognizer *)panGestureTouch{
    //: CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    //: static int changeXorY = 0; 
    static int changeXorY = 0; //0:X:进度   1:Y：音量

    //: if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
    if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
        //: _startPoint = touPoint;
        _startPoint = touPoint;
        //: _lastPoint = touPoint;
        _lastPoint = touPoint;
        //: _isStartPan = YES;
        _isStartPan = YES;
        //: _fastCurrentTime = self.currentTime;
        _fastCurrentTime = self.currentTime;
        //: changeXorY = 0;
        changeXorY = 0;
    //: }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
    }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
        //: CGFloat change_X = touPoint.x - _startPoint.x;
        CGFloat change_X = touPoint.x - _startPoint.x;
        //: CGFloat change_Y = touPoint.y - _startPoint.y;
        CGFloat change_Y = touPoint.y - _startPoint.y;

        //: if (_isStartPan) {
        if (_isStartPan) {

            //: if (fabs(change_X) > fabs(change_Y)) {
            if (fabs(change_X) > fabs(change_Y)) {
                //: changeXorY = 0;
                changeXorY = 0;
            //: }else{
            }else{
                //: changeXorY = 1;
                changeXorY = 1;
            }
            //: _isStartPan = NO;
            _isStartPan = NO;
        }
        //: if (changeXorY == 0) {
        if (changeXorY == 0) {//进度


            //: if (touPoint.x - _lastPoint.x >= 1) {
            if (touPoint.x - _lastPoint.x >= 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime += 1;
                _fastCurrentTime += 1;
                //: if (_fastCurrentTime > self.totalTime) {
                if (_fastCurrentTime > self.totalTime) {
                    //: _fastCurrentTime = self.totalTime;
                    _fastCurrentTime = self.totalTime;
                }
            }
            //: if (touPoint.x - _lastPoint.x <= - 1) {
            if (touPoint.x - _lastPoint.x <= - 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime -= 1;
                _fastCurrentTime -= 1;
                //: if (_fastCurrentTime < 0) {
                if (_fastCurrentTime < 0) {
                    //: _fastCurrentTime = 0;
                    _fastCurrentTime = 0;
                }
            }

//            NSString *currentTimeString = [self timeFormatted:(int)_fastCurrentTime];
//            NSString *totalTimeString = [self timeFormatted:(int)self.totalTime];
//            self.fastTimeLabel.text = [NSString stringWithFormat:@"%@/%@",currentTimeString,totalTimeString];

        }

    //: }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){
    }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){

        //: if (changeXorY == 0) {
        if (changeXorY == 0) {
//            if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//                [_delegate videoControl:self didPlayToTime:_fastCurrentTime];
//            }

            //: [self.avPlayer seekToTimePlay:_fastCurrentTime];
            [self.avPlayer clip:_fastCurrentTime];
        }
//        [self startHideControlTimer];
    }
}

//: @end
@end


//: @implementation NTESVideoViewItem
@implementation BottomTitle
//: @end
@end

Byte *MdDataToByte(MdData *data) {
    if (data->startOutComment < 101) return data->letOut;
    for (int i = 0; i < data->burdenReload; i++) {
        data->letOut[i] ^= data->witness;
    }
    data->letOut[data->burdenReload] = 0;
    data->startOutComment = 41;
	if (data->burdenReload >= 1) {
		data->fellowComfort = data->letOut[0];
	}
    return data->letOut;
}

NSString *StringFromMdData(MdData *data) {
    return [NSString stringWithUTF8String:(char *)MdDataToByte(data)];
}
