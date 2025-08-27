
#import <Foundation/Foundation.h>
typedef struct {
    Byte telegram;
    Byte *ownership;
    unsigned int hemoglobinemia;
    Byte gifted;
} ViewIsleData;

NSString *StringFromViewIsleData(ViewIsleData *data);


//: message should be image
ViewIsleData user_blueValue = (ViewIsleData){101, (Byte []){8, 0, 22, 22, 4, 2, 0, 69, 22, 13, 10, 16, 9, 1, 69, 7, 0, 69, 12, 8, 4, 2, 0, 132}, 23, 179};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "InputConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation FFFImageContentConfig
@implementation InputConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], StringFromViewIsleData(&user_blueValue));

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);


    //: CGSize imageSize;
    CGSize imageSize;
    //: if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
        //: imageSize = imageObject.size;
        imageSize = imageObject.size;
        //: if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
        if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
            //: imageSize = CGSizeMake(80, 80);
            imageSize = CGSizeMake(80, 80);
        }
    }
    //: else
    else
    {
        //: UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        //: imageSize = image ? image.size : CGSizeZero;
        imageSize = image ? image.size : CGSizeZero;
    }
    //: CGSize contentSize = [UIImage nim_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage with:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   background:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   derivationQueryed:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"PushAsideNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
}



//: @end
@end

Byte *ViewIsleDataToByte(ViewIsleData *data) {
    if (data->gifted < 112) return data->ownership;
    for (int i = 0; i < data->hemoglobinemia; i++) {
        data->ownership[i] ^= data->telegram;
    }
    data->ownership[data->hemoglobinemia] = 0;
    data->gifted = 32;
    return data->ownership;
}

NSString *StringFromViewIsleData(ViewIsleData *data) {
    return [NSString stringWithUTF8String:(char *)ViewIsleDataToByte(data)];
}
