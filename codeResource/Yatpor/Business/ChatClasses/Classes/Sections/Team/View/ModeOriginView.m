
#import <Foundation/Foundation.h>

typedef struct {
    Byte scan;
    Byte *goo;
    unsigned int operagoer;
} StructHarshData;

@interface HarshData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HarshData

+ (instancetype)sharedInstance {
    static HarshData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HarshDataToByte:(StructHarshData *)data {
    for (int i = 0; i < data->operagoer; i++) {
        data->goo[i] ^= data->scan;
    }
    data->goo[data->operagoer] = 0;
    return data->goo;
}

- (NSString *)StringFromHarshData:(StructHarshData *)data {
    return [NSString stringWithUTF8String:(char *)[self HarshDataToByte:data]];
}

//: icon_avatar_del
- (NSString *)dream_embraceId {
    /* static */ NSString *dream_embraceId = nil;
    if (!dream_embraceId) {
        StructHarshData value = (StructHarshData){47, (Byte []){70, 76, 64, 65, 112, 78, 89, 78, 91, 78, 93, 112, 75, 74, 67, 201}, 15};
        dream_embraceId = [self StringFromHarshData:&value];
    }
    return dream_embraceId;
}

//: Group_Me
- (NSString *)mainFlexibleMessage {
    /* static */ NSString *mainFlexibleMessage = nil;
    if (!mainFlexibleMessage) {
        StructHarshData value = (StructHarshData){100, (Byte []){35, 22, 11, 17, 20, 59, 41, 1, 121}, 8};
        mainFlexibleMessage = [self StringFromHarshData:&value];
    }
    return mainFlexibleMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardHeaderCell.h"
#import "ModeOriginView.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFTeamHelper.h"
#import "HandleImageHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"

//: @interface FFFCardHeaderCell()
@interface ModeOriginView()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFCardHeaderCell
@implementation ModeOriginView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[MessageSendView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[[HarshData sharedInstance] dream_embraceId]] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(subed:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data{
- (void)tag:(id<FFFKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView modelEnable:url mentalPicture:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(canItem:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [FFFLanguageManager getTextWithKey:@"Group_Me"];
        showName = [MatronymicPath colorStreetwise:[[HarshData sharedInstance] mainFlexibleMessage]];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [FFFTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [HandleImageHelper image:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)canItem:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(infoComplete:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate infoComplete:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)subed:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(utmosted:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate utmosted:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end