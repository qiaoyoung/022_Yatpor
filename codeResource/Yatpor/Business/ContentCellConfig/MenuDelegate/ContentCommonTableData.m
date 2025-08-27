
#import <Foundation/Foundation.h>

@interface DebateData : NSObject

@end

@implementation DebateData

+ (NSData *)DebateDataToData:(NSString *)value {
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

+ (Byte *)DebateDataToCache:(Byte *)data {
    int jurisdictionDal = data[0];
    Byte tralatitious = data[1];
    int hearingEmend = data[2];
    for (int i = hearingEmend; i < hearingEmend + jurisdictionDal; i++) {
        int value = data[i] - tralatitious;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[hearingEmend + jurisdictionDal] = 0;
    return data + hearingEmend;
}

+ (NSString *)StringFromDebateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DebateDataToCache:data]];
}

//: headerTitle
+ (NSString *)noti_symptomKey {
    /* static */ NSString *noti_symptomKey = nil;
    if (!noti_symptomKey) {
		NSString *origin = @"0b1e0c14aa570b389b405df486837f8283907287928a8396";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_symptomKey = [self StringFromDebateData:value];
    }
    return noti_symptomKey;
}

//: disable
+ (NSString *)appProStr {
    /* static */ NSString *appProStr = nil;
    if (!appProStr) {
		NSString *origin = @"07500d23e681211c726dd2aa21b4b9c3b1b2bcb515";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appProStr = [self StringFromDebateData:value];
    }
    return appProStr;
}

//: rowHeight
+ (NSString *)appMinimizeIdent {
    /* static */ NSString *appMinimizeIdent = nil;
    if (!appMinimizeIdent) {
		NSString *origin = @"094a09d067990261a0bcb9c192afb3b1b2beea";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appMinimizeIdent = [self StringFromDebateData:value];
    }
    return appMinimizeIdent;
}

//: footerTitle
+ (NSString *)mainResignKey {
    /* static */ NSString *mainResignKey = nil;
    if (!mainResignKey) {
		NSString *origin = @"0b59063ab744bfc8c8cdbecbadc2cdc5be12";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainResignKey = [self StringFromDebateData:value];
    }
    return mainResignKey;
}

//: leftEdge
+ (NSString *)app_gravityHiIdent {
    /* static */ NSString *app_gravityHiIdent = nil;
    if (!app_gravityHiIdent) {
		NSString *origin = @"083e0938ec7e2490fdaaa3a4b283a2a5a3c0";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_gravityHiIdent = [self StringFromDebateData:value];
    }
    return app_gravityHiIdent;
}

//: extraInfo
+ (NSString *)notiMushroomPath {
    /* static */ NSString *notiMushroomPath = nil;
    if (!notiMushroomPath) {
		NSString *origin = @"0926038b9e9a98876f948c951b";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMushroomPath = [self StringFromDebateData:value];
    }
    return notiMushroomPath;
}

//: row
+ (NSString *)show_othersMsg {
    /* static */ NSString *show_othersMsg = nil;
    if (!show_othersMsg) {
		NSString *origin = @"033b0956b0c458e0e3adaab2c1";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_othersMsg = [self StringFromDebateData:value];
    }
    return show_othersMsg;
}

//: accessory
+ (NSString *)noti_processorStr {
    /* static */ NSString *noti_processorStr = nil;
    if (!noti_processorStr) {
		NSString *origin = @"090e04226f71717381817d808782";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_processorStr = [self StringFromDebateData:value];
    }
    return noti_processorStr;
}

//: action
+ (NSString *)userBlockData {
    /* static */ NSString *userBlockData = nil;
    if (!userBlockData) {
		NSString *origin = @"06170ca95529347210beafb1787a8b808685ec";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBlockData = [self StringFromDebateData:value];
    }
    return userBlockData;
}

//: footerHeight
+ (NSString *)dream_adequateData {
    /* static */ NSString *dream_adequateData = nil;
    if (!dream_adequateData) {
		NSString *origin = @"0c560cf0157564f61009ac07bcc5c5cabbc89ebbbfbdbeca23";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_adequateData = [self StringFromDebateData:value];
    }
    return dream_adequateData;
}

//: detailTitle
+ (NSString *)showEnrollValue {
    /* static */ NSString *showEnrollValue = nil;
    if (!showEnrollValue) {
		NSString *origin = @"0b5a08313de3f9cabebfcebbc3c6aec3cec6bfba";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEnrollValue = [self StringFromDebateData:value];
    }
    return showEnrollValue;
}

//: disableUserInteraction
+ (NSString *)main_studioBeastKey {
    /* static */ NSString *main_studioBeastKey = nil;
    if (!main_studioBeastKey) {
		NSString *origin = @"165c07abb4a545c0c5cfbdbec8c1b1cfc1cea5cad0c1cebdbfd0c5cbca1c";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_studioBeastKey = [self StringFromDebateData:value];
    }
    return main_studioBeastKey;
}

//: language
+ (NSString *)appDeckValue {
    /* static */ NSString *appDeckValue = nil;
    if (!appDeckValue) {
		NSString *origin = @"0820038c818e879581878541";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDeckValue = [self StringFromDebateData:value];
    }
    return appDeckValue;
}

//: forbidSelect
+ (NSString *)mRelationMessage {
    /* static */ NSString *mRelationMessage = nil;
    if (!mRelationMessage) {
		NSString *origin = @"0c130be3e306cab2d0944c798285757c7766787f787687d4";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mRelationMessage = [self StringFromDebateData:value];
    }
    return mRelationMessage;
}

//: title
+ (NSString *)user_contractStr {
    /* static */ NSString *user_contractStr = nil;
    if (!user_contractStr) {
		NSString *origin = @"05060c88ed7d1716705615b27a6f7a726b38";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_contractStr = [self StringFromDebateData:value];
    }
    return user_contractStr;
}

//: headerHeight
+ (NSString *)dreamScreamBeastData {
    /* static */ NSString *dreamScreamBeastData = nil;
    if (!dreamScreamBeastData) {
		NSString *origin = @"0c1904fb817e7a7d7e8b617e8280818d10";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamScreamBeastData = [self StringFromDebateData:value];
    }
    return dreamScreamBeastData;
}

//: cellClass
+ (NSString *)user_hormoneTitle {
    /* static */ NSString *user_hormoneTitle = nil;
    if (!user_hormoneTitle) {
		NSString *origin = @"091f079ab6e92b82848b8b628b8092923e";
		NSData *data = [DebateData DebateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_hormoneTitle = [self StringFromDebateData:value];
    }
    return user_hormoneTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation DisturbingSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithDict:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[DebateData appProStr]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[DebateData noti_symptomKey]];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[DebateData mainResignKey]];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[DebateData dream_adequateData]] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[DebateData dreamScreamBeastData]] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [LanguageSizeView underside:dict[[DebateData show_othersMsg]]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)needLocation:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            DisturbingSection * section = [[DisturbingSection alloc] initWithDict:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation LanguageSizeView

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithColor:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[DebateData appProStr]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[[DebateData user_contractStr]];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[DebateData showEnrollValue]];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[DebateData user_hormoneTitle]];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[[DebateData userBlockData]];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[DebateData appMinimizeIdent]] ? [dict[[DebateData appMinimizeIdent]] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[DebateData notiMushroomPath]];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[DebateData app_gravityHiIdent]] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[DebateData noti_processorStr]] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[DebateData mRelationMessage]] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[DebateData main_studioBeastKey]] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[DebateData appDeckValue]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)underside:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            LanguageSizeView * row = [[LanguageSizeView alloc] initWithColor:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end
