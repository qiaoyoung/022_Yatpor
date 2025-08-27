
#import <Foundation/Foundation.h>

typedef struct {
    Byte scaleValue;
    Byte *releaseTouchGlobal;
    unsigned int keyImage;
} StructTouchStateData;

@interface TouchStateData : NSObject

@end

@implementation TouchStateData

+ (Byte *)TouchStateDataToByte:(StructTouchStateData *)data {
    for (int i = 0; i < data->keyImage; i++) {
        data->releaseTouchGlobal[i] ^= data->scaleValue;
    }
    data->releaseTouchGlobal[data->keyImage] = 0;
    return data->releaseTouchGlobal;
}

+ (NSString *)StringFromTouchStateData:(StructTouchStateData *)data {
    return [NSString stringWithUTF8String:(char *)[self TouchStateDataToByte:data]];
}

//: data
+ (NSString *)appBackIdent {
    /* static */ NSString *appBackIdent = nil;
    if (!appBackIdent) {
        StructTouchStateData value = (StructTouchStateData){61, (Byte []){89, 92, 73, 92, 152}, 4};
        appBackIdent = [self StringFromTouchStateData:&value];
    }
    return appBackIdent;
}

//: content
+ (NSString *)show_singleStr {
    /* static */ NSString *show_singleStr = nil;
    if (!show_singleStr) {
        StructTouchStateData value = (StructTouchStateData){53, (Byte []){86, 90, 91, 65, 80, 91, 65, 114}, 7};
        show_singleStr = [self StringFromTouchStateData:&value];
    }
    return show_singleStr;
}

//: title
+ (NSString *)noti_processorName {
    /* static */ NSString *noti_processorName = nil;
    if (!noti_processorName) {
        StructTouchStateData value = (StructTouchStateData){47, (Byte []){91, 70, 91, 67, 74, 127}, 5};
        noti_processorName = [self StringFromTouchStateData:&value];
    }
    return noti_processorName;
}

//: type
+ (NSString *)mainBlueIdent {
    /* static */ NSString *mainBlueIdent = nil;
    if (!mainBlueIdent) {
        StructTouchStateData value = (StructTouchStateData){94, (Byte []){42, 39, 46, 59, 111}, 4};
        mainBlueIdent = [self StringFromTouchStateData:&value];
    }
    return mainBlueIdent;
}

//: personCardId
+ (NSString *)kNameMsg {
    /* static */ NSString *kNameMsg = nil;
    if (!kNameMsg) {
        StructTouchStateData value = (StructTouchStateData){239, (Byte []){159, 138, 157, 156, 128, 129, 172, 142, 157, 139, 166, 139, 146}, 12};
        kNameMsg = [self StringFromTouchStateData:&value];
    }
    return kNameMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthAttachment.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "LengthAttachment.h"

//: @implementation NTESShareCardAttachment
@implementation LengthAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        [TouchStateData noti_processorName] : self.title?:@"",
        //: @"content" : self.content?:@"",
        [TouchStateData show_singleStr] : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        [TouchStateData kNameMsg] : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        [TouchStateData mainBlueIdent] : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{[TouchStateData mainBlueIdent]: @(CustomMessageTypeCard), [TouchStateData appBackIdent]: dictContent};
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


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)highlight:(CGFloat)cellWidth color:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)tap:(NIMMessage *)message
{
    //: return @"FFFSessionShareCardContentView";
    return @"SuccessContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentMode:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[UserKit totalSend].config color:message].contentInsets;
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
    //: return NO;
    return NO;
}


//: @end
@end