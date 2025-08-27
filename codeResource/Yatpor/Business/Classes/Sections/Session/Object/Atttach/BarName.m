
#import <Foundation/Foundation.h>

typedef struct {
    Byte quarterback;
    Byte *kittyLitter;
    unsigned int dropChecked;
	int queryed;
	int moil;
	int symptom;
} StructNameData;

@interface NameData : NSObject

+ (instancetype)sharedInstance;

//: data
@property (nonatomic, copy) NSString *show_dismissWindowStr;

//: redPacketId
@property (nonatomic, copy) NSString *dreamOnName;

//: type
@property (nonatomic, copy) NSString *dream_comfortableId;

//: title
@property (nonatomic, copy) NSString *app_textPath;

//: content
@property (nonatomic, copy) NSString *mainGuyIdent;

//: redPacketSendID
@property (nonatomic, copy) NSString *kTraditionalKey;

@end

@implementation NameData

+ (instancetype)sharedInstance {
    static NameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NameDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)NameDataToByte:(StructNameData *)data {
    for (int i = 0; i < data->dropChecked; i++) {
        data->kittyLitter[i] ^= data->quarterback;
    }
    data->kittyLitter[data->dropChecked] = 0;
	if (data->dropChecked >= 3) {
		data->queryed = data->kittyLitter[0];
		data->moil = data->kittyLitter[1];
		data->symptom = data->kittyLitter[2];
	}
    return data->kittyLitter;
}

- (NSString *)StringFromNameData:(StructNameData *)data {
    return [NSString stringWithUTF8String:(char *)[self NameDataToByte:data]];
}

//: type
- (NSString *)dream_comfortableId {
    if (!_dream_comfortableId) {
		NSArray<NSString *> *origin = @[@"11", @"6", @"15", @"26", @"134"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){127, (Byte *)data.bytes, 4, 62, 55, 28};
        _dream_comfortableId = [self StringFromNameData:&value];
    }
    return _dream_comfortableId;
}

//: redPacketSendID
- (NSString *)kTraditionalKey {
    if (!_kTraditionalKey) {
		NSArray<NSString *> *origin = @[@"240", @"231", @"230", @"210", @"227", @"225", @"233", @"231", @"246", @"209", @"231", @"236", @"230", @"203", @"198", @"187"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){130, (Byte *)data.bytes, 15, 169, 206, 79};
        _kTraditionalKey = [self StringFromNameData:&value];
    }
    return _kTraditionalKey;
}

//: content
- (NSString *)mainGuyIdent {
    if (!_mainGuyIdent) {
		NSArray<NSString *> *origin = @[@"146", @"158", @"159", @"133", @"148", @"159", @"133", @"53"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){241, (Byte *)data.bytes, 7, 147, 246, 68};
        _mainGuyIdent = [self StringFromNameData:&value];
    }
    return _mainGuyIdent;
}

//: title
- (NSString *)app_textPath {
    if (!_app_textPath) {
		NSArray<NSString *> *origin = @[@"18", @"15", @"18", @"10", @"3", @"186"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){102, (Byte *)data.bytes, 5, 98, 41, 152};
        _app_textPath = [self StringFromNameData:&value];
    }
    return _app_textPath;
}

//: data
- (NSString *)show_dismissWindowStr {
    if (!_show_dismissWindowStr) {
		NSArray<NSString *> *origin = @[@"125", @"120", @"109", @"120", @"197"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){25, (Byte *)data.bytes, 4, 254, 140, 21};
        _show_dismissWindowStr = [self StringFromNameData:&value];
    }
    return _show_dismissWindowStr;
}

//: redPacketId
- (NSString *)dreamOnName {
    if (!_dreamOnName) {
		NSArray<NSString *> *origin = @[@"117", @"98", @"99", @"87", @"102", @"100", @"108", @"98", @"115", @"78", @"99", @"100"];
		NSData *data = [NameData NameDataToData:origin];
        StructNameData value = (StructNameData){7, (Byte *)data.bytes, 11, 167, 62, 161};
        _dreamOnName = [self StringFromNameData:&value];
    }
    return _dreamOnName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarName.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "BarName.h"

//: @implementation NTESRedPacketAttachment
@implementation BarName

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  [NameData sharedInstance].app_textPath : self.title,
                                  //: @"content" : self.content,
                                  [NameData sharedInstance].mainGuyIdent : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  [NameData sharedInstance].dreamOnName : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  [NameData sharedInstance].kTraditionalKey : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{[NameData sharedInstance].dream_comfortableId: @(CustomMessageTypeRedPacket), [NameData sharedInstance].show_dismissWindowStr: dictContent};
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


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)contentMode:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)tap:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"DisableQuickControl";
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