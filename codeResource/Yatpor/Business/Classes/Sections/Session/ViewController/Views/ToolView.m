
#import <Foundation/Foundation.h>

NSString *StringFromSearchTextData(Byte *data);


//: redid
Byte kDiseasePath[] = {64, 5, 47, 11, 196, 255, 91, 132, 232, 140, 14, 161, 148, 147, 152, 147, 233};

//: words
Byte noti_thirtyInfoText[] = {31, 5, 26, 6, 248, 209, 145, 137, 140, 126, 141, 141};

//: user_id
Byte mDismissComfortTitle[] = {96, 7, 37, 5, 237, 154, 152, 138, 151, 132, 142, 137, 70};

//: /wallet/redDetail
Byte app_clayMessage[] = {87, 17, 78, 5, 221, 125, 197, 175, 186, 186, 179, 194, 125, 192, 179, 178, 146, 179, 194, 175, 183, 186, 138};

//: icon_redpackage_open_close
Byte dream_comfortCoverFormat[] = {23, 26, 36, 8, 72, 193, 215, 120, 141, 135, 147, 146, 131, 150, 137, 136, 148, 133, 135, 143, 133, 139, 137, 131, 147, 148, 137, 146, 131, 135, 144, 147, 151, 137, 226};

//: Congratulations on your fortune
Byte m_enableImageKey[] = {62, 31, 50, 4, 117, 161, 160, 153, 164, 147, 166, 167, 158, 147, 166, 155, 161, 160, 165, 82, 161, 160, 82, 171, 161, 167, 164, 82, 152, 161, 164, 166, 167, 160, 151, 30};

//: unclaimed
Byte dreamRangeStr[] = {74, 9, 54, 7, 221, 254, 48, 171, 164, 153, 162, 151, 159, 163, 155, 154, 111};

//: amount
Byte user_accountViewUrl[] = {38, 6, 8, 11, 19, 81, 252, 223, 195, 95, 78, 105, 117, 119, 125, 118, 124, 57};

//: The balance has been deposited and can be withdrawn directly>>
Byte show_thickName[] = {64, 62, 91, 4, 175, 195, 192, 123, 189, 188, 199, 188, 201, 190, 192, 123, 195, 188, 206, 123, 189, 192, 192, 201, 123, 191, 192, 203, 202, 206, 196, 207, 192, 191, 123, 188, 201, 191, 123, 190, 188, 201, 123, 189, 192, 123, 210, 196, 207, 195, 191, 205, 188, 210, 201, 123, 191, 196, 205, 192, 190, 207, 199, 212, 153, 153, 69};

//: #FFD7C4
Byte main_textViewName[] = {20, 7, 47, 8, 197, 248, 184, 42, 82, 117, 117, 115, 102, 114, 99, 100};

//: team_red_adapter_yuan
Byte kKeyIdent[] = {74, 21, 33, 10, 17, 246, 106, 120, 149, 237, 149, 134, 130, 142, 128, 147, 134, 133, 128, 130, 133, 130, 145, 149, 134, 147, 128, 154, 150, 130, 143, 158};

//: redinfo
Byte notiMagnitudeMessage[] = {6, 7, 48, 6, 106, 251, 162, 149, 148, 153, 158, 150, 159, 111};

//: data
Byte m_scaleMsg[] = {83, 4, 62, 11, 198, 201, 39, 123, 3, 7, 249, 162, 159, 178, 159, 248};

//: start
Byte m_frameStr[] = {18, 5, 70, 7, 192, 21, 215, 185, 186, 167, 184, 186, 100};

//: #FE9FA8
Byte appArmyUrl[] = {16, 7, 20, 8, 178, 23, 111, 187, 55, 90, 89, 77, 90, 85, 76, 137};

//: list
Byte mainOperationValue[] = {72, 4, 98, 5, 194, 206, 203, 213, 214, 184};

//: #FDA6A4
Byte userDoingMsg[] = {51, 7, 99, 5, 99, 134, 169, 167, 164, 153, 164, 151, 103};

//: View pick-up details>>
Byte mRedId[] = {34, 22, 20, 10, 255, 211, 5, 56, 78, 25, 106, 125, 121, 139, 52, 132, 125, 119, 127, 65, 137, 132, 52, 120, 121, 136, 117, 125, 128, 135, 82, 82, 41};

//: icon_redpackage_open_back
Byte dreamCoverName[] = {89, 25, 4, 8, 47, 100, 77, 156, 109, 103, 115, 114, 99, 118, 105, 104, 116, 101, 103, 111, 101, 107, 105, 99, 115, 116, 105, 114, 99, 102, 101, 103, 111, 143};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "ToolView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface ToolView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @property (nonatomic,strong) UILabel *sendNickname;
@property (nonatomic,strong) UILabel *sendNickname;
//: @property (nonatomic,strong) UILabel *amountLabel;
@property (nonatomic,strong) UILabel *amountLabel;
//: @property (nonatomic,strong) UILabel *unitLabel;
@property (nonatomic,strong) UILabel *unitLabel;
//: @property (nonatomic,strong) UILabel *wordLabel;
@property (nonatomic,strong) UILabel *wordLabel;

//: @end
@end

//: @implementation NTESOpenRedPackageSheet
@implementation ToolView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithFile:(CGRect)frame value:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(convertAuto)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];





        //: UIImageView *backImage = [[UIImageView alloc] init];
        UIImageView *backImage = [[UIImageView alloc] init];
        //: backImage.image = [UIImage imageNamed:@"icon_redpackage_open_back"];
        backImage.image = [UIImage imageNamed:StringFromSearchTextData(dreamCoverName)];
        //: backImage.clipsToBounds = YES;
        backImage.clipsToBounds = YES;
        //: backImage.contentMode = UIViewContentModeScaleAspectFill;
        backImage.contentMode = UIViewContentModeScaleAspectFill;
        //: [_backView addSubview:backImage];
        [_backView addSubview:backImage];
        //: [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.right.mas_equalTo(0);
            make.right.mas_equalTo(0);
            //: make.bottom.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
        //: }];
        }];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.width.mas_equalTo(30);
            make.width.mas_equalTo(30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //昵称
        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor whiteColor];
        titleLabel_1.textColor = [UIColor whiteColor];
        //: titleLabel_1.font = [UIFont systemFontOfSize:16];
        titleLabel_1.font = [UIFont systemFontOfSize:16];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: _sendNickname = titleLabel_1;
        _sendNickname = titleLabel_1;
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

//        UIView *line = [[UIView alloc] init];
//        line.backgroundColor = RGB_COLOR_String(@"#C7E8CA");
//        [_backView addSubview:line];
//        [line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(50);
//            make.height.mas_equalTo(1);
//        }];
//


        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentLeft;
        amountLabel.textAlignment = NSTextAlignmentLeft;
        //: amountLabel.textColor = [UIColor whiteColor];
        amountLabel.textColor = [UIColor whiteColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:36];
        amountLabel.font = [UIFont boldSystemFontOfSize:36];
        //: [amountLabel sizeToFit];
        [amountLabel sizeToFit];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: _amountLabel = amountLabel;
        _amountLabel = amountLabel;
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(50);
            make.width.mas_equalTo(50);
        //: }];
        }];

        //: _unitLabel = [[UILabel alloc] init];
        _unitLabel = [[UILabel alloc] init];
        //: _unitLabel.textAlignment = NSTextAlignmentLeft;
        _unitLabel.textAlignment = NSTextAlignmentLeft;
        //: _unitLabel.textColor = [UIColor whiteColor];
        _unitLabel.textColor = [UIColor whiteColor];
        //: _unitLabel.font = [UIFont systemFontOfSize:15];
        _unitLabel.font = [UIFont systemFontOfSize:15];
        //: _unitLabel.text = [FFFLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [MatronymicPath colorStreetwise:StringFromSearchTextData(kKeyIdent)];
        //: [_backView addSubview:_unitLabel];
        [_backView addSubview:_unitLabel];
        //: [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(110);
            make.top.mas_offset(110);
            //: make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            //: make.width.mas_equalTo(20);
            make.width.mas_equalTo(20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];



        //: UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        //: content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: content.titleLabel.font = [UIFont systemFontOfSize:13];
        content.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [content setTitle:@"The balance has been deposited and can be withdrawn directly>>" forState:UIControlStateNormal];
        [content setTitle:StringFromSearchTextData(show_thickName) forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor recordView:StringFromSearchTextData(main_textViewName)] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(screenImage) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [content mas_makeConstraints:^(MASConstraintMaker *make) {
        [content mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(145);
            make.top.mas_offset(145);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];


        //: UILabel *words = [[UILabel alloc] init];
        UILabel *words = [[UILabel alloc] init];
        //: words.textAlignment = NSTextAlignmentCenter;
        words.textAlignment = NSTextAlignmentCenter;
        //: words.textColor = [UIColor colorWithHexString:@"#FE9FA8"];
        words.textColor = [UIColor recordView:StringFromSearchTextData(appArmyUrl)];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = StringFromSearchTextData(m_enableImageKey);
        //: [_backView addSubview:words];
        [_backView addSubview:words];
        //: _wordLabel = words;
        _wordLabel = words;
        //: [words mas_makeConstraints:^(MASConstraintMaker *make) {
        [words mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(190);
            make.top.mas_offset(190);
            //: make.left.mas_offset(10);
            make.left.mas_offset(10);
            //: make.right.mas_equalTo(-10);
            make.right.mas_equalTo(-10);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [moreBtn setTitle:@"View pick-up details>>" forState:UIControlStateNormal];
        [moreBtn setTitle:StringFromSearchTextData(mRedId) forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor recordView:StringFromSearchTextData(userDoingMsg)] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(extentDate) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:moreBtn];
        [_backView addSubview:moreBtn];
        //: [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.bottom.mas_offset(-15);
            make.bottom.mas_offset(-15);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_open_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:StringFromSearchTextData(dream_comfortCoverFormat)] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(slightPicker) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:closeButton];
        [self addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 25;
        closeButton.layer.cornerRadius = 25;
        //: closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: closeButton.layer.borderWidth = 2;
        closeButton.layer.borderWidth = 2;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.height.mas_equalTo(50);
            make.width.height.mas_equalTo(50);
        //: }];
        }];



        //: [self requestRedDetail];
        [self input];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)input{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[StringFromSearchTextData(kDiseasePath)] = [_originDict to:StringFromSearchTextData(kDiseasePath)];
    //: dict[@"start"] = @"1";
    dict[StringFromSearchTextData(m_frameStr)] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:StringFromSearchTextData(app_clayMessage)] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict arrayMust:StringFromSearchTextData(m_scaleMsg)];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data arrayMust:StringFromSearchTextData(notiMagnitudeMessage)];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data direction:StringFromSearchTextData(mainOperationValue)];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo to:StringFromSearchTextData(noti_thirtyInfoText)];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self bit:[redinfo to:StringFromSearchTextData(mDismissComfortTitle)]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item to:StringFromSearchTextData(mDismissComfortTitle)] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = StringFromSearchTextData(dreamRangeStr);
            //: [_amountLabel sizeToFit];
            [_amountLabel sizeToFit];
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: _unitLabel.hidden = YES;
            _unitLabel.hidden = YES;
        //: }else{
        }else{
            //: _unitLabel.hidden = NO;
            _unitLabel.hidden = NO;
            //: NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict newStringValueForKey:@"amount"]];
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict to:StringFromSearchTextData(user_accountViewUrl)]];
            //: _amountLabel.text = amount;
            _amountLabel.text = amount;
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
                make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
            //: }];
            }];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)screenImage{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(tableSession)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate tableSession];
        //: [self dismissPicker];
        [self slightPicker];
    }
}

//: -(void)redpackageDetail{
-(void)extentDate{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(infos:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate infos:[_originDict to:StringFromSearchTextData(kDiseasePath)]];
        //: [self dismissPicker];
        [self slightPicker];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)bit:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ViewInfo *info = [[UserKit totalSend] color:userID image:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    //: _sendNickname.text = me.userInfo.nickName;
    _sendNickname.text = me.userInfo.nickName;
}

//: -(void)handleSingleTapFrom{
-(void)convertAuto{
    //: [self dismissPicker];
    [self slightPicker];
}

//: - (void)show{
- (void)totUp{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setBottomDirection:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice bearDown]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)slightPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setBottomDirection:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: @end
@end

Byte * SearchTextDataToCache(Byte *data) {
    int draw = data[0];
    int bubbleEnd = data[1];
    Byte eyewitness = data[2];
    int scaleFlame = data[3];
    if (!draw) return data + scaleFlame;
    for (int i = scaleFlame; i < scaleFlame + bubbleEnd; i++) {
        int value = data[i] - eyewitness;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[scaleFlame + bubbleEnd] = 0;
    return data + scaleFlame;
}

NSString *StringFromSearchTextData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SearchTextDataToCache(data)];
}
