
#import <Foundation/Foundation.h>

@interface ValueTouchData : NSObject

@end

@implementation ValueTouchData

+ (NSData *)ValueTouchDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ValueTouchDataToCache:(Byte *)data {
    int bubbleWitness = data[0];
    int fastener = data[1];
    for (int i = 0; i < bubbleWitness / 2; i++) {
        int begin = fastener + i;
        int end = fastener + bubbleWitness - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[fastener + bubbleWitness] = 0;
    return data + fastener;
}

+ (NSString *)StringFromValueTouchData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ValueTouchDataToCache:data]];
}  

//: /wallet/questionList
+ (NSString *)notiLabChingDrunkPath {
    /* static */ NSString *notiLabChingDrunkPath = nil;
    if (!notiLabChingDrunkPath) {
		NSArray<NSNumber *> *origin = @[@20, @11, @203, @236, @6, @32, @97, @16, @73, @73, @201, @116, @115, @105, @76, @110, @111, @105, @116, @115, @101, @117, @113, @47, @116, @101, @108, @108, @97, @119, @47, @1];
		NSData *data = [ValueTouchData ValueTouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiLabChingDrunkPath = [self StringFromValueTouchData:value];
    }
    return notiLabChingDrunkPath;
}

//: data
+ (NSString *)m_provisionBeginName {
    /* static */ NSString *m_provisionBeginName = nil;
    if (!m_provisionBeginName) {
		NSArray<NSNumber *> *origin = @[@4, @11, @70, @57, @227, @199, @217, @8, @223, @187, @60, @97, @116, @97, @100, @206];
		NSData *data = [ValueTouchData ValueTouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_provisionBeginName = [self StringFromValueTouchData:value];
    }
    return m_provisionBeginName;
}

//: code
+ (NSString *)m_constantlyKey {
    /* static */ NSString *m_constantlyKey = nil;
    if (!m_constantlyKey) {
		NSArray<NSNumber *> *origin = @[@4, @4, @187, @247, @101, @100, @111, @99, @13];
		NSData *data = [ValueTouchData ValueTouchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_constantlyKey = [self StringFromValueTouchData:value];
    }
    return m_constantlyKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SectionLanguage.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "SectionLanguage.h"

//: @interface NTESGlobalConfigManager ()
@interface SectionLanguage ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation SectionLanguage

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static SectionLanguage *kValueStr = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (SectionLanguage *)storageManager{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kValueStr == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            kValueStr = [[SectionLanguage alloc] init];
        }
        //: return shareConfigManager;
        return kValueStr;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)sharedList{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [SectionLanguage storageManager].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)menu{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:[ValueTouchData notiLabChingDrunkPath]] table:nil carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict to:[ValueTouchData m_constantlyKey]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [SectionLanguage storageManager].secretQuestionArray = [resultDict arrayMust:[ValueTouchData m_provisionBeginName]];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end