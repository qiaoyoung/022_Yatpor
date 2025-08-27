// __DEBUG__
// __CLOSE_PRINT__
//
//  Created by Ming Yang on 7/7/12.
//
//: #pragma mark ControlPointView interface
#pragma mark SendView interface

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FXBlurView.h"
#import "Input.h"

//: @interface ControlPointView : UIView {
@interface SendView : UIView {
    //: CGFloat red, green, blue, alpha;
    CGFloat red, green, blue, alpha;
}

//: @property (nonatomic, strong) UIColor* color;
@property (nonatomic, strong) UIColor* color;

//: @end
@end

//: #pragma mark ShadeView interface
#pragma mark StatuteContentView interface

//: @interface ShadeView : UIView {
@interface StatuteContentView : UIView {
    //: CGFloat cropBorderRed, cropBorderGreen, cropBorderBlue, cropBorderAlpha;
    CGFloat cropBorderRed, cropBorderGreen, cropBorderBlue, cropBorderAlpha;
    //: CGRect cropArea;
    CGRect cropArea;
    //: CGFloat shadeAlpha;
    CGFloat shadeAlpha;
}

//: @property (nonatomic, strong) UIColor* cropBorderColor;
@property (nonatomic, strong) UIColor* cropBorderColor;
//: @property (nonatomic) CGRect cropArea;
@property (nonatomic) CGRect cropArea;
//: @property (nonatomic) CGFloat shadeAlpha;
@property (nonatomic) CGFloat shadeAlpha;
//: @property (nonatomic, strong) UIImageView *blurredImageView;
@property (nonatomic, strong) UIImageView *blurredImageView;

//: @end
@end

//: CGRect SquareCGRectAtCenter(CGFloat centerX, CGFloat centerY, CGFloat size);
CGRect singleCell(CGFloat centerX, CGFloat centerY, CGFloat size);

//: UIView* dragView;
UIView* app_tipMsg;
//: typedef struct {
typedef struct {
    //: CGPoint dragStart;
    CGPoint dragStart;
    //: CGPoint topLeftCenter;
    CGPoint topLeftCenter;
    //: CGPoint bottomLeftCenter;
    CGPoint bottomLeftCenter;
    //: CGPoint bottomRightCenter;
    CGPoint bottomRightCenter;
    //: CGPoint topRightCenter;
    CGPoint topRightCenter;
    //: CGPoint cropAreaCenter;
    CGPoint cropAreaCenter;
//: } DragPoint;
} HearingTitle;

// Used when working with multiple dragPoints
//: typedef struct {
typedef struct {
    //: DragPoint mainPoint;
    HearingTitle mainPoint;
    //: DragPoint optionalPoint;
    HearingTitle optionalPoint;
    //: NSUInteger lastCount;
    NSUInteger lastCount;
//: } MultiDragPoint;
} OptionDismiss;

//: #pragma mark ImageCropView interface
#pragma mark SpecialityView interface

//: @interface ImageCropView : UIView {
@interface SpecialityView : UIView {
    //: UIImageView* imageView;
    UIImageView* imageView;
    //: CGRect imageFrameInView;
    CGRect imageFrameInView;
    //: CGFloat imageScale;
    CGFloat imageScale;

    //: CGFloat controlPointSize;
    CGFloat controlPointSize;
    //: ControlPointView* topLeftPoint;
    SendView* topLeftPoint;
    //: ControlPointView* bottomLeftPoint;
    SendView* bottomLeftPoint;
    //: ControlPointView* bottomRightPoint;
    SendView* bottomRightPoint;
    //: ControlPointView* topRightPoint;
    SendView* topRightPoint;
    //: NSArray *PointsArray;
    NSArray *PointsArray;
    //: UIColor* controlColor;
    UIColor* controlColor;

    //: UIView* cropAreaView;
    UIView* cropAreaView;
    //: DragPoint dragPoint;
    HearingTitle dragPoint;
    //: MultiDragPoint multiDragPoint;
    OptionDismiss multiDragPoint;

    //: UIView* dragViewOne;
    UIView* dragViewOne;
    //: UIView* dragViewTwo;
    UIView* dragViewTwo;
}
//: - (id)initWithFrame:(CGRect)frame blurOn:(BOOL)blurOn;
- (id)initWith:(CGRect)frame blur:(BOOL)blurOn;
//: - (void)setImage:(UIImage*)image;
- (void)setImage:(UIImage*)image;

//: @property (nonatomic) CGFloat controlPointSize;
@property (nonatomic) CGFloat controlPointSize;
//: @property (nonatomic, strong) UIImage* image;
@property (nonatomic, strong) UIImage* image;
//: @property (nonatomic) CGRect cropAreaInView;
@property (nonatomic) CGRect cropAreaInView;
//: @property (nonatomic) CGRect cropAreaInImage;
@property (nonatomic) CGRect cropAreaInImage;
//: @property (nonatomic, readonly) CGFloat imageScale;
@property (nonatomic, readonly) CGFloat imageScale;
//: @property (nonatomic) CGFloat maskAlpha;
@property (nonatomic) CGFloat maskAlpha;
//: @property (nonatomic, strong) UIColor* controlColor;
@property (nonatomic, strong) UIColor* controlColor;
//: @property (nonatomic, strong) ShadeView* shadeView;
@property (nonatomic, strong) StatuteContentView* shadeView;
//: @property (nonatomic) BOOL blurred;
@property (nonatomic) BOOL blurred;

//: @end
@end

//: #pragma mark ImageCropViewController interface
#pragma mark ToolTitleViewController interface
//: @protocol ImageCropViewControllerDelegate <NSObject>
@protocol SunnaDelegate <NSObject>

//: - (void)ImageCropViewControllerSuccess:(UIViewController* )controller didFinishCroppingImage:(UIImage *)croppedImage;
- (void)origin:(UIViewController* )controller of:(UIImage *)croppedImage;
//: - (void)ImageCropViewControllerDidCancel:(UIViewController *)controller;
- (void)verticalled:(UIViewController *)controller;

//: @end
@end

//: @interface ImageCropViewController : UIViewController <UIActionSheetDelegate > {
@interface ToolTitleViewController : UIViewController <UIActionSheetDelegate > {
    //: ImageCropView * cropView;
    SpecialityView * cropView;
    //: UIActionSheet * actionSheet;
    UIActionSheet * actionSheet;
}
//: @property (nonatomic, weak) id<ImageCropViewControllerDelegate> delegate;
@property (nonatomic, weak) id<SunnaDelegate> delegate;
//: @property (nonatomic) BOOL blurredBackground;
@property (nonatomic) BOOL blurredBackground;
//: @property (nonatomic, strong) UIImage* image;
@property (nonatomic, strong) UIImage* image;
//: @property (nonatomic, strong) ImageCropView* cropView;
@property (nonatomic, strong) SpecialityView* cropView;
/**
 *  the crop area in the image
 */
//: @property (nonatomic) CGRect cropArea;
@property (nonatomic) CGRect cropArea;

//: - (id)initWithImage:(UIImage*)image;
- (id)initWithRangeImage:(UIImage*)image;


//: @end
@end

//: @interface UIImage (fixOrientation)
@interface UIImage (OrientationSession)

//: - (UIImage *)fixOrientation;
- (UIImage *)cell;

//: @end
@end