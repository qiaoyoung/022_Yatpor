// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolController.h
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 yangfeng. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UIImage+KIAdditions.h"
#import "UIImage+Scale.h"
//: #import "KIImageCropperViewController.h"
#import "DisableViewController.h"

//: @protocol KIImagePickerControllerDelegate;
@protocol SectionTitle;

//: @interface KIImagePickerController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
@interface ToolController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    //: __weak id<KIImagePickerControllerDelegate> _delegate;
    __weak id<SectionTitle> _delegate;
    //: UIViewController *_viewController;
    UIViewController *_viewController;
    //: UIActionSheet *_actionSheet;
    UIActionSheet *_actionSheet;
    //: UIImagePickerController *_imagePickerController;
    UIImagePickerController *_imagePickerController;
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: NSString *_title;
    NSString *_title;
    //: NSArray *_otherItems;
    NSArray *_otherItems;
    //: BOOL _showDelete;
    BOOL _showDelete;
}

//: @property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *title;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithTable:(id<SectionTitle>)delegate
        //: viewController:(UIViewController *)viewController;
        text_strong:(UIViewController *)viewController;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithAtIn:(id<SectionTitle>)delegate
                 //: title:(NSString *)title
                 tingOf:(NSString *)title
        //: viewController:(UIViewController *)viewController;
        with:(UIViewController *)viewController;

//: - (void)showWithDeleteButton:(BOOL)showDelete;
- (void)should:(BOOL)showDelete;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize;
- (void)redSize:(BOOL)showDelete viewSize:(CGSize)cropSize;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items;
- (void)reason:(BOOL)showDelete contentFile:(CGSize)cropSize voice:(NSArray *)items;

//: @end
@end

//: @protocol KIImagePickerControllerDelegate <NSObject>
@protocol SectionTitle <NSObject>

//: @optional
@optional

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didFinishPickImage:(UIImage *)image;
- (void)finish:(ToolController *)controller calendarRecord:(UIImage *)image;

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didSelectedOtherIndex:(NSUInteger)index;
- (void)barKey:(ToolController *)controller outsideMessageTo:(NSUInteger)index;

//: - (void)KIImagePickerControllerDidCancel:(KIImagePickerController *)controller;
- (void)ting:(ToolController *)controller;

//: - (void)KINavigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)teamUser:(UINavigationController *)navigationController number:(UIViewController *)viewController facultyOption:(BOOL)animated;

//: - (void)KINavigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)nameProgress:(UINavigationController *)navigationController exceptBackground:(UIViewController *)viewController grayish:(BOOL)animated;

//: @end
@end