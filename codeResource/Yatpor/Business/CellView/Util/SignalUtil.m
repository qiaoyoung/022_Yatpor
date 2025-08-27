
#import <Foundation/Foundation.h>

@interface BubbleGuyNameData : NSObject

+ (instancetype)sharedInstance;

//: home_fragment_phone
@property (nonatomic, copy) NSString *appCoverStr;

//: home_fragment_pc
@property (nonatomic, copy) NSString *noti_symptomRangePath;

//: home_fragment_web
@property (nonatomic, copy) NSString *noti_frameValue;

@end

@implementation BubbleGuyNameData

+ (instancetype)sharedInstance {
    static BubbleGuyNameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BubbleGuyNameDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BubbleGuyNameDataToCache:(Byte *)data {
    int frameBackground = data[0];
    Byte startComment = data[1];
    int remoteGo = data[2];
    for (int i = remoteGo; i < remoteGo + frameBackground; i++) {
        int value = data[i] - startComment;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[remoteGo + frameBackground] = 0;
    return data + remoteGo;
}

- (NSString *)StringFromBubbleGuyNameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BubbleGuyNameDataToCache:data]];
}

//: home_fragment_phone
- (NSString *)appCoverStr {
    if (!_appCoverStr) {
		NSArray<NSNumber *> *origin = @[@19, @77, @4, @40, @181, @188, @186, @178, @172, @179, @191, @174, @180, @186, @178, @187, @193, @172, @189, @181, @188, @187, @178, @178];
		NSData *data = [BubbleGuyNameData BubbleGuyNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCoverStr = [self StringFromBubbleGuyNameData:value];
    }
    return _appCoverStr;
}

//: home_fragment_web
- (NSString *)noti_frameValue {
    if (!_noti_frameValue) {
		NSArray<NSNumber *> *origin = @[@17, @10, @10, @70, @144, @141, @66, @118, @196, @255, @114, @121, @119, @111, @105, @112, @124, @107, @113, @119, @111, @120, @126, @105, @129, @111, @108, @23];
		NSData *data = [BubbleGuyNameData BubbleGuyNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_frameValue = [self StringFromBubbleGuyNameData:value];
    }
    return _noti_frameValue;
}

//: home_fragment_pc
- (NSString *)noti_symptomRangePath {
    if (!_noti_symptomRangePath) {
		NSArray<NSNumber *> *origin = @[@16, @23, @11, @254, @120, @174, @85, @168, @119, @253, @154, @127, @134, @132, @124, @118, @125, @137, @120, @126, @132, @124, @133, @139, @118, @135, @122, @174];
		NSData *data = [BubbleGuyNameData BubbleGuyNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_symptomRangePath = [self StringFromBubbleGuyNameData:value];
    }
    return _noti_symptomRangePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignalUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "SignalUtil.h"

//: @implementation NTESClientUtil
@implementation SignalUtil

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)name:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [ContentLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [MatronymicPath colorStreetwise:[BubbleGuyNameData sharedInstance].appCoverStr];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [ContentLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [MatronymicPath colorStreetwise:[BubbleGuyNameData sharedInstance].noti_symptomRangePath];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [ContentLanguageManager getTextWithKey:@"home_fragment_web"];
            return [MatronymicPath colorStreetwise:[BubbleGuyNameData sharedInstance].noti_frameValue];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end
