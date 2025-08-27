
#import <Foundation/Foundation.h>

typedef struct {
    Byte titleMorroOf;
    Byte *mini;
    unsigned int witnessLest;
	int stateText;
	int tryDoingQuarterback;
} StructProData;

@interface ProData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ProData

+ (instancetype)sharedInstance {
    static ProData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ProDataToData:(NSString *)value {
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

- (Byte *)ProDataToByte:(StructProData *)data {
    for (int i = 0; i < data->witnessLest; i++) {
        data->mini[i] ^= data->titleMorroOf;
    }
    data->mini[data->witnessLest] = 0;
	if (data->witnessLest >= 2) {
		data->stateText = data->mini[0];
		data->tryDoingQuarterback = data->mini[1];
	}
    return data->mini;
}

- (NSString *)StringFromProData:(StructProData *)data {
    return [NSString stringWithUTF8String:(char *)[self ProDataToByte:data]];
}

//: You must override %@ in %@
- (NSString *)kAdequateText {
    /* static */ NSString *kAdequateText = nil;
    if (!kAdequateText) {
		NSString *origin = @"e5d3c99cd1c9cfc89cd3cad9ceced5d8d99c99fc9cd5d29c99fc90";
		NSData *data = [ProData ProDataToData:origin];
        StructProData value = (StructProData){188, (Byte *)data.bytes, 26, 133, 172};
        kAdequateText = [self StringFromProData:&value];
    }
    return kAdequateText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WorldView.m
//  SizeControl
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "WorldView.h"

//: @implementation TAAbstractDotView
@implementation WorldView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[ProData sharedInstance] kAdequateText], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)linkAdministrativeDistrict:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[ProData sharedInstance] kAdequateText], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end