
#import <Foundation/Foundation.h>

@interface TextData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TextData

+ (instancetype)sharedInstance {
    static TextData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TextDataToData:(NSString *)value {
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

- (Byte *)TextDataToCache:(Byte *)data {
    int collection = data[0];
    Byte endButton = data[1];
    int vertical = data[2];
    for (int i = vertical; i < vertical + collection; i++) {
        int value = data[i] - endButton;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[vertical + collection] = 0;
    return data + vertical;
}

- (NSString *)StringFromTextData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TextDataToCache:data]];
}

//: activity_add_friend_my_request
- (NSString *)kBlueWithFormat {
    /* static */ NSString *kBlueWithFormat = nil;
    if (!kBlueWithFormat) {
		NSString *origin = @"1E0309342C6F1E4C216466776C796C777C626467676269756C68716762707C6275687478687677E0";
		NSData *data = [TextData TextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kBlueWithFormat = [self StringFromTextData:value];
    }
    return kBlueWithFormat;
}

//: activity_add_friend_my_is
- (NSString *)mButtonText {
    /* static */ NSString *mButtonText = nil;
    if (!mButtonText) {
		NSString *origin = @"1917058DDE787A8B808D808B9076787B7B767D89807C857B76849076808A69";
		NSData *data = [TextData TextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mButtonText = [self StringFromTextData:value];
    }
    return mButtonText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardVerificationCell.h"
#import "RangeView.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"

//: @interface NTESCardVerificationCell ()<UITextViewDelegate>
@interface RangeView ()<UITextViewDelegate>
//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) LanguageSizeView *rowData;
//: @end
@end

//: @implementation NTESCardVerificationCell
@implementation RangeView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.userInteractionEnabled = NO;
        self.userInteractionEnabled = NO;

//        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.textColor = [UIColor lightGrayColor];
//        _titleLabel.text = @"填写验证信息";
//        _titleLabel.font = [UIFont systemFontOfSize:14];
//        [self addSubview:_titleLabel];
//        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(15);
//            make.top.mas_offset(-10);
//            make.width.mas_equalTo(100);
//            make.height.mas_equalTo(20);
//        }];

//        UIView *background = [[UIView alloc] init];
//        background.backgroundColor = [UIColor whiteColor];
//        [self addSubview:background];
//        [background mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(0);
//            make.height.mas_equalTo(100);
//        }];
//

        //: NSString *activity_add_friend_my_is = [ContentLanguageManager getTextWithKey:@"activity_add_friend_my_is"];
        NSString *activity_add_friend_my_is = [MatronymicPath colorStreetwise:[[TextData sharedInstance] mButtonText]];
        //: NSString *activity_add_friend_my_request = [ContentLanguageManager getTextWithKey:@"activity_add_friend_my_request"];
        NSString *activity_add_friend_my_request = [MatronymicPath colorStreetwise:[[TextData sharedInstance] kBlueWithFormat]];

        //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
        NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];

        //: _textView = [[UITextView alloc] init];
        _textView = [[UITextView alloc] init];
        //: _textView.delegate = self;
        _textView.delegate = self;
        //: _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        //: _textView.returnKeyType = UIReturnKeyDone;
        _textView.returnKeyType = UIReturnKeyDone;
        //: [self.contentView addSubview:_textView];
        [self.contentView addSubview:_textView];
        //: _textView.layer.masksToBounds = YES;
        _textView.layer.masksToBounds = YES;
        //: _textView.layer.cornerRadius = 6.;
        _textView.layer.cornerRadius = 6.;
        //: _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        //: _textView.layer.borderWidth = 0.7;
        _textView.layer.borderWidth = 0.7;
        //: [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.top.mas_offset(10);
            make.top.mas_offset(10);
            //: make.bottom.mas_offset(-10);
            make.bottom.mas_offset(-10);
        //: }];
        }];


    }
    //: return self;
    return self;
}
//: - (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    //: return YES;
    return YES;
}

//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    //: [NIMUserDefaults standardUserDefaults].tempVerificationInfo = textView.text;
    [NameDefaults argument].tempVerificationInfo = textView.text;

    //: if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
    if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
        //在这里做你响应return键的代码
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
        //: return NO; 
        return NO; //这里返回NO，就代表return键值失效，即页面上按下return，不会出现换行，如果为yes，则输入页面会换行
    }
    //: return YES;
    return YES;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView{

    //: _rowData = rowData;
    _rowData = rowData;

}
//: @end
@end
