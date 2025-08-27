
#import <Foundation/Foundation.h>

typedef struct {
    Byte refreshFellow;
    Byte *valuePita;
    unsigned int illQuarterback;
	int port;
	int transitBlade;
} StructDiscData;

@interface DiscData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DiscData

+ (instancetype)sharedInstance {
    static DiscData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DiscDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DiscDataToByte:(StructDiscData *)data {
    for (int i = 0; i < data->illQuarterback; i++) {
        data->valuePita[i] ^= data->refreshFellow;
    }
    data->valuePita[data->illQuarterback] = 0;
	if (data->illQuarterback >= 2) {
		data->port = data->valuePita[0];
		data->transitBlade = data->valuePita[1];
	}
    return data->valuePita;
}

- (NSString *)StringFromDiscData:(StructDiscData *)data {
    return [NSString stringWithUTF8String:(char *)[self DiscDataToByte:data]];
}

//: chat_ic_voice_g
- (NSString *)main_fellowId {
    /* static */ NSString *main_fellowId = nil;
    if (!main_fellowId) {
		NSArray<NSString *> *origin = @[@"110", @"101", @"108", @"121", @"82", @"100", @"110", @"82", @"123", @"98", @"100", @"110", @"104", @"82", @"106", @"43"];
		NSData *data = [DiscData DiscDataToData:origin];
        StructDiscData value = (StructDiscData){13, (Byte *)data.bytes, 15, 124, 156};
        main_fellowId = [self StringFromDiscData:&value];
    }
    return main_fellowId;
}

//: chat_ic_video_g
- (NSString *)m_coverageShallowRegionId {
    /* static */ NSString *m_coverageShallowRegionId = nil;
    if (!m_coverageShallowRegionId) {
		NSArray<NSString *> *origin = @[@"20", @"31", @"22", @"3", @"40", @"30", @"20", @"40", @"1", @"30", @"19", @"18", @"24", @"40", @"16", @"24"];
		NSData *data = [DiscData DiscDataToData:origin];
        StructDiscData value = (StructDiscData){119, (Byte *)data.bytes, 15, 200, 189};
        m_coverageShallowRegionId = [self StringFromDiscData:&value];
    }
    return m_coverageShallowRegionId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableContentView.m
// UserKit
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionRtcCallRecordContentView.h"
#import "EnableContentView.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"

//: @implementation ContentSessionRtcCallRecordContentView
@implementation EnableContentView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initPath
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initPath]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(ContentMessageModel *)data {
- (void)valueRow:(PossibilityMessageStyle *)data {
    //: [super refresh:data];
    [super valueRow:data];
    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [ContentKitUtil messageTipContent:data.message];
    self.textLabel.text = [TextWithUtil messageSessionValue:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:[[DiscData sharedInstance] main_fellowId]];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:[[DiscData sharedInstance] m_coverageShallowRegionId]];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model onSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end
