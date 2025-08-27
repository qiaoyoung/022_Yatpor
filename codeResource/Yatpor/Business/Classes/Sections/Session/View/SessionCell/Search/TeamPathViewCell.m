
#import <Foundation/Foundation.h>

@interface GlobalData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GlobalData

+ (instancetype)sharedInstance {
    static GlobalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GlobalDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)GlobalDataToCache:(Byte *)data {
    int chingShow = data[0];
    Byte worry = data[1];
    int orangish = data[2];
    for (int i = orangish; i < orangish + chingShow; i++) {
        int value = data[i] - worry;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[orangish + chingShow] = 0;
    return data + orangish;
}

- (NSString *)StringFromGlobalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GlobalDataToCache:data]];
}

//: MM-dd hh:mm:ss
- (NSString *)appDotAnxiousChingMsg {
    /* static */ NSString *appDotAnxiousChingMsg = nil;
    if (!appDotAnxiousChingMsg) {
		NSArray<NSString *> *origin = @[@"14", @"74", @"7", @"83", @"246", @"243", @"102", @"151", @"151", @"119", @"174", @"174", @"106", @"178", @"178", @"132", @"183", @"183", @"132", @"189", @"189", @"188"];
		NSData *data = [GlobalData GlobalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDotAnxiousChingMsg = [self StringFromGlobalData:value];
    }
    return appDotAnxiousChingMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamPathViewCell.m
//  NIM
//
//  Created by He on 2019/12/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESKeyWordMessageCell.h"
#import "TeamPathViewCell.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: @interface NTESKeyWordMessageCell ()
@interface TeamPathViewCell ()

//: @property (nonatomic,strong) ContentAvatarImageView * avatar;
@property (nonatomic,strong) MessageSendView * avatar;

//: @property (nonatomic,strong) UILabel * nickL;
@property (nonatomic,strong) UILabel * nickL;

//: @property (nonatomic,strong) UILabel * timeL;
@property (nonatomic,strong) UILabel * timeL;

//: @end
@end

//: @implementation NTESKeyWordMessageCell
@implementation TeamPathViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: [self.contentView addSubview:self.avatar];
        [self.contentView addSubview:self.avatar];
        //: [self.contentView addSubview:self.nickL];
        [self.contentView addSubview:self.nickL];
        //: [self.contentView addSubview:self.timeL];
        [self.contentView addSubview:self.timeL];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.size = CGSizeMake(40, 40);
    self.avatar.size = CGSizeMake(40, 40);
    //: self.avatar.centerY = self.contentView.height * .5f;
    self.avatar.centerY = self.contentView.height * .5f;
    //: self.avatar.left = 15.f;
    self.avatar.left = 15.f;

    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];
    //: self.textLabel.left = self.avatar.right + 15;
    self.textLabel.left = self.avatar.right + 15;
    //: self.detailTextLabel.left = self.textLabel.left;
    self.detailTextLabel.left = self.textLabel.left;

    //: [self.nickL sizeToFit];
    [self.nickL sizeToFit];
    //: self.nickL.left = self.textLabel.right + 2;
    self.nickL.left = self.textLabel.right + 2;
    //: self.nickL.centerY = self.textLabel.centerY;
    self.nickL.centerY = self.textLabel.centerY;

    //: [self.timeL sizeToFit];
    [self.timeL sizeToFit];
    //: self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    //: self.timeL.top = self.textLabel.top;
    self.timeL.top = self.textLabel.top;
    //: self.timeL.right = self.contentView.width - 15;
    self.timeL.right = self.contentView.width - 15;

    //: self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
    self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView
{
    //: NSString * keyWord = rowData.title;
    NSString * keyWord = rowData.title;
    //: NIMMessage * message = rowData.extraInfo;
    NIMMessage * message = rowData.extraInfo;
    //: if ([message isKindOfClass:[NIMMessage class]])
    if ([message isKindOfClass:[NIMMessage class]])
    {
        //: ContentKitInfo * info = nil;
        ViewInfo * info = nil;
        //: NIMSession * session = message.session;
        NIMSession * session = message.session;
        //: if (session.sessionType == NIMSessionTypeP2P)
        if (session.sessionType == NIMSessionTypeP2P)
        {
           //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:nil];
           info = [[UserKit totalSend] color:session.sessionId image:nil];
        }
        //: else
        else
        {
            //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
            info = [[UserKit totalSend] search:session.sessionId speedy:nil];
        }

        //: if (info.avatarUrlString.length)
        if (info.avatarUrlString.length)
        {
            //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString]
            [self.avatar modelEnable:[NSURL URLWithString:info.avatarUrlString]
                            //: placeholderImage:info.avatarImage];
                            mentalPicture:info.avatarImage];
        }
        //: else
        else
        {
            //: [self.avatar setImage:info.avatarImage];
            [self.avatar setImage:info.avatarImage];
        }

        //: self.textLabel.attributedText = [self coloredTextWithSource:info.showName keyword:keyWord];
        self.textLabel.attributedText = [self displayKeyword:info.showName notice:keyWord];
        //: [self.textLabel sizeToFit];
        [self.textLabel sizeToFit];

        //: self.nickL.attributedText = [self coloredTextWithSource:[NSString stringWithFormat:@"(%@)", session.sessionId] keyword:keyWord];
        self.nickL.attributedText = [self displayKeyword:[NSString stringWithFormat:@"(%@)", session.sessionId] notice:keyWord];
//        [self.nickL sizeToFit];

        //: self.detailTextLabel.attributedText = [self coloredTextWithSource:message.text keyword:keyWord];
        self.detailTextLabel.attributedText = [self displayKeyword:message.text notice:keyWord];
        //: [self.detailTextLabel sizeToFit];
        [self.detailTextLabel sizeToFit];

        //: self.timeL.text = [self timeWithTimestamp:message.timestamp];
        self.timeL.text = [self origin:message.timestamp];
        //: [self.timeL sizeToFit];
        [self.timeL sizeToFit];
    }
}

//: - (NSAttributedString *)coloredTextWithSource:(NSString *)source
- (NSAttributedString *)displayKeyword:(NSString *)source
                                      //: keyword:(NSString *)keyword
                                      notice:(NSString *)keyword
{
    //: if (!source)
    if (!source)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    //: NSString * lowercaseSource = [source lowercaseString];
    NSString * lowercaseSource = [source lowercaseString];
    //: NSString * lowercaseKeyword = [keyword lowercaseString];
    NSString * lowercaseKeyword = [keyword lowercaseString];
    //: if ([lowercaseSource containsString:lowercaseKeyword])
    if ([lowercaseSource containsString:lowercaseKeyword])
    {
        //: NSRange range = [source rangeOfString:keyword];
        NSRange range = [source rangeOfString:keyword];
        //: [accidString addAttributes:@{
        [accidString addAttributes:@{
            //: NSForegroundColorAttributeName : [UIColor redColor],
            NSForegroundColorAttributeName : [UIColor redColor],
        }
                             //: range:range];
                             range:range];
    }
    //: return accidString;
    return accidString;
}



//: - (ContentAvatarImageView *)avatar
- (MessageSendView *)avatar
{
    //: if (!_avatar)
    if (!_avatar)
    {
        //: _avatar = [[ContentAvatarImageView alloc] init];
        _avatar = [[MessageSendView alloc] init];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)nickL
- (UILabel *)nickL
{
    //: if (!_nickL)
    if (!_nickL)
    {
        //: _nickL = [[UILabel alloc] init];
        _nickL = [[UILabel alloc] init];
        //: _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
        _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _nickL;
    return _nickL;
}

//: - (UILabel *)timeL
- (UILabel *)timeL
{
    //: if (!_timeL)
    if (!_timeL)
    {
        //: _timeL = [[UILabel alloc] init];
        _timeL = [[UILabel alloc] init];
    }
    //: return _timeL;
    return _timeL;
}

//: - (NSString *)timeWithTimestamp:(NSTimeInterval)ts
- (NSString *)origin:(NSTimeInterval)ts
{
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    //: NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    //: NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    //: [formatter setTimeZone:timeZone];
    [formatter setTimeZone:timeZone];
    //: formatter.dateFormat = @"MM-dd hh:mm:ss";
    formatter.dateFormat = [[GlobalData sharedInstance] appDotAnxiousChingMsg];
    //: NSString * time = [formatter stringFromDate:date];
    NSString * time = [formatter stringFromDate:date];
    //: return time;
    return time;
}

//: @end
@end
