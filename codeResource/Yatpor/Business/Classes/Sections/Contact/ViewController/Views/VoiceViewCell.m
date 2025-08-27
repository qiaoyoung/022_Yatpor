
#import <Foundation/Foundation.h>

@interface PickApartData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PickApartData

+ (instancetype)sharedInstance {
    static PickApartData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PickApartDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)PickApartDataToCache:(Byte *)data {
    int remove = data[0];
    Byte characteristicRootOfASquareMatrix = data[1];
    int title = data[2];
    for (int i = title; i < title + remove; i++) {
        int value = data[i] - characteristicRootOfASquareMatrix;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[title + remove] = 0;
    return data + title;
}

- (NSString *)StringFromPickApartData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PickApartDataToCache:data]];
}

//: #FAF8FD
- (NSString *)main_imageValueMessageIdent {
    /* static */ NSString *main_imageValueMessageIdent = nil;
    if (!main_imageValueMessageIdent) {
		NSArray<NSNumber *> *origin = @[@7, @73, @3, @108, @143, @138, @143, @129, @143, @141, @94];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_imageValueMessageIdent = [self StringFromPickApartData:value];
    }
    return main_imageValueMessageIdent;
}

//: contact_user_default_header
- (NSString *)mainShouldMsg {
    /* static */ NSString *mainShouldMsg = nil;
    if (!mainShouldMsg) {
		NSArray<NSNumber *> *origin = @[@27, @66, @8, @158, @232, @177, @14, @20, @165, @177, @176, @182, @163, @165, @182, @161, @183, @181, @167, @180, @161, @166, @167, @168, @163, @183, @174, @182, @161, @170, @167, @163, @166, @167, @180, @161];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainShouldMsg = [self StringFromPickApartData:value];
    }
    return mainShouldMsg;
}

//: Tamma Kirtner
- (NSString *)userRefreshMessage {
    /* static */ NSString *userRefreshMessage = nil;
    if (!userRefreshMessage) {
		NSArray<NSNumber *> *origin = @[@13, @58, @13, @205, @132, @46, @176, @101, @32, @59, @229, @166, @110, @142, @155, @167, @167, @155, @90, @133, @163, @172, @174, @168, @159, @172, @92];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRefreshMessage = [self StringFromPickApartData:value];
    }
    return userRefreshMessage;
}

//: nickname
- (NSString *)dreamGlobalStr {
    /* static */ NSString *dreamGlobalStr = nil;
    if (!dreamGlobalStr) {
		NSArray<NSNumber *> *origin = @[@8, @7, @6, @83, @22, @157, @117, @112, @106, @114, @117, @104, @116, @108, @18];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamGlobalStr = [self StringFromPickApartData:value];
    }
    return dreamGlobalStr;
}

//: ic_add_friend
- (NSString *)mBlueStateRemoteValue {
    /* static */ NSString *mBlueStateRemoteValue = nil;
    if (!mBlueStateRemoteValue) {
		NSArray<NSNumber *> *origin = @[@13, @26, @6, @195, @206, @164, @131, @125, @121, @123, @126, @126, @121, @128, @140, @131, @127, @136, @126, @139];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mBlueStateRemoteValue = [self StringFromPickApartData:value];
    }
    return mBlueStateRemoteValue;
}

//: avatar
- (NSString *)app_tingMsg {
    /* static */ NSString *app_tingMsg = nil;
    if (!app_tingMsg) {
		NSArray<NSNumber *> *origin = @[@6, @12, @10, @101, @221, @168, @186, @244, @129, @96, @109, @130, @109, @128, @109, @126, @227];
		NSData *data = [PickApartData PickApartDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_tingMsg = [self StringFromPickApartData:value];
    }
    return app_tingMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "VoiceViewCell.h"

//: @implementation RecommendfriendTableViewCell
@implementation VoiceViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor recordView:[[PickApartData sharedInstance] main_imageValueMessageIdent]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initSuccess];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initSuccess
{
    //: [self.contentView addSubview:self.avaterImg];
    [self.contentView addSubview:self.avaterImg];
    //: self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);

    //: [self.contentView addSubview:self.btnAdd];
    [self.contentView addSubview:self.btnAdd];
    //: self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
    self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)aboveCan:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem to:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem to:[[PickApartData sharedInstance] app_tingMsg]];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem to:[[PickApartData sharedInstance] dreamGlobalStr]];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor blackColor];
        _labName.textColor = [UIColor blackColor];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
        //: _labName.text = @"Tamma Kirtner";
        _labName.text = [[PickApartData sharedInstance] userRefreshMessage];
    }
    //: return _labName;
    return _labName;
}

//: - (UIImageView *)avaterImg
- (UIImageView *)avaterImg
{
    //: if (!_avaterImg) {
    if (!_avaterImg) {
        //: _avaterImg = [[UIImageView alloc] init];
        _avaterImg = [[UIImageView alloc] init];
        //: _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.cornerRadius = 24;
        //: _avaterImg.layer.masksToBounds = YES;
        _avaterImg.layer.masksToBounds = YES;
        //: _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
        _avaterImg.image = [UIImage imageNamed:[[PickApartData sharedInstance] mainShouldMsg]];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(qualifyTo) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:[[PickApartData sharedInstance] mBlueStateRemoteValue]] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)qualifyTo{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(lengthButton:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate lengthButton:self.userId];
    }
}

//: @end
@end