// __DEBUG__
// __CLOSE_PRINT__
//
//  BrandTool.m
// UserKit
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitAuthorizationTool.h"
#import "BrandTool.h"
//: #import <AssetsLibrary/AssetsLibrary.h>
#import <AssetsLibrary/AssetsLibrary.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import <AddressBook/AddressBook.h>
#import <AddressBook/AddressBook.h>
//: #import <AddressBookUI/AddressBookUI.h>
#import <AddressBookUI/AddressBookUI.h>
//: #import <ContactsUI/ContactsUI.h>
#import <ContactsUI/ContactsUI.h>

//: @implementation ContentKitAuthorizationTool
@implementation BrandTool

//: + (void)requestPhotoLibraryAuthorization:(void(^)(ContentKitAuthorizationStatus status))callback
+ (void)convert:(void(^)(ContentKitAuthorizationStatus status))callback
{
    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        //: ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
        ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
        //: if (authStatus == ALAuthorizationStatusNotDetermined) { 
        if (authStatus == ALAuthorizationStatusNotDetermined) { // 未授权
            //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
                //: if (status == PHAuthorizationStatusAuthorized) {
                if (status == PHAuthorizationStatusAuthorized) {
                    //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
                    [self team:callback length:ContentKitAuthorizationStatusAuthorized];
                //: } else if (status == PHAuthorizationStatusDenied) {
                } else if (status == PHAuthorizationStatusDenied) {
                    //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
                    [self team:callback length:ContentKitAuthorizationStatusDenied];
                //: } else if (status == PHAuthorizationStatusRestricted) {
                } else if (status == PHAuthorizationStatusRestricted) {
                    //: [self executeCallback:callback status:ContentKitAuthorizationStatusRestricted];
                    [self team:callback length:ContentKitAuthorizationStatusRestricted];
                }
            //: }];
            }];
        }
        //: else if (authStatus == ALAuthorizationStatusAuthorized) {
        else if (authStatus == ALAuthorizationStatusAuthorized) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
            [self team:callback length:ContentKitAuthorizationStatusAuthorized];
        //: } else if (authStatus == ALAuthorizationStatusDenied) {
        } else if (authStatus == ALAuthorizationStatusDenied) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
            [self team:callback length:ContentKitAuthorizationStatusDenied];
        //: } else if (authStatus == ALAuthorizationStatusRestricted) {
        } else if (authStatus == ALAuthorizationStatusRestricted) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusRestricted];
            [self team:callback length:ContentKitAuthorizationStatusRestricted];
        }
    //: } else {
    } else {
        //: [self executeCallback:callback status:ContentKitAuthorizationStatusNotSupport];
        [self team:callback length:ContentKitAuthorizationStatusNotSupport];
    }
}

//: + (void)requestCameraAuthorization:(void(^)(ContentKitAuthorizationStatus status))callback
+ (void)reflexCameraDate:(void(^)(ContentKitAuthorizationStatus status))callback
{
    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        //: if (authStatus == AVAuthorizationStatusNotDetermined) {
        if (authStatus == AVAuthorizationStatusNotDetermined) {
            //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
                    [self team:callback length:ContentKitAuthorizationStatusAuthorized];
                //: } else {
                } else {
                    //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
                    [self team:callback length:ContentKitAuthorizationStatusDenied];
                }
            //: }];
            }];
        //: } else if (authStatus == AVAuthorizationStatusAuthorized) {
        } else if (authStatus == AVAuthorizationStatusAuthorized) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
            [self team:callback length:ContentKitAuthorizationStatusAuthorized];
        //: } else if (authStatus == AVAuthorizationStatusDenied) {
        } else if (authStatus == AVAuthorizationStatusDenied) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
            [self team:callback length:ContentKitAuthorizationStatusDenied];
        //: } else if (authStatus == AVAuthorizationStatusRestricted) {
        } else if (authStatus == AVAuthorizationStatusRestricted) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusRestricted];
            [self team:callback length:ContentKitAuthorizationStatusRestricted];
        }
    //: } else {
    } else {
        //: [self executeCallback:callback status:ContentKitAuthorizationStatusNotSupport];
        [self team:callback length:ContentKitAuthorizationStatusNotSupport];
    }
}

//: + (void)requestAddressBookAuthorization:(void (^)(ContentKitAuthorizationStatus))callback
+ (void)eparchy:(void (^)(ContentKitAuthorizationStatus))callback
{
    //: ABAuthorizationStatus authStatus = ABAddressBookGetAuthorizationStatus();
    ABAuthorizationStatus authStatus = ABAddressBookGetAuthorizationStatus();
    //: if (authStatus == kABAuthorizationStatusNotDetermined) {
    if (authStatus == kABAuthorizationStatusNotDetermined) {
        //: __block ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, NULL);
        __block ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, NULL);
        //: if (addressBook == NULL) {
        if (addressBook == NULL) {
            //: [self executeCallback:callback status:ContentKitAuthorizationStatusNotSupport];
            [self team:callback length:ContentKitAuthorizationStatusNotSupport];
            //: return;
            return;
        }
        //: ABAddressBookRequestAccessWithCompletion(addressBook, ^(BOOL granted, CFErrorRef error) {
        ABAddressBookRequestAccessWithCompletion(addressBook, ^(BOOL granted, CFErrorRef error) {
            //: if (granted) {
            if (granted) {
                //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
                [self team:callback length:ContentKitAuthorizationStatusAuthorized];
            //: } else {
            } else {
                //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
                [self team:callback length:ContentKitAuthorizationStatusDenied];
            }
            //: if (addressBook) {
            if (addressBook) {
                //: CFRelease(addressBook);
                CFRelease(addressBook);
                //: addressBook = NULL;
                addressBook = NULL;
            }
        //: });
        });
        //: return;
        return;
    //: } else if (authStatus == kABAuthorizationStatusAuthorized) {
    } else if (authStatus == kABAuthorizationStatusAuthorized) {
        //: [self executeCallback:callback status:ContentKitAuthorizationStatusAuthorized];
        [self team:callback length:ContentKitAuthorizationStatusAuthorized];
    //: } else if (authStatus == kABAuthorizationStatusDenied) {
    } else if (authStatus == kABAuthorizationStatusDenied) {
        //: [self executeCallback:callback status:ContentKitAuthorizationStatusDenied];
        [self team:callback length:ContentKitAuthorizationStatusDenied];
    //: } else if (authStatus == kABAuthorizationStatusRestricted) {
    } else if (authStatus == kABAuthorizationStatusRestricted) {
        //: [self executeCallback:callback status:ContentKitAuthorizationStatusRestricted];
        [self team:callback length:ContentKitAuthorizationStatusRestricted];
    }
}


//: #pragma mark - callback
#pragma mark - callback
//: + (void)executeCallback:(void (^)(ContentKitAuthorizationStatus))callback status:(ContentKitAuthorizationStatus)status {
+ (void)team:(void (^)(ContentKitAuthorizationStatus))callback length:(ContentKitAuthorizationStatus)status {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: if (callback) {
        if (callback) {
            //: callback(status);
            callback(status);
        }
    //: });
    });
}

//: @end
@end
