
#import <Foundation/Foundation.h>

@interface RegionData : NSObject

+ (instancetype)sharedInstance;

//: activity_register_next
@property (nonatomic, copy) NSString *m_libraryId;

//: register_avtivity3_nick
@property (nonatomic, copy) NSString *userElementaryName;

//: eeeeee
@property (nonatomic, copy) NSString *user_assData;

//: #52ACFC
@property (nonatomic, copy) NSString *mTacticDiseaseStr;

//: 输入不能为空
@property (nonatomic, copy) NSString *dream_creasedKey;

@end

@implementation RegionData

+ (instancetype)sharedInstance {
    static RegionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RegionDataToCache:(Byte *)data {
    int dying = data[0];
    Byte independent = data[1];
    int manyBackground = data[2];
    for (int i = manyBackground; i < manyBackground + dying; i++) {
        int value = data[i] + independent;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[manyBackground + dying] = 0;
    return data + manyBackground;
}

- (NSString *)StringFromRegionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RegionDataToCache:data]];
}

//: eeeeee
- (NSString *)user_assData {
    if (!_user_assData) {
        Byte value[] = {6, 32, 3, 69, 69, 69, 69, 69, 69, 156};
        _user_assData = [self StringFromRegionData:value];
    }
    return _user_assData;
}

//: 输入不能为空
- (NSString *)dream_creasedKey {
    if (!_dream_creasedKey) {
        Byte value[] = {18, 53, 6, 38, 57, 116, 179, 137, 94, 176, 80, 112, 175, 131, 88, 179, 78, 136, 175, 131, 133, 178, 116, 133, 176};
        _dream_creasedKey = [self StringFromRegionData:value];
    }
    return _dream_creasedKey;
}

//: activity_register_next
- (NSString *)m_libraryId {
    if (!_m_libraryId) {
        Byte value[] = {22, 36, 3, 61, 63, 80, 69, 82, 69, 80, 85, 59, 78, 65, 67, 69, 79, 80, 65, 78, 59, 74, 65, 84, 80, 56};
        _m_libraryId = [self StringFromRegionData:value];
    }
    return _m_libraryId;
}

//: register_avtivity3_nick
- (NSString *)userElementaryName {
    if (!_userElementaryName) {
        Byte value[] = {23, 39, 10, 22, 47, 40, 74, 199, 34, 132, 75, 62, 64, 66, 76, 77, 62, 75, 56, 58, 79, 77, 66, 79, 66, 77, 82, 12, 56, 71, 66, 60, 68, 202};
        _userElementaryName = [self StringFromRegionData:value];
    }
    return _userElementaryName;
}

//: #52ACFC
- (NSString *)mTacticDiseaseStr {
    if (!_mTacticDiseaseStr) {
        Byte value[] = {7, 36, 10, 208, 201, 166, 17, 190, 72, 119, 255, 17, 14, 29, 31, 34, 31, 116};
        _mTacticDiseaseStr = [self StringFromRegionData:value];
    }
    return _mTacticDiseaseStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESInputNickNameWindowView.h"
#import "BubbleView.h"

//: @interface NTESInputNickNameWindowView ()
@interface BubbleView ()

//: @end
@end

//: @implementation NTESInputNickNameWindowView
@implementation BubbleView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        //: self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);

        //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: disButton.frame = self.bounds;
        disButton.frame = self.bounds;
        //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [disButton addTarget:self action:@selector(slightPicker) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:disButton];
        [self addSubview:disButton];


        //: UIView *backGroundView = [[UIView alloc] init];
        UIView *backGroundView = [[UIView alloc] init];
        //: backGroundView.backgroundColor = [UIColor whiteColor];
        backGroundView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:backGroundView];
        [self addSubview:backGroundView];
        //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.mas_equalTo(self);
            //: make.top.mas_equalTo(100);
            make.top.mas_equalTo(100);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            //: make.height.mas_equalTo(200);
            make.height.mas_equalTo(200);
        //: }];
        }];


        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont systemFontOfSize:16];
        titleLabel.font = [UIFont systemFontOfSize:16];
        //: titleLabel.textColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor blackColor];
        //: titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: [backGroundView addSubview:titleLabel];
        [backGroundView addSubview:titleLabel];
        //: _titleLabel = titleLabel;
        _titleLabel = titleLabel;
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(30);
            make.top.mas_offset(30);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_equalTo(-20);
            make.right.mas_equalTo(-20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _textField = [[UITextField alloc] init];
        _textField = [[UITextField alloc] init];
        //: _textField.placeholder = [ContentLanguageManager getTextWithKey:@"register_avtivity3_nick"];
        _textField.placeholder = [MatronymicPath colorStreetwise:[RegionData sharedInstance].userElementaryName];
        //: [backGroundView addSubview:_textField];
        [backGroundView addSubview:_textField];
        //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UIView *lineView = [[UIView alloc] init];
        UIView *lineView = [[UIView alloc] init];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
        lineView.backgroundColor = [UIColor recordView:[RegionData sharedInstance].user_assData];
        //: [backGroundView addSubview:lineView];
        [backGroundView addSubview:lineView];
        //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(1.2);
            make.height.mas_equalTo(1.2);
        //: }];
        }];


        //: UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [knowButton setTitle:[ContentLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [knowButton setTitle:[MatronymicPath colorStreetwise:[RegionData sharedInstance].m_libraryId] forState:UIControlStateNormal];
        //: [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [knowButton addTarget:self action:@selector(knowButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [knowButton addTarget:self action:@selector(shadowShow) forControlEvents:UIControlEventTouchUpInside];
        //: knowButton.backgroundColor = [UIColor colorWithHexString:@"#52ACFC"];
        knowButton.backgroundColor = [UIColor recordView:[RegionData sharedInstance].mTacticDiseaseStr];
        //: [backGroundView addSubview:knowButton];
        [backGroundView addSubview:knowButton];
        //: _dowmButton = knowButton;
        _dowmButton = knowButton;
        //: knowButton.layer.masksToBounds = YES;
        knowButton.layer.masksToBounds = YES;
        //: knowButton.layer.cornerRadius = 4;
        knowButton.layer.cornerRadius = 4;
        //: [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_offset(-20);
            make.right.mas_offset(-20);
            //: make.height.mas_equalTo(45);
            make.height.mas_equalTo(45);
        //: }];
        }];



//        UIImageView *bgimage = [[UIImageView alloc] init];
//        bgimage.userInteractionEnabled = YES;
//        bgimage.image = [UIImage imageNamed:@"mine_opinipn_bgimage"];
//        [self addSubview:bgimage];
//        [bgimage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.mas_equalTo(254);
//            make.height.mas_equalTo(278);
//            make.centerY.mas_equalTo(self);
//            make.centerX.mas_equalTo(self);
//        }];
//
//        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setImage:[UIImage imageNamed:@"mine_opinipn_close"] forState:UIControlStateNormal];
//        [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
//        [bgimage addSubview:closeBtn];
//        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(bgimage);
//            make.top.mas_equalTo(bgimage);
//            make.width.mas_equalTo(50);
//            make.height.mas_equalTo(50);
//        }];






    }
    //: return self;
    return self;
}

//: -(void)closeBtnClick{
-(void)extra{
    //: [self dismissPicker];
    [self slightPicker];
}

//: -(void)knowButtonClick{
-(void)shadowShow{

    //: if (_textField.text.length <= 0) {
    if (_textField.text.length <= 0) {
        //: [SVProgressHUD showMessage:@"输入不能为空".nim_localized];
        [SVProgressHUD should:[RegionData sharedInstance].dream_creasedKey.resign];
        //: return;
        return;
    }

    //: if (_block) {
    if (_block) {
        //: _block(_textField.text);
        _block(_textField.text);
    }
    //: [self dismissPicker];
    [self slightPicker];
}

//: - (void)show{
- (void)completeEnable{
    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];
}

//: - (void)dismissPicker{
- (void)slightPicker{

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];

}

//: -(void)clickKnowButton:(KnowBlock)block{
-(void)inviteClick:(KnowBlock)block{
    //: _block = block;
    _block = block;
}


//: @end
@end
