
#import <Foundation/Foundation.h>

@interface AccountData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AccountData

+ (instancetype)sharedInstance {
    static AccountData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AccountDataToCache:(Byte *)data {
    int erase = data[0];
    Byte endValue = data[1];
    int sound = data[2];
    for (int i = sound; i < sound + erase; i++) {
        int value = data[i] + endValue;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[sound + erase] = 0;
    return data + sound;
}

- (NSString *)StringFromAccountData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AccountDataToCache:data]];
}

//: #FF483D
- (NSString *)app_tagKitValueIdent {
    /* static */ NSString *app_tagKitValueIdent = nil;
    if (!app_tagKitValueIdent) {
        Byte value[] = {7, 35, 13, 136, 105, 129, 69, 153, 164, 225, 3, 168, 156, 0, 35, 35, 17, 21, 16, 33, 230};
        app_tagKitValueIdent = [self StringFromAccountData:value];
    }
    return app_tagKitValueIdent;
}

//: ic-waring
- (NSString *)mainContainerPath {
    /* static */ NSString *mainContainerPath = nil;
    if (!mainContainerPath) {
        Byte value[] = {9, 98, 4, 67, 7, 1, 203, 21, 255, 16, 7, 12, 5, 234};
        mainContainerPath = [self StringFromAccountData:value];
    }
    return mainContainerPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "SendButton.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: @implementation NTESTextHeaderView
@implementation SendButton

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor recordView:[[AccountData sharedInstance] app_tagKitValueIdent]];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[AccountData sharedInstance] mainContainerPath]]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setAssemblageRange:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end