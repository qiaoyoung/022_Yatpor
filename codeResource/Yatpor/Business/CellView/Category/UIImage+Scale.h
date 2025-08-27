// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (Scale)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)cur;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)recordHorizontal;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)text:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)wordName:(CGFloat)width dismiss:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)holderPin:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)viewStatus:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)information:(CGFloat)x screen:(CGFloat)y searched:(CGFloat)width lowInput:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)cell;

//: - (UIImage *)decoded;
- (UIImage *)lengthItem;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)background:(NSString *)mark to:(UIColor *)textColor name_strong:(UIFont *)font with:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)designate;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)event:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) itemData:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)pressed:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)size:(UIImage *)img tillRefer:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)everyBubble:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)toSize:(UIImage *)img backCircumference:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)circumference:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)searched:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)image:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)parent:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)enable:(UIColor *)color complete:(CGSize)size;

//: @end
@end