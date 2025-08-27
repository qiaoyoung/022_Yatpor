
#import <Foundation/Foundation.h>

@interface OnData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OnData

+ (instancetype)sharedInstance {
    static OnData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)OnDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)OnDataToCache:(Byte *)data {
    int stateShow = data[0];
    Byte offVertical = data[1];
    int worldwide = data[2];
    for (int i = worldwide; i < worldwide + stateShow; i++) {
        int value = data[i] - offVertical;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[worldwide + stateShow] = 0;
    return data + worldwide;
}

- (NSString *)StringFromOnData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OnDataToCache:data]];
}

//: activity_modify_new
- (NSString *)notiByData {
    /* static */ NSString *notiByData = nil;
    if (!notiByData) {
		NSArray<NSNumber *> *origin = @[@19, @61, @8, @109, @133, @243, @246, @214, @158, @160, @177, @166, @179, @166, @177, @182, @156, @170, @172, @161, @166, @163, @182, @156, @171, @162, @180, @69];
		NSData *data = [OnData OnDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiByData = [self StringFromOnData:value];
    }
    return notiByData;
}

//: eeeeee
- (NSString *)k_bubblePath {
    /* static */ NSString *k_bubblePath = nil;
    if (!k_bubblePath) {
		NSArray<NSNumber *> *origin = @[@6, @69, @11, @146, @109, @51, @158, @130, @88, @2, @201, @170, @170, @170, @170, @170, @170, @54];
		NSData *data = [OnData OnDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_bubblePath = [self StringFromOnData:value];
    }
    return k_bubblePath;
}

//: activity_modify_old
- (NSString *)noti_stateValue {
    /* static */ NSString *noti_stateValue = nil;
    if (!noti_stateValue) {
		NSArray<NSNumber *> *origin = @[@19, @91, @7, @79, @34, @38, @34, @188, @190, @207, @196, @209, @196, @207, @212, @186, @200, @202, @191, @196, @193, @212, @186, @202, @199, @191, @87];
		NSData *data = [OnData OnDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_stateValue = [self StringFromOnData:value];
    }
    return noti_stateValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordCell.h"
#import "ViewCell.h"

//: @interface NTESChangePasswordCell ()<UITextFieldDelegate>
@interface ViewCell ()<UITextFieldDelegate>

//: @end
@end

//: @implementation NTESChangePasswordCell
@implementation ViewCell

//: - (void)initSubviews{
- (void)initCell{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGround = [[UIView alloc] init];
    UIView *backGround = [[UIView alloc] init];
    //: backGround.backgroundColor = [UIColor whiteColor];
    backGround.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:backGround];
    [self addSubview:backGround];
    //: backGround.layer.masksToBounds = YES;
    backGround.layer.masksToBounds = YES;
    //: backGround.layer.cornerRadius = 5;
    backGround.layer.cornerRadius = 5;
    //: [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(150);
        make.height.mas_equalTo(150);
    //: }];
    }];


    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor recordView:[[OnData sharedInstance] k_bubblePath]];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(50);
        make.top.mas_offset(50);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];

    //: UIView *lineView_ = [[UIView alloc] init];
    UIView *lineView_ = [[UIView alloc] init];
    //: lineView_.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView_.backgroundColor = [UIColor recordView:[[OnData sharedInstance] k_bubblePath]];
    //: [self addSubview:lineView_];
    [self addSubview:lineView_];
    //: [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(100);
        make.top.mas_offset(100);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];


    //: _textfile_1 = [[UITextField alloc] init];
    _textfile_1 = [[UITextField alloc] init];
    //: _textfile_1.secureTextEntry = YES;
    _textfile_1.secureTextEntry = YES;
    //: _textfile_1.font = [UIFont systemFontOfSize:16];
    _textfile_1.font = [UIFont systemFontOfSize:16];
    //: _textfile_1.delegate = self;
    _textfile_1.delegate = self;
    //: _textfile_1.placeholder = [ContentLanguageManager getTextWithKey:@"activity_modify_old"];
    _textfile_1.placeholder = [MatronymicPath colorStreetwise:[[OnData sharedInstance] noti_stateValue]];//@"请输入旧密码";
    //: [backGround addSubview:_textfile_1];
    [backGround addSubview:_textfile_1];
    //: [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(5);
        make.top.mas_offset(5);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_2 = [[UITextField alloc] init];
    _textfile_2 = [[UITextField alloc] init];
    //: _textfile_2.secureTextEntry = YES;
    _textfile_2.secureTextEntry = YES;
    //: _textfile_2.font = [UIFont systemFontOfSize:16];
    _textfile_2.font = [UIFont systemFontOfSize:16];
    //: _textfile_2.delegate = self;
    _textfile_2.delegate = self;
    //: _textfile_2.placeholder = [ContentLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_2.placeholder = [MatronymicPath colorStreetwise:[[OnData sharedInstance] notiByData]];//@"请输入新密码";
    //: [backGround addSubview:_textfile_2];
    [backGround addSubview:_textfile_2];
    //: [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(55);
        make.top.mas_offset(55);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_3 = [[UITextField alloc] init];
    _textfile_3 = [[UITextField alloc] init];
    //: _textfile_3.secureTextEntry = YES;
    _textfile_3.secureTextEntry = YES;
    //: _textfile_3.font = [UIFont systemFontOfSize:16];
    _textfile_3.font = [UIFont systemFontOfSize:16];
    //: _textfile_3.delegate = self;
    _textfile_3.delegate = self;
    //: _textfile_3.placeholder = [ContentLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_3.placeholder = [MatronymicPath colorStreetwise:[[OnData sharedInstance] notiByData]];//@"请确认新密码";
    //: [backGround addSubview:_textfile_3];
    [backGround addSubview:_textfile_3];
    //: [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(105);
        make.top.mas_offset(105);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

}

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [textField resignFirstResponder];
    [textField resignFirstResponder];
    //: return YES;
    return YES;
}

//: @end
@end
