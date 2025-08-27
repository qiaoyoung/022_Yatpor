
#import <Foundation/Foundation.h>

@interface BusinessOrganisationData : NSObject

+ (instancetype)sharedInstance;

//: icon_accessory_normal
@property (nonatomic, copy) NSString *showAssumptionPath;

//: icon_accessory_selected
@property (nonatomic, copy) NSString *app_ofPath;

//: f6f6f6
@property (nonatomic, copy) NSString *m_valueMessage;

//: head_default
@property (nonatomic, copy) NSString *appAgeTitle;

@end

@implementation BusinessOrganisationData

+ (instancetype)sharedInstance {
    static BusinessOrganisationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BusinessOrganisationDataToData:(NSString *)value {
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

- (Byte *)BusinessOrganisationDataToCache:(Byte *)data {
    int anythingRemoteEfficiency = data[0];
    Byte showPro = data[1];
    int pilotHormoneTing = data[2];
    for (int i = pilotHormoneTing; i < pilotHormoneTing + anythingRemoteEfficiency; i++) {
        int value = data[i] + showPro;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pilotHormoneTing + anythingRemoteEfficiency] = 0;
    return data + pilotHormoneTing;
}

- (NSString *)StringFromBusinessOrganisationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BusinessOrganisationDataToCache:data]];
}

//: f6f6f6
- (NSString *)m_valueMessage {
    if (!_m_valueMessage) {
		NSString *origin = @"06590ae377a8a9a3f0330ddd0ddd0dddf8";
		NSData *data = [BusinessOrganisationData BusinessOrganisationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_valueMessage = [self StringFromBusinessOrganisationData:value];
    }
    return _m_valueMessage;
}

//: icon_accessory_normal
- (NSString *)showAssumptionPath {
    if (!_showAssumptionPath) {
		NSString *origin = @"15050d95ba1cfcd174807c443e645e6a695a5c5e5e606e6e6a6d745a696a6d685c67b5";
		NSData *data = [BusinessOrganisationData BusinessOrganisationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showAssumptionPath = [self StringFromBusinessOrganisationData:value];
    }
    return _showAssumptionPath;
}

//: icon_accessory_selected
- (NSString *)app_ofPath {
    if (!_app_ofPath) {
		NSString *origin = @"1761099f3af0a1b28408020e0dfe0002020412120e1118fe12040b040213040304";
		NSData *data = [BusinessOrganisationData BusinessOrganisationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_ofPath = [self StringFromBusinessOrganisationData:value];
    }
    return _app_ofPath;
}

//: head_default
- (NSString *)appAgeTitle {
    if (!_appAgeTitle) {
		NSString *origin = @"0c480438201d191c171c1d1e192d242c2a";
		NSData *data = [BusinessOrganisationData BusinessOrganisationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appAgeTitle = [self StringFromBusinessOrganisationData:value];
    }
    return _appAgeTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDataCell.h"
#import "StreetwiseViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"

//: @interface FFFContactDataCell()
@interface StreetwiseViewCell()

//: @end
@end

//: @implementation FFFContactDataCell
@implementation StreetwiseViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor recordView:[BusinessOrganisationData sharedInstance].m_valueMessage];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[MessageSendView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(textBy:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[BusinessOrganisationData sharedInstance].showAssumptionPath] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[BusinessOrganisationData sharedInstance].app_ofPath] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [bgView addSubview:_accessoryBtn];
        [bgView addSubview:_accessoryBtn];

        //: self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        //: self.labName.textColor = [UIColor blackColor];
        self.labName.textColor = [UIColor blackColor];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        //: [bgView addSubview:self.labName];
        [bgView addSubview:self.labName];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)language:(id<AlterDate>)member {
    //: [self refreshTitle:member.showName];
    [self info:member.range];
    //: self.memberId = member.memberId;
    self.memberId = member.target;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.subIn ? [NSURL URLWithString:member.subIn] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView press:url remoteOptions:[UIImage imageNamed:[BusinessOrganisationData sharedInstance].appAgeTitle] begin:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)flush:(id<AlterDate>)member{
    //: [self refreshTitle:member.showName];
    [self info:member.range];
    //: self.memberId = [member memberId];
    self.memberId = [member target];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    ViewInfo *info = [[UserKit totalSend] color:self.memberId image:nil];
    //: [self refreshAvatar:info];
    [self sincePicture:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)voiceColor:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self info:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    ViewInfo *info = [[UserKit totalSend] search:self.memberId speedy:nil];
    //: [self refreshAvatar:info];
    [self sincePicture:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)info:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(FFFKitInfo *)info{
- (void)sincePicture:(ViewInfo *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView press:url remoteOptions:info.avatarImage begin:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)textBy:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(textBy:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate textBy:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)shareDelegate:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






//: @end
@end