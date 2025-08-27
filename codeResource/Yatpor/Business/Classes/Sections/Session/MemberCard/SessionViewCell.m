
#import <Foundation/Foundation.h>

typedef struct {
    Byte upEndSingle;
    Byte *beginBubbleCustomReload;
    unsigned int stem;
	int imageResource;
} StructOmitData;

@interface OmitData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OmitData

+ (instancetype)sharedInstance {
    static OmitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)OmitDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)OmitDataToByte:(StructOmitData *)data {
    for (int i = 0; i < data->stem; i++) {
        data->beginBubbleCustomReload[i] ^= data->upEndSingle;
    }
    data->beginBubbleCustomReload[data->stem] = 0;
	if (data->stem >= 1) {
		data->imageResource = data->beginBubbleCustomReload[0];
	}
    return data->beginBubbleCustomReload;
}

- (NSString *)StringFromOmitData:(StructOmitData *)data {
    return [NSString stringWithUTF8String:(char *)[self OmitDataToByte:data]];
}

//: head_default
- (NSString *)noti_onCoverStr {
    /* static */ NSString *noti_onCoverStr = nil;
    if (!noti_onCoverStr) {
		NSArray<NSString *> *origin = @[@"17", @"28", @"24", @"29", @"38", @"29", @"28", @"31", @"24", @"12", @"21", @"13", @"132"];
		NSData *data = [OmitData OmitDataToData:origin];
        StructOmitData value = (StructOmitData){121, (Byte *)data.bytes, 12, 174};
        noti_onCoverStr = [self StringFromOmitData:&value];
    }
    return noti_onCoverStr;
}

//: #000000
- (NSString *)dream_tableFormat {
    /* static */ NSString *dream_tableFormat = nil;
    if (!dream_tableFormat) {
		NSArray<NSString *> *origin = @[@"196", @"215", @"215", @"215", @"215", @"215", @"215", @"226"];
		NSData *data = [OmitData OmitDataToData:origin];
        StructOmitData value = (StructOmitData){231, (Byte *)data.bytes, 7, 145};
        dream_tableFormat = [self StringFromOmitData:&value];
    }
    return dream_tableFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "SessionViewCell.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation SessionViewCell

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self button];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)button
{
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    //: self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.cornerRadius = 24;
    //: self.ImageView.layer.masksToBounds = YES;
    self.ImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.ImageView];
    [self.contentView addSubview:self.ImageView];

    //: self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    //: self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    self.titleLabel.textColor = [UIColor recordView:[[OmitData sharedInstance] dream_tableFormat]];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)tingRecord:(NIMTeamMember *)member
{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    ViewInfo *info = [[UserKit totalSend] color:member.userId image:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[[OmitData sharedInstance] noti_onCoverStr]]];
}


//: -(void)prepareForReuse
-(void)prepareForReuse
{
    //: [super prepareForReuse];
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    //: self.ImageView.image = nil;
    self.ImageView.image = nil;
}


//: @end
@end