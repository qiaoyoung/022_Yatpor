
#import <Foundation/Foundation.h>
typedef struct {
    Byte imageBack;
    Byte *textCover;
    unsigned int dotOf;
    Byte searchValueOf;
	int with;
	int windowCollection;
	int evidence;
} EigenvalueOfASquareMatrixData;

NSString *StringFromEigenvalueOfASquareMatrixData(EigenvalueOfASquareMatrixData *data);


//: ic_search
EigenvalueOfASquareMatrixData mReleaseId = (EigenvalueOfASquareMatrixData){104, (Byte []){1, 11, 55, 27, 13, 9, 26, 11, 0, 176}, 9, 222, 156, 176, 125};

//: icon_user_contact_qr
EigenvalueOfASquareMatrixData app_shareStr = (EigenvalueOfASquareMatrixData){211, (Byte []){186, 176, 188, 189, 140, 166, 160, 182, 161, 140, 176, 188, 189, 167, 178, 176, 167, 140, 162, 161, 29}, 20, 185, 154, 100, 112};

//: activity_add_friend_my_account
EigenvalueOfASquareMatrixData app_withKeyIdent = (EigenvalueOfASquareMatrixData){251, (Byte []){154, 152, 143, 146, 141, 146, 143, 130, 164, 154, 159, 159, 164, 157, 137, 146, 158, 149, 159, 164, 150, 130, 164, 154, 152, 152, 148, 142, 149, 143, 100}, 30, 183, 70, 192, 188};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BrushViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendCell.h"
#import "BrushViewCell.h"

//: @implementation NTESContactAddFriendCell
@implementation BrushViewCell

//: - (void)initSubviews{
- (void)initCell{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backView = [[UIView alloc] init];
    UIView *backView = [[UIView alloc] init];
    //: backView.backgroundColor = [UIColor whiteColor];
    backView.backgroundColor = [UIColor whiteColor];
    //: backView.layer.masksToBounds = YES;
    backView.layer.masksToBounds = YES;
    //: backView.layer.cornerRadius = 4.6f;
    backView.layer.cornerRadius = 4.6f;
    //: [self addSubview:backView];
    [self addSubview:backView];
    //: [backView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);

    //: }];
    }];

    //: UIImageView *imageIcon = [[UIImageView alloc] init];
    UIImageView *imageIcon = [[UIImageView alloc] init];
    //: imageIcon.image = [UIImage imageNamed:@"ic_search"];
    imageIcon.image = [UIImage imageNamed:StringFromEigenvalueOfASquareMatrixData(&mReleaseId)];
    //: [backView addSubview:imageIcon];
    [backView addSubview:imageIcon];
    //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(8);
        make.left.mas_offset(8);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.height.mas_equalTo(23);
        make.width.height.mas_equalTo(23);
    //: }];
    }];

    //: _textField = [[UITextField alloc] init];
    _textField = [[UITextField alloc] init];
    //: [backView addSubview:_textField];
    [backView addSubview:_textField];
    //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);

    //: }];
    }];

    //: NSString *my_account = [ContentLanguageManager getTextWithKey:@"activity_add_friend_my_account"];
    NSString *my_account = [MatronymicPath colorStreetwise:StringFromEigenvalueOfASquareMatrixData(&app_withKeyIdent)];
    //: NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NIMUserDefaults standardUserDefaults].accountName];
    NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NameDefaults argument].accountName];
    //: UILabel *titleLable = [[UILabel alloc] init];
    UILabel *titleLable = [[UILabel alloc] init];
    //: titleLable.font = [UIFont systemFontOfSize:15];
    titleLable.font = [UIFont systemFontOfSize:15];
    //: titleLable.textColor = [UIColor blackColor];
    titleLable.textColor = [UIColor blackColor];
    //: titleLable.text = myCodeStr;
    titleLable.text = myCodeStr;
    //: [titleLable sizeToFit];
    [titleLable sizeToFit];
    //: [self addSubview:titleLable];
    [self addSubview:titleLable];
    //: [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
    [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        //: make.centerX.mas_offset(0).mas_offset(-25);
        make.centerX.mas_offset(0).mas_offset(-25);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];


    //: _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateNormal];
    [_myQRCodeBtn setImage:[UIImage imageNamed:StringFromEigenvalueOfASquareMatrixData(&app_shareStr)] forState:UIControlStateNormal];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateHighlighted];
    [_myQRCodeBtn setImage:[UIImage imageNamed:StringFromEigenvalueOfASquareMatrixData(&app_shareStr)] forState:UIControlStateHighlighted];
    //: [self addSubview:_myQRCodeBtn];
    [self addSubview:_myQRCodeBtn];
    //: [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
    [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(titleLable);
        make.centerY.mas_equalTo(titleLable);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];



}

//: @end
@end

Byte *EigenvalueOfASquareMatrixDataToByte(EigenvalueOfASquareMatrixData *data) {
    if (data->searchValueOf < 150) return data->textCover;
    for (int i = 0; i < data->dotOf; i++) {
        data->textCover[i] ^= data->imageBack;
    }
    data->textCover[data->dotOf] = 0;
    data->searchValueOf = 80;
	if (data->dotOf >= 3) {
		data->with = data->textCover[0];
		data->windowCollection = data->textCover[1];
		data->evidence = data->textCover[2];
	}
    return data->textCover;
}

NSString *StringFromEigenvalueOfASquareMatrixData(EigenvalueOfASquareMatrixData *data) {
    return [NSString stringWithUTF8String:(char *)EigenvalueOfASquareMatrixDataToByte(data)];
}
