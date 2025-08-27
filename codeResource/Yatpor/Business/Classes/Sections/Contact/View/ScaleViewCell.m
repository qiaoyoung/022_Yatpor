
#import <Foundation/Foundation.h>

NSString *StringFromMisinformationData(Byte *data);        


//: user_id
Byte showStatePath[] = {90, 7, 48, 5, 144, 69, 67, 53, 66, 47, 57, 52, 250};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "ScaleViewCell.h"

//: @implementation NTESContactGroupCell
@implementation ScaleViewCell

//: - (void)initSubviews{
- (void)initCell{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[FFFAvatarImageView alloc] init];
    _avatar = [[MessageSendView alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)untilTargetInformation:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information to:StringFromMisinformationData(showStatePath)];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    ViewInfo *info = [[UserKit totalSend] color:user_id image:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar press:[NSURL URLWithString:info.avatarUrlString] remoteOptions:info.avatarImage begin:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end

Byte * MisinformationDataToCache(Byte *data) {
    int hypothesis = data[0];
    int bar = data[1];
    Byte by = data[2];
    int removeInfo = data[3];
    if (!hypothesis) return data + removeInfo;
    for (int i = removeInfo; i < removeInfo + bar; i++) {
        int value = data[i] + by;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[removeInfo + bar] = 0;
    return data + removeInfo;
}

NSString *StringFromMisinformationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MisinformationDataToCache(data)];
}
