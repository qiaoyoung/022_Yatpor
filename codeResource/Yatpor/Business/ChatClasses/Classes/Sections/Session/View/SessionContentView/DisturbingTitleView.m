
#import <Foundation/Foundation.h>

typedef struct {
    Byte cooperativeAllow;
    Byte *regardBackground;
    unsigned int yell;
	int marketing;
	int champion;
} StructContentData;

@interface ContentData : NSObject

@end

@implementation ContentData

+ (NSData *)ContentDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ContentDataToByte:(StructContentData *)data {
    for (int i = 0; i < data->yell; i++) {
        data->regardBackground[i] ^= data->cooperativeAllow;
    }
    data->regardBackground[data->yell] = 0;
	if (data->yell >= 2) {
		data->marketing = data->regardBackground[0];
		data->champion = data->regardBackground[1];
	}
    return data->regardBackground;
}

+ (NSString *)StringFromContentData:(StructContentData *)data {
    return [NSString stringWithUTF8String:(char *)[self ContentDataToByte:data]];
}

//: icon_receiver_voice_playing_008
+ (NSString *)userStateEmendFormat {
    /* static */ NSString *userStateEmendFormat = nil;
    if (!userStateEmendFormat) {
		NSArray<NSNumber *> *origin = @[@156, @150, @154, @155, @170, @135, @144, @150, @144, @156, @131, @144, @135, @170, @131, @154, @156, @150, @144, @170, @133, @153, @148, @140, @156, @155, @146, @170, @197, @197, @205, @154];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){245, (Byte *)data.bytes, 31, 63, 38};
        userStateEmendFormat = [self StringFromContentData:&value];
    }
    return userStateEmendFormat;
}

//: icon_receiver_voice_playing_002
+ (NSString *)mImageMsg {
    /* static */ NSString *mImageMsg = nil;
    if (!mImageMsg) {
		NSArray<NSNumber *> *origin = @[@56, @50, @62, @63, @14, @35, @52, @50, @52, @56, @39, @52, @35, @14, @39, @62, @56, @50, @52, @14, @33, @61, @48, @40, @56, @63, @54, @14, @97, @97, @99, @75];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){81, (Byte *)data.bytes, 31, 252, 142};
        mImageMsg = [self StringFromContentData:&value];
    }
    return mImageMsg;
}

//: icon_voice_plus_b
+ (NSString *)appGrapeMsg {
    /* static */ NSString *appGrapeMsg = nil;
    if (!appGrapeMsg) {
		NSArray<NSNumber *> *origin = @[@149, @159, @147, @146, @163, @138, @147, @149, @159, @153, @163, @140, @144, @137, @143, @163, @158, @183];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){252, (Byte *)data.bytes, 17, 106, 223};
        appGrapeMsg = [self StringFromContentData:&value];
    }
    return appGrapeMsg;
}

//: icon_receiver_voice_playing_004
+ (NSString *)app_fluenceActContent {
    /* static */ NSString *app_fluenceActContent = nil;
    if (!app_fluenceActContent) {
		NSArray<NSNumber *> *origin = @[@13, @7, @11, @10, @59, @22, @1, @7, @1, @13, @18, @1, @22, @59, @18, @11, @13, @7, @1, @59, @20, @8, @5, @29, @13, @10, @3, @59, @84, @84, @80, @46];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){100, (Byte *)data.bytes, 31, 229, 80};
        app_fluenceActContent = [self StringFromContentData:&value];
    }
    return app_fluenceActContent;
}

//: icon_receiver_voice_playing_w
+ (NSString *)k_startUpData {
    /* static */ NSString *k_startUpData = nil;
    if (!k_startUpData) {
		NSArray<NSNumber *> *origin = @[@30, @20, @24, @25, @40, @5, @18, @20, @18, @30, @1, @18, @5, @40, @1, @24, @30, @20, @18, @40, @7, @27, @22, @14, @30, @25, @16, @40, @0, @147];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){119, (Byte *)data.bytes, 29, 185, 212};
        k_startUpData = [self StringFromContentData:&value];
    }
    return k_startUpData;
}

//: icon_voice_play_b
+ (NSString *)appUnderlyKey {
    /* static */ NSString *appUnderlyKey = nil;
    if (!appUnderlyKey) {
		NSArray<NSNumber *> *origin = @[@79, @69, @73, @72, @121, @80, @73, @79, @69, @67, @121, @86, @74, @71, @95, @121, @68, @73];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){38, (Byte *)data.bytes, 17, 29, 135};
        appUnderlyKey = [self StringFromContentData:&value];
    }
    return appUnderlyKey;
}

//: icon_receiver_voice_playing_010
+ (NSString *)show_witnessQuadUrl {
    /* static */ NSString *show_witnessQuadUrl = nil;
    if (!show_witnessQuadUrl) {
		NSArray<NSNumber *> *origin = @[@248, @242, @254, @255, @206, @227, @244, @242, @244, @248, @231, @244, @227, @206, @231, @254, @248, @242, @244, @206, @225, @253, @240, @232, @248, @255, @246, @206, @161, @160, @161, @65];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){145, (Byte *)data.bytes, 31, 202, 85};
        show_witnessQuadUrl = [self StringFromContentData:&value];
    }
    return show_witnessQuadUrl;
}

//: icon_receiver_voice_playing_003
+ (NSString *)appTingId {
    /* static */ NSString *appTingId = nil;
    if (!appTingId) {
		NSArray<NSNumber *> *origin = @[@212, @222, @210, @211, @226, @207, @216, @222, @216, @212, @203, @216, @207, @226, @203, @210, @212, @222, @216, @226, @205, @209, @220, @196, @212, @211, @218, @226, @141, @141, @142, @174];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){189, (Byte *)data.bytes, 31, 240, 169};
        appTingId = [self StringFromContentData:&value];
    }
    return appTingId;
}

//: icon_receiver_voice_playing_007
+ (NSString *)userCoatMessage {
    /* static */ NSString *userCoatMessage = nil;
    if (!userCoatMessage) {
		NSArray<NSNumber *> *origin = @[@43, @33, @45, @44, @29, @48, @39, @33, @39, @43, @52, @39, @48, @29, @52, @45, @43, @33, @39, @29, @50, @46, @35, @59, @43, @44, @37, @29, @114, @114, @117, @208];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){66, (Byte *)data.bytes, 31, 178, 171};
        userCoatMessage = [self StringFromContentData:&value];
    }
    return userCoatMessage;
}

//: icon_receiver_voice_playing_005
+ (NSString *)dreamDialId {
    /* static */ NSString *dreamDialId = nil;
    if (!dreamDialId) {
		NSArray<NSNumber *> *origin = @[@142, @132, @136, @137, @184, @149, @130, @132, @130, @142, @145, @130, @149, @184, @145, @136, @142, @132, @130, @184, @151, @139, @134, @158, @142, @137, @128, @184, @215, @215, @210, @146];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){231, (Byte *)data.bytes, 31, 157, 19};
        dreamDialId = [self StringFromContentData:&value];
    }
    return dreamDialId;
}

//: icon_receiver_voice_playing
+ (NSString *)dream_surfaceName {
    /* static */ NSString *dream_surfaceName = nil;
    if (!dream_surfaceName) {
		NSArray<NSNumber *> *origin = @[@59, @49, @61, @60, @13, @32, @55, @49, @55, @59, @36, @55, @32, @13, @36, @61, @59, @49, @55, @13, @34, @62, @51, @43, @59, @60, @53, @84];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){82, (Byte *)data.bytes, 27, 10, 207};
        dream_surfaceName = [self StringFromContentData:&value];
    }
    return dream_surfaceName;
}

//: icon_receiver_voice_playing_001
+ (NSString *)show_potentialName {
    /* static */ NSString *show_potentialName = nil;
    if (!show_potentialName) {
		NSArray<NSNumber *> *origin = @[@100, @110, @98, @99, @82, @127, @104, @110, @104, @100, @123, @104, @127, @82, @123, @98, @100, @110, @104, @82, @125, @97, @108, @116, @100, @99, @106, @82, @61, @61, @60, @153];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){13, (Byte *)data.bytes, 31, 247, 96};
        show_potentialName = [self StringFromContentData:&value];
    }
    return show_potentialName;
}

//: icon_receiver_voice_playing_006
+ (NSString *)k_messageId {
    /* static */ NSString *k_messageId = nil;
    if (!k_messageId) {
		NSArray<NSNumber *> *origin = @[@53, @63, @51, @50, @3, @46, @57, @63, @57, @53, @42, @57, @46, @3, @42, @51, @53, @63, @57, @3, @44, @48, @61, @37, @53, @50, @59, @3, @108, @108, @106, @242];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){92, (Byte *)data.bytes, 31, 10, 239};
        k_messageId = [self StringFromContentData:&value];
    }
    return k_messageId;
}

//: icon_receiver_voice_playing_009
+ (NSString *)noti_shouldIdent {
    /* static */ NSString *noti_shouldIdent = nil;
    if (!noti_shouldIdent) {
		NSArray<NSNumber *> *origin = @[@237, @231, @235, @234, @219, @246, @225, @231, @225, @237, @242, @225, @246, @219, @242, @235, @237, @231, @225, @219, @244, @232, @229, @253, @237, @234, @227, @219, @180, @180, @189, @45];
		NSData *data = [ContentData ContentDataToData:origin];
        StructContentData value = (StructContentData){132, (Byte *)data.bytes, 31, 186, 5};
        noti_shouldIdent = [self StringFromContentData:&value];
    }
    return noti_shouldIdent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionAudioContentView.h"
#import "DisturbingTitleView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "FFFKitAudioCenter.h"
#import "DisplacementCenter.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+UserKit.h"

//: @interface FFFSessionAudioContentView()<NIMMediaManagerDelegate>
@interface DisturbingTitleView()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageView;
//: @property (nonatomic,strong) UIImageView *voiceImageViewleft;
@property (nonatomic,strong) UIImageView *voiceImageViewleft;

//: @property (nonatomic,strong) UIImageView *voicePlayView;
@property (nonatomic,strong) UIImageView *voicePlayView;
//: @property (nonatomic,strong) UIImageView *voicePlayViewleft;
@property (nonatomic,strong) UIImageView *voicePlayViewleft;

//: @property (nonatomic,strong) UILabel *durationLabel;
@property (nonatomic,strong) UILabel *durationLabel;

//: @end
@end

//: @implementation FFFSessionAudioContentView
@implementation DisturbingTitleView

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self device];
        //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)setPlaying:(BOOL)isPlaying
- (void)setWithPlaying:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
        //: [self.voiceImageViewleft startAnimating];
        [self.voiceImageViewleft startAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[ContentData appGrapeMsg]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayView.image = [UIImage imageNamed:[ContentData appGrapeMsg]];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
        //: [self.voiceImageViewleft stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[ContentData appUnderlyKey]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayView.image = [UIImage imageNamed:[ContentData appUnderlyKey]];
    }
}

//: - (void)addVoiceView{
- (void)device{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];


    //: _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ContentData appUnderlyKey]]];
    //: [self addSubview:_voicePlayViewleft];
    [self addSubview:_voicePlayViewleft];
    //: _voicePlayViewleft.hidden = YES;
    _voicePlayViewleft.hidden = YES;
    //: _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ContentData appUnderlyKey]]];
    //: [self addSubview:_voicePlayView];
    [self addSubview:_voicePlayView];
    //: _voicePlayView.hidden = YES;
    _voicePlayView.hidden = YES;

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    UIImage *image = [UIImage imageNamed:[ContentData k_startUpData]];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames = @[[ContentData show_potentialName],[ContentData mImageMsg],[ContentData appTingId],[ContentData app_fluenceActContent],[ContentData dreamDialId],[ContentData k_messageId],[ContentData userCoatMessage],[ContentData userStateEmendFormat],[ContentData noti_shouldIdent],[ContentData show_witnessQuadUrl]];
    //: NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    //: for (NSString * animateName in animateNames) {
    for (NSString * animateName in animateNames) {
        //: UIImage * animateImage = [UIImage imageNamed:animateName];
        UIImage * animateImage = [UIImage imageNamed:animateName];
        //: [animationImages addObject:animateImage];
        [animationImages addObject:animateImage];
    }
    //: _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationImages = animationImages;
    //: _voiceImageView.animationDuration = 1.0;
    _voiceImageView.animationDuration = 1.0;
    //: [self addSubview:_voiceImageView];
    [self addSubview:_voiceImageView];
    //: _voiceImageView.hidden = YES;
    _voiceImageView.hidden = YES;

    //: _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_receiver_voice_playing"]];
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[ContentData dream_surfaceName]]];
    //: NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames2 = @[[ContentData show_potentialName],[ContentData mImageMsg],[ContentData appTingId],[ContentData app_fluenceActContent],[ContentData dreamDialId],[ContentData k_messageId],[ContentData userCoatMessage],[ContentData userStateEmendFormat],[ContentData noti_shouldIdent],[ContentData show_witnessQuadUrl]];
    //: NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    //: for (NSString *animateName2 in animateNames2) {
    for (NSString *animateName2 in animateNames2) {
        //: UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        //: [animationImages2 addObject:animateImage2];
        [animationImages2 addObject:animateImage2];
    }
    //: _voiceImageViewleft.animationImages = animationImages2;
    _voiceImageViewleft.animationImages = animationImages2;
    //: _voiceImageViewleft.animationDuration = 1.0;
    _voiceImageViewleft.animationDuration = 1.0;
    //: [self addSubview:_voiceImageViewleft];
    [self addSubview:_voiceImageViewleft];
    //: _voiceImageViewleft.hidden = YES;
    _voiceImageViewleft.hidden = YES;

    //: _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _durationLabel.backgroundColor = [UIColor clearColor];
    _durationLabel.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_durationLabel];
    [self addSubview:_durationLabel];

}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)valueRow:(PossibilityMessageStyle *)data {
    //: [super refresh:data];
    [super valueRow:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;
    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setWithPlaying:self.buttonRandomShould];
    //: [self refreshBackground:data];
    [self heritage:data];
}

//: - (void)refreshBackground:(FFFMessageModel *)data
- (void)heritage:(PossibilityMessageStyle *)data
{
    //: if (data.shouldShowLeft)
    if (data.shouldShowLeft)
    {
        //: _voiceImageViewleft.hidden = NO;
        _voiceImageViewleft.hidden = NO;
        //: _voiceImageView.hidden = YES;
        _voiceImageView.hidden = YES;
        //: _voicePlayViewleft.hidden = NO;
        _voicePlayViewleft.hidden = NO;
        //: _voicePlayView.hidden = YES;
        _voicePlayView.hidden = YES;
    }
    //: else
    else
    {
//        _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        //: _voiceImageViewleft.hidden = YES;
        _voiceImageViewleft.hidden = YES;
        //: _voiceImageView.hidden = NO;
        _voiceImageView.hidden = NO;
        //: _voicePlayViewleft.hidden = YES;
        _voicePlayViewleft.hidden = YES;
        //: _voicePlayView.hidden = NO;
        _voicePlayView.hidden = NO;
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft: {
        case FFFSessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            //: self.voiceImageViewleft.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             //: _durationLabel.right = self.width - contentInsets.right * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutRight: {
        case FFFSessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            //: self.voiceImageView.right = self.width - contentInsets.right * 2;
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            //: _durationLabel.left = contentInsets.left;
            _durationLabel.left = contentInsets.left;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutAuto:
        case FFFSessionMessageContentViewLayoutAuto:
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
//                _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);


                //: self.voicePlayView.left = contentInsets.left;
                self.voicePlayView.left = contentInsets.left;
                //: self.voiceImageView.left = self.voicePlayView.right+10;
                self.voiceImageView.left = self.voicePlayView.right+10;
                //: _durationLabel.left = self.voiceImageView.right+10;
                _durationLabel.left = self.voiceImageView.right+10;

            //: } else {
            } else {
//                _voiceImageView.transform = CGAffineTransformIdentity;
//               self.voiceImageView.left = contentInsets.left;

                //: self.voicePlayViewleft.left = contentInsets.left;
                self.voicePlayViewleft.left = contentInsets.left;
                //: self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                //: _durationLabel.left = self.voiceImageViewleft.right+10;
                _durationLabel.left = self.voiceImageViewleft.right+10;
            }
            //: break;
            break;
        }
    }
    //: _voiceImageView.width = 62;
    _voiceImageView.width = 62;
    //: _voiceImageView.height = 18;
    _voiceImageView.height = 18;
    //: _voiceImageView.centerY = self.height * .5f;
    _voiceImageView.centerY = self.height * .5f;

    //: _voiceImageViewleft.width = 62;
    _voiceImageViewleft.width = 62;
    //: _voiceImageViewleft.height = 18;
    _voiceImageViewleft.height = 18;
    //: _voiceImageViewleft.centerY = self.height * .5f;
    _voiceImageViewleft.centerY = self.height * .5f;

    //: _voicePlayView.width = 16;
    _voicePlayView.width = 16;
    //: _voicePlayView.height = 16;
    _voicePlayView.height = 16;
    //: _voicePlayView.centerY = self.height * .5f;
    _voicePlayView.centerY = self.height * .5f;

    //: _voicePlayViewleft.width = 16;
    _voicePlayViewleft.width = 16;
    //: _voicePlayViewleft.height = 16;
    _voicePlayViewleft.height = 16;
    //: _voicePlayViewleft.centerY = self.height * .5f;
    _voicePlayViewleft.centerY = self.height * .5f;

    //: _durationLabel.centerY = _voiceImageView.centerY;
    _durationLabel.centerY = _voiceImageView.centerY;

    //: CGFloat backgroundWidth = 0;
    CGFloat backgroundWidth = 0;
    //: CGFloat backgroundLeft = 0;
    CGFloat backgroundLeft = 0;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft:
        case FFFSessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case FFFSessionMessageContentViewLayoutRight:
        case FFFSessionMessageContentViewLayoutRight:
            {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            }
            //: break;
            break;
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            //: } else {
            } else {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        }
    }
    //: _audioBackgroundView.size = CGSizeMake(backgroundWidth,
    _audioBackgroundView.size = CGSizeMake(backgroundWidth,
                                               //: self.height - 4);
                                               self.height - 4);
    //: _audioBackgroundView.left = backgroundLeft;
    _audioBackgroundView.left = backgroundLeft;
    //: _audioBackgroundView.top = 2;
    _audioBackgroundView.top = 2;
}

//: -(void)onTouchUpInside:(id)sender
-(void)recording:(id)sender
{
    //: if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        //: || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           //: error:nil];
                                                           error:nil];
        //: return;
        return;
    }
    //: if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {

        //: if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            //: [self stopPlayingUI];
            [self show];
        }

        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = FFFKitEventNameTapAudio;
        event.eventName = app_applyText;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.buttonRandomShould && [self.audioUIDelegate respondsToSelector:@selector(activityBy)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate activityBy];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self show];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self show];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)show
{
    //: [self setPlaying:NO];
    [self setWithPlaying:NO];
}

//: - (BOOL)isPlaying
- (BOOL)buttonRandomShould
{
    //: BOOL play = [FFFKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [DisplacementCenter range].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    //: return play;
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

//: @end
@end