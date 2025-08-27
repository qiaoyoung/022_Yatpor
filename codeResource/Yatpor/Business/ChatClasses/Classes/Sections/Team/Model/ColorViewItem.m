
#import <Foundation/Foundation.h>

NSString *StringFromChingData(Byte *data);        


//: icon_add_normal
Byte kTextIdent[] = {9, 15, 67, 5, 52, 38, 32, 44, 43, 28, 30, 33, 33, 28, 43, 44, 47, 42, 30, 41, 248};

//: icon_remove_normal
Byte user_internPath[] = {57, 18, 52, 4, 53, 47, 59, 58, 43, 62, 49, 57, 59, 66, 49, 43, 58, 59, 62, 57, 45, 56, 189};

//: icon_add_pressed
Byte notiCoveragePath[] = {88, 16, 21, 4, 84, 78, 90, 89, 74, 76, 79, 79, 74, 91, 93, 80, 94, 94, 80, 79, 225};

//: icon_remove_pressed
Byte main_lestHoeMsg[] = {98, 19, 37, 12, 51, 35, 76, 100, 198, 248, 194, 47, 68, 62, 74, 73, 58, 77, 64, 72, 74, 81, 64, 58, 75, 77, 64, 78, 78, 64, 63, 126};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardOperationItem.h"
#import "ColorViewItem.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface ColorViewItem()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation ColorViewItem

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithDescription:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self dateOnOperation:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)dateOnOperation:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".resign;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromChingData(kTextIdent)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromChingData(notiCoveragePath)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".resign;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromChingData(user_internPath)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromChingData(main_lestHoeMsg)];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end

Byte * ChingDataToCache(Byte *data) {
    int datePlod = data[0];
    int underlyViewerNorthern = data[1];
    Byte kibbitz = data[2];
    int layerColumn = data[3];
    if (!datePlod) return data + layerColumn;
    for (int i = layerColumn; i < layerColumn + underlyViewerNorthern; i++) {
        int value = data[i] + kibbitz;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[layerColumn + underlyViewerNorthern] = 0;
    return data + layerColumn;
}

NSString *StringFromChingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ChingDataToCache(data)];
}
