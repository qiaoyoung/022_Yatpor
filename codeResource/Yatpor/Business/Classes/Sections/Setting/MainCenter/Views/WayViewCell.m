
#import <Foundation/Foundation.h>

@interface RemoteData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RemoteData

+ (instancetype)sharedInstance {
    static RemoteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RemoteDataToCache:(Byte *)data {
    int startCover = data[0];
    Byte worldView = data[1];
    int eleven = data[2];
    for (int i = eleven; i < eleven + startCover; i++) {
        int value = data[i] + worldView;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[eleven + startCover] = 0;
    return data + eleven;
}

- (NSString *)StringFromRemoteData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RemoteDataToCache:data]];
}

//: #DF7055
- (NSString *)noti_byText {
    /* static */ NSString *noti_byText = nil;
    if (!noti_byText) {
        Byte value[] = {7, 37, 7, 175, 37, 83, 201, 254, 31, 33, 18, 11, 16, 16, 238};
        noti_byText = [self StringFromRemoteData:value];
    }
    return noti_byText;
}

//: avatar
- (NSString *)user_messageStr {
    /* static */ NSString *user_messageStr = nil;
    if (!user_messageStr) {
        Byte value[] = {6, 11, 9, 245, 165, 53, 177, 173, 2, 86, 107, 86, 105, 86, 103, 120};
        user_messageStr = [self StringFromRemoteData:value];
    }
    return user_messageStr;
}

//: user_redpackage_prise
- (NSString *)mainCoverKey {
    /* static */ NSString *mainCoverKey = nil;
    if (!mainCoverKey) {
        Byte value[] = {21, 6, 12, 81, 246, 94, 218, 120, 37, 41, 49, 58, 111, 109, 95, 108, 89, 108, 95, 94, 106, 91, 93, 101, 91, 97, 95, 89, 106, 108, 99, 109, 95, 196};
        mainCoverKey = [self StringFromRemoteData:value];
    }
    return mainCoverKey;
}

//: #F1F1F1
- (NSString *)userBackViewData {
    /* static */ NSString *userBackViewData = nil;
    if (!userBackViewData) {
        Byte value[] = {7, 62, 13, 200, 134, 253, 121, 93, 62, 150, 10, 124, 248, 229, 8, 243, 8, 243, 8, 243, 193};
        userBackViewData = [self StringFromRemoteData:value];
    }
    return userBackViewData;
}

//: user_avatar
- (NSString *)main_verticalByName {
    /* static */ NSString *main_verticalByName = nil;
    if (!main_verticalByName) {
        Byte value[] = {11, 67, 4, 20, 50, 48, 34, 47, 28, 30, 51, 30, 49, 30, 47, 64};
        main_verticalByName = [self StringFromRemoteData:value];
    }
    return main_verticalByName;
}

//: count
- (NSString *)showValueMessage {
    /* static */ NSString *showValueMessage = nil;
    if (!showValueMessage) {
        Byte value[] = {5, 65, 11, 224, 191, 53, 159, 130, 59, 175, 188, 34, 46, 52, 45, 51, 118};
        showValueMessage = [self StringFromRemoteData:value];
    }
    return showValueMessage;
}

//: user_nickname
- (NSString *)dream_needData {
    /* static */ NSString *dream_needData = nil;
    if (!dream_needData) {
        Byte value[] = {13, 52, 3, 65, 63, 49, 62, 43, 58, 53, 47, 55, 58, 45, 57, 49, 221};
        dream_needData = [self StringFromRemoteData:value];
    }
    return dream_needData;
}

//: words
- (NSString *)noti_frameData {
    /* static */ NSString *noti_frameData = nil;
    if (!noti_frameData) {
        Byte value[] = {5, 75, 12, 106, 151, 1, 74, 153, 7, 66, 97, 94, 44, 36, 39, 25, 40, 84};
        noti_frameData = [self StringFromRemoteData:value];
    }
    return noti_frameData;
}

//: nickname
- (NSString *)notiProcessorIdent {
    /* static */ NSString *notiProcessorIdent = nil;
    if (!notiProcessorIdent) {
        Byte value[] = {8, 36, 11, 215, 6, 40, 160, 101, 240, 224, 7, 74, 69, 63, 71, 74, 61, 73, 65, 52};
        notiProcessorIdent = [self StringFromRemoteData:value];
    }
    return notiProcessorIdent;
}

//: createtime
- (NSString *)mTouchPath {
    /* static */ NSString *mTouchPath = nil;
    if (!mTouchPath) {
        Byte value[] = {10, 18, 12, 249, 199, 107, 193, 124, 43, 206, 62, 125, 81, 96, 83, 79, 98, 83, 98, 87, 91, 83, 219};
        mTouchPath = [self StringFromRemoteData:value];
    }
    return mTouchPath;
}

//: amount
- (NSString *)mCustomMessage {
    /* static */ NSString *mCustomMessage = nil;
    if (!mCustomMessage) {
        Byte value[] = {6, 7, 7, 64, 74, 72, 222, 90, 102, 104, 110, 103, 109, 222};
        mCustomMessage = [self StringFromRemoteData:value];
    }
    return mCustomMessage;
}

//: icon_redpackage_top
- (NSString *)mainBackgroundUrl {
    /* static */ NSString *mainBackgroundUrl = nil;
    if (!mainBackgroundUrl) {
        Byte value[] = {19, 83, 9, 72, 147, 210, 26, 143, 88, 22, 16, 28, 27, 12, 31, 18, 17, 29, 14, 16, 24, 14, 20, 18, 12, 33, 28, 29, 178};
        mainBackgroundUrl = [self StringFromRemoteData:value];
    }
    return mainBackgroundUrl;
}

//: back_white
- (NSString *)mainWindowUrl {
    /* static */ NSString *mainWindowUrl = nil;
    if (!mainWindowUrl) {
        Byte value[] = {10, 56, 3, 42, 41, 43, 51, 39, 63, 48, 49, 60, 45, 122};
        mainWindowUrl = [self StringFromRemoteData:value];
    }
    return mainWindowUrl;
}

//: %@个红包，共%@元
- (NSString *)main_keyMessage {
    /* static */ NSString *main_keyMessage = nil;
    if (!main_keyMessage) {
        Byte value[] = {22, 92, 6, 125, 39, 159, 201, 228, 136, 92, 78, 139, 94, 70, 137, 48, 41, 147, 96, 48, 137, 41, 85, 201, 228, 137, 41, 39, 247};
        main_keyMessage = [self StringFromRemoteData:value];
    }
    return main_keyMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WayViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "WayViewCell.h"

//: @implementation NTESRedpackageDetailCell
@implementation WayViewCell

//: - (void)initSubviews{
- (void)initCell{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor recordView:[[RemoteData sharedInstance] noti_byText]];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice bearDown] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:[[RemoteData sharedInstance] mainBackgroundUrl]];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice bearDown]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:[[RemoteData sharedInstance] mainWindowUrl]] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice bearDown]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)untilTargetInformation:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information to:[[RemoteData sharedInstance] dream_needData]];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information to:[[RemoteData sharedInstance] noti_frameData]];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information to:[[RemoteData sharedInstance] main_verticalByName]]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information to:[[RemoteData sharedInstance] showValueMessage]];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information to:[[RemoteData sharedInstance] mCustomMessage]];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[[RemoteData sharedInstance] main_keyMessage],count,amount];

}

//: -(void)backButtonClick{
-(void)dorsalVertebraBlue{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation StatuteNameView

//: -(void)initSubviews{
-(void)initCell{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor recordView:[[RemoteData sharedInstance] userBackViewData]];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:[[RemoteData sharedInstance] mainCoverKey]];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)untilTargetInformation:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information to:[[RemoteData sharedInstance] user_messageStr]]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information to:[[RemoteData sharedInstance] notiProcessorIdent]];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information to:[[RemoteData sharedInstance] mTouchPath]];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information to:[[RemoteData sharedInstance] mCustomMessage]]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end