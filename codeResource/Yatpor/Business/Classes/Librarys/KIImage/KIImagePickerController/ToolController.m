
#import <Foundation/Foundation.h>
typedef struct {
    Byte extent;
    Byte *distantTing;
    unsigned int mentalRepresentation;
    Byte harassmentClaimView;
	int smokeNeed;
	int celebrityDebate;
} ShouldData;

NSString *StringFromShouldData(ShouldData *data);


//: contact_tag_fragment_cancel
ShouldData notiIgnoreFormat = (ShouldData){73, (Byte []){42, 38, 39, 61, 40, 42, 61, 22, 61, 40, 46, 22, 47, 59, 40, 46, 36, 44, 39, 61, 22, 42, 40, 39, 42, 44, 37, 188}, 27, 205, 129, 3};

//: UIImagePickerControllerOriginalImage
ShouldData show_layerText = (ShouldData){90, (Byte []){15, 19, 19, 55, 59, 61, 63, 10, 51, 57, 49, 63, 40, 25, 53, 52, 46, 40, 53, 54, 54, 63, 40, 21, 40, 51, 61, 51, 52, 59, 54, 19, 55, 59, 61, 63, 108}, 36, 204, 2, 35};

//: friend_circle_activity_from_phone
ShouldData user_columnId = (ShouldData){74, (Byte []){44, 56, 35, 47, 36, 46, 21, 41, 35, 56, 41, 38, 47, 21, 43, 41, 62, 35, 60, 35, 62, 51, 21, 44, 56, 37, 39, 21, 58, 34, 37, 36, 47, 108}, 33, 216, 223, 128};

//: friend_circle_activity_camera
ShouldData noti_likelyName = (ShouldData){61, (Byte []){91, 79, 84, 88, 83, 89, 98, 94, 84, 79, 94, 81, 88, 98, 92, 94, 73, 84, 75, 84, 73, 68, 98, 94, 92, 80, 88, 79, 92, 200}, 29, 253, 79, 159};

//: please_choose
ShouldData userDetectiveDoingKey = (ShouldData){36, (Byte []){84, 72, 65, 69, 87, 65, 123, 71, 76, 75, 75, 87, 65, 108}, 13, 179, 119, 136};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolController.m
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 ibm. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImagePickerController.h"
#import "ToolController.h"
//: #import <Photos/PHPhotoLibrary.h>
#import <Photos/PHPhotoLibrary.h>

//: @interface KIImagePickerController ()
@interface ToolController ()
//: @property (nonatomic, weak) id<KIImagePickerControllerDelegate> delegate;
@property (nonatomic, weak) id<SectionTitle> delegate;
//: @property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) UIViewController *viewController;
//: @property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, assign) CGSize cropSize;
//: @property (nonatomic, strong) NSArray *otherItems;
@property (nonatomic, strong) NSArray *otherItems;
//: @property (nonatomic, assign) BOOL showDelete;
@property (nonatomic, assign) BOOL showDelete;
//: @end
@end

//: @implementation KIImagePickerController
@implementation ToolController
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize viewController = _viewController;
@synthesize viewController = _viewController;
//: @synthesize title = _title;
@synthesize title = _title;
//: @synthesize cropSize = _cropSize;
@synthesize cropSize = _cropSize;
//: @synthesize otherItems = _otherItems;
@synthesize otherItems = _otherItems;
//: @synthesize showDelete = _showDelete;
@synthesize showDelete = _showDelete;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate viewController:(UIViewController *)viewController {
- (id)initWithTable:(id<SectionTitle>)delegate text_strong:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = [FFFLanguageManager getTextWithKey:@"please_choose"];
        self.title = [MatronymicPath colorStreetwise:StringFromShouldData(&userDetectiveDoingKey)];//@"请选择";
    }
    //: return self;
    return self;
}

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithAtIn:(id<SectionTitle>)delegate
                 //: title:(NSString *)title
                 tingOf:(NSString *)title
        //: viewController:(UIViewController *)viewController {
        with:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = title;
        self.title = title;
    }
    //: return self;
    return self;
}

//: - (void)showWithDeleteButton:(BOOL)showDelete {
- (void)should:(BOOL)showDelete {
    //: UIApplication *applicaiton = [UIApplication sharedApplication];
    UIApplication *applicaiton = [UIApplication sharedApplication];

    //: [[self actionSheet:showDelete] showInView:[applicaiton keyWindow]];
    [[self bubbleSheet:showDelete] showInView:[applicaiton keyWindow]];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize {
- (void)redSize:(BOOL)showDelete viewSize:(CGSize)cropSize {
    //: [self setCropSize:cropSize];
    [self setCropSize:cropSize];
    //: [self showWithDeleteButton:showDelete];
    [self should:showDelete];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items {
- (void)reason:(BOOL)showDelete contentFile:(CGSize)cropSize voice:(NSArray *)items {
    //: [self setOtherItems:items];
    [self setOtherItems:items];
    //: [self showWithDeleteButton:showDelete cropSize:cropSize];
    [self redSize:showDelete viewSize:cropSize];
}

//: - (UIActionSheet *)actionSheet:(BOOL)needDelete {
- (UIActionSheet *)bubbleSheet:(BOOL)needDelete {
    //: self.showDelete = needDelete;
    self.showDelete = needDelete;

    //: if (_actionSheet == nil) {
    if (_actionSheet == nil) {

        //: NSString *from_phone = [FFFLanguageManager getTextWithKey:@"friend_circle_activity_from_phone"];
        NSString *from_phone = [MatronymicPath colorStreetwise:StringFromShouldData(&user_columnId)];
        //: NSString *activity_camera = [FFFLanguageManager getTextWithKey:@"friend_circle_activity_camera"];
        NSString *activity_camera = [MatronymicPath colorStreetwise:StringFromShouldData(&noti_likelyName)];

        //: _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
        _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
                                                   //: delegate:self
                                                   delegate:self
                                          //: cancelButtonTitle:nil
                                          cancelButtonTitle:nil
                                     //: destructiveButtonTitle:nil
                                     destructiveButtonTitle:nil
                                          //: otherButtonTitles:from_phone, activity_camera, nil];
                                          otherButtonTitles:from_phone, activity_camera, nil];

        //: NSUInteger cancelIndex = 1;
        NSUInteger cancelIndex = 1;
        //: if (self.showDelete) {
        if (self.showDelete) {
            //: [_actionSheet addButtonWithTitle:@"删除".nim_localized];
            [_actionSheet addButtonWithTitle:@"删除".resign];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: for (NSString *title in self.otherItems) {
        for (NSString *title in self.otherItems) {
            //: [_actionSheet addButtonWithTitle:title];
            [_actionSheet addButtonWithTitle:title];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: [_actionSheet addButtonWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]];
        [_actionSheet addButtonWithTitle:[MatronymicPath colorStreetwise:StringFromShouldData(&notiIgnoreFormat)]];
        //: cancelIndex++;
        cancelIndex++;

        //: _actionSheet.cancelButtonIndex = cancelIndex;
        _actionSheet.cancelButtonIndex = cancelIndex;
        //[self retain];
    }
    //: return _actionSheet;
    return _actionSheet;
}

//: - (UIImagePickerController *)imagePickerController {
- (UIImagePickerController *)picture {
    //: if (_imagePickerController == nil) {
    if (_imagePickerController == nil) {
        //: _imagePickerController = [[UIImagePickerController alloc] init];
        _imagePickerController = [[UIImagePickerController alloc] init];
        //: [_imagePickerController setDelegate:self];
        [_imagePickerController setDelegate:self];
    }
    //: return _imagePickerController;
    return _imagePickerController;
}

//: - (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    //: if (buttonIndex == 0) {
    if (buttonIndex == 0) {

        //: [self requestAuthorizationForPhotoLibrary];
        [self anTool];

    //: } else if (buttonIndex == 1) {
    } else if (buttonIndex == 1) {

        //: [self requestAuthorizationForVideo];
        [self videoPress];

    //: } else if (buttonIndex == actionSheet.cancelButtonIndex) {
    } else if (buttonIndex == actionSheet.cancelButtonIndex) {
        //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
        if ([self.delegate respondsToSelector:@selector(ting:)]) {
            //: [self.delegate KIImagePickerControllerDidCancel:self];
            [self.delegate ting:self];
        }
        //: [self dismiss];
        [self ironed];
    //: } else if (self.showDelete && buttonIndex == 2) {
    } else if (self.showDelete && buttonIndex == 2) {
        //: [self pickImage:nil];
        [self quick:nil];
    //: } else {
    } else {
        //: [self didSelectedOtherIndex:buttonIndex-(self.showDelete?3:2)];
        [self model:buttonIndex-(self.showDelete?3:2)];
    }
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)videoPress {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        [[self picture] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
                        [self picture].modalPresentationStyle = UIModalPresentationFullScreen;

                        //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
                        [_viewController presentViewController:[self picture] animated:YES completion:^{

                        //: }];
                        }];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
            [[self picture] setSourceType:UIImagePickerControllerSourceTypeCamera];
            //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
            [self picture].modalPresentationStyle = UIModalPresentationFullScreen;

            //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
            [_viewController presentViewController:[self picture] animated:YES completion:^{

            //: }];
            }];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)anTool
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self callPhotoAction];
                    [self volition];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self callPhotoAction];
        [self volition];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

//: - (void)callPhotoAction {
- (void)volition {

    //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [[self picture] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
    [self picture].modalPresentationStyle = UIModalPresentationFullScreen;

    //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
    [_viewController presentViewController:[self picture] animated:YES completion:^{

    //: }];
    }];

}



//: - (void)pickImage:(UIImage *)image {
- (void)quick:(UIImage *)image {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didFinishPickImage:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(finish:calendarRecord:)]) {
        //: [self.delegate KIImagePickerController:self didFinishPickImage:image];
        [self.delegate finish:self calendarRecord:image];
    }
    //: [self dismiss];
    [self ironed];
}

//: - (void)didSelectedOtherIndex:(NSUInteger)index {
- (void)model:(NSUInteger)index {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didSelectedOtherIndex:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(barKey:outsideMessageTo:)]) {
        //: [self.delegate KIImagePickerController:self didSelectedOtherIndex:index];
        [self.delegate barKey:self outsideMessageTo:index];
    }
}

//: - (void)dismiss {
- (void)ironed {
    //: [[self imagePickerController] dismissViewControllerAnimated:YES completion:^{
    [[self picture] dismissViewControllerAnimated:YES completion:^{

    //: }];
    }];
}



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UINavigationControllerDelegate
#pragma mark == UINavigationControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:willShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(teamUser:number:facultyOption:)]) {
        //: [self.delegate KINavigationController:navigationController willShowViewController:viewController animated:animated];
        [self.delegate teamUser:navigationController number:viewController facultyOption:animated];
    }
}

//: - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:didShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(nameProgress:exceptBackground:grayish:)]) {
        //: [self.delegate KINavigationController:navigationController didShowViewController:viewController animated:animated];
        [self.delegate nameProgress:navigationController exceptBackground:viewController grayish:animated];
    }
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UIImagePickerControllerDelegate
#pragma mark == UIImagePickerControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //: UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    UIImage *image = [info objectForKey:StringFromShouldData(&show_layerText)];
    //    NSURL   *imageURL = [info objectForKey:@"UIImagePickerControllerReferenceURL"];
    //    NSString *imagePath = [imageURL absoluteString];
    //: [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    //: if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
        //: [self pickImage:image];
        [self quick:image];
    //: } else {
    } else {

        //: KIImageCropperViewController *cropImageViewController = [[KIImageCropperViewController alloc] initWithImage:[image fixOrientation] cropSize:self.cropSize];
        DisableViewController *cropImageViewController = [[DisableViewController alloc] initWithAlong:[image cell] pageComment:self.cropSize];
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        //: [[self imagePickerController] presentViewController:nav animated:YES completion:nil];
        [[self picture] presentViewController:nav animated:YES completion:nil];
        //: [cropImageViewController setCroppedImage:^(UIImage *image) {
        [cropImageViewController setFallContent:^(UIImage *image) {
            //: [self pickImage:image];
            [self quick:image];
        //: }];
        }];

    }
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
    if ([self.delegate respondsToSelector:@selector(ting:)]) {
        //: [self.delegate KIImagePickerControllerDidCancel:self];
        [self.delegate ting:self];
    }
    //: [self dismiss];
    [self ironed];
}


//: @end
@end

Byte *ShouldDataToByte(ShouldData *data) {
    if (data->harassmentClaimView < 126) return data->distantTing;
    for (int i = 0; i < data->mentalRepresentation; i++) {
        data->distantTing[i] ^= data->extent;
    }
    data->distantTing[data->mentalRepresentation] = 0;
    data->harassmentClaimView = 67;
	if (data->mentalRepresentation >= 2) {
		data->smokeNeed = data->distantTing[0];
		data->celebrityDebate = data->distantTing[1];
	}
    return data->distantTing;
}

NSString *StringFromShouldData(ShouldData *data) {
    return [NSString stringWithUTF8String:(char *)ShouldDataToByte(data)];
}
