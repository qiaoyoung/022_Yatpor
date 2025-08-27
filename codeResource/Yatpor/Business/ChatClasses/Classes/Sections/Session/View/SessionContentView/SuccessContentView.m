
#import <Foundation/Foundation.h>

@interface CounselorData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *kAmbitMsg;

//: head_default_group
@property (nonatomic, copy) NSString *m_fedDialMsg;

//: data
@property (nonatomic, copy) NSString *m_individualUrl;

//: personCardId
@property (nonatomic, copy) NSString *main_grayImageIdent;

//: type
@property (nonatomic, copy) NSString *dreamRelationStr;

@end

@implementation CounselorData

+ (instancetype)sharedInstance {
    static CounselorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CounselorDataToData:(NSString *)value {
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

- (Byte *)CounselorDataToCache:(Byte *)data {
    int burn = data[0];
    Byte cooperative = data[1];
    int laundry = data[2];
    for (int i = laundry; i < laundry + burn; i++) {
        int value = data[i] - cooperative;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[laundry + burn] = 0;
    return data + laundry;
}

- (NSString *)StringFromCounselorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CounselorDataToCache:data]];
}

//: head_default_group
- (NSString *)m_fedDialMsg {
    if (!_m_fedDialMsg) {
		NSString *origin = @"1219050118817E7A7D787D7E7F7A8E858D78808B888E892D";
		NSData *data = [CounselorData CounselorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_fedDialMsg = [self StringFromCounselorData:value];
    }
    return _m_fedDialMsg;
}

//: head_default
- (NSString *)kAmbitMsg {
    if (!_kAmbitMsg) {
		NSString *origin = @"0C4E0BC96DFD9944885CEEB6B3AFB2ADB2B3B4AFC3BAC252";
		NSData *data = [CounselorData CounselorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kAmbitMsg = [self StringFromCounselorData:value];
    }
    return _kAmbitMsg;
}

//: personCardId
- (NSString *)main_grayImageIdent {
    if (!_main_grayImageIdent) {
		NSString *origin = @"0C330B9FFB05FBE8436738A398A5A6A2A17694A5977C979D";
		NSData *data = [CounselorData CounselorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_grayImageIdent = [self StringFromCounselorData:value];
    }
    return _main_grayImageIdent;
}

//: type
- (NSString *)dreamRelationStr {
    if (!_dreamRelationStr) {
		NSString *origin = @"04260DF263EAB7D924B15EAAA59A9F968BAC";
		NSData *data = [CounselorData CounselorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamRelationStr = [self StringFromCounselorData:value];
    }
    return _dreamRelationStr;
}

//: data
- (NSString *)m_individualUrl {
    if (!_m_individualUrl) {
		NSString *origin = @"044F0D20A7D12A4C2BFC3805D1B3B0C3B05A";
		NSData *data = [CounselorData CounselorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_individualUrl = [self StringFromCounselorData:value];
    }
    return _m_individualUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SuccessContentView.m
// UserKit
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionShareCardContentView.h"
#import "SuccessContentView.h"
//: #import "FFFMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFLoadProgressView.h"
#import "StanzaView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitDataProviderImpl.h"
#import "DittyBagSizeBarTitle.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface FFFSessionShareCardContentView()
@interface SuccessContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;
//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @end
@end

//: @implementation FFFSessionShareCardContentView
@implementation SuccessContentView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.backgroundColor = [UIColor whiteColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: _imageView.layer.cornerRadius = 18;
        _imageView.layer.cornerRadius = 18;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textColor = [UIColor blackColor];
        //: [self addSubview:_nameLabel];
        [self addSubview:_nameLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)valueRow:(PossibilityMessageStyle *)data
{
    //: [super refresh:data];
    [super valueRow:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: self.nameLabel.text = @"";
    self.nameLabel.text = @"";
    //: NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[CounselorData sharedInstance].dreamRelationStr] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[CounselorData sharedInstance].m_individualUrl];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl wearer:[CounselorData sharedInstance].main_grayImageIdent bit:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl wearer:[CounselorData sharedInstance].dreamRelationStr bit:@"0"] boolValue]) {
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: if (team.teamName.length>0) {
                    if (team.teamName.length>0) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[CounselorData sharedInstance].m_fedDialMsg]];
                        //: self.nameLabel.text = team.teamName;
                        self.nameLabel.text = team.teamName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[CounselorData sharedInstance].m_fedDialMsg]];
                            //: self.nameLabel.text = team.teamName;
                            self.nameLabel.text = team.teamName;
                        //: }];
                        }];
                    }
                //: } else {
                } else {
                    @
                     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                                  ;
                    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    //: if (user.userInfo.nickName) {
                    if (user.userInfo.nickName) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[CounselorData sharedInstance].kAmbitMsg]];
                        //: self.nameLabel.text = user.userInfo.nickName;
                        self.nameLabel.text = user.userInfo.nickName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                        [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                            //: if (users.count) {
                            if (users.count) {
                                @
                                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                                ;
                                //: NIMUser *user = users.firstObject;
                                NIMUser *user = users.firstObject;
                                //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[CounselorData sharedInstance].kAmbitMsg]];
                                //: self.nameLabel.text = user.userInfo.nickName;
                                self.nameLabel.text = user.userInfo.nickName;
                            }
                        //: }];
                        }];
                    }


                }
            }
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
    self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
}


//: - (void)onTouchUpInside:(id)sender
- (void)recording:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    KitEvent *event = [[KitEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = user_quickCommentValue;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate need:event];
}

//: @end
@end