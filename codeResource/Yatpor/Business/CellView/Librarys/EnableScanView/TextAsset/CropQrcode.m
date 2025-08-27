
#import <Foundation/Foundation.h>

NSString *StringFromZoneData(Byte *data);


//: inputColor1
Byte m_symptomIdent[] = {96, 11, 36, 6, 112, 13, 141, 146, 148, 153, 152, 103, 147, 144, 147, 150, 85, 241};

//: inputImage
Byte m_miniData[] = {85, 10, 48, 7, 70, 40, 74, 153, 158, 160, 165, 164, 121, 157, 145, 151, 149, 17};

//: inputMessage
Byte user_scripIdent[] = {87, 12, 56, 11, 19, 209, 207, 30, 141, 108, 222, 161, 166, 168, 173, 172, 133, 157, 171, 171, 153, 159, 157, 154};

//: inputCorrectionLevel
Byte mInfoName[] = {56, 20, 5, 8, 91, 13, 72, 226, 110, 115, 117, 122, 121, 72, 116, 119, 119, 106, 104, 121, 110, 116, 115, 81, 106, 123, 106, 113, 51};

//: inputColor0
Byte app_tingFormat[] = {39, 11, 97, 6, 220, 79, 202, 207, 209, 214, 213, 164, 208, 205, 208, 211, 145, 227};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGGenerateQRCode.h"
#import "CropQrcode.h"

//: @implementation SGGenerateQRCode
@implementation CropQrcode

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size {
+ (UIImage *)team:(NSString *)data date:(CGFloat)size {
    //: return [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    return [self preponderance:data nearGray:size stateSize:[UIColor blackColor] with:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor {
+ (UIImage *)preponderance:(NSString *)data nearGray:(CGFloat)size stateSize:(UIColor *)color with:(UIColor *)backgroundColor {
    //: NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    // 1、二维码滤镜
    //: CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //: [fileter setValue:string_data forKey:@"inputMessage"];
    [fileter setValue:string_data forKey:StringFromZoneData(user_scripIdent)];
    //: [fileter setValue:@"H" forKey:@"inputCorrectionLevel"];
    [fileter setValue:@"H" forKey:StringFromZoneData(mInfoName)];
    //: CIImage *ciImage = fileter.outputImage;
    CIImage *ciImage = fileter.outputImage;
    // 2、颜色滤镜
    //: CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    //: [color_filter setValue:ciImage forKey:@"inputImage"];
    [color_filter setValue:ciImage forKey:StringFromZoneData(m_miniData)];
    //: [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:StringFromZoneData(app_tingFormat)];
    //: [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:@"inputColor1"];
    [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:StringFromZoneData(m_symptomIdent)];
    // 3、生成处理
    //: CIImage *outImage = color_filter.outputImage;
    CIImage *outImage = color_filter.outputImage;
    //: CGFloat scale = size / outImage.extent.size.width;
    CGFloat scale = size / outImage.extent.size.width;
    //: outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    //: return [UIImage imageWithCIImage:outImage];
    return [UIImage imageWithCIImage:outImage];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio {
+ (UIImage *)modeQuery:(NSString *)data voice:(CGFloat)size bubble:(UIImage *)logoImage text:(CGFloat)ratio {
    //: return [self generateQRCodeWithData:data size:size logoImage:logoImage ratio:ratio logoImageCornerRadius:5 logoImageBorderWidth:5 logoImageBorderColor:[UIColor whiteColor]];
    return [self max:data location:size bookHouse:logoImage streetwise:ratio time:5 hematocritStatus:5 reloadBy:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor {
+ (UIImage *)max:(NSString *)data location:(CGFloat)size bookHouse:(UIImage *)logoImage streetwise:(CGFloat)ratio time:(CGFloat)logoImageCornerRadius hematocritStatus:(CGFloat)logoImageBorderWidth reloadBy:(UIColor *)logoImageBorderColor {
    //: UIImage *image = [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    UIImage *image = [self preponderance:data nearGray:size stateSize:[UIColor blackColor] with:[UIColor whiteColor]];
    //: if (logoImage == nil) return image;
    if (logoImage == nil) return image;
    //: if (ratio < 0.0 || ratio > 0.5) {
    if (ratio < 0.0 || ratio > 0.5) {
        //: ratio = 0.25;
        ratio = 0.25;
    }
    //: CGFloat logoImageW = ratio * size;
    CGFloat logoImageW = ratio * size;
    //: CGFloat logoImageH = logoImageW;
    CGFloat logoImageH = logoImageW;
    //: CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    //: CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    //: CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    // 绘制logo
    //: UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    //: [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];

    //: logoImageCornerRadius = logoImageW/2.f;
    logoImageCornerRadius = logoImageW/2.f;

    //: UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    //: if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
    if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
        //: logoImageBorderWidth = 5;
        logoImageBorderWidth = 5;
    }
    //: path.lineWidth = logoImageBorderWidth;
    path.lineWidth = logoImageBorderWidth;
    //: [logoImageBorderColor setStroke];
    [logoImageBorderColor setStroke];
    //: [path stroke];
    [path stroke];
    //: [path addClip];
    [path addClip];
    //: [logoImage drawInRect:logoImageRect];
    [logoImage drawInRect:logoImageRect];
    //: UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return QRCodeImage;
    return QRCodeImage;
}

//: @end
@end

Byte * ZoneDataToCache(Byte *data) {
    int tingComfortable = data[0];
    int halfway = data[1];
    Byte draftCopy = data[2];
    int graduate = data[3];
    if (!tingComfortable) return data + graduate;
    for (int i = graduate; i < graduate + halfway; i++) {
        int value = data[i] - draftCopy;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[graduate + halfway] = 0;
    return data + graduate;
}

NSString *StringFromZoneData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ZoneDataToCache(data)];
}
