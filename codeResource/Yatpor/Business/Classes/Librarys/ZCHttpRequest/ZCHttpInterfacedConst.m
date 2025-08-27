// __DEBUG__
// __CLOSE_PRINT__
//
//  ZCHttpInterfacedConst.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"

//: NSString * RestApi(NSString *api) {
NSString * quantityernalRepresentationUnit(NSString *api) {
    //: NSString* resultApi;
    NSString* resultApi;
//    resultApi = [[BottomConfig sharedConfig].domainURL stringByAppendingString:api];
    //: resultApi = [[[ContentConfig sharedConfig] getCurrentDomain] stringByAppendingString:api];
    resultApi = [[[BottomConfig at] domain] stringByAppendingString:api];
    //: return resultApi;
    return resultApi;
}
/** 接口前缀-生产服务器*/
//: NSString *const kToken = @"";
NSString *const user_retText = @"";
//: NSString *const iphone_md5_key = @"";
NSString *const app_commentImageName = @"";
//: NSString *const wss_msg_prefix = @"wss://open.ihccs.com/ws/myHandler/open?token=";
NSString *const showLabelMsg = @"wss://open.ihccs.com/ws/myHandler/open?token=";
