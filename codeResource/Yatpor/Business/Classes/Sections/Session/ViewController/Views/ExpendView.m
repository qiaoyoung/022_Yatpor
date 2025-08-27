
#import <Foundation/Foundation.h>

typedef struct {
    Byte buttonComment;
    Byte *foam;
    unsigned int viewRelation;
	int containerGray;
	int defrayal;
} StructInvestData;

@interface InvestData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation InvestData

+ (instancetype)sharedInstance {
    static InvestData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InvestDataToByte:(StructInvestData *)data {
    for (int i = 0; i < data->viewRelation; i++) {
        data->foam[i] ^= data->buttonComment;
    }
    data->foam[data->viewRelation] = 0;
	if (data->viewRelation >= 2) {
		data->containerGray = data->foam[0];
		data->defrayal = data->foam[1];
	}
    return data->foam;
}

- (NSString *)StringFromInvestData:(StructInvestData *)data {
    return [NSString stringWithUTF8String:(char *)[self InvestDataToByte:data]];
}

//: activity_pay_psw_input
- (NSString *)userCreasedContent {
    /* static */ NSString *userCreasedContent = nil;
    if (!userCreasedContent) {
        StructInvestData value = (StructInvestData){19, (Byte []){114, 112, 103, 122, 101, 122, 103, 106, 76, 99, 114, 106, 76, 99, 96, 100, 76, 122, 125, 99, 102, 103, 195}, 22, 135, 26};
        userCreasedContent = [self StringFromInvestData:&value];
    }
    return userCreasedContent;
}

//: red_packet
- (NSString *)showFlameIdent {
    /* static */ NSString *showFlameIdent = nil;
    if (!showFlameIdent) {
        StructInvestData value = (StructInvestData){72, (Byte []){58, 45, 44, 23, 56, 41, 43, 35, 45, 60, 4}, 10, 49, 164};
        showFlameIdent = [self StringFromInvestData:&value];
    }
    return showFlameIdent;
}

//: #333333
- (NSString *)show_scaleName {
    /* static */ NSString *show_scaleName = nil;
    if (!show_scaleName) {
        StructInvestData value = (StructInvestData){3, (Byte []){32, 48, 48, 48, 48, 48, 48, 239}, 7, 36, 247};
        show_scaleName = [self StringFromInvestData:&value];
    }
    return show_scaleName;
}

//: icon_redpackage_money
- (NSString *)dream_imageTitle {
    /* static */ NSString *dream_imageTitle = nil;
    if (!dream_imageTitle) {
        StructInvestData value = (StructInvestData){62, (Byte []){87, 93, 81, 80, 97, 76, 91, 90, 78, 95, 93, 85, 95, 89, 91, 97, 83, 81, 80, 91, 71, 192}, 21, 20, 32};
        dream_imageTitle = [self StringFromInvestData:&value];
    }
    return dream_imageTitle;
}

//: #888888
- (NSString *)k_usData {
    /* static */ NSString *k_usData = nil;
    if (!k_usData) {
        StructInvestData value = (StructInvestData){125, (Byte []){94, 69, 69, 69, 69, 69, 69, 75}, 7, 60, 98};
        k_usData = [self StringFromInvestData:&value];
    }
    return k_usData;
}

//: #C7E8CA
- (NSString *)kShowTableIdent {
    /* static */ NSString *kShowTableIdent = nil;
    if (!kShowTableIdent) {
        StructInvestData value = (StructInvestData){136, (Byte []){171, 203, 191, 205, 176, 203, 201, 170}, 7, 233, 25};
        kShowTableIdent = [self StringFromInvestData:&value];
    }
    return kShowTableIdent;
}

//: #D6D6D6
- (NSString *)app_teamPath {
    /* static */ NSString *app_teamPath = nil;
    if (!app_teamPath) {
        StructInvestData value = (StructInvestData){168, (Byte []){139, 236, 158, 236, 158, 236, 158, 26}, 7, 126, 166};
        app_teamPath = [self StringFromInvestData:&value];
    }
    return app_teamPath;
}

//: change
- (NSString *)notiGrayKey {
    /* static */ NSString *notiGrayKey = nil;
    if (!notiGrayKey) {
        StructInvestData value = (StructInvestData){215, (Byte []){180, 191, 182, 185, 176, 178, 185}, 6, 239, 76};
        notiGrayKey = [self StringFromInvestData:&value];
    }
    return notiGrayKey;
}

//: amount
- (NSString *)dream_endIdent {
    /* static */ NSString *dream_endIdent = nil;
    if (!dream_endIdent) {
        StructInvestData value = (StructInvestData){58, (Byte []){91, 87, 85, 79, 84, 78, 45}, 6, 191, 68};
        dream_endIdent = [self StringFromInvestData:&value];
    }
    return dream_endIdent;
}

//: icon_redpackage_close
- (NSString *)app_containerKey {
    /* static */ NSString *app_containerKey = nil;
    if (!app_containerKey) {
        StructInvestData value = (StructInvestData){206, (Byte []){167, 173, 161, 160, 145, 188, 171, 170, 190, 175, 173, 165, 175, 169, 171, 145, 173, 162, 161, 189, 171, 82}, 21, 88, 69};
        app_containerKey = [self StringFromInvestData:&value];
    }
    return app_containerKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExpendView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPackagePaySheet.h"
#import "ExpendView.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "TPPasswordTextView.h"
#import "PasswordView.h"

//: @interface NTESRedPackagePaySheet ()
@interface ExpendView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UITextField *textfield;
@property (nonatomic,strong) UITextField *textfield;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @end
@end

//: @implementation NTESRedPackagePaySheet
@implementation ExpendView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithMark:(CGRect)frame account:(NSDictionary *)dictionary{

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

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[[InvestData sharedInstance] app_containerKey]] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(slightPicker) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.top.mas_offset(7.5);
            make.top.mas_offset(7.5);
            //: make.width.mas_equalTo(35);
            make.width.mas_equalTo(35);
            //: make.height.mas_equalTo(35);
            make.height.mas_equalTo(35);
        //: }];
        }];



        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor colorWithHexString:@"#333333"];
        titleLabel_1.textColor = [UIColor recordView:[[InvestData sharedInstance] show_scaleName]];
        //: titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        //: titleLabel_1.text = [ContentLanguageManager getTextWithKey:@"activity_pay_psw_input"];
        titleLabel_1.text = [MatronymicPath colorStreetwise:[[InvestData sharedInstance] userCreasedContent]];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_offset(100);
            make.left.mas_offset(100);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

        //: UIView *line = [[UIView alloc] init];
        UIView *line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#C7E8CA"];
        line.backgroundColor = [UIColor recordView:[[InvestData sharedInstance] kShowTableIdent]];
        //: [_backView addSubview:line];
        [_backView addSubview:line];
        //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
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

        //: UILabel *title = [[UILabel alloc] init];
        UILabel *title = [[UILabel alloc] init];
        //: title.textAlignment = NSTextAlignmentCenter;
        title.textAlignment = NSTextAlignmentCenter;
        //: title.textColor = [UIColor blackColor];
        title.textColor = [UIColor blackColor];
        //: title.font = [UIFont systemFontOfSize:15];
        title.font = [UIFont systemFontOfSize:15];
        //: title.text = [ContentLanguageManager getTextWithKey:@"red_packet"];
        title.text = [MatronymicPath colorStreetwise:[[InvestData sharedInstance] showFlameIdent]];
        //: [_backView addSubview:title];
        [_backView addSubview:title];
        //: [title mas_makeConstraints:^(MASConstraintMaker *make) {
        [title mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(60);
            make.top.mas_offset(60);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.textAlignment = NSTextAlignmentCenter;
        //: amountLabel.textColor = [UIColor blackColor];
        amountLabel.textColor = [UIColor blackColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:30];
        amountLabel.font = [UIFont boldSystemFontOfSize:30];
        //: amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary newStringValueForKey:@"amount"]];
        amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary to:[[InvestData sharedInstance] dream_endIdent]]];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
        //: }];
        }];

        //: UIView *blackLine = [[UIView alloc] init];
        UIView *blackLine = [[UIView alloc] init];
        //: blackLine.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine.backgroundColor = [UIColor recordView:[[InvestData sharedInstance] app_teamPath]];
        //: [_backView addSubview:blackLine];
        [_backView addSubview:blackLine];
        //: [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(150);
            make.top.mas_offset(150);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];

        //: UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        //: iconImage.image = [UIImage imageNamed:@"icon_redpackage_money"];
        iconImage.image = [UIImage imageNamed:[[InvestData sharedInstance] dream_imageTitle]];
        //: [_backView addSubview:iconImage];
        [_backView addSubview:iconImage];

        //: UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        //: lingq.textColor = [UIColor colorWithHexString:@"#888888"];
        lingq.textColor = [UIColor recordView:[[InvestData sharedInstance] k_usData]];
        //: lingq.font = [UIFont systemFontOfSize:15];
        lingq.font = [UIFont systemFontOfSize:15];
        //: lingq.text = @"change";
        lingq.text = [[InvestData sharedInstance] notiGrayKey];
        //: [_backView addSubview:lingq];
        [_backView addSubview:lingq];


        //: UIView *blackLine_2 = [[UIView alloc] init];
        UIView *blackLine_2 = [[UIView alloc] init];
        //: blackLine_2.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine_2.backgroundColor = [UIColor recordView:[[InvestData sharedInstance] app_teamPath]];
        //: [_backView addSubview:blackLine_2];
        [_backView addSubview:blackLine_2];
        //: [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(200);
            make.top.mas_offset(200);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];


        //: CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        //: TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:rect];
        PasswordView *view1 = [[PasswordView alloc] initWithFrame:rect];
        //: view1.elementCount = 6;
        view1.elementCount = 6;
        //: view1.elementBorderColor = [UIColor lightGrayColor];
        view1.elementBorderColor = [UIColor lightGrayColor];
        //: [_backView addSubview:view1];
        [_backView addSubview:view1];
        //: view1.passwordDidChangeBlock = ^(NSString *password) {
        view1.passwordDidChangeBlock = ^(NSString *password) {

            //: if (password.length == 6) {
            if (password.length == 6) {
                //: _block(password);
                _block(password);
                //: [self dismissPicker];
                [self slightPicker];
            }
        //: };
        };

        //: [self reloadHeader];
        [self streetSmart];
    }
    //: return self;
    return self;
}


//: -(void)reloadHeader{
-(void)streetSmart{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ViewInfo *info = [[UserKit totalSend] color:userID image:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
}

//: -(void)handleSingleTapFrom{
-(void)convertAuto{
    //: [self dismissPicker];
    [self slightPicker];
}

//: - (void)show{
- (void)device{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
        [self->_backView setBottomDirection:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice bearDown]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
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

//: -(void)finshInputPassword:(PayPasswordBlock)block{
-(void)signaling:(PayPasswordBlock)block{
    //: _block = block;
    _block = block;
}

//: @end
@end
