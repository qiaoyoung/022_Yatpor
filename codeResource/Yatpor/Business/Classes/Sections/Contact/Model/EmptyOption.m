
#import <Foundation/Foundation.h>

@interface ImageData : NSObject

@end

@implementation ImageData

+ (NSData *)ImageDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ImageDataToCache:(Byte *)data {
    int dataBack = data[0];
    Byte state = data[1];
    int byDot = data[2];
    for (int i = byDot; i < byDot + dataBack; i++) {
        int value = data[i] + state;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[byDot + dataBack] = 0;
    return data + byDot;
}

+ (NSString *)StringFromImageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ImageDataToCache:data]];
}

//: NTESContactDataItem
+ (NSString *)user_labUrl {
    /* static */ NSString *user_labUrl = nil;
    if (!user_labUrl) {
		NSString *origin = @"130C0896366C37054248394737636268555768385568553D685961B6";
		NSData *data = [ImageData ImageDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_labUrl = [self StringFromImageData:value];
    }
    return user_labUrl;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyOption.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "EmptyOption.h"
//: #import "NTESSpellingCenter.h"
#import "RangeTool.h"

//: @implementation NTESContactDataMember
@implementation EmptyOption

//: - (CGFloat)uiHeight{
- (CGFloat)circle{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)vcName{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)notContainer{
    //: return @"NTESContactDataItem";
    return [ImageData user_labUrl];
}

//: - (NSString *)cellName{
- (NSString *)keyName{
    //: return @"NTESContactDataCell";
    return @"TingDataCell";
}

//: - (NSString *)badge{
- (NSString *)hide{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)statusContent {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[RangeTool make] enable:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)userId{
- (NSString *)userId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)keep{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)title{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)target{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)head{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)tool{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)borderlineKey {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[RangeTool make] content:self.info.showName].shortSpelling;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}


//: @end
@end
