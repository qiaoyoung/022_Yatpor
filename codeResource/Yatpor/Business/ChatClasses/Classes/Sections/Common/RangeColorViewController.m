
#import <Foundation/Foundation.h>

typedef struct {
    Byte retManyBag;
    Byte *resortEmployer;
    unsigned int confederateArmy;
	int sophisticate;
	int rhetoricBubble;
} StructClaimData;

@interface ClaimData : NSObject

+ (instancetype)sharedInstance;

//: 图片在本地不存在
@property (nonatomic, copy) NSString *mGatorTitle;

//: #875FFA
@property (nonatomic, copy) NSString *user_squareUpStr;

//: #612CF9
@property (nonatomic, copy) NSString *k_showValue;

//: 图片在iCloud上
@property (nonatomic, copy) NSString *appAccountName;

//: nimdemo.netease.fetcher
@property (nonatomic, copy) NSString *dream_titleToilIdent;

//: 图片在本地不存在，无法发送
@property (nonatomic, copy) NSString *m_remoteContent;

//: 文件在iCloud上，无法发送
@property (nonatomic, copy) NSString *k_messageMsg;

//: mp4
@property (nonatomic, copy) NSString *kDialKey;

@end

@implementation ClaimData

+ (instancetype)sharedInstance {
    static ClaimData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ClaimDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ClaimDataToByte:(StructClaimData *)data {
    for (int i = 0; i < data->confederateArmy; i++) {
        data->resortEmployer[i] ^= data->retManyBag;
    }
    data->resortEmployer[data->confederateArmy] = 0;
	if (data->confederateArmy >= 2) {
		data->sophisticate = data->resortEmployer[0];
		data->rhetoricBubble = data->resortEmployer[1];
	}
    return data->resortEmployer;
}

- (NSString *)StringFromClaimData:(StructClaimData *)data {
    return [NSString stringWithUTF8String:(char *)[self ClaimDataToByte:data]];
}

//: mp4
- (NSString *)kDialKey {
    if (!_kDialKey) {
		NSArray<NSString *> *origin = @[@"178", @"175", @"235", @"47"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){223, (Byte *)data.bytes, 3, 147, 71};
        _kDialKey = [self StringFromClaimData:&value];
    }
    return _kDialKey;
}

//: 文件在iCloud上，无法发送
- (NSString *)k_messageMsg {
    if (!_k_messageMsg) {
		NSArray<NSString *> *origin = @[@"130", @"242", @"227", @"128", @"223", @"210", @"129", @"248", @"204", @"13", @"39", @"8", @"11", @"17", @"0", @"128", @"220", @"238", @"139", @"216", @"232", @"130", @"243", @"196", @"130", @"215", @"241", @"129", @"235", @"245", @"141", @"228", @"229", @"237"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){100, (Byte *)data.bytes, 33, 62, 134};
        _k_messageMsg = [self StringFromClaimData:&value];
    }
    return _k_messageMsg;
}

//: #875FFA
- (NSString *)user_squareUpStr {
    if (!_user_squareUpStr) {
		NSArray<NSString *> *origin = @[@"87", @"76", @"67", @"65", @"50", @"50", @"53", @"106"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){116, (Byte *)data.bytes, 7, 152, 255};
        _user_squareUpStr = [self StringFromClaimData:&value];
    }
    return _user_squareUpStr;
}

//: nimdemo.netease.fetcher
- (NSString *)dream_titleToilIdent {
    if (!_dream_titleToilIdent) {
		NSArray<NSString *> *origin = @[@"255", @"248", @"252", @"245", @"244", @"252", @"254", @"191", @"255", @"244", @"229", @"244", @"240", @"226", @"244", @"191", @"247", @"244", @"229", @"242", @"249", @"244", @"227", @"71"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){145, (Byte *)data.bytes, 23, 2, 237};
        _dream_titleToilIdent = [self StringFromClaimData:&value];
    }
    return _dream_titleToilIdent;
}

//: 图片在iCloud上
- (NSString *)appAccountName {
    if (!_appAccountName) {
		NSArray<NSString *> *origin = @[@"136", @"246", @"211", @"138", @"228", @"234", @"136", @"241", @"197", @"4", @"46", @"1", @"2", @"24", @"9", @"137", @"213", @"231", @"82"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){109, (Byte *)data.bytes, 18, 81, 123};
        _appAccountName = [self StringFromClaimData:&value];
    }
    return _appAccountName;
}

//: 图片在本地不存在，无法发送
- (NSString *)m_remoteContent {
    if (!_m_remoteContent) {
		NSArray<NSString *> *origin = @[@"115", @"13", @"40", @"113", @"31", @"17", @"115", @"10", @"62", @"112", @"10", @"58", @"115", @"10", @"38", @"114", @"46", @"27", @"115", @"59", @"14", @"115", @"10", @"62", @"121", @"42", @"26", @"112", @"1", @"54", @"112", @"37", @"3", @"115", @"25", @"7", @"127", @"22", @"23", @"38"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){150, (Byte *)data.bytes, 39, 241, 61};
        _m_remoteContent = [self StringFromClaimData:&value];
    }
    return _m_remoteContent;
}

//: #612CF9
- (NSString *)k_showValue {
    if (!_k_showValue) {
		NSArray<NSString *> *origin = @[@"81", @"68", @"67", @"64", @"49", @"52", @"75", @"237"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){114, (Byte *)data.bytes, 7, 97, 254};
        _k_showValue = [self StringFromClaimData:&value];
    }
    return _k_showValue;
}

//: 图片在本地不存在
- (NSString *)mGatorTitle {
    if (!_mGatorTitle) {
		NSArray<NSString *> *origin = @[@"93", @"35", @"6", @"95", @"49", @"63", @"93", @"36", @"16", @"94", @"36", @"20", @"93", @"36", @"8", @"92", @"0", @"53", @"93", @"21", @"32", @"93", @"36", @"16", @"39"];
		NSData *data = [ClaimData ClaimDataToData:origin];
        StructClaimData value = (StructClaimData){184, (Byte *)data.bytes, 24, 179, 83};
        _mGatorTitle = [self StringFromClaimData:&value];
    }
    return _mGatorTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeColorViewController.m
// UserKit
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitMediaPickerController.h"
#import "RangeColorViewController.h"
//: #import "ContentKitProgressHUD.h"
#import "EmptyEffectView.h"
//: #import "ContentKitDependency.h"
#import "ContentKitDependency.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "ContentKitFileLocationHelper.h"
#import "TipTitle.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>

//: @interface ContentKitMediaPickerController ()<TZImagePickerControllerDelegate>
@interface RangeColorViewController ()<TZImagePickerControllerDelegate>

//: @property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;
@property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;

//: @end
@end

//: @implementation ContentKitMediaPickerController
@implementation RangeColorViewController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount {
- (instancetype)initWithBeforeRemove:(NSInteger)maxImagesCount {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
        //: self.navigationBar.barStyle = UIBarStyleBlack;
        self.navigationBar.barStyle = UIBarStyleBlack;
        //: self.pickerDelegate = self;
        self.pickerDelegate = self;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[GradientHelper inheritSureSingular:[UIColor recordView:[ClaimData sharedInstance].user_squareUpStr] front:[UIColor recordView:[ClaimData sharedInstance].k_showValue] should:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
        //: self.navigationBar.barStyle = UIBarStyleDefault;
        self.navigationBar.barStyle = UIBarStyleDefault;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[GradientHelper inheritSureSingular:[UIColor recordView:[ClaimData sharedInstance].user_squareUpStr] front:[UIColor recordView:[ClaimData sharedInstance].k_showValue] should:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    [UIApplication sharedApplication].statusBarStyle =  UIStatusBarStyleDarkContent;
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

}

//: #pragma mark - <TZImagePickerControllerDelegate>
#pragma mark - <TZImagePickerControllerDelegate>
//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
       //: didFinishPickingPhotos:(NSArray<UIImage *> *)photos
       didFinishPickingPhotos:(NSArray<UIImage *> *)photos
                 //: sourceAssets:(NSArray *)assets
                 sourceAssets:(NSArray *)assets
        //: isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
        isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
    //: if (isSelectOriginalPhoto)
    if (isSelectOriginalPhoto)
    {
        //: [self requestAssets:[assets mutableCopy]];
        [self option:[assets mutableCopy]];
    }
    //: else
    else
    {
        //: if ([_nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([_nim_delegate respondsToSelector:@selector(contentPath:information:fromLoad:)]) {
            //: [_nim_delegate onPickerSelectedWithType:PHAssetMediaTypeImage images:photos path:nil];
            [_nim_delegate contentPath:PHAssetMediaTypeImage information:photos fromLoad:nil];
        }
    }
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
        //: didFinishPickingVideo:(UIImage *)coverImage
        didFinishPickingVideo:(UIImage *)coverImage
                 //: sourceAssets:(id)asset{
                 sourceAssets:(id)asset{
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self option:items];
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
     //: didFinishPickingGifImage:(UIImage *)animatedImage
     didFinishPickingGifImage:(UIImage *)animatedImage
                 //: sourceAssets:(PHAsset *)asset {
                 sourceAssets:(PHAsset *)asset {
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self option:items];
}

//: - (void)requestAssets:(NSMutableArray *)assets
- (void)option:(NSMutableArray *)assets
{
    //: if (!assets.count) {
    if (!assets.count) {
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ContentKitProgressHUD show];
    [EmptyEffectView mustBy];
    //: [self requestAsset:assets.firstObject handler:^(NSString *path, PHAssetMediaType type) {
    [self link:assets.firstObject asset:^(NSString *path, PHAssetMediaType type) {
        //: [ContentKitProgressHUD dismiss];
        [EmptyEffectView tag];
        //: if ([weakSelf.nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([weakSelf.nim_delegate respondsToSelector:@selector(contentPath:information:fromLoad:)]) {
            //: [weakSelf.nim_delegate onPickerSelectedWithType:type images:nil path:path];
            [weakSelf.nim_delegate contentPath:type information:nil fromLoad:path];
        }
        //: if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; });}
        if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf option:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf option:assets]; });}



    //: }];
    }];
}

//: - (void)requestAsset:(PHAsset *)asset handler:(void(^)(NSString *,PHAssetMediaType)) handler
- (void)link:(PHAsset *)asset asset:(void(^)(NSString *,PHAssetMediaType)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {

        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            //: options.version = PHVideoRequestOptionsVersionCurrent;
            options.version = PHVideoRequestOptionsVersionCurrent;
            //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
            options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;

            //: [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
                //: NSError *error = nil;
                NSError *error = nil;
                //: NSString *outputPath = nil;
                NSString *outputPath = nil;
                //: if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                    //: outputPath = nil;
                    outputPath = nil;
                    //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1000 userInfo:@{NSLocalizedDescriptionKey:@"图片在iCloud上"}];
                    error = [NSError errorWithDomain:[ClaimData sharedInstance].dream_titleToilIdent code:0x1000 userInfo:@{NSLocalizedDescriptionKey:[ClaimData sharedInstance].appAccountName}];
                    //: [weakSelf showErrorMsg:@"文件在iCloud上，无法发送"];
                    [weakSelf keyColor:[ClaimData sharedInstance].k_messageMsg];
                //: } else {
                } else {
                    //: AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    //: NSString *outputFileName = [ContentKitFileLocationHelper genFilenameWithExt:@"mp4"];
                    NSString *outputFileName = [TipTitle input:[ClaimData sharedInstance].kDialKey];
                    //: outputPath = [ContentKitFileLocationHelper filepathForVideo:outputFileName];
                    outputPath = [TipTitle forShow:outputFileName];
                    //: BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    //: if (!fileExist) {
                    if (!fileExist) {
                        //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1001 userInfo:@{NSLocalizedDescriptionKey:@"图片在本地不存在"}];
                        error = [NSError errorWithDomain:[ClaimData sharedInstance].dream_titleToilIdent code:0x1001 userInfo:@{NSLocalizedDescriptionKey:[ClaimData sharedInstance].mGatorTitle}];
                        //: [weakSelf showErrorMsg:@"图片在本地不存在，无法发送"];
                        [weakSelf keyColor:[ClaimData sharedInstance].m_remoteContent];
                    //: } else {
                    } else {
                        //: [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                        [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                    }
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                    handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                //: });
                });
            //: }];
            }];
        //: });
        });
    }

    //: if (asset.mediaType == PHAssetMediaTypeImage)
    if (asset.mediaType == PHAssetMediaTypeImage)
    {
        //: [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
        [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
            //: NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            //: handler(path,contentEditingInput.mediaType);
            handler(path,contentEditingInput.mediaType);
        //: }];
        }];
    }

}

//: - (void)showErrorMsg:(NSString *)msg {
- (void)keyColor:(NSString *)msg {
    //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};
    if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};




}

//: #pragma mark - setter
#pragma mark - setter
//: - (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
- (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
    self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
}

//: @end
@end
