
#import <Foundation/Foundation.h>

@interface ComfortableMiniData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ComfortableMiniData

+ (instancetype)sharedInstance {
    static ComfortableMiniData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ComfortableMiniDataToData:(NSString *)value {
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

- (Byte *)ComfortableMiniDataToCache:(Byte *)data {
    int moveEnable = data[0];
    Byte upgrade = data[1];
    int now = data[2];
    for (int i = now; i < now + moveEnable; i++) {
        int value = data[i] + upgrade;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[now + moveEnable] = 0;
    return data + now;
}

- (NSString *)StringFromComfortableMiniData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComfortableMiniDataToCache:data]];
}

//: icon_toolview_voice_normal
- (NSString *)k_sufferData {
    /* static */ NSString *k_sufferData = nil;
    if (!k_sufferData) {
		NSString *origin = @"1A440B8FF2F195E8AD87DA251F2B2A1B302B2B28322521331B322B251F211B2A2B2E291D2866";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_sufferData = [self StringFromComfortableMiniData:value];
    }
    return k_sufferData;
}

//: icon_toolview_album
- (NSString *)m_replyDentMessage {
    /* static */ NSString *m_replyDentMessage = nil;
    if (!m_replyDentMessage) {
		NSString *origin = @"1333066760B036303C3B2C413C3C39433632442C2E392F423A5E";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_replyDentMessage = [self StringFromComfortableMiniData:value];
    }
    return m_replyDentMessage;
}

//: 777777
- (NSString *)k_potentialIdent {
    /* static */ NSString *k_potentialIdent = nil;
    if (!k_potentialIdent) {
		NSString *origin = @"06480436EFEFEFEFEFEF41";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_potentialIdent = [self StringFromComfortableMiniData:value];
    }
    return k_potentialIdent;
}

//: AUDIO
- (NSString *)showPitaText {
    /* static */ NSString *showPitaText = nil;
    if (!showPitaText) {
		NSString *origin = @"0549090E8ABEFD9046F80CFB000632";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPitaText = [self StringFromComfortableMiniData:value];
    }
    return showPitaText;
}

//: VIDEO
- (NSString *)mainRidiculousContent {
    /* static */ NSString *mainRidiculousContent = nil;
    if (!mainRidiculousContent) {
		NSString *origin = @"055109C7178E03926A05F8F3F4FE3C";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainRidiculousContent = [self StringFromComfortableMiniData:value];
    }
    return mainRidiculousContent;
}

//: ic_block_no
- (NSString *)k_pilotMessage {
    /* static */ NSString *k_pilotMessage = nil;
    if (!k_pilotMessage) {
		NSString *origin = @"0B4A0C54A3680937C38174021F19151822251921152425A9";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_pilotMessage = [self StringFromComfortableMiniData:value];
    }
    return k_pilotMessage;
}

//: group_info_activity_op_failed
- (NSString *)mCriticalTotalernMessage {
    /* static */ NSString *mCriticalTotalernMessage = nil;
    if (!mCriticalTotalernMessage) {
		NSString *origin = @"1D2708ED19092FA0404B484E493842473F48383A3C4D424F424D52384849383F3A42453E3D63";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCriticalTotalernMessage = [self StringFromComfortableMiniData:value];
    }
    return mCriticalTotalernMessage;
}

//: user_profile_avtivity_send
- (NSString *)app_foodImageStr {
    /* static */ NSString *app_foodImageStr = nil;
    if (!app_foodImageStr) {
		NSString *origin = @"1A5D0BF666C9EDEA8628131816081502131512090C0F08020419170C190C171C02160811079F";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_foodImageStr = [self StringFromComfortableMiniData:value];
    }
    return app_foodImageStr;
}

//: %@在群里@了你
- (NSString *)userBeastUrl {
    /* static */ NSString *userBeastUrl = nil;
    if (!userBeastUrl) {
		NSString *origin = @"12320552C9F30EB36A76B58C72B7555A0EB28854B28B6E75";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBeastUrl = [self StringFromComfortableMiniData:value];
    }
    return userBeastUrl;
}

//: content
- (NSString *)m_dingProData {
    /* static */ NSString *m_dingProData = nil;
    if (!m_dingProData) {
		NSString *origin = @"07430C05F8B275F57D7A746B202C2B31222B31CF";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_dingProData = [self StringFromComfortableMiniData:value];
    }
    return m_dingProData;
}

//: icon_toolview_camera
- (NSString *)appOffTitle {
    /* static */ NSString *appOffTitle = nil;
    if (!appOffTitle) {
		NSString *origin = @"14230D9B32A529B2ED1FE596A046404C4B3C514C4C49534642543C403E4A424F3EFF";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appOffTitle = [self StringFromComfortableMiniData:value];
    }
    return appOffTitle;
}

//: ic_block
- (NSString *)mainRemoteValue {
    /* static */ NSString *mainRemoteValue = nil;
    if (!mainRemoteValue) {
		NSString *origin = @"08180DE12821B1E0477F41EE2F514B474A54574B538F";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainRemoteValue = [self StringFromComfortableMiniData:value];
    }
    return mainRemoteValue;
}

//: message_send_camera
- (NSString *)notiChampionFormat {
    /* static */ NSString *notiChampionFormat = nil;
    if (!notiChampionFormat) {
		NSString *origin = @"13150A23EE3352756AC558505E5E4C52504A5E50594F4A4E4C58505D4C7A";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiChampionFormat = [self StringFromComfortableMiniData:value];
    }
    return notiChampionFormat;
}

//: #00B01B
- (NSString *)appFedValue {
    /* static */ NSString *appFedValue = nil;
    if (!appFedValue) {
		NSString *origin = @"072B098CCC6A62E1A8F805051705061724";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appFedValue = [self StringFromComfortableMiniData:value];
    }
    return appFedValue;
}

//: #F6F7FA
- (NSString *)mainWifeTitle {
    /* static */ NSString *mainWifeTitle = nil;
    if (!mainWifeTitle) {
		NSString *origin = @"073E08FB98650DA7E508F808F908030B";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainWifeTitle = [self StringFromComfortableMiniData:value];
    }
    return mainWifeTitle;
}

//: reply
- (NSString *)k_artificialText {
    /* static */ NSString *k_artificialText = nil;
    if (!k_artificialText) {
		NSString *origin = @"054106F2A7DB31242F2B38FA";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_artificialText = [self StringFromComfortableMiniData:value];
    }
    return k_artificialText;
}

//: userName
- (NSString *)noti_explorationId {
    /* static */ NSString *noti_explorationId = nil;
    if (!noti_explorationId) {
		NSString *origin = @"08080D6A24B63F766FEA11CF256D6B5D6A4659655D4B";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_explorationId = [self StringFromComfortableMiniData:value];
    }
    return noti_explorationId;
}

//: temp_image_%@.jpg
- (NSString *)user_childText {
    /* static */ NSString *user_childText = nil;
    if (!user_childText) {
		NSString *origin = @"113D04BD37283033222C30242A2822E803F12D332A67";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_childText = [self StringFromComfortableMiniData:value];
    }
    return user_childText;
}

//: messageid
- (NSString *)main_sprayName {
    /* static */ NSString *main_sprayName = nil;
    if (!main_sprayName) {
		NSString *origin = @"09360956597CD1660B372F3D3D2B312F332EC6";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_sprayName = [self StringFromComfortableMiniData:value];
    }
    return main_sprayName;
}

//: #F7BA00
- (NSString *)user_bubbleText {
    /* static */ NSString *user_bubbleText = nil;
    if (!user_bubbleText) {
		NSString *origin = @"07110B1DB85FC7B7591FA612352631301F1FA6";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_bubbleText = [self StringFromComfortableMiniData:value];
    }
    return user_bubbleText;
}

//: type
- (NSString *)userBornData {
    /* static */ NSString *userBornData = nil;
    if (!userBornData) {
		NSString *origin = @"043E03363B3227BE";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBornData = [self StringFromComfortableMiniData:value];
    }
    return userBornData;
}

//: F6F7FA
- (NSString *)appTaFormat {
    /* static */ NSString *appTaFormat = nil;
    if (!appTaFormat) {
		NSString *origin = @"06260C1CBD62BB03E49B381420102011201B7C";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTaFormat = [self StringFromComfortableMiniData:value];
    }
    return appTaFormat;
}

//: message_administrator_speak
- (NSString *)userOthersMessage {
    /* static */ NSString *userOthersMessage = nil;
    if (!userOthersMessage) {
		NSString *origin = @"1B11035C5462625056544E50535C585D5862636150635E614E625F54505AAC";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userOthersMessage = [self StringFromComfortableMiniData:value];
    }
    return userOthersMessage;
}

//: ic_more
- (NSString *)appConcertCoupKey {
    /* static */ NSString *appConcertCoupKey = nil;
    if (!appConcertCoupKey) {
		NSString *origin = @"0758055C13110B0715171A0D26";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appConcertCoupKey = [self StringFromComfortableMiniData:value];
    }
    return appConcertCoupKey;
}

//: temp_video_%@.mp4
- (NSString *)kSingleId {
    /* static */ NSString *kSingleId = nil;
    if (!kSingleId) {
		NSString *origin = @"111D06EEA68C5748505342594C47485242082311505317AE";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSingleId = [self StringFromComfortableMiniData:value];
    }
    return kSingleId;
}

//: message_please_enter_content
- (NSString *)kOnTitle {
    /* static */ NSString *kOnTitle = nil;
    if (!kOnTitle) {
		NSString *origin = @"1C45056A9428202E2E1C22201A2B27201C2E201A20292F202D1A1E2A292F20292F31";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kOnTitle = [self StringFromComfortableMiniData:value];
    }
    return kOnTitle;
}

//: IMAGE
- (NSString *)notiBeginQueryValue {
    /* static */ NSString *notiBeginQueryValue = nil;
    if (!notiBeginQueryValue) {
		NSString *origin = @"054103080C000604C8";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBeginQueryValue = [self StringFromComfortableMiniData:value];
    }
    return notiBeginQueryValue;
}

//: TEXT
- (NSString *)app_cussContent {
    /* static */ NSString *app_cussContent = nil;
    if (!app_cussContent) {
		NSString *origin = @"041705E8F03D2E413D32";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_cussContent = [self StringFromComfortableMiniData:value];
    }
    return app_cussContent;
}

//: head_default_group
- (NSString *)userManufacturerUrl {
    /* static */ NSString *userManufacturerUrl = nil;
    if (!userManufacturerUrl) {
		NSString *origin = @"12290C1523B5D7CEF36C53B13F3C383B363B3C3D384C434B363E49464C474D";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userManufacturerUrl = [self StringFromComfortableMiniData:value];
    }
    return userManufacturerUrl;
}

//: back_arrow_bl
- (NSString *)dreamTextUrl {
    /* static */ NSString *dreamTextUrl = nil;
    if (!dreamTextUrl) {
		NSString *origin = @"0D1608902A9E6BEE4C4B4D55494B5C5C5961494C565A";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTextUrl = [self StringFromComfortableMiniData:value];
    }
    return dreamTextUrl;
}

//: message_send_album
- (NSString *)showAttendDetectiveData {
    /* static */ NSString *showAttendDetectiveData = nil;
    if (!showAttendDetectiveData) {
		NSString *origin = @"12200BFFE1712A25C6FCFE4D4553534147453F53454E443F414C42554D77";
		NSData *data = [ComfortableMiniData ComfortableMiniDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showAttendDetectiveData = [self StringFromComfortableMiniData:value];
    }
    return showAttendDetectiveData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.m
// UserKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"
//: #import "FFFMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "FFFBadgeView.h"
#import "PutOptionView.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "FFFMessageMaker.h"
#import "EqualLanguage.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFSessionConfigurator.h"
#import "HandleConfigurator.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "FFFKitTitleView.h"
#import "ScaleView.h"
//: #import "FFFKitKeyboardInfo.h"
#import "SuccessToolInfo.h"
//: #import "FFFReplyContentView.h"
#import "PitchingChangeView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "TapOption.h"
//: #import "FFFBubbleMenuView.h"
#import "InscriptionView.h"
//: #import "FFFTextView.h"
#import "ArrayScrollView.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Counternal.h"
//: #import "FFFBubbleMenuView.h"
#import "InscriptionView.h"
//: #import "FFFBubbleButtonModel.h"
#import "ColorModel.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "FFFInputAudioView.h"
#import "FruitageView.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"
//: #import "NTESPersonalCardViewController.h"
#import "BarViewController.h"
//: #import "FFFTeamCardViewController.h"
#import "CardViewController.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "TarotCardViewController.h"
//: #import "PhotoContainerView.h"
#import "OrientationView.h"
//: #import "SSZipArchiveManager.h"
#import "EqualArchiveManager.h"

//: @interface FFFSessionViewController ()<NIMMediaManagerDelegate,NIMInputDelegate,FFFTeamCardViewControllerDelegate,NIMConversationManagerDelegate,CustomUISeletePhotosDelegate,UIGestureRecognizerDelegate>
@interface NameViewController ()<NIMMediaManagerDelegate,GroundDelegate,ViewLanguage,NIMConversationManagerDelegate,TeamTap,UIGestureRecognizerDelegate>

//: @property (nonatomic,readwrite) NIMMessage *messageForMenu;
@property (nonatomic,readwrite) NIMMessage *messageForMenu;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subTitleLabel;
@property (nonatomic,strong) UILabel *subTitleLabel;

//: @property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
@property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;

//: @property (nonatomic,strong) FFFSessionConfigurator *configurator;
@property (nonatomic,strong) HandleConfigurator *configurator;

//: @property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;
@property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;
//: @property (nonatomic,strong) FFFBadgeView *badgeView;
@property (nonatomic,strong) PutOptionView *badgeView;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *labtitle;
@property (nonatomic,strong) UILabel *labtitle;
//: @property (nonatomic,strong) UILabel *subtitle;
@property (nonatomic,strong) UILabel *subtitle;
//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;

//: @property (nonatomic, strong) UIView *topview;
@property (nonatomic, strong) UIView *topview;
//: @property (nonatomic, strong) UIButton *btnAudio;
@property (nonatomic, strong) UIButton *btnAudio;
//: @property (nonatomic, strong) FFFInputAudioView *audioContent;
@property (nonatomic, strong) FruitageView *audioContent;

//: @property (nonatomic, strong) UIView *photopicview;
@property (nonatomic, strong) UIView *photopicview;
//: @property (nonatomic, strong) PhotoContainerView *customAlbumView;
@property (nonatomic, strong) OrientationView *customAlbumView;


//: @end
@end

//: @implementation FFFSessionViewController
@implementation NameViewController

//: - (instancetype)initWithSession:(NIMSession *)session{
- (instancetype)initWithNameExtra:(NIMSession *)session{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListener];
    [self imagePostListener];

    //: _tableView.delegate = nil;
    _tableView.delegate = nil;
    //: _tableView.dataSource = nil;
    _tableView.dataSource = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[[ComfortableMiniData sharedInstance] appTaFormat]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"chating_bg"];
//        [self.view addSubview:bg];

    //: UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: bottomview.backgroundColor = [UIColor whiteColor];
    bottomview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:bottomview];
    [self.view addSubview:bottomview];

    //消息 tableView
    //: [self setupTableView];
    [self areopagite];
    //导航栏
    //: [self setupNav];
    [self myNav];

    //输入框 inputView
    //: [self setupInputView];
    [self nimInfo];
    //会话相关逻辑配置器安装
    //: [self setupConfigurator];
    [self text];
    //进入会话时，标记所有消息已读，并发送已读回执
    //: [self markRead];
    [self after];
    //更新已读位置


//    [self.view addSubview:self.btnAudio];


     //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
     dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
         //: [self setBanned];
         [self bannedView];
     //: });
     });

//    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    // 执行设置回调监听
//    [NERtcCallKit.sharedInstance addDelegate:self];
 }

//- (void)onInvited:(NSString *)invitor
//          userIDs:(NSArray<NSString *> *)userIDs
//      isFromGroup:(BOOL)isFromGroup
//          groupID:(nullable NSString *)groupID
//             type:(NERtcCallType)type
//       attachment:(nullable NSString *)attachment
//{
//    ZMONVideoCallViewController *vc = [[ZMONVideoCallViewController alloc] init];
//    vc.isInvait = YES;
//    vc.userId = invitor;
//    vc.roomId = self.session.sessionId;
//    [self.navigationController pushViewController:vc animated:YES];
//}

 //: - (void)setBanned {
 - (void)bannedView {
     //: NIMSessionType type = self.session.sessionType;
     NIMSessionType type = self.session.sessionType;
     //: switch (type) {
     switch (type) {
         //: case NIMSessionTypeTeam:{
         case NIMSessionTypeTeam:{
             //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setIngredient:YES];
                     }
                 }
             }
         }
             //: break;
             break;

             //: break;
             break;
         //: case NIMSessionTypeSuperTeam: {
         case NIMSessionTypeSuperTeam: {
             //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setIngredient:YES];
                     }
                 }
             }
         }
         //: default:
         default:
             //: break;
             break;
     }
 }

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];

}


//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
    //: [self.interactor resetMessages:nil];
    [self.interactor messages:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self progressBadge];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self progressBadge];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
}


//: - (void)refreshSessionBadge
- (void)progressBadge
{

    //: if(self.sessionUnreadCount>0){
    if(self.sessionUnreadCount>0){
        //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        //: _badgeView.hidden = NO;
        _badgeView.hidden = NO;
//        _labtitle.frame = CGRectMake(_badgeView.right+10, SCREEN_STATUS_HEIGHT, 100, 40);
    }
    //: else{
    else{
        //: _badgeView.hidden = YES;
        _badgeView.hidden = YES;
//        _labtitle.frame = CGRectMake(65, SCREEN_STATUS_HEIGHT, 200, 40);
    }
}

//: - (void)setupNav
- (void)myNav
{
    //: _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice bearDown]))];
    //: _topview.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    _topview.backgroundColor = [UIColor recordView:[[ComfortableMiniData sharedInstance] mainWifeTitle]];
    //: [self.view addSubview:_topview];
    [self.view addSubview:_topview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice bearDown], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(imageShow:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] dreamTextUrl]] forState:UIControlStateNormal];
    //: [_topview addSubview:backBtn];
    [_topview addSubview:backBtn];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
     //: _badgeView = [FFFBadgeView viewWithBadgeTip:@""];
     _badgeView = [PutOptionView max:@""];
    //: _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    //: [_topview addSubview:_badgeView];
    [_topview addSubview:_badgeView];
    //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight], 200, 40)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice bearDown], 200, 40)];
    //: _labtitle.textColor = [UIColor blackColor];
    _labtitle.textColor = [UIColor blackColor];
    //: _labtitle.textAlignment = NSTextAlignmentCenter;
    _labtitle.textAlignment = NSTextAlignmentCenter;
    //: _labtitle.font = [UIFont boldSystemFontOfSize:16];
    _labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: _labtitle.text = self.sessionTitle;
    _labtitle.text = self.user;
    //: [_topview addSubview:_labtitle];
    [_topview addSubview:_labtitle];

//    _subtitle = [[UILabel alloc]initWithFrame:CGRectMake(_headerImage.right+10, _labtitle.bottom, 100, 20)];
//    _subtitle.textColor = RGB_COLOR_String(@"777777");
//    _subtitle.font = [UIFont boldSystemFontOfSize:12];
//    _subtitle.text = self.sessionSubTitle;
//    [topview addSubview:_subtitle];
//    if([self.sessionSubTitle isEqualToString:@"离线".ntes_localized]){
//        self.subtitle.textColor = RGB_COLOR_String(@"777777");
//    }else{
//        self.subtitle.textColor = RGB_COLOR_String(@"#00B01B");
//    }


    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];

        //: CGFloat width = 30;
        CGFloat width = 30;
        //: UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
        [enterTeamCard addTarget:self action:@selector(teamCard:) forControlEvents:UIControlEventTouchUpInside];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] userManufacturerUrl]]];
        //: enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice bearDown]+10, width, width);
        //: enterTeamCard.layer.cornerRadius = width/2;
        enterTeamCard.layer.cornerRadius = width/2;
        //: enterTeamCard.layer.masksToBounds = YES;
        enterTeamCard.layer.masksToBounds = YES;
        //: [_topview addSubview:enterTeamCard];
        [_topview addSubview:enterTeamCard];
    }
    //: else if(self.session.sessionType == NIMSessionTypeP2P)
    else if(self.session.sessionType == NIMSessionTypeP2P)
    {
        //: CGFloat width = 20;
        CGFloat width = 20;


        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice vg_statusBarHeight]+10, width, width);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice bearDown]+10, width, width);
        //: [_btnBlock addTarget:self action:@selector(handlerBtnBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(partTransaction:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] mainRemoteValue]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block_no"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] k_pilotMessage]] forState:UIControlStateSelected];
        //: [_topview addSubview:_btnBlock];
        [_topview addSubview:_btnBlock];

        //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        //: _btnBlock.selected = needNotify;
        _btnBlock.selected = needNotify;


        //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
        [infoBtn addTarget:self action:@selector(words:) forControlEvents:UIControlEventTouchUpInside];
        //: [infoBtn setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        [infoBtn setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] appConcertCoupKey]] forState:UIControlStateNormal];
        //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice bearDown]+10, width, width);
        //: [_topview addSubview:infoBtn];
        [_topview addSubview:infoBtn];
    }



}
//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)handlerBtnBlock:(UIButton *)sender
- (void)partTransaction:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (error) {
            if (error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];
}
//: - (void)enterPersonInfoCard:(id)sender
- (void)words:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    BarViewController *vc = [[BarViewController alloc] initWithScale:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: - (void)enterTeamCard:(id)sender {
- (void)teamCard:(id)sender {
    //: FFFTeamCardViewController *vc = nil;
    CardViewController *vc = nil;
    //: FFFTeamCardViewControllerOption *option = [[FFFTeamCardViewControllerOption alloc] init];
    ToSize *option = [[ToSize alloc] init];
    //: option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if(team.type == NIMTeamTypeAdvanced){
    if(team.type == NIMTeamTypeAdvanced){
            //: vc = [[FFFAdvancedTeamCardViewController alloc] initWithTeam:team
            vc = [[TarotCardViewController alloc] initWithLanguage:team
                                                                 //: session:self.session
                                                                 addTogether:self.session
                                                                  //: option:option];
                                                                  halogen:option];
            //: vc.delegate = self;
            vc.delegate = self;
            //: vc.canMemberInfo = self.canMemberInfo;
            vc.canMemberInfo = self.canMemberInfo;
    }

    //: if (vc) {
    if (vc) {
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)gotoBack:(id)sender {
- (void)imageShow:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setupTableView
- (void)areopagite
{
    //: CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
    CGFloat safeAreaInsetsBottom = [UIDevice broadcast];
    //: CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice vg_statusBarHeight]);
    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice bearDown]);

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
//    self.tableView.backgroundColor = NEEKIT_UIColorFromRGB(0xe4e7ec);
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    //: self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    //: self.tableViewTapGesture.cancelsTouchesInView = NO;
    self.tableViewTapGesture.cancelsTouchesInView = NO;
    //: [self.tableViewTapGesture addTarget:self action:@selector(onTapTableView:)];
    [self.tableViewTapGesture addTarget:self action:@selector(overLanguageView:)];
    //: [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    //: self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

//    if ([self.sessionConfig respondsToSelector:@selector(sessionBackgroundImage)] && [self.sessionConfig sessionBackgroundImage]) {
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//        imgView.image = [self.sessionConfig sessionBackgroundImage];
//        imgView.contentMode = UIViewContentModeScaleAspectFill;
//        self.tableView.backgroundView = imgView;
//    }
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

}


//: - (void)setupInputView
- (void)nimInfo
{
    //: if ([self shouldShowInputView])
    if ([self manager])
    {
        //: self.sessionInputView = [[FFFInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.nim_width,0) config:self.sessionConfig];
        self.sessionInputView = [[InputView alloc] initWithFileAllocationTable:CGRectMake(0, 0, self.view.nim_width,0) view:self.someFormat];
        //: self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        //: [self.sessionInputView setSession:self.session];
        [self.sessionInputView setSession:self.session];
        //: [self.sessionInputView setInputDelegate:self];
        [self.sessionInputView setInputDelegate:self];
        //: [self.sessionInputView setInputActionDelegate:self];
        [self.sessionInputView setAllow:self];
        //: [self.sessionInputView refreshStatus:NIMInputStatusText];
        [self.sessionInputView nonparasitic:NIMInputStatusText];
        //: [self.view addSubview:_sessionInputView];
        [self.view addSubview:_sessionInputView];
        //: self.tableView.bottom = self.sessionInputView.top;
        self.tableView.bottom = self.sessionInputView.top;
//        self.tableView.top = self.topview.bottom;
        //: [self.tableView sizeToFit];
        [self.tableView sizeToFit];
    }
}


//: - (void)setupConfigurator
- (void)text
{
    //: _configurator = [[FFFSessionConfigurator alloc] init];
    _configurator = [[HandleConfigurator alloc] init];
    //: [_configurator setup:self];
    [_configurator colorSetup:self];

    //: BOOL needProximityMonitor = [self needProximityMonitor];
    BOOL needProximityMonitor = [self display];
    //: [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
    [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.interactor onViewWillAppear];
    [self.interactor viewValue];
    //: [self addListener];
    [self tag];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self progressBadge];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    // 隐藏长按弹窗
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [InscriptionView.after removeFromSuperview];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidDisappear:(BOOL)animated
- (void)viewDidDisappear:(BOOL)animated
{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.interactor onViewDidDisappear];
    [self.interactor naturalEvent];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    [self changeLeftBarBadge:self.conversationManager.allUnreadCount];
    //: [self.interactor resetLayout];
    [self.interactor bar];
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.serviceContentTextView hideTextSelection];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [InscriptionView.after removeFromSuperview];
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)begin:(UIScrollView *)scrollView {
    //: if ([scrollView isKindOfClass:[UITextView class]]) {
    if ([scrollView isKindOfClass:[UITextView class]]) {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [InscriptionView.after removeFromSuperview];
    }
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}



//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)magnitudeView:(NIMMessage *)message
{
    //: [self.interactor sendMessage:message toMessage:nil];
    [self.interactor packet:message to:nil];
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
       //: [self cleanMenuMessage];
       [self table];
    //: });
    });
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion
- (void)model:(NIMMessage *)message clear:(void(^)(NSError * err))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.interactor sendMessage:message
    [self.interactor telegram:message
                        //: toMessage:nil
                        name:nil
                      //: completion:^(NSError *err)
                      option:^(NSError *err)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf cleanMenuMessage];
        [weakSelf table];
    //: }];
    }];
}


//: #pragma mark - FFFSessionConfiguratorDelegate
#pragma mark - FFFSessionConfiguratorDelegate

//: - (void)didFetchMessageData
- (void)fetchData
{
//    [self uiCheckReceipts:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [self.tableView nim_scrollToBottom:NO];
}

//: - (void)didRefreshMessageData
- (void)viewBook
{
    //: [self refreshSessionTitle:self.sessionTitle];
    [self buttonChild:self.user];
    //: [self refreshSessionSubTitle:self.sessionSubTitle];
    [self post:self.of];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)didPullUpMessageData {}
- (void)replyInformation {}

//: #pragma mark - 会话title
#pragma mark - 会话title
//: - (NSString *)sessionTitle
- (NSString *)user
{
    //: NSString *title = @"";
    NSString *title = @"";
    //: NIMSessionType type = self.session.sessionType;
    NIMSessionType type = self.session.sessionType;
    //: switch (type) {
    switch (type) {
        //: case NIMSessionTypeTeam:{
        case NIMSessionTypeTeam:{
            //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
            //: break;
            break;
        //: case NIMSessionTypeP2P:{
        case NIMSessionTypeP2P:{
            //: title = [FFFKitUtil showNick:self.session.sessionId inSession:self.session];
            title = [TextWithUtil container:self.session.sessionId magnitudeernalRepresentation:self.session];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam: {
        case NIMSessionTypeSuperTeam: {
            //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return title;
    return title;
}

//: - (NSString *)sessionSubTitle{return @"";};
- (NSString *)of{return @"";};

//: #pragma mark - 状态操作
#pragma mark - 状态操作
//: - (NIMKitSessionState)sessionState {
- (NIMKitSessionState)to {
    //: return [self.interactor sessionState];
    return [self.interactor tableIcon];
}

//: - (void)setSessionState:(NIMKitSessionState)state {
- (void)setTo:(NIMKitSessionState)state {
    //: [self.interactor setSessionState:state];
    [self.interactor setTableIcon:state];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//开始发送
//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: id<NIMSessionInteractor> interactor = self.interactor;
    id<LengthCounteractor> interactor = self.interactor;

    //: if ([message.session isEqual:self.session]) {
    if ([message.session isEqual:self.session]) {
        //: if ([interactor findMessageModel:message]) {
        if ([interactor pull:message]) {
            //: [interactor updateMessage:message];
            [interactor preserveShould:message];
        //: }else{
        }else{
            //: [interactor addMessages:@[message]];
            [interactor messageTable:@[message]];
        }
    }
}

//上传资源文件成功
//: - (void)uploadAttachmentSuccess:(NSString *)urlString
- (void)uploadAttachmentSuccess:(NSString *)urlString
                     //: forMessage:(NIMMessage *)message
                     forMessage:(NIMMessage *)message
{
    //如果需要使用富文本推送，可以在这里进行 message apns payload 的设置
//    [self.tableView reloadData];
}


//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: if( message.messageType == NIMMessageTypeImage){
        if( message.messageType == NIMMessageTypeImage){
            //缓存图片URL
            //: NIMImageObject *imageObject = message.messageObject;
            NIMImageObject *imageObject = message.messageObject;
            //: NSString *urlString = imageObject.url;
            NSString *urlString = imageObject.url;

            //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[BottomConfig at] Gdic];
            //: NSData *data = [dic objectForKey:message.messageId];
            NSData *data = [dic objectForKey:message.messageId];
            //: if(data && urlString){
            if(data && urlString){
                //: NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                //: dic[message.messageId] = nil;
                dic[message.messageId] = nil;
                //: __weak typeof(self) weakSelf = self;
                __weak typeof(self) weakSelf = self;
                //: [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                    //: [weakSelf.interactor updateMessage:message];
                    [weakSelf.interactor preserveShould:message];
                //: }];
                }];
            }
        //: }else{
        }else{
            //: [self.interactor updateMessage:message];
            [self.interactor preserveShould:message];
//            [self.tableView reloadData];
        }


        //: if (message.session.sessionType == NIMSessionTypeTeam ||
        if (message.session.sessionType == NIMSessionTypeTeam ||
            //: message.session.sessionType == NIMSessionTypeSuperTeam)
            message.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //如果是群的话需要检查一下回执显示情况
            //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            //: [self.interactor checkReceipts:@[receipt]];
            [self.interactor keepAnEyeDoingEndedLikeNonsolidColour:@[receipt]];
        }
    }

}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session]) {
    if ([message.session isEqual:_session]) {
        //: [self.interactor updateMessage:message];
        [self.interactor preserveShould:message];
    }
}

//接收消息
//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self ting])
    {
        //: NIMMessage *message = messages.firstObject;
        NIMMessage *message = messages.firstObject;
        //: NIMSession *session = message.session;
        NIMSession *session = message.session;

        //: UIViewController *topvc = [self getTopMostController];
        UIViewController *topvc = [self keyDown];
        //: if (![topvc isKindOfClass:NSClassFromString(@"NTESSessionViewController")] && ![topvc isKindOfClass:[FFFSessionViewController class]]) {
        if (![topvc isKindOfClass:NSClassFromString(@"SessionSizeViewController")] && ![topvc isKindOfClass:[NameViewController class]]) {
            //: return;
            return;
        }

        //: if (![session isEqual:self.session] || !messages.count)
        if (![session isEqual:self.session] || !messages.count)
        {
            //: return;
            return;
        }

        //: [self uiInsertMessages:messages];
        [self objectUser:messages];
        //: [self.interactor markRead:NO];
        [self.interactor lastex:NO];

        // 群禁言后输入框改变占位符文字
        //: [self setBannedSpeakingWithMessage:messages];
        [self setExpression:messages];
    }
}

//: - (void)setBannedSpeakingWithMessage:(NSArray <NIMMessage *>*)messages {
- (void)setExpression:(NSArray <NIMMessage *>*)messages {

    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {

        //: NIMNotificationObject *object = message.messageObject;
        NIMNotificationObject *object = message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: id attachment = [content attachment];
            id attachment = [content attachment];
            //: if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
            if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {

                //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                //: if (teamAttachment && [teamAttachment.values count] > 0) {
                if (teamAttachment && [teamAttachment.values count] > 0) {

                    /**
                     *  群禁言模式
                     *  @discussion 0: 禁言关闭 1: 全员禁言，不包括管理员
                     */
                    // NIMTeamUpdateTagMuteMode       = 100,
                    /**
                     *  群全体禁言模式
                     *  @discussion 参考NIMTeamAllMuteMode定义。0: 禁言关闭 1: 全员禁言，不包括管理员 3: 全员禁言，包括群组和管理员
                     */
                    // NIMTeamUpdateTagAllMuteMode    = 101,

                    //                        if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    //                            BOOL banned = [teamAttachment.values objectForKey:@(100)];
                    //                        }


                    //: if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                    if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(101)];
                        BOOL banned = [teamAttachment.values voice:@(101)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setIngredient:banned];
                    }

                    //: else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(100)];
                        BOOL banned = [teamAttachment.values voice:@(100)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setIngredient:banned];
                    }

                }

            }
        }
    //: }];
    }];
}

//: - (void)setInputViewPlaceholder:(BOOL)ban {
- (void)setIngredient:(BOOL)ban {
    //: if (ban){
    if (ban){
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_administrator_speak"] color:[UIColor redColor]];
        [self.sessionInputView chemicalElementColor:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] userOthersMessage]] duringCan:[UIColor redColor]];
        //: self.sessionInputView.userInteractionEnabled = NO;
        self.sessionInputView.userInteractionEnabled = NO;
        //: self.canTapVoiceBtn = NO;
        self.canTapVoiceBtn = NO;
    //: } else {
    } else {
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"] color:[UIColor grayColor]];
        [self.sessionInputView chemicalElementColor:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] kOnTitle]] duringCan:[UIColor grayColor]];
        //: self.sessionInputView.userInteractionEnabled = YES;
        self.sessionInputView.userInteractionEnabled = YES;
        //: self.canTapVoiceBtn = YES;
        self.canTapVoiceBtn = YES;
    }
}


//获取当前最上层的控制器
//: - (UIViewController *)getTopMostController {
- (UIViewController *)keyDown {
    //: UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //循环之前tempVC和topVC是一样的
    //: UIViewController *tempVC = topVC;
    UIViewController *tempVC = topVC;
    //: while (1) {
    while (1) {
        //: if ([topVC isKindOfClass:[UITabBarController class]]) {
        if ([topVC isKindOfClass:[UITabBarController class]]) {
            //: topVC = ((UITabBarController*)topVC).selectedViewController;
            topVC = ((UITabBarController*)topVC).selectedViewController;
        }
        //: if ([topVC isKindOfClass:[UINavigationController class]]) {
        if ([topVC isKindOfClass:[UINavigationController class]]) {
            //: topVC = ((UINavigationController*)topVC).visibleViewController;
            topVC = ((UINavigationController*)topVC).visibleViewController;
        }
        //: if (topVC.presentedViewController) {
        if (topVC.presentedViewController) {
            //: topVC = topVC.presentedViewController;
            topVC = topVC.presentedViewController;
        }
        //如果两者一样，说明循环结束了
        //: if ([tempVC isEqual:topVC]) {
        if ([tempVC isEqual:topVC]) {
            //: break;
            break;
        //: } else {
        } else {
        //如果两者不一样，继续循环
            //: tempVC = topVC;
            tempVC = topVC;
        }
    }
    //: return topVC;
    return topVC;
}


//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: [self.interactor updateMessage:message];
        [self.interactor preserveShould:message];
    }
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: FFFMessageModel *model = [self.interactor findMessageModel:message];
        PossibilityMessageStyle *model = [self.interactor pull:message];
        //下完缩略图之后，因为比例有变化，重新刷下宽高。
        //: [model cleanCache];
        [model systemBubble];
        //: [self.interactor updateMessage:message];
        [self.interactor preserveShould:message];
    }
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self ting])
    {
        //: NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts) {
        for (NIMMessageReceipt *receipt in receipts) {
            //: if ([receipt.session isEqual:self.session])
            if ([receipt.session isEqual:self.session])
            {
                //: [handledReceipts addObject:receipt];
                [handledReceipts addObject:receipt];
            }
        }
        //: if (handledReceipts.count)
        if (handledReceipts.count)
        {
            //: [self uiCheckReceipts:handledReceipts];
            [self sendReceipts:handledReceipts];
        }
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//- (void)messagesDeletedInSession:(NIMSession *)session{
//    [self.interactor resetMessages:nil];
//    [self.tableView reloadData];
//}

// 远端消息清空回调
//: - (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
- (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
{
    //: [self refreshMessages];
    [self addressMessages];
}

// 远端消息批量删除删除回调
//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
{
    //: [self refreshMessages];
    [self addressMessages];
}

//- (void)didAddRecentSession:(NIMRecentSession *)recentSession
//           totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}


//: - (void)changeUnreadCount:(NIMRecentSession *)recentSession
- (void)when:(NIMRecentSession *)recentSession
         //: totalUnreadCount:(NSInteger)totalUnreadCount{
         imageIn:(NSInteger)totalUnreadCount{
    //: if ([recentSession.session isEqual:self.session]) {
    if ([recentSession.session isEqual:self.session]) {
        //: return;
        return;
    }

}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if (!filePath || error) {
    if (!filePath || error) {
        //: _sessionInputView.recording = NO;
        _sessionInputView.recording = NO;
        //: [self onRecordFailed:error];
        [self timeFailed:error];
    }
}

//: - (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
    //: if(!error) {
    if(!error) {
        //: if ([self recordFileCanBeSend:filePath]) {
        if ([self greenish:filePath]) {
            //: [self sendMessage:[FFFMessageMaker msgWithAudio:filePath]];
            [self magnitudeView:[EqualLanguage image:filePath]];
        //: }else{
        }else{
            //: [self showRecordFileNotSendReason];
            [self cell];
        }
    //: } else {
    } else {
        //: [self onRecordFailed:error];
        [self timeFailed:error];
    }
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}


//: - (void)recordAudioDidCancelled {
- (void)recordAudioDidCancelled {
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

//: - (void)recordAudioProgress:(NSTimeInterval)currentTime {
- (void)recordAudioProgress:(NSTimeInterval)currentTime {
    //: [_sessionInputView updateAudioRecordTime:currentTime];
    [_sessionInputView supplier:currentTime];
}

//: - (void)recordAudioInterruptionBegin {
- (void)recordAudioInterruptionBegin {
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark - 录音相关接口
#pragma mark - 录音相关接口
//: - (void)onRecordFailed:(NSError *)error{}
- (void)timeFailed:(NSError *)error{}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)greenish:(NSString *)filepath
{
    //: return YES;
    return YES;
}

//: - (void)showRecordFileNotSendReason{}
- (void)cell{}

//: #pragma mark - NIMInputDelegate
#pragma mark - GroundDelegate

//: - (void)didChangeInputHeight:(CGFloat)inputHeight
- (void)signalses:(CGFloat)inputHeight
{
    //: [self.interactor changeLayout:inputHeight];
    [self.interactor blueLayout:inputHeight];

//    self.btnAudio.bottom = self.sessionInputView.top-20;
}

//: #pragma mark - NIMInputActionDelegate
#pragma mark - OnDelegate
//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message
- (void)green:(NSInteger)index should:(NIMMessage *)message
{
//    self.messageForMenu = message;
//    [self praiseViewdidSelectIndex:index];

    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [SizeMaker label:index view:@"" bar:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
            //: [weakSelf.interactor addQuickComment:newComment toMessage:message completion:^(NSError *error)
            [weakSelf.interactor textEnableCompletion:newComment viewAdd_strong:message date:^(NSError *error)
            {
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf table];
            //: }];
            }];

}
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item{
- (BOOL)statuses:(LanguageItem *)item{
    //: SEL sel = item.selctor;
    SEL sel = item.selctor;
    //: BOOL handled = sel && [self respondsToSelector:sel];
    BOOL handled = sel && [self respondsToSelector:sel];
    //: if (handled) {
    if (handled) {
        //: do {
        do {
        //: [self performSelector:sel withObject:item];
        [self performSelector:sel withObject:item];
        //: } while (0);
        } while (0);
        //: handled = YES;
        handled = YES;
    }
    //: return handled;
    return handled;
}

//: - (void)onTextChanged:(id)sender{}
- (void)spaceChanged:(id)sender{}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers
- (void)constituentUsers:(NSString *)text parent:(NSArray *)atUsers
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [EqualLanguage change:text];
    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[UserKit totalSend].provider color:[NIMSDK sharedSDK].loginManager.currentAccount image:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[ComfortableMiniData sharedInstance] userBeastUrl].resign, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message];
    [self magnitudeView:message];
}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage
- (void)content:(NSString *)text on:(NSArray *)atUsers poke:(NIMMessage *)replymessage
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [EqualLanguage change:text];
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *contents = @"";
    NSString *contents = @"";

    //: if(replymessage.messageType == NIMMessageTypeText){
    if(replymessage.messageType == NIMMessageTypeText){
        //: type = @"TEXT";
        type = [[ComfortableMiniData sharedInstance] app_cussContent];
        //: contents = replymessage.text;
        contents = replymessage.text;
    //: }else if (replymessage.messageType == NIMMessageTypeImage){
    }else if (replymessage.messageType == NIMMessageTypeImage){
        //: type = @"IMAGE";
        type = [[ComfortableMiniData sharedInstance] notiBeginQueryValue];
        //: NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        //: contents = url;
        contents = url;
    //: }else if (replymessage.messageType == NIMMessageTypeVideo){
    }else if (replymessage.messageType == NIMMessageTypeVideo){
        //: type = @"VIDEO";
        type = [[ComfortableMiniData sharedInstance] mainRidiculousContent];
        //: NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        //: contents = videoObject.coverUrl;
        contents = videoObject.coverUrl;
    //: }else if (replymessage.messageType == NIMMessageTypeAudio){
    }else if (replymessage.messageType == NIMMessageTypeAudio){
        //: type = @"AUDIO";
        type = [[ComfortableMiniData sharedInstance] showPitaText];
        //: NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        //: NSLog(@"%ld",(long)audioObject.duration);
        //: contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
        contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
    }

    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.message = replymessage;
    option.message = replymessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replymessage.from option:option];
    ViewInfo *info = [[UserKit totalSend] color:replymessage.from image:option];

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
            //: @"type": type,//type:TEXT、IMAGE、VIDEO
            [[ComfortableMiniData sharedInstance] userBornData]: type,//type:TEXT、IMAGE、VIDEO
            //: @"content": contents,//content:文本内容、图片url、视频url
            [[ComfortableMiniData sharedInstance] m_dingProData]: contents,//content:文本内容、图片url、视频url
            //: @"userName": info.showName,//消息发送者
            [[ComfortableMiniData sharedInstance] noti_explorationId]: info.showName,//消息发送者
            //: @"messageid": replymessage.messageId,//messageid：留着备用
            [[ComfortableMiniData sharedInstance] main_sprayName]: replymessage.messageId,//messageid：留着备用
    //: };
    };

    //: message.remoteExt = @{@"reply": dic };
    message.remoteExt = @{[[ComfortableMiniData sharedInstance] k_artificialText]: dic };

    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[UserKit totalSend].provider color:[NIMSDK sharedSDK].loginManager.currentAccount image:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[ComfortableMiniData sharedInstance] userBeastUrl].resign, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message completion:^(NSError *err) {
    [self model:message clear:^(NSError *err) {
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: - (void)onSelectEmoticon:(NIMInputEmoticon *)emoticon
- (void)complete:(BackgroundBar *)emoticon
{
    //: NSString *emoticonID = emoticon.emoticonID;
    NSString *emoticonID = emoticon.emoticonID;
    //: NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    //: NSString *numberStr = [array lastObject];
    NSString *numberStr = [array lastObject];
    //: NSInteger number = [numberStr integerValue];
    NSInteger number = [numberStr integerValue];
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:number content:emoticon.tag ext:@"扩展"];
    __block NIMQuickComment *newComment = [SizeMaker label:number view:emoticon.tag bar:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:number
    [self kibbitzShowTinkle:self.messageForMenu account4t:number
                      //: compltion:^(NSMapTable *result)
                      background:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(number)] comments:result];
        NIMQuickComment *oldComment = [TapOption corner:0 shouldStep:@[@(number)] asTable:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment
            [weakSelf.interactor count:newComment
                                  //: completion:^(NSError *error)
                                  headInside:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf table];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor save:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   setup:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      nameCompletion:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf table];
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)didReplyCancelled
- (void)sonogramDevice
{
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
    //: [self.interactor setReferenceMessage:nil];
    [self.interactor setGroupName:nil];

    //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
    if ([self.someFormat respondsToSelector:@selector(laterDoingClearMetallicSentDedication)])
    {
        //: if ([self.sessionConfig clearThreadMessageAfterSent])
        if ([self.someFormat laterDoingClearMetallicSentDedication])
        {
            //: [self.sessionConfig cleanThreadMessage];
            [self.someFormat backgroundMessage];
        }
    }
}


//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)down:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId
                 oscillogram:(NSString *)catalogId
{
//    NSBundle *bundle = [UserKit sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:chartletId ofType:nil inDirectory:NEEKIT_EmojiPath]];
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EqualArchiveManager message] emoji];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
    NSData *imageData = [NSData dataWithContentsOfFile:imagePath];

//    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
//
//    NIMMessage *message = [EqualLanguage msgWithImage:gif];
//    [self sendMessage:message];
//

    //: NIMMessage *message = [FFFMessageMaker msgWithImageData:imageData extension:@""];
    NIMMessage *message = [EqualLanguage layer:imageData broad:@""];
//    message.messageSubType = 77;//标记gif用
    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
    NSMutableDictionary *dic = [[BottomConfig at] Gdic];
//    NSData *imageData = UIImagePNGRepresentation(image);
    //: [dic setObject:imageData forKey:message.messageId];
    [dic setObject:imageData forKey:message.messageId];

    //: [self sendMessage:message];
    [self magnitudeView:message];

    //: [self.sessionInputView.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.sessionInputView.toolBar setCommunication:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] kOnTitle]]];

//    [self.sessionInputView endEditing:YES];
}

//: - (void)onCancelRecording
- (void)queryedIn
{
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: - (void)onStopRecording
- (void)teamRed
{
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
//    [self.audioContent animationClose];
}

//: - (void)onStartRecording
- (void)keyDay
{
    //: _sessionInputView.recording = YES;
    _sessionInputView.recording = YES;
//    [_sessionInputView endEditing:YES];

    //: NIMAudioType type = [self recordAudioType];
    NIMAudioType type = [self soul];
    //: NSTimeInterval duration = [MyUserKit sharedKit].config.recordMaxDuration;
    NSTimeInterval duration = [UserKit totalSend].config.recordMaxDuration;

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];

    //: [[NIMSDK sharedSDK].mediaManager record:type
    [[NIMSDK sharedSDK].mediaManager record:type
                                   //: duration:duration];
                                   duration:duration];
}

//: #pragma mark NIMChatExtendManagerDelegate
#pragma mark NIMChatExtendManagerDelegate

//: - (void)onRecvQuickComment:(NIMQuickComment *)comment
- (void)onRecvQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor preserveShould:comment.message];
}


//: - (void)onRemoveQuickComment:(NIMQuickComment *)comment
- (void)onRemoveQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor preserveShould:comment.message];
}

//: - (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiPinMessage:message];
    [self quantityerpretation:message];
}

//: - (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiUnpinMessage:message];
    [self telegram:message];
}

//: #pragma mark - FFFMessageCellDelegate
#pragma mark - AllowMessageSuccess
//: - (BOOL)onTapCell:(FFFKitEvent *)event{
- (BOOL)bringHome:(KitEvent *)event{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;
    //: if ([eventName isEqualToString:FFFKitEventNameTapAudio])
    if ([eventName isEqualToString:app_applyText])
    {
        //: [self.interactor mediaAudioPressed:event.messageModel];
        [self.interactor mediaPressed:event.messageModel];
        //: handle = YES;
        handle = YES;
    }
    //: return handle;
    return handle;
}

//: - (void)onRetryMessage:(NIMMessage *)message
- (void)backgroundValue:(NIMMessage *)message
{
    //: if (message.isReceivedMsg) {
    if (message.isReceivedMsg) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
                                                           //: error:nil];
                                                           error:nil];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] resendMessage:message
        [[[NIMSDK sharedSDK] chatManager] resendMessage:message
                                                  //: error:nil];
                                                  error:nil];
    }
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)app:(NIMMessage *)message
                 //: inView:(UIView *)view
                 tapOpen:(UIView *)view
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setGroupName:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: if ([self shouldShowMenuByMessage:message])
    if ([self shouldInCipher:message])
    {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [InscriptionView.after removeFromSuperview];
        //: [self showMenuWithMessage:message withView:view];
        [self should:message modeReply:view];
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)nowadays:(NIMMessage *)message someTo:(void(^)(id data))complete; {
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setGroupName:message];

    //: handle = [self shouldShowMenuByMessage:message];
    handle = [self shouldInCipher:message];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: !complete ? : complete(wself);
    !complete ? : complete(wself);

    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)signs:(NIMMessage *)message
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setGroupName:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}


//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message
- (BOOL)nationalitying:(NIMMessage *)message
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAudioPlayedStatusIcon)])
    if ([self.someFormat respondsToSelector:@selector(refreshSecret)])
    {
        //: disable = [self.sessionConfig disableAudioPlayedStatusIcon];
        disable = [self.someFormat refreshSecret];
    }
    //: return disable;
    return disable;
}

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)message:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                remarkBottom:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected
               placeIn:(BOOL)isSelected
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (isSelected)
    if (isSelected)
    {
        //: [self.interactor delQuickComment:comment
        [self.interactor save:comment
                           //: targetMessage:message
                           setup:message
                              //: completion:^(NSError *error)
                              nameCompletion:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }
    //: else
    else
    {
        //: NIMQuickComment *aComment = [comment copy];
        NIMQuickComment *aComment = [comment copy];
        //: [self.interactor addQuickComment:aComment
        [self.interactor textEnableCompletion:aComment
                               //: toMessage:message
                               viewAdd_strong:message
                              //: completion:^(NSError *error)
                              date:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }

}

//: #pragma mark - 配置项
#pragma mark - 配置项
//: - (id<FFFSessionConfig>)sessionConfig
- (id<SaloonConfig>)someFormat
{
    //: return nil; 
    return nil; //使用默认配置
}

//: #pragma mark - 配置项列表
#pragma mark - 配置项列表
//是否需要监听新消息通知 : 某些场景不需要监听新消息，如浏览服务器消息历史界面
//: - (BOOL)shouldAddListenerForNewMsg
- (BOOL)ting
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableReceiveNewMessages)]) {
    if ([self.someFormat respondsToSelector:@selector(underInput)]) {
        //: should = ![self.sessionConfig disableReceiveNewMessages];
        should = ![self.someFormat underInput];
    }
    //: return should;
    return should;
}



//是否需要显示输入框 : 某些场景不需要显示输入框，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldShowInputView
- (BOOL)manager
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableInputView)]) {
    if ([self.someFormat respondsToSelector:@selector(rangeSession)]) {
        //: should = ![self.sessionConfig disableInputView];
        should = ![self.someFormat rangeSession];
    }
    //: return should;
    return should;
}


//当前录音格式 : NIMSDK 支持 aac 和 amr 两种格式
//: - (NIMAudioType)recordAudioType
- (NIMAudioType)soul
{
    //: NIMAudioType type = NIMAudioTypeAAC;
    NIMAudioType type = NIMAudioTypeAAC;
    //: if ([self.sessionConfig respondsToSelector:@selector(recordType)]) {
    if ([self.someFormat respondsToSelector:@selector(dismissTo)]) {
        //: type = [self.sessionConfig recordType];
        type = [self.someFormat dismissTo];
    }
    //: return type;
    return type;
}

//是否需要监听感应器事件
//: - (BOOL)needProximityMonitor
- (BOOL)display
{
    //: BOOL needProximityMonitor = YES;
    BOOL needProximityMonitor = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableProximityMonitor)]) {
    if ([self.someFormat respondsToSelector:@selector(nameKey)]) {
        //: needProximityMonitor = !self.sessionConfig.disableProximityMonitor;
        needProximityMonitor = !self.someFormat.nameKey;
    }
    //: return needProximityMonitor;
    return needProximityMonitor;
}


//: #pragma mark -
#pragma mark -
//: #pragma mark - 长按菜单事件
#pragma mark - 长按菜单事件
//: - (NIMMessage *)messageForMenu
- (NIMMessage *)messageForMenu
{
    //: return _messageForMenu;
    return _messageForMenu;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    //: for (UIMenuItem *item in items) {
    for (UIMenuItem *item in items) {
        //: if (action == [item action]){
        if (action == [item action]){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (void)copyText:(id)sender
- (void)table:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.Counternal.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.Counternal];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)deleteMsg:(id)sender
- (void)appearance:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self deleteNameMessage:message];
    //: [self.conversationManager deleteMessage:message];
    [self.record deleteMessage:message];
}

//: - (void)menuDidHide:(NSNotification *)notification
- (void)providering:(NSNotification *)notification
{
    //: [UIMenuController sharedMenuController].menuItems = nil;
    [UIMenuController sharedMenuController].menuItems = nil;
}

//: - (void)onTapMenuItemCopy:(FFFMediaItem *)item
- (void)metalanguaging:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.Counternal.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.Counternal];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)monitor:(LanguageItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self deleteNameMessage:message];
    //: [self.conversationManager deleteMessage:message];
    [self.record deleteMessage:message];
}

//: #pragma mark - 操作接口
#pragma mark - 操作接口
//: - (void)uiAddMessages:(NSArray *)messages
- (void)add:(NSArray *)messages
{
    //: [self.interactor addMessages:messages];
    [self.interactor messageTable:messages];
}

//: - (void)uiInsertMessages:(NSArray *)messages
- (void)objectUser:(NSArray *)messages
{
    //: [self.interactor insertMessages:messages];
    [self.interactor view:messages];
}

//: - (FFFMessageModel *)uiDeleteMessage:(NIMMessage *)message{
- (PossibilityMessageStyle *)deleteNameMessage:(NIMMessage *)message{
    //: FFFMessageModel *model = [self.interactor deleteMessage:message];
    PossibilityMessageStyle *model = [self.interactor nutsAndBolts:message];
    //: if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: [self uiCheckReceipts:nil];
        [self sendReceipts:nil];
    }
    //: return model;
    return model;
}

//: - (void)uiUpdateMessage:(NIMMessage *)message{
- (void)refreshKeyHeliogram:(NIMMessage *)message{
    //: [self.interactor updateMessage:message];
    [self.interactor preserveShould:message];
}

//: - (void)uiPinMessage:(NIMMessage *)message
- (void)quantityerpretation:(NIMMessage *)message
{
    //: [self.interactor addPinForMessage:message];
    [self.interactor data:message];
}

//: - (void)uiUnpinMessage:(NIMMessage *)message
- (void)telegram:(NIMMessage *)message
{
    //: [self.interactor removePinForMessage:message];
    [self.interactor itemMessage:message];
}

//: - (void)uiCheckReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)sendReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: [self.interactor checkReceipts:receipts];
    [self.interactor keepAnEyeDoingEndedLikeNonsolidColour:receipts];
}

//: - (void)onTapCameraBtn:(id)sender
- (void)progresses:(id)sender
{
//    [self.interactor mediaShootPressed];

    //: [self.view addSubview:self.customAlbumView];
    [self.view addSubview:self.customAlbumView];
    //: [self.customAlbumView.albumPickerView reloadMediaData];
    [self.customAlbumView.albumPickerView alongOpen];
    //: [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    //: [self.customAlbumView.albumPickerView.collectionView reloadData];
    [self.customAlbumView.albumPickerView.collectionView reloadData];
    //: [self.customAlbumView.confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [self.customAlbumView.confirmButton setTitle:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] app_foodImageStr]] forState:UIControlStateNormal];
    //: [self.customAlbumView animationShow];
    [self.customAlbumView channelAbode];

}

//: - (void)onTapAlbunBtn:(id)sender
- (void)scaleValue:(id)sender
{
//    [self.interactor mediaPicturePressed];

//    [self.view addSubview:self.photopicview];
//    self.photopicview.hidden = NO;
}

//: - (void)CustomPickerDidSelectCamera
- (void)tipTing
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView animationEnableClose];
    //: [self.interactor mediaShootPressed];
    [self.interactor min];
}

//- (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets
//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)locationAssets:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"assets:%@",assets);

    //: for (PHAsset *asset in assets) {
    for (PHAsset *asset in assets) {
        //: if (asset.mediaType == PHAssetMediaTypeVideo) {
        if (asset.mediaType == PHAssetMediaTypeVideo) {

            // 获取视频路径
            //: [self getVideoPathFromPHAsset:asset completion:^(NSString *path) {
            [self image:asset more:^(NSString *path) {
                //: if (path) {
                if (path) {
                    //: NSLog(@"视频路径: %@", path);
                    // 使用路径...
                    //: NIMMessage *message = [FFFMessageMaker msgWithVideo:path];
                    NIMMessage *message = [EqualLanguage stepTv:path];
                    //: [self sendMessage:message];
                    [self magnitudeView:message];
                //: } else {
                } else {
                    //: NSLog(@"获取视频路径失败");
                }
            //: }];
            }];

        //: }else{
        }else{




            //: [self getOriginalImageFromAsset:asset completion:^(UIImage *image) {
            [self originalName:asset completion:^(UIImage *image) {
                //: if (image) {
                if (image) {
                    //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
                    NIMMessage *message = [EqualLanguage successImage:image];

                    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[BottomConfig at] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [self sendMessage:message];
                    [self magnitudeView:message];

                //: } else {
                } else {
                    //: NSLog(@"获取图片路径失败");
                }
            //: }];
            }];

//            // 获取图片路径
//            [self getImagePathFromPHAsset:asset completion:^(NSString *path) {
//                if (path) {
//                    NSLog(@"图片路径: %@", path);
//                    // 使用路径...
//                    NIMMessage *message = [EqualLanguage msgWithImagePath:path];
//                    [self sendMessage:message];
//                } else {
//                    NSLog(@"获取图片路径失败");
//                }
//            }];


        }
    }

}
//获取图片
//: - (void)getOriginalImageFromAsset:(PHAsset *)asset completion:(void (^)(UIImage *image))completion {
- (void)originalName:(PHAsset *)asset completion:(void (^)(UIImage *image))completion {
    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset
    [[PHImageManager defaultManager] requestImageDataForAsset:asset
                                                     //: options:options
                                                     options:options
                                               //: resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
                                               resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: UIImage *image = [UIImage imageWithData:imageData];
            UIImage *image = [UIImage imageWithData:imageData];
            //: completion(image);
            completion(image);
        //: } else {
        } else {
            //: NSLog(@"获取原始图片失败: %@", info);
            //: completion(nil);
            completion(nil);
        }
    //: }];
    }];
}

// 获取图片路径
//: - (void)getImagePathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)from:(PHAsset *)asset data:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeImage) {
    if (asset.mediaType != PHAssetMediaTypeImage) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;
    //: options.synchronous = NO;
    options.synchronous = NO;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_image_%@.jpg", [NSUUID UUID].UUIDString]];
            NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[ComfortableMiniData sharedInstance] user_childText], [NSUUID UUID].UUIDString]];
            //: [imageData writeToFile:filePath atomically:YES];
            [imageData writeToFile:filePath atomically:YES];
            //: if (completion) completion(filePath);
            if (completion) completion(filePath);
        //: } else {
        } else {
            //: if (completion) completion(nil);
            if (completion) completion(nil);
        }
    //: }];
    }];
}
// 获取视频路径
//: - (void)getVideoPathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)image:(PHAsset *)asset more:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeVideo) {
    if (asset.mediaType != PHAssetMediaTypeVideo) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    //: options.version = PHVideoRequestOptionsVersionOriginal;
    options.version = PHVideoRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        //: if ([avAsset isKindOfClass:[AVURLAsset class]]) {
        if ([avAsset isKindOfClass:[AVURLAsset class]]) {
            //: AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            //: NSURL *url = urlAsset.URL;
            NSURL *url = urlAsset.URL;
            //: if (completion) completion(url.path);
            if (completion) completion(url.path);
        //: } else {
        } else {
            // 如果无法直接获取URL，则需要导出到临时文件
            //: [self exportVideoToTempFile:avAsset completion:completion];
            [self green:avAsset allowMessage:completion];
        }
    //: }];
    }];
}

//: - (void)exportVideoToTempFile:(AVAsset *)avAsset completion:(void (^)(NSString *path))completion {
- (void)green:(AVAsset *)avAsset allowMessage:(void (^)(NSString *path))completion {
    //: NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    //: if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
    if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
        //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];
        AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];

        //: NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_video_%@.mp4", [NSUUID UUID].UUIDString]];
        NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[ComfortableMiniData sharedInstance] kSingleId], [NSUUID UUID].UUIDString]];
        //: session.outputURL = [NSURL fileURLWithPath:outputPath];
        session.outputURL = [NSURL fileURLWithPath:outputPath];
        //: session.outputFileType = AVFileTypeMPEG4;
        session.outputFileType = AVFileTypeMPEG4;
        //: session.shouldOptimizeForNetworkUse = YES;
        session.shouldOptimizeForNetworkUse = YES;

        //: [session exportAsynchronouslyWithCompletionHandler:^{
        [session exportAsynchronouslyWithCompletionHandler:^{
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (session.status == AVAssetExportSessionStatusCompleted) {
                if (session.status == AVAssetExportSessionStatusCompleted) {
                    //: if (completion) completion(outputPath);
                    if (completion) completion(outputPath);
                //: } else {
                } else {
                    //: if (completion) completion(nil);
                    if (completion) completion(nil);
                }
            //: });
            });
        //: }];
        }];
    //: } else {
    } else {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)onTapMediaItemPicture:(FFFMediaItem *)item
- (void)addWith:(LanguageItem *)item
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor radiogram];
}

//: - (void)onTapMediaItemShoot:(FFFMediaItem *)item
- (void)areaShoot:(LanguageItem *)item
{
    //: [self.interactor mediaShootPressed];
    [self.interactor min];
}

//: - (void)onTapMediaItemLocation:(FFFMediaItem *)item
- (void)backgroundDoingText:(LanguageItem *)item
{
//    [self.interactor mediaLocationPressed];
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent text];

}

//: - (void)onTapTableView:(id)sender
- (void)overLanguageView:(id)sender
{
//    InscriptionView.shareMenuView.praiseView.hidden = YES;
//    InscriptionView.shareMenuView.buttonsBgView.hidden = NO;
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [InscriptionView.after removeFromSuperview];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    //: self.photopicview.hidden = YES;
    self.photopicview.hidden = YES;
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: if (self.view.window) {
    if (self.view.window) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
        [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
         {
             //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
             [[NIMSDK sharedSDK].mediaManager cancelRecord];
             //: [wself.interactor cleanCache];
             [wself.interactor value];
             //: [wself.sessionInputView reset];
             [wself.sessionInputView successInputReset];
             //: [wself.tableView reloadData];
             [wself.tableView reloadData];
             //: [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
             [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
         //: } completion:nil];
         } completion:nil];
    }
}


//: #pragma mark - 标记已读
#pragma mark - 标记已读
//: - (void)markRead
- (void)after
{
    //: [self.interactor markRead:YES];
    [self.interactor lastex:YES];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)tag
{
    //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
    [[NIMSDK sharedSDK].chatManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
}

//: - (void)removeListener
- (void)imagePostListener
{
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];

}


//: - (id<NIMConversationManager>)conversationManager{
- (id<NIMConversationManager>)record{
    //: switch (self.session.sessionType) {
    switch (self.session.sessionType) {
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
            //: return nil;
            return nil;
            //: break;
            break;
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        //: default:
        default:
            //: return [NIMSDK sharedSDK].conversationManager;
            return [NIMSDK sharedSDK].conversationManager;
    }
}


//: - (void)setUpTitleView
- (void)by
{
    //: FFFKitTitleView *titleView = (FFFKitTitleView *)self.navigationItem.titleView;
    ScaleView *titleView = (ScaleView *)self.navigationItem.titleView;
    //: if (!titleView || ![titleView isKindOfClass:[FFFKitTitleView class]])
    if (!titleView || ![titleView isKindOfClass:[ScaleView class]])
    {
        //: titleView = [[FFFKitTitleView alloc] initWithFrame:CGRectZero];
        titleView = [[ScaleView alloc] initWithFrame:CGRectZero];
        //: self.navigationItem.titleView = titleView;
        self.navigationItem.titleView = titleView;

        //: titleView.titleLabel.text = self.sessionTitle;
        titleView.titleLabel.text = self.user;
        //: titleView.subtitleLabel.text = self.sessionSubTitle;
        titleView.subtitleLabel.text = self.of;

        //: self.titleLabel = titleView.titleLabel;
        self.titleLabel = titleView.titleLabel;
        //: self.subTitleLabel = titleView.subtitleLabel;
        self.subTitleLabel = titleView.subtitleLabel;
    }

    //: [titleView sizeToFit];
    [titleView sizeToFit];
    //: self.subtitle.text = self.sessionSubTitle;
    self.subtitle.text = self.of;
}

//: - (void)refreshSessionTitle:(NSString *)title
- (void)buttonChild:(NSString *)title
{
    //: self.titleLabel.text = title;
    self.titleLabel.text = title;
//    self.labtitle.text = self.sessionTitle;
    //: [self setUpTitleView];
    [self by];
}


//: - (void)refreshSessionSubTitle:(NSString *)title
- (void)post:(NSString *)title
{
    //: self.subTitleLabel.text = title;
    self.subTitleLabel.text = title;
    //: self.subtitle.text = title;
    self.subtitle.text = title;
    //: if([title isEqualToString:@"离线".ntes_localized]){
    if([title isEqualToString:@"离线".with]){
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"777777"];
        self.subtitle.textColor = [UIColor recordView:[[ComfortableMiniData sharedInstance] k_potentialIdent]];
    //: }else{
    }else{
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"#00B01B"];
        self.subtitle.textColor = [UIColor recordView:[[ComfortableMiniData sharedInstance] appFedValue]];
    }
    //: [self setUpTitleView];
    [self by];
}

//: - (void)refreshMessages
- (void)addressMessages
{
    //: [self.interactor resetMessages:nil];
    [self.interactor messages:nil];
}

//: - (NSArray *)menusItems:(NIMMessage *)message {
- (NSArray *)user:(NIMMessage *)message {
    //: return nil;
    return nil;
}

//: - (void)scrollToMessage:(NIMMessage *)message
- (void)contentMessage:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor canIndex:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        //: [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

//: - (void)cleanMenuMessage
- (void)table
{
    //: [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
}

//: - (void)hadCommentThisMessage:(NIMMessage *)message
- (void)kibbitzShowTinkle:(NIMMessage *)message
                         //: type:(int64_t)type
                         account4t:(int64_t)type
                    //: compltion:(void(^)(NSMapTable *))completion
                    background:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
        //: if (completion)
        if (completion)
        {
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)shouldInCipher:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification)
        message.messageType == NIMMessageTypeNotification)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (void)showMenuWithMessage:(NIMMessage *)message withView:(UIView *)view {
- (void)should:(NIMMessage *)message modeReply:(UIView *)view {

    //: [[FFFBubbleMenuView shareMenuView] removeFromSuperview];
    [[InscriptionView after] removeFromSuperview];

    //: NSArray *btns = [self genMediaButtonsWithMessage:message];
    NSArray *btns = [self tap:message];

    //: if (btns.count > 0) {
    if (btns.count > 0) {

        //: CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        //: CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];
        CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: [[FFFBubbleMenuView shareMenuView] showViewWithButtonModels:btns cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(FFFMediaItem *item) {
        [[InscriptionView after] exceptView:btns mentalRepresentation:cursorStartRectToWindow assemblage:tempRect range:^(LanguageItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: [self onTapMediaItem:item];
            [self statuses:item];

            //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
            [InscriptionView.after removeFromSuperview];
        //: }praiseBlock:^(NSInteger tag) {
        }text:^(NSInteger tag) {
            //: [self praiseViewdidSelectIndex:tag];
            [self alter:tag];
        //: }];
        }];
    }

}
//: - (void)praiseViewdidSelectIndex:(NSInteger)index
- (void)alter:(NSInteger)index
{
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [SizeMaker label:index view:@"" bar:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:index
    [self kibbitzShowTinkle:self.messageForMenu account4t:index
                      //: compltion:^(NSMapTable *result)
                      background:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(index)] comments:result];
        NIMQuickComment *oldComment = [TapOption corner:0 shouldStep:@[@(index)] asTable:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment toMessage:self.messageForMenu completion:^(NSError *error)
            [weakSelf.interactor textEnableCompletion:newComment viewAdd_strong:self.messageForMenu date:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf table];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor save:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   setup:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      nameCompletion:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] mCriticalTotalernMessage]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf table];
            //: }];
            }];
        }
    //: }];
    }];
}
//: - (NSArray *)genMediaButtonsWithMessage:(NIMMessage *)message {
- (NSArray *)tap:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.sessionConfig)
    if (!self.someFormat)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[UserKit totalSend].config supervise:message];
    }
    //: else if([self.sessionConfig respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.someFormat respondsToSelector:@selector(outdoorsing:)])
    {
        //: items = [self.sessionConfig menuItemsWithMessage:message];
        items = [self.someFormat outdoorsing:message];
    }

    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(LanguageItem *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        ColorModel *model = [[ColorModel alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

    //: }];
    }];

    //: return selectedAllRangeButtons;
    return selectedAllRangeButtons;
}

//: - (void)onTapAudioBtn:(id)sender
- (void)tips:(id)sender
{
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent text];
}

//: - (void)handleAudioBtn
- (void)cellBtn
{
//    [self.sessionInputView refreshStatus:NIMInputStatusText];
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent text];
}

//: - (UIButton *)btnAudio
- (UIButton *)btnAudio
{
    //: if (!_btnAudio) {
    if (!_btnAudio) {
        //: _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice bearDown]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        //: _btnAudio.backgroundColor = [UIColor colorWithHexString:@"#F7BA00"];
        _btnAudio.backgroundColor = [UIColor recordView:[[ComfortableMiniData sharedInstance] user_bubbleText]];
        //: [_btnAudio setImage:[UIImage imageNamed:@"icon_toolview_voice_normal"] forState:UIControlStateNormal];
        [_btnAudio setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] k_sufferData]] forState:UIControlStateNormal];
        //: _btnAudio.layer.cornerRadius = 20;
        _btnAudio.layer.cornerRadius = 20;
        //: [_btnAudio addTarget:self action:@selector(handleAudioBtn) forControlEvents:UIControlEventTouchUpInside];
        [_btnAudio addTarget:self action:@selector(cellBtn) forControlEvents:UIControlEventTouchUpInside];

    }
    //: return _btnAudio;
    return _btnAudio;
}

//: - (void)handleAlbumBtn
- (void)recordAlbum
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaPicturePressed];
    [self.interactor radiogram];
}

//: - (void)handleShotBtn
- (void)messageData
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaShootPressed];
    [self.interactor min];
}

//: - (PhotoContainerView *)customAlbumView
- (OrientationView *)customAlbumView
{
    //: if(!_customAlbumView){
    if(!_customAlbumView){
        //: _customAlbumView = [[PhotoContainerView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _customAlbumView = [[OrientationView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _customAlbumView.delegate = self;
        _customAlbumView.delegate = self;

                //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleParentTap)];
                UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(latchkeyDate)];
                //: singleTapclose.delegate = self;
                singleTapclose.delegate = self;
                //: singleTapclose.cancelsTouchesInView = NO; 
                singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
                //: [_customAlbumView addGestureRecognizer:singleTapclose];
                [_customAlbumView addGestureRecognizer:singleTapclose];
    }
    //: return _customAlbumView;
    return _customAlbumView;
}
//: - (void)handleParentTap
- (void)latchkeyDate
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView animationEnableClose];
}

// 实现UIGestureRecognizerDelegate方法
//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // 获取触摸点位置
    //: CGPoint touchPoint = [touch locationInView:self.customAlbumView];
    CGPoint touchPoint = [touch locationInView:self.customAlbumView];

    // 检查触摸点是否在子视图上
    //: for (UIView *subview in self.customAlbumView.subviews) {
    for (UIView *subview in self.customAlbumView.subviews) {
        //: if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
        if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
            //: return NO; 
            return NO; // 如果触摸点在子视图上，父视图手势不响应
        }
    }

    //: return YES; 
    return YES; // 其他区域父视图手势响应
}

//: - (UIView *)photopicview
- (UIView *)photopicview
{
    //: if (!_photopicview) {
    if (!_photopicview) {
        //: _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        //: _photopicview.backgroundColor = [UIColor whiteColor];
        _photopicview.backgroundColor = [UIColor whiteColor];
        //: _photopicview.layer.cornerRadius = 12;
        _photopicview.layer.cornerRadius = 12;
        //: _photopicview.layer.masksToBounds = YES;
        _photopicview.layer.masksToBounds = YES;
        //: _photopicview.hidden = YES;
        _photopicview.hidden = YES;

        //: UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnAlbum.frame = CGRectMake(0, 0, 120, 78);
        btnAlbum.frame = CGRectMake(0, 0, 120, 78);
//        btnAlbum.backgroundColor = ThemeColor;
        //: [btnAlbum setImage:[UIImage imageNamed:@"icon_toolview_album"] forState:UIControlStateNormal];
        [btnAlbum setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] m_replyDentMessage]] forState:UIControlStateNormal];
//        btnAlbum.layer.cornerRadius = 20;
        //: [btnAlbum addTarget:self action:@selector(handleAlbumBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnAlbum addTarget:self action:@selector(recordAlbum) forControlEvents:UIControlEventTouchUpInside];
        //: btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnAlbum setTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] forState:UIControlStateNormal];
        [btnAlbum setTitle:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] showAttendDetectiveData]] forState:UIControlStateNormal];
        //: [btnAlbum layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnAlbum backgroundSpace:(MKButtonEdgeInsetsStyleTop) at:10];
        //: [_photopicview addSubview:btnAlbum];
        [_photopicview addSubview:btnAlbum];

        //: UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnShot.frame = CGRectMake(120, 0, 120, 78);
        btnShot.frame = CGRectMake(120, 0, 120, 78);
//        btnShot.backgroundColor = ThemeColor;
        //: [btnShot setImage:[UIImage imageNamed:@"icon_toolview_camera"] forState:UIControlStateNormal];
        [btnShot setImage:[UIImage imageNamed:[[ComfortableMiniData sharedInstance] appOffTitle]] forState:UIControlStateNormal];
//        btnShot.layer.cornerRadius = 20;
        //: [btnShot addTarget:self action:@selector(handleShotBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnShot addTarget:self action:@selector(messageData) forControlEvents:UIControlEventTouchUpInside];
        //: btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnShot setTitle:[FFFLanguageManager getTextWithKey:@"message_send_camera"] forState:UIControlStateNormal];
        [btnShot setTitle:[MatronymicPath colorStreetwise:[[ComfortableMiniData sharedInstance] notiChampionFormat]] forState:UIControlStateNormal];
        //: [btnShot layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnShot backgroundSpace:(MKButtonEdgeInsetsStyleTop) at:10];
        //: [_photopicview addSubview:btnShot];
        [_photopicview addSubview:btnShot];
    }
    //: return _photopicview;
    return _photopicview;
}

//: - (FFFInputAudioView *)audioContent
- (FruitageView *)audioContent
{
    //: if(!_audioContent){
    if(!_audioContent){
        //: _audioContent = [[FFFInputAudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _audioContent = [[FruitageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _audioContent.hidden = YES;
    }
    //: return _audioContent;
    return _audioContent;
}

//: @end
@end