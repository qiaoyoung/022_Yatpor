
#import <Foundation/Foundation.h>
typedef struct {
    Byte modelLine;
    Byte *touchInfo;
    unsigned int grey;
    Byte viewText;
	int shareLest;
	int quarterbackPro;
} CollectionData;

NSString *StringFromCollectionData(CollectionData *data);


//: session_snapchat_other_readed
CollectionData noti_closeValue = (CollectionData){218, (Byte []){169, 191, 169, 169, 179, 181, 180, 133, 169, 180, 187, 170, 185, 178, 187, 174, 133, 181, 174, 178, 191, 168, 133, 168, 191, 187, 190, 191, 190, 201}, 29, 236, 140, 254};

//: url
CollectionData dreamWithName = (CollectionData){199, (Byte []){178, 181, 171, 255}, 3, 206, 136, 21};

//: data
CollectionData mVerticalText = (CollectionData){230, (Byte []){130, 135, 146, 135, 122}, 4, 187, 254, 12};

//: session_snapchat_other_unread
CollectionData notiQueryValue = (CollectionData){191, (Byte []){204, 218, 204, 204, 214, 208, 209, 224, 204, 209, 222, 207, 220, 215, 222, 203, 224, 208, 203, 215, 218, 205, 224, 202, 209, 205, 218, 222, 219, 73}, 29, 204, 236, 53};

//: HEIC
CollectionData noti_infoName = (CollectionData){176, (Byte []){248, 245, 249, 243, 136}, 4, 255, 72, 203};

//: session_snapchat_self_readed
CollectionData m_layerOnName = (CollectionData){232, (Byte []){155, 141, 155, 155, 129, 135, 134, 183, 155, 134, 137, 152, 139, 128, 137, 156, 183, 155, 141, 132, 142, 183, 154, 141, 137, 140, 141, 140, 149}, 28, 228, 192, 151};

//: md5
CollectionData userTagMessage = (CollectionData){248, (Byte []){149, 156, 205, 223}, 3, 249, 121, 104};

//: fired
CollectionData notiInfoUrl = (CollectionData){178, (Byte []){212, 219, 192, 215, 214, 54}, 5, 177, 165, 253};

//: session_snapchat_self_unread
CollectionData mEndMessage = (CollectionData){18, (Byte []){97, 119, 97, 97, 123, 125, 124, 77, 97, 124, 115, 98, 113, 122, 115, 102, 77, 97, 119, 126, 116, 77, 103, 124, 96, 119, 115, 118, 101}, 28, 208, 141, 40};

//: type
CollectionData notiCheckedId = (CollectionData){211, (Byte []){167, 170, 163, 182, 15}, 4, 250, 170, 149};

//: jpg
CollectionData showAccountData = (CollectionData){224, (Byte []){138, 144, 135, 138}, 3, 155, 88, 185};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSnapchatAttachment.h"
#import "DisableTo.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import "NSData+NTES.h"
#import "NSData+StyleTool.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @interface NTESSnapchatAttachment()
@interface DisableTo()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation DisableTo

//: - (void)setImage:(UIImage *)image
- (void)setInnerCity:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data enable];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self appear]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setPath:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:StringFromCollectionData(&noti_infoName)]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData enable];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self appear]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self tool];
    }
}


//: - (NSString *)filepath
- (NSString *)appear
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",(StringFromCollectionData(&showAccountData))];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [BottomObjectHelper viewUnwelcome:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)tap:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"BubbleNameView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentMode:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self tool];
    }
}

//: - (BOOL)canBeForwarded
- (BOOL)referColor
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)tinMaxFile
{
    //: return YES;
    return YES;
}



//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:StringFromCollectionData(&notiCheckedId)];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:StringFromCollectionData(&userTagMessage)];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:StringFromCollectionData(&notiInfoUrl)];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:StringFromCollectionData(&dreamWithName)];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:StringFromCollectionData(&mVerticalText)];

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self appear];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)tool{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:StringFromCollectionData(&noti_closeValue)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:StringFromCollectionData(&notiQueryValue)];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:StringFromCollectionData(&m_layerOnName)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:StringFromCollectionData(&mEndMessage)];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self tool];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: @end
@end

Byte *CollectionDataToByte(CollectionData *data) {
    if (data->viewText < 131) return data->touchInfo;
    for (int i = 0; i < data->grey; i++) {
        data->touchInfo[i] ^= data->modelLine;
    }
    data->touchInfo[data->grey] = 0;
    data->viewText = 58;
	if (data->grey >= 2) {
		data->shareLest = data->touchInfo[0];
		data->quarterbackPro = data->touchInfo[1];
	}
    return data->touchInfo;
}

NSString *StringFromCollectionData(CollectionData *data) {
    return [NSString stringWithUTF8String:(char *)CollectionDataToByte(data)];
}
