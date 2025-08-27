// __DEBUG__
// __CLOSE_PRINT__
//
//  DisturbingObjectModel.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "DisturbingObjectModel.h"

//: @implementation SelectedListModel
@implementation DisturbingObjectModel

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithOf:(NSInteger)sid
                      //: Title:(NSString *)title{
                      image:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[DisturbingObjectModel alloc] initWithKey:sid collection:title show:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithKey:(NSInteger)sid
                      //: Title:(NSString *)title
                      collection:(NSString *)title
                    //: Context:(id)context{
                    show:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end