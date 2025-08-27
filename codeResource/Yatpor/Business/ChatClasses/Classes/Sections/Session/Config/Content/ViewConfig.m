
#import <Foundation/Foundation.h>

@interface AllowData : NSObject

+ (instancetype)sharedInstance;

//: message should be video
@property (nonatomic, copy) NSString *k_fedMessage;

@end

@implementation AllowData

+ (instancetype)sharedInstance {
    static AllowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AllowDataToCache:(Byte *)data {
    int aid = data[0];
    Byte execution = data[1];
    int viewShare = data[2];
    for (int i = viewShare; i < viewShare + aid; i++) {
        int value = data[i] + execution;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[viewShare + aid] = 0;
    return data + viewShare;
}

- (NSString *)StringFromAllowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AllowDataToCache:data]];
}

//: message should be video
- (NSString *)k_fedMessage {
    if (!_k_fedMessage) {
        Byte value[] = {23, 75, 12, 7, 139, 151, 66, 50, 153, 226, 82, 61, 34, 26, 40, 40, 22, 28, 26, 213, 40, 29, 36, 42, 33, 25, 213, 23, 26, 213, 43, 30, 25, 26, 36, 16};
        _k_fedMessage = [self StringFromAllowData:value];
    }
    return _k_fedMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewConfig.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFVideoContentConfig.h"
#import "ViewConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @implementation FFFVideoContentConfig
@implementation ViewConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], [AllowData sharedInstance].k_fedMessage);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage with:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   background:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   derivationQueryed:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"FFFSessionVideoContentView";
    return @"ReplacementTextView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
}

//: @end
@end