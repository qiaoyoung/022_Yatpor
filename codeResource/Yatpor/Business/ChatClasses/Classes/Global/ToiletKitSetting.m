
#import <Foundation/Foundation.h>

@interface AtmosphereData : NSObject

+ (instancetype)sharedInstance;

//: icon_sender_text_node_normal
@property (nonatomic, copy) NSString *show_manufacturerUrl;

//: icon_receiver_node_normal
@property (nonatomic, copy) NSString *dream_housingCompanionTitle;

//: icon_sender_text_node_pressed
@property (nonatomic, copy) NSString *dreamCoverId;

//: icon_receiver_node_pressed
@property (nonatomic, copy) NSString *notiViewerUrl;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *mFlexibleValue;

@end

@implementation AtmosphereData

+ (instancetype)sharedInstance {
    static AtmosphereData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AtmosphereDataToCache:(Byte *)data {
    int grownup = data[0];
    int restoreCelebrity = data[1];
    for (int i = 0; i < grownup / 2; i++) {
        int begin = restoreCelebrity + i;
        int end = restoreCelebrity + grownup - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[restoreCelebrity + grownup] = 0;
    return data + restoreCelebrity;
}

- (NSString *)StringFromAtmosphereData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AtmosphereDataToCache:data]];
}  

//: icon_receiver_node_pressed
- (NSString *)notiViewerUrl {
    if (!_notiViewerUrl) {
        Byte value[] = {26, 11, 50, 137, 180, 67, 198, 157, 69, 233, 163, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 112};
        _notiViewerUrl = [self StringFromAtmosphereData:value];
    }
    return _notiViewerUrl;
}

//: {18,25,17,25}
- (NSString *)mFlexibleValue {
    if (!_mFlexibleValue) {
        Byte value[] = {13, 5, 50, 46, 212, 125, 53, 50, 44, 55, 49, 44, 53, 50, 44, 56, 49, 123, 141};
        _mFlexibleValue = [self StringFromAtmosphereData:value];
    }
    return _mFlexibleValue;
}

//: icon_sender_text_node_normal
- (NSString *)show_manufacturerUrl {
    if (!_show_manufacturerUrl) {
        Byte value[] = {28, 8, 166, 227, 220, 180, 214, 77, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 168};
        _show_manufacturerUrl = [self StringFromAtmosphereData:value];
    }
    return _show_manufacturerUrl;
}

//: icon_receiver_node_normal
- (NSString *)dream_housingCompanionTitle {
    if (!_dream_housingCompanionTitle) {
        Byte value[] = {25, 2, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 17};
        _dream_housingCompanionTitle = [self StringFromAtmosphereData:value];
    }
    return _dream_housingCompanionTitle;
}

//: icon_sender_text_node_pressed
- (NSString *)dreamCoverId {
    if (!_dreamCoverId) {
        Byte value[] = {29, 6, 153, 93, 139, 77, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 42};
        _dreamCoverId = [self StringFromAtmosphereData:value];
    }
    return _dreamCoverId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToiletKitSetting.m
// UserKit
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitSetting.h"
#import "ToiletKitSetting.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @implementation ContentKitSetting
@implementation ToiletKitSetting

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initPreserve:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage view:[AtmosphereData sharedInstance].show_manufacturerUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([AtmosphereData sharedInstance].mFlexibleValue) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage view:[AtmosphereData sharedInstance].dreamCoverId] resizableImageWithCapInsets:UIEdgeInsetsFromString([AtmosphereData sharedInstance].mFlexibleValue) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:[AtmosphereData sharedInstance].dream_housingCompanionTitle] resizableImageWithCapInsets:UIEdgeInsetsFromString([AtmosphereData sharedInstance].mFlexibleValue) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:[AtmosphereData sharedInstance].notiViewerUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([AtmosphereData sharedInstance].mFlexibleValue) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end
