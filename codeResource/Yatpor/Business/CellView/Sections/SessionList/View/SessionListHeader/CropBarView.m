
#import <Foundation/Foundation.h>

typedef struct {
    Byte contentWindow;
    Byte *nameProcessor;
    unsigned int discount;
	int dittyBag;
	int globalBack;
} StructUpwardData;

@interface UpwardData : NSObject

@end

@implementation UpwardData

+ (Byte *)UpwardDataToByte:(StructUpwardData *)data {
    for (int i = 0; i < data->discount; i++) {
        data->nameProcessor[i] ^= data->contentWindow;
    }
    data->nameProcessor[data->discount] = 0;
	if (data->discount >= 2) {
		data->dittyBag = data->nameProcessor[0];
		data->globalBack = data->nameProcessor[1];
	}
    return data->nameProcessor;
}

+ (NSString *)StringFromUpwardData:(StructUpwardData *)data {
    return [NSString stringWithUTF8String:(char *)[self UpwardDataToByte:data]];
}

//: home_fragment_net_error
+ (NSString *)mainLabMsg {
    /* static */ NSString *mainLabMsg = nil;
    if (!mainLabMsg) {
        StructUpwardData value = (StructUpwardData){169, (Byte []){193, 198, 196, 204, 246, 207, 219, 200, 206, 196, 204, 199, 221, 246, 199, 204, 221, 246, 204, 219, 219, 198, 219, 49}, 23, 182, 22};
        mainLabMsg = [self StringFromUpwardData:&value];
    }
    return mainLabMsg;
}

//: login_activity_login_failed
+ (NSString *)show_globalBeginId {
    /* static */ NSString *show_globalBeginId = nil;
    if (!show_globalBeginId) {
        StructUpwardData value = (StructUpwardData){189, (Byte []){209, 210, 218, 212, 211, 226, 220, 222, 201, 212, 203, 212, 201, 196, 226, 209, 210, 218, 212, 211, 226, 219, 220, 212, 209, 216, 217, 103}, 27, 65, 101};
        show_globalBeginId = [self StringFromUpwardData:&value];
    }
    return show_globalBeginId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListHeader.m
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESListHeader.h"
#import "CropBarView.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "NTESClientUtil.h"
#import "SignalUtil.h"

//: @interface NTESListHeader()
@interface CropBarView()

//: @end
@end


//: @implementation NTESListHeader
@implementation CropBarView

//: - (void)refreshWithType:(NTESListHeaderType)type value:(id)value{
- (void)member:(NTESListHeaderType)type message:(id)value{
    //: switch (type) {
    switch (type) {
        //: case ListHeaderTypeCommonText:
        case ListHeaderTypeCommonText:
            //: [self refreshWithCommonText:value];
            [self electronicTitle:value];
            //: break;
            break;
        //: case ListHeaderTypeNetStauts:
        case ListHeaderTypeNetStauts:
            //: [self refreshWithNetStatus:[value integerValue]];
            [self sound:[value integerValue]];
            //: break;
            break;
        //: case ListHeaderTypeLoginClients:
        case ListHeaderTypeLoginClients:
            //: [self refreshWithClients:value];
            [self numberernational:value];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self sizeToFit];
    [self sizeToFit];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat height = 0;
    CGFloat height = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: [subView sizeToFit];
        [subView sizeToFit];
        //: height += subView.height;
        height += subView.height;
    }
    //: return CGSizeMake(self.width,height);
    return CGSizeMake(self.width,height);
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat top = 0;
    CGFloat top = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: subView.top = top;
        subView.top = top;
        //: top = top + subView.height;
        top = top + subView.height;
        //: subView.centerX = self.width * .5f;
        subView.centerX = self.width * .5f;
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshWithClients:(NSArray *)clients{
- (void)numberernational:(NSArray *)clients{
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (clients.count) {
    if (clients.count) {
        //目前的踢人逻辑是web和pc不能共存，移动端不能共存，所以这里取第一个显示就可以了
        //: NIMLoginClient *client = clients.firstObject;
        NIMLoginClient *client = clients.firstObject;
        //: text = [NTESClientUtil clientName:client.type];
        text = [SignalUtil name:client.type];

//        if (client.customClientType != 0) {
//            text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
//                                 @"正在使用密聊".ntes_localized,
//                                 name, @(client.customClientType)] : [NSString stringWithFormat:@"正在使用密聊未知版本 (%@)".ntes_localized, @(client.customClientType)];
//        } else {
//            text = name.length? [NSString stringWithFormat:@"%@ %@",
//                                 @"正在使用密聊".ntes_localized,
//                                 name] : @"正在使用密聊未知版本".ntes_localized;
//        }

    }
    //: [self addRow:ListHeaderTypeLoginClients content:text viewClassName:@"NTESMutiClientsHeaderView"];
    [self with:ListHeaderTypeLoginClients length:text balloon:@"NameButton"];
}


//: - (void)refreshWithNetStatus:(NIMLoginStep)step{
- (void)sound:(NIMLoginStep)step{
    //: NSString *text = nil;
    NSString *text = nil;
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
        //: case NIMLoginStepLoseConnection:
        case NIMLoginStepLoseConnection:
            //: text = [ContentLanguageManager getTextWithKey:@"home_fragment_net_error"];
            text = [MatronymicPath colorStreetwise:[UpwardData mainLabMsg]];
            //: break;
            break;
        //: case NIMLoginStepLoginFailed:
        case NIMLoginStepLoginFailed:
            //: text = [ContentLanguageManager getTextWithKey:@"login_activity_login_failed"];
            text = [MatronymicPath colorStreetwise:[UpwardData show_globalBeginId]];
            //: break;
            break;
        //: case NIMLoginStepNetChanged:
        case NIMLoginStepNetChanged:
        {
            //: if ([[Reachability reachabilityForInternetConnection] isReachable])
            if ([[Reachability reachabilityForInternetConnection] isReachable])
            {
//                text = @"网络正在切换,识别中....".ntes_localized;
            }
            //: else
            else
            {
                //: text = [ContentLanguageManager getTextWithKey:@"home_fragment_net_error"];
                text = [MatronymicPath colorStreetwise:[UpwardData mainLabMsg]];
            }
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self addRow:ListHeaderTypeNetStauts content:text viewClassName:@"NTESTextHeaderView"];
    [self with:ListHeaderTypeNetStauts length:text balloon:@"SendButton"];
}

//: - (void)refreshWithCommonText:(NSString *)text{
- (void)electronicTitle:(NSString *)text{
    //: [self addRow:ListHeaderTypeCommonText content:text viewClassName:@"NTESTextHeaderView"];
    [self with:ListHeaderTypeCommonText length:text balloon:@"SendButton"];
}


//参数viewClassName的Class 必须是UIControl的子类并实现<NTESSessionListHeaderView>协议
//: - (void)addRow:(NTESListHeaderType)type content:(NSString *)content viewClassName:(NSString *)viewClassName{
- (void)with:(NTESListHeaderType)type length:(NSString *)content balloon:(NSString *)viewClassName{
    //: UIControl<NTESListHeaderView> *rowView = (UIControl<NTESListHeaderView> *)[self viewWithTag:type];
    UIControl<HeaderName> *rowView = (UIControl<HeaderName> *)[self viewWithTag:type];
    //: if ([content length])
    if ([content length])
    {
        //: if (!rowView) {
        if (!rowView) {
            //: Class clazz = NSClassFromString(viewClassName);
            Class clazz = NSClassFromString(viewClassName);
            //: rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            //: rowView.backgroundColor = [self fillBackgroundColor:type];
            rowView.backgroundColor = [self page:type];
            //: __block NSInteger insert = self.subviews.count;
            __block NSInteger insert = self.subviews.count;
            //: [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                //: UIView *view = obj;
                UIView *view = obj;
                //: if (view.tag > type) {
                if (view.tag > type) {
                    //: insert = idx;
                    insert = idx;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
            //: rowView.tag = type;
            rowView.tag = type;
            //: [self insertSubview:rowView atIndex:insert];
            [self insertSubview:rowView atIndex:insert];
            //: [rowView addTarget:self action:@selector(didSelectRow:) forControlEvents:UIControlEventTouchUpInside];
            [rowView addTarget:self action:@selector(tempDown:) forControlEvents:UIControlEventTouchUpInside];
        }
        //: [rowView setContentText:content];
        [rowView setAssemblageRange:content];
    }
    //: else
    else
    {
        //: [rowView removeFromSuperview];
        [rowView removeFromSuperview];
    }
}


//: - (void)didSelectRow:(id)sender{
- (void)tempDown:(id)sender{
    //: UIControl *view = sender;
    UIControl *view = sender;
    //: if ([self.delegate respondsToSelector:@selector(didSelectRowType:)]) {
    if ([self.delegate respondsToSelector:@selector(buttons:)]) {
        //: [self.delegate didSelectRowType:view.tag];
        [self.delegate buttons:view.tag];
    }
}


//: - (UIColor *)fillBackgroundColor:(NTESListHeaderType)type{
- (UIColor *)page:(NTESListHeaderType)type{
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           //: };
                           };
    //: return dict[@(type)];
    return dict[@(type)];
}

//: @end
@end
