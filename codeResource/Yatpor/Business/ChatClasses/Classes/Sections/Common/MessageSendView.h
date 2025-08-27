// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageSendView.h
// UserKit
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"

//: @interface FFFAvatarImageView : UIControl
@interface MessageSendView : UIControl
//: @property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *image;
//: @property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,assign) CGFloat cornerRadius;

//: - (void)setAvatarBySession:(NIMSession *)session;
- (void)setMark:(NIMSession *)session;
//: - (void)setAvatarByMessage:(NIMMessage *)message;
- (void)setNutsAndBolts:(NIMMessage *)message;

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)modelEnable:(NSURL *)url mentalPicture:(UIImage *)placeholder;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;
- (void)press:(NSURL *)url remoteOptions:(UIImage *)placeholder begin:(SDWebImageOptions)options;

//: @end
@end