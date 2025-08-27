
#import <Foundation/Foundation.h>

@interface DotTableData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DotTableData

+ (instancetype)sharedInstance {
    static DotTableData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DotTableDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DotTableDataToCache:(Byte *)data {
    int titleSingle = data[0];
    Byte dataMessage = data[1];
    int globalTitle = data[2];
    for (int i = globalTitle; i < globalTitle + titleSingle; i++) {
        int value = data[i] - dataMessage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[globalTitle + titleSingle] = 0;
    return data + globalTitle;
}

- (NSString *)StringFromDotTableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DotTableDataToCache:data]];
}

//: 领取了你的红包，你的红包已被领完
- (NSString *)dream_textKey {
    /* static */ NSString *dream_textKey = nil;
    if (!dream_textKey) {
		NSArray<NSString *> *origin = @[@"48", @"78", @"3", @"55", @"240", @"212", @"51", @"221", @"228", @"50", @"8", @"212", @"50", @"11", @"238", @"53", @"232", @"210", @"53", @"8", @"240", @"51", @"218", @"211", @"61", @"10", @"218", @"50", @"11", @"238", @"53", @"232", @"210", @"53", @"8", @"240", @"51", @"218", @"211", @"51", @"5", @"0", @"54", @"240", @"249", @"55", @"240", @"212", @"51", @"252", @"218", @"81"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_textKey = [self StringFromDotTableData:value];
    }
    return dream_textKey;
}

//: redPacketId
- (NSString *)app_windowImageName {
    /* static */ NSString *app_windowImageName = nil;
    if (!app_windowImageName) {
		NSArray<NSString *> *origin = @[@"11", @"95", @"4", @"115", @"209", @"196", @"195", @"175", @"192", @"194", @"202", @"196", @"211", @"168", @"195", @"156"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_windowImageName = [self StringFromDotTableData:value];
    }
    return app_windowImageName;
}

//: data
- (NSString *)show_upText {
    /* static */ NSString *show_upText = nil;
    if (!show_upText) {
		NSArray<NSString *> *origin = @[@"4", @"68", @"8", @"164", @"249", @"105", @"98", @"165", @"168", @"165", @"184", @"165", @"99"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_upText = [self StringFromDotTableData:value];
    }
    return show_upText;
}

//: 你领取了自己的红包
- (NSString *)showLayerMsg {
    /* static */ NSString *showLayerMsg = nil;
    if (!showLayerMsg) {
		NSArray<NSString *> *origin = @[@"27", @"14", @"13", @"150", @"128", @"133", @"246", @"196", @"255", @"188", @"239", @"124", @"196", @"242", @"203", @"174", @"247", @"176", @"148", @"243", @"157", @"164", @"242", @"200", @"148", @"246", @"149", @"184", @"243", @"197", @"191", @"245", @"168", @"146", @"245", @"200", @"176", @"243", @"154", @"147", @"42"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showLayerMsg = [self StringFromDotTableData:value];
    }
    return showLayerMsg;
}

//: 领取了你的红包
- (NSString *)dream_shareFormat {
    /* static */ NSString *dream_shareFormat = nil;
    if (!dream_shareFormat) {
		NSArray<NSString *> *origin = @[@"21", @"51", @"6", @"106", @"239", @"63", @"28", @"213", @"185", @"24", @"194", @"201", @"23", @"237", @"185", @"23", @"240", @"211", @"26", @"205", @"183", @"26", @"237", @"213", @"24", @"191", @"184", @"114"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_shareFormat = [self StringFromDotTableData:value];
    }
    return dream_shareFormat;
}

//: isGetDone
- (NSString *)mNeedButtonKey {
    /* static */ NSString *mNeedButtonKey = nil;
    if (!mNeedButtonKey) {
		NSArray<NSString *> *origin = @[@"9", @"8", @"9", @"84", @"181", @"235", @"61", @"170", @"253", @"113", @"123", @"79", @"109", @"124", @"76", @"119", @"118", @"109", @"222"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mNeedButtonKey = [self StringFromDotTableData:value];
    }
    return mNeedButtonKey;
}

//: 你领取了自己的红包，你的红包已被领完
- (NSString *)kSizeId {
    /* static */ NSString *kSizeId = nil;
    if (!kSizeId) {
		NSArray<NSString *> *origin = @[@"54", @"78", @"8", @"54", @"105", @"147", @"24", @"128", @"50", @"11", @"238", @"55", @"240", @"212", @"51", @"221", @"228", @"50", @"8", @"212", @"54", @"213", @"248", @"51", @"5", @"255", @"53", @"232", @"210", @"53", @"8", @"240", @"51", @"218", @"211", @"61", @"10", @"218", @"50", @"11", @"238", @"53", @"232", @"210", @"53", @"8", @"240", @"51", @"218", @"211", @"51", @"5", @"0", @"54", @"240", @"249", @"55", @"240", @"212", @"51", @"252", @"218", @"130"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSizeId = [self StringFromDotTableData:value];
    }
    return kSizeId;
}

//: sendPacketId
- (NSString *)kRemoveFlushIdent {
    /* static */ NSString *kRemoveFlushIdent = nil;
    if (!kRemoveFlushIdent) {
		NSArray<NSString *> *origin = @[@"12", @"20", @"10", @"103", @"34", @"152", @"91", @"155", @"80", @"35", @"135", @"121", @"130", @"120", @"100", @"117", @"119", @"127", @"121", @"136", @"93", @"120", @"50"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRemoveFlushIdent = [self StringFromDotTableData:value];
    }
    return kRemoveFlushIdent;
}

//: type
- (NSString *)show_tableUrl {
    /* static */ NSString *show_tableUrl = nil;
    if (!show_tableUrl) {
		NSArray<NSString *> *origin = @[@"4", @"49", @"7", @"100", @"221", @"196", @"16", @"165", @"170", @"161", @"150", @"58"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_tableUrl = [self StringFromDotTableData:value];
    }
    return show_tableUrl;
}

//: 你领取了
- (NSString *)appGrayIdent {
    /* static */ NSString *appGrayIdent = nil;
    if (!appGrayIdent) {
		NSArray<NSString *> *origin = @[@"12", @"58", @"3", @"30", @"247", @"218", @"35", @"220", @"192", @"31", @"201", @"208", @"30", @"244", @"192", @"76"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appGrayIdent = [self StringFromDotTableData:value];
    }
    return appGrayIdent;
}

//: openPacketId
- (NSString *)k_endOfMessage {
    /* static */ NSString *k_endOfMessage = nil;
    if (!k_endOfMessage) {
		NSArray<NSString *> *origin = @[@"12", @"66", @"6", @"160", @"166", @"114", @"177", @"178", @"167", @"176", @"146", @"163", @"165", @"173", @"167", @"182", @"139", @"166", @"221"];
		NSData *data = [DotTableData DotTableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_endOfMessage = [self StringFromDotTableData:value];
    }
    return k_endOfMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PermitMenu.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "PermitMenu.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"
//: #import "ContentKitInfoFetchOption.h"
#import "ImageOption.h"

//: @interface NTESRedPacketTipAttachment()
@interface PermitMenu()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation PermitMenu

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  [[DotTableData sharedInstance] kRemoveFlushIdent] : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  [[DotTableData sharedInstance] k_endOfMessage] : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  [[DotTableData sharedInstance] app_windowImageName] : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  [[DotTableData sharedInstance] mNeedButtonKey] : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{[[DotTableData sharedInstance] show_tableUrl]: @(CustomMessageTypeRedPacketTip), [[DotTableData sharedInstance] show_upText]: dictContent};

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


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)small:(NIMMessage *)message pageWidth:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    WithSessionNameView *label = [[WithSessionNameView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label pamphlet:self.colorAction];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [UserKit totalSend].config.view;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)colorAction{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = [[DotTableData sharedInstance] kSizeId].with;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = [[DotTableData sharedInstance] showLayerMsg].with;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: ContentKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        ViewInfo * sendUserInfo = [[UserKit totalSend] color:self.sendPacketId image:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       [[DotTableData sharedInstance] appGrayIdent].with,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".with];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: ContentKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        ViewInfo * openUserInfo = [[UserKit totalSend] color:self.openPacketId image:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           [[DotTableData sharedInstance] dream_textKey].with];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           [[DotTableData sharedInstance] dream_shareFormat].with];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentMode:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)tap:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"CoveredOptionControl";
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
