
#import <Foundation/Foundation.h>

typedef struct {
    Byte hullo;
    Byte *teamShallow;
    unsigned int halfwayJoke;
	int man;
} StructWheatCussData;

@interface WheatCussData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WheatCussData

+ (instancetype)sharedInstance {
    static WheatCussData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WheatCussDataToData:(NSString *)value {
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

- (Byte *)WheatCussDataToByte:(StructWheatCussData *)data {
    for (int i = 0; i < data->halfwayJoke; i++) {
        data->teamShallow[i] ^= data->hullo;
    }
    data->teamShallow[data->halfwayJoke] = 0;
	if (data->halfwayJoke >= 1) {
		data->man = data->teamShallow[0];
	}
    return data->teamShallow;
}

- (NSString *)StringFromWheatCussData:(StructWheatCussData *)data {
    return [NSString stringWithUTF8String:(char *)[self WheatCussDataToByte:data]];
}

//: ic_nodistrub_g
- (NSString *)m_keyIdent {
    /* static */ NSString *m_keyIdent = nil;
    if (!m_keyIdent) {
		NSString *origin = @"060C3001000B061C1B1D1A0D300855";
		NSData *data = [WheatCussData WheatCussDataToData:origin];
        StructWheatCussData value = (StructWheatCussData){111, (Byte *)data.bytes, 14, 103};
        m_keyIdent = [self StringFromWheatCussData:&value];
    }
    return m_keyIdent;
}

//: #333333
- (NSString *)app_defendMessage {
    /* static */ NSString *app_defendMessage = nil;
    if (!app_defendMessage) {
		NSString *origin = @"D9C9C9C9C9C9C9F8";
		NSData *data = [WheatCussData WheatCussDataToData:origin];
        StructWheatCussData value = (StructWheatCussData){250, (Byte *)data.bytes, 7, 112};
        app_defendMessage = [self StringFromWheatCussData:&value];
    }
    return app_defendMessage;
}

//: #9B9EA8
- (NSString *)user_burdenStr {
    /* static */ NSString *user_burdenStr = nil;
    if (!user_burdenStr) {
		NSString *origin = @"1D077C077B7F065C";
		NSData *data = [WheatCussData WheatCussDataToData:origin];
        StructWheatCussData value = (StructWheatCussData){62, (Byte *)data.bytes, 7, 141};
        user_burdenStr = [self StringFromWheatCussData:&value];
    }
    return user_burdenStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.m
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionListCell.h"
#import "ReasonConferenceViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "MessageSendView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "NTESBadgeView.h"
#import "DoingView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"

//: @implementation FFFSessionListCell
@implementation ReasonConferenceViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.layer.borderWidth = 1;
        self.layer.borderWidth = 1;
        //: self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
        //: self.layer.masksToBounds = YES;
        self.layer.masksToBounds = YES;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,1);
        self.layer.shadowOffset = CGSizeMake(0,1);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 3;
        self.layer.shadowRadius = 3;

        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatarImageView = [[MessageSendView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.backgroundColor = [UIColor clearColor];
        _nameLabel.backgroundColor = [UIColor clearColor];
        //: _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        //: _nameLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _nameLabel.textColor = [UIColor recordView:[[WheatCussData sharedInstance] app_defendMessage]];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];

        //: _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.backgroundColor = [UIColor clearColor];
        //: _messageLabel.font = [UIFont systemFontOfSize:14.f];
        _messageLabel.font = [UIFont systemFontOfSize:14.f];
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _messageLabel.textColor = [UIColor recordView:[[WheatCussData sharedInstance] user_burdenStr]];
        //: [self.contentView addSubview:_messageLabel];
        [self.contentView addSubview:_messageLabel];

        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.backgroundColor = [UIColor clearColor];
        _timeLabel.backgroundColor = [UIColor clearColor];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _timeLabel.textColor = [UIColor recordView:[[WheatCussData sharedInstance] user_burdenStr]];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];

        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [DoingView old:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];

        //: _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: _disnodistrubImg.image = [UIImage imageNamed:@"ic_nodistrub_g"];
        _disnodistrubImg.image = [UIImage imageNamed:[[WheatCussData sharedInstance] m_keyIdent]];
        //: [self.contentView addSubview:_disnodistrubImg];
        [self.contentView addSubview:_disnodistrubImg];

    }
    //: return self;
    return self;
}




//: - (void)refresh:(NIMRecentSession*)recent{
- (void)blueCloseUpgrade:(NIMRecentSession*)recent{
    //: self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    //: self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
    self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
//    if (recent.unreadCount) {
//        self.badgeView.hidden = NO;
//        self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
//        self.disnodistrubImg.hidden = YES;
//    }else{
//        self.badgeView.hidden = YES;

        //: FFFKitInfo *info = nil;
        ViewInfo *info = nil;
        //: if (recent.session.sessionType == NIMSessionTypeTeam) {
        if (recent.session.sessionType == NIMSessionTypeTeam) {
            //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
            info = [[UserKit totalSend] search:recent.session.sessionId speedy:nil];
            //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            //: BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
            BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;
            //: if (recent.unreadCount && ishidden) {
            if (recent.unreadCount && ishidden) {
                //: self.badgeView.hidden = NO;
                self.badgeView.hidden = NO;
                //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                //: self.disnodistrubImg.hidden = YES;
                self.disnodistrubImg.hidden = YES;
            //: }else{
            }else{
                //: self.badgeView.hidden = YES;
                self.badgeView.hidden = YES;
            }

        //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        } else if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
            ImageOption *option = [[ImageOption alloc] init];
            //: option.session = recent.session;
            option.session = recent.session;
            //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
            info = [[UserKit totalSend] color:recent.session.sessionId image:option];

            //: BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
            BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;

                //: if (recent.unreadCount && ishidden) {
                if (recent.unreadCount && ishidden) {
                    //: self.badgeView.hidden = NO;
                    self.badgeView.hidden = NO;
                    //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    //: self.disnodistrubImg.hidden = YES;
                    self.disnodistrubImg.hidden = YES;
                //: }else{
                }else{
                    //: self.badgeView.hidden = YES;
                    self.badgeView.hidden = YES;
                }


        }
//    }





}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //Session List
    //: NSInteger sessionListAvatarLeft = 15;
    NSInteger sessionListAvatarLeft = 15;
    //: NSInteger sessionListNameTop = 15;
    NSInteger sessionListNameTop = 15;
    //: NSInteger sessionListNameLeftToAvatar = 15;
    NSInteger sessionListNameLeftToAvatar = 15;
    //: NSInteger sessionListMessageLeftToAvatar = 15;
    NSInteger sessionListMessageLeftToAvatar = 15;
    //: NSInteger sessionListMessageBottom = 15;
    NSInteger sessionListMessageBottom = 15;
    //: NSInteger sessionListTimeRight = 15;
    NSInteger sessionListTimeRight = 15;
    //: NSInteger sessionListTimeTop = 15;
    NSInteger sessionListTimeTop = 15;
    //: NSInteger sessionBadgeTimeBottom = 15;
    NSInteger sessionBadgeTimeBottom = 15;
    //: NSInteger sessionBadgeTimeRight = 15;
    NSInteger sessionBadgeTimeRight = 15;

    //: _avatarImageView.nim_left = sessionListAvatarLeft;
    _avatarImageView.nim_left = sessionListAvatarLeft;
    //: _avatarImageView.nim_centerY = self.nim_height * .5f;
    _avatarImageView.nim_centerY = self.nim_height * .5f;
    //: _nameLabel.nim_top = sessionListNameTop;
    _nameLabel.nim_top = sessionListNameTop;
    //: _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    //: _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    //: _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    //: _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    //: _timeLabel.nim_top = sessionListTimeTop;
    _timeLabel.nim_top = sessionListTimeTop;
    //: _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

    //: _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

}

//: @end
@end