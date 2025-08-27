// __DEBUG__
// __CLOSE_PRINT__
//
//  WithHolder.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class WithHolder;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol ContentImage <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)selectWith:(WithHolder *)holder
                 //: duration:(NSTimeInterval)duration
                 image:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              complete:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface WithHolder : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<ContentImage> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)of: (id<ContentImage>)delegate;

//: - (void)stop;
- (void)custom;

//: @end
@end