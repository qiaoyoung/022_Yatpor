// __DEBUG__
// __CLOSE_PRINT__
//
//  DisturbingObjectModel.h
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface SelectedListModel : NSObject
@interface DisturbingObjectModel : NSObject

//: @property (nonatomic , assign ) NSInteger sid;
@property (nonatomic , assign ) NSInteger sid;

//: @property (nonatomic , copy ) NSString *title;
@property (nonatomic , copy ) NSString *title;

//: @property (nonatomic , strong ) id context;
@property (nonatomic , strong ) id context;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithOf:(NSInteger)sid
                      //: Title:(NSString *)title;
                      image:(NSString *)title;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithKey:(NSInteger)sid
                      //: Title:(NSString *)title
                      collection:(NSString *)title
                    //: Context:(id)context;
                    show:(id)context;

//: @end
@end