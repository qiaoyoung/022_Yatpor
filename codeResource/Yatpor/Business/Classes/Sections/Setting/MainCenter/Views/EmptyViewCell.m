
#import <Foundation/Foundation.h>

@interface TagData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TagData

+ (instancetype)sharedInstance {
    static TagData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TagDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)TagDataToCache:(Byte *)data {
    int passEnable = data[0];
    Byte backgroundTable = data[1];
    int keyDate = data[2];
    for (int i = keyDate; i < keyDate + passEnable; i++) {
        int value = data[i] - backgroundTable;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[keyDate + passEnable] = 0;
    return data + keyDate;
}

- (NSString *)StringFromTagData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TagDataToCache:data]];
}

//: lang
- (NSString *)appLayerName {
    /* static */ NSString *appLayerName = nil;
    if (!appLayerName) {
		NSString *origin = @"04020b7f9cbd8f39bfff176e637069dc";
		NSData *data = [TagData TagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLayerName = [self StringFromTagData:value];
    }
    return appLayerName;
}

//: #27303F
- (NSString *)appShowMessage {
    /* static */ NSString *appShowMessage = nil;
    if (!appShowMessage) {
		NSString *origin = @"072b0c7be707e1c59b8e49764e5d625e5b5e712e";
		NSData *data = [TagData TagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appShowMessage = [self StringFromTagData:value];
    }
    return appShowMessage;
}

//: #ffffff
- (NSString *)user_tableNameKey {
    /* static */ NSString *user_tableNameKey = nil;
    if (!user_tableNameKey) {
		NSString *origin = @"072904e34c8f8f8f8f8f8f20";
		NSData *data = [TagData TagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_tableNameKey = [self StringFromTagData:value];
    }
    return user_tableNameKey;
}

//: #F6F7FA
- (NSString *)mImageText {
    /* static */ NSString *mImageText = nil;
    if (!mImageText) {
		NSString *origin = @"072d035073637364736e88";
		NSData *data = [TagData TagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mImageText = [self StringFromTagData:value];
    }
    return mImageText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "EmptyViewCell.h"

//: @implementation NTESLanguageTableViewCell
@implementation EmptyViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[[TagData sharedInstance] appLayerName]]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor recordView:[[TagData sharedInstance] user_tableNameKey]];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        //: _labTitle.textColor = [UIColor colorWithHexString:@"#27303F"];
        _labTitle.textColor = [UIColor recordView:[[TagData sharedInstance] appShowMessage]];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor recordView:[[TagData sharedInstance] mImageText]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)countyImg
- (UIImageView *)countyImg
{
    //: if (!_countyImg) {
    if (!_countyImg) {
        //: _countyImg = [[UIImageView alloc] init];
        _countyImg = [[UIImageView alloc] init];
    }
    //: return _countyImg;
    return _countyImg;
}

//: @end
@end