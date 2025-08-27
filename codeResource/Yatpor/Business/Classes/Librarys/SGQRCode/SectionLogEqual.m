// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGQRCodeLog.h"
#import "SectionLogEqual.h"

//: static SGQRCodeLog *singleton = nil;
static SectionLogEqual *userSingleId = nil;

//: @implementation SGQRCodeLog
@implementation SectionLogEqual

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)team {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (userSingleId == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            userSingleId = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return userSingleId;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] team];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)erase:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] team];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)color:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] team];
}

//: @end
@end