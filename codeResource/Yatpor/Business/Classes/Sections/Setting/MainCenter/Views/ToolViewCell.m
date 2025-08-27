
#import <Foundation/Foundation.h>

@interface TingData : NSObject

+ (instancetype)sharedInstance;

//: #333333
@property (nonatomic, copy) NSString *dream_commentData;

//: #EEEEEE
@property (nonatomic, copy) NSString *dreamOperationPath;

//: head_default
@property (nonatomic, copy) NSString *app_redValue;

//: black_list_item_remove
@property (nonatomic, copy) NSString *app_windowIdent;

//: #5D5F66
@property (nonatomic, copy) NSString *main_dotTextData;

//: #F6F6F6
@property (nonatomic, copy) NSString *mShareGrayName;

//: _UITableViewCellSeparatorView
@property (nonatomic, copy) NSString *main_containerFrameFormat;

@end

@implementation TingData

+ (instancetype)sharedInstance {
    static TingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TingDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)TingDataToCache:(Byte *)data {
    int grayData = data[0];
    Byte confirmation = data[1];
    int orientation = data[2];
    for (int i = orientation; i < orientation + grayData; i++) {
        int value = data[i] - confirmation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[orientation + grayData] = 0;
    return data + orientation;
}

- (NSString *)StringFromTingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TingDataToCache:data]];
}

//: head_default
- (NSString *)app_redValue {
    if (!_app_redValue) {
		NSArray<NSNumber *> *origin = @[@12, @69, @6, @128, @114, @235, @173, @170, @166, @169, @164, @169, @170, @171, @166, @186, @177, @185, @135];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_redValue = [self StringFromTingData:value];
    }
    return _app_redValue;
}

//: #F6F6F6
- (NSString *)mShareGrayName {
    if (!_mShareGrayName) {
		NSArray<NSNumber *> *origin = @[@7, @11, @7, @244, @173, @148, @193, @46, @81, @65, @81, @65, @81, @65, @12];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mShareGrayName = [self StringFromTingData:value];
    }
    return _mShareGrayName;
}

//: #5D5F66
- (NSString *)main_dotTextData {
    if (!_main_dotTextData) {
		NSArray<NSNumber *> *origin = @[@7, @1, @8, @31, @76, @88, @181, @188, @36, @54, @69, @54, @71, @55, @55, @100];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_dotTextData = [self StringFromTingData:value];
    }
    return _main_dotTextData;
}

//: black_list_item_remove
- (NSString *)app_windowIdent {
    if (!_app_windowIdent) {
		NSArray<NSNumber *> *origin = @[@22, @96, @3, @194, @204, @193, @195, @203, @191, @204, @201, @211, @212, @191, @201, @212, @197, @205, @191, @210, @197, @205, @207, @214, @197, @82];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_windowIdent = [self StringFromTingData:value];
    }
    return _app_windowIdent;
}

//: #333333
- (NSString *)dream_commentData {
    if (!_dream_commentData) {
		NSArray<NSNumber *> *origin = @[@7, @46, @9, @248, @220, @172, @150, @74, @224, @81, @97, @97, @97, @97, @97, @97, @4];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_commentData = [self StringFromTingData:value];
    }
    return _dream_commentData;
}

//: #EEEEEE
- (NSString *)dreamOperationPath {
    if (!_dreamOperationPath) {
		NSArray<NSNumber *> *origin = @[@7, @61, @9, @92, @131, @46, @184, @215, @36, @96, @130, @130, @130, @130, @130, @130, @217];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamOperationPath = [self StringFromTingData:value];
    }
    return _dreamOperationPath;
}

//: _UITableViewCellSeparatorView
- (NSString *)main_containerFrameFormat {
    if (!_main_containerFrameFormat) {
		NSArray<NSNumber *> *origin = @[@29, @31, @3, @126, @116, @104, @115, @128, @129, @139, @132, @117, @136, @132, @150, @98, @132, @139, @139, @114, @132, @143, @128, @145, @128, @147, @142, @145, @117, @136, @132, @150, @111];
		NSData *data = [TingData TingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_containerFrameFormat = [self StringFromTingData:value];
    }
    return _main_containerFrameFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "ToolViewCell.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESContactDataMember.h"
#import "EmptyOption.h"
//: #import "NTESSessionUtil.h"
#import "LanguageUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation ToolViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initSend];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)viewCellWithPeriodicTable:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"ToolViewCell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ToolViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ToolViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initSend {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor recordView:[TingData sharedInstance].mShareGrayName];
    //: bodyView.layer.cornerRadius = 16;
    bodyView.layer.cornerRadius = 16;
    //: [self.contentView addSubview:bodyView];
    [self.contentView addSubview:bodyView];

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.cornerRadius = 24;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [bodyView addSubview:_avatarImageView];
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
    _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_cancleBtn setTitle:[ContentLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[MatronymicPath colorStreetwise:[TingData sharedInstance].app_windowIdent] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(allowVoice) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor recordView:[TingData sharedInstance].main_dotTextData] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor recordView:[TingData sharedInstance].dreamOperationPath].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)current:(EmptyOption *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [LanguageUtil searchedSession:member.info.infoId session:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)storage:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: ContentKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    ViewInfo *info = [[UserKit totalSend] color:data.userId image:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[TingData sharedInstance].app_redValue]];
}


//: - (void)onTouchButton {
- (void)allowVoice {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(replies:)] || [self.delegate respondsToSelector:@selector(impressioning:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate impressioning:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate replies:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([TingData sharedInstance].main_containerFrameFormat) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor recordView:[TingData sharedInstance].dream_commentData];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end
