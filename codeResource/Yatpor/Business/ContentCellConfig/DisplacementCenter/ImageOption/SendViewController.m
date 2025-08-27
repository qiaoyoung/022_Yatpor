
#import <Foundation/Foundation.h>
typedef struct {
    Byte infoAnything;
    Byte *defend;
    unsigned int legislationLeading;
    Byte verticalAluminum;
	int zoneCoach;
} WheatManagerData;

NSString *StringFromWheatManagerData(WheatManagerData *data);


//: UserAgreementProtocol
WheatManagerData dreamDropOthersFormat = (WheatManagerData){198, (Byte []){147, 181, 163, 180, 135, 161, 180, 163, 163, 171, 163, 168, 178, 150, 180, 169, 178, 169, 165, 169, 170, 36}, 21, 176, 114};

//: activity_comment_setting_ys
WheatManagerData app_dialId = (WheatManagerData){55, (Byte []){86, 84, 67, 94, 65, 94, 67, 78, 104, 84, 88, 90, 90, 82, 89, 67, 104, 68, 82, 67, 67, 94, 89, 80, 104, 78, 68, 190}, 27, 166, 132};

//: chat_top_bg
WheatManagerData dream_replyName = (WheatManagerData){219, (Byte []){184, 179, 186, 175, 132, 175, 180, 171, 132, 185, 188, 62}, 11, 252, 145};

//: reject
WheatManagerData noti_chapterText = (WheatManagerData){34, (Byte []){80, 71, 72, 71, 65, 86, 1}, 6, 222, 196};

//: UserAgreement_PrivacyPolicy
WheatManagerData dream_offKey = (WheatManagerData){160, (Byte []){245, 211, 197, 210, 225, 199, 210, 197, 197, 205, 197, 206, 212, 255, 240, 210, 201, 214, 193, 195, 217, 240, 207, 204, 201, 195, 217, 40}, 27, 215, 56};

//: is_swed_firnstall
WheatManagerData showMinimizeId = (WheatManagerData){218, (Byte []){179, 169, 133, 169, 173, 191, 190, 133, 188, 179, 168, 180, 169, 174, 187, 182, 182, 20}, 17, 163, 67};

//: agree
WheatManagerData userRefrigeratorCheerFormat = (WheatManagerData){28, (Byte []){125, 123, 110, 121, 121, 73}, 5, 166, 82};

//: #FAF8FD
WheatManagerData notiManufacturerUrl = (WheatManagerData){177, (Byte []){146, 247, 240, 247, 137, 247, 245, 6}, 7, 154, 77};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendViewController.m
// UserKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionListViewController.h"
#import "SendViewController.h"
//: #import "ContentSessionViewController.h"
#import "NameViewController.h"
//: #import "ContentSessionListCell.h"
#import "ReasonConferenceViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentAvatarImageView.h"
#import "MessageSendView.h"
//: #import "ContentMessageUtil.h"
#import "AlongTeam.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "ContentTextHighlight.h"
#import "BarNameHighlight.h"
//: #import "ContentInputEmoticonParser.h"
#import "ReasonTeamParser.h"
//: #import "ContentInputEmoticonManager.h"
#import "CompleteManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "LEEAlert.h"
#import "TeamModeAlert.h"

//: @interface ContentSessionListViewController ()
@interface SendViewController ()

//@property (nonatomic,strong)  UIImageView *navBarHairlineImageView;

//: @end
@end

//: @implementation ContentSessionListViewController
@implementation SendViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    _navBarHairlineImageView.hidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
//    _navBarHairlineImageView.hidden = NO;
}


//: - (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
- (UIImageView *)getToGripsUnder:(UIView *)view {
    //: if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        //: return (UIImageView *)view;
        return (UIImageView *)view;
    }
    //: for (UIView *subview in view.subviews) {
    for (UIView *subview in view.subviews) {
        //: UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        UIImageView *imageView = [self getToGripsUnder:subview];
        //: if (imageView) {
        if (imageView) {
            //: return imageView;
            return imageView;
        }
    }
    //: return nil;
    return nil;
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:StringFromWheatManagerData(&dream_replyName)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.tableFooterView = [[UIView alloc] init];
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: extern NSString *const app_versionKey;
    extern NSString *const app_versionKey;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:app_versionKey object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(topologicalSpace:) name:app_versionKey object:nil];

    //: extern NSString *const k_kitData;
    extern NSString *const k_kitData;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:k_kitData object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recentsing:) name:k_kitData object:nil];

    //: extern NSString *const main_kitData;
    extern NSString *const main_kitData;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:main_kitData object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toolWith:) name:main_kitData object:nil];

    //: [self setupSessions];
    [self byCleanSession];

//    NameDefaults *userDefaults = [NameDefaults standardUserDefaults];
//    if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
//        BOOL un_first_install = [[NSUserDefaults standardUserDefaults] boolForKey:@"is_swed_firnstall"];
//        if (!un_first_install){
//            [self showalert];
//        }
//    }
}

//: - (void)tapGestureRecognizer:(id)sender {
- (void)timeObject:(id)sender {
    //: HMWebViewController *vc = [[HMWebViewController alloc] init];
    MetricLinearUnitViewController *vc = [[MetricLinearUnitViewController alloc] init];
    //: vc.webTitle = [ContentLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [MatronymicPath colorStreetwise:StringFromWheatManagerData(&app_dialId)];
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [NameDefaults argument].yshref;
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

    //: [[LEEAlert getAlertWindow].rootViewController presentViewController:nav animated:YES completion:nil];
    [[TeamModeAlert notice].rootViewController presentViewController:nav animated:YES completion:nil];
}

//: - (void)showalert {
- (void)click {

    //: [LEEAlert alert].config
    [TeamModeAlert shared].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = [ContentLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"];
            label.text = [MatronymicPath colorStreetwise:StringFromWheatManagerData(&dream_offKey)];
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
    //: .LeeAddContent(^(UILabel *label) {
    .LeeAddContent(^(UILabel *label) {

        //: NSString *markString = [ContentLanguageManager getTextWithKey:@"UserAgreementProtocol"];
        NSString *markString = [MatronymicPath colorStreetwise:StringFromWheatManagerData(&dreamDropOthersFormat)];

        //: NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        //: paragraphStyle.lineSpacing = 3;
        paragraphStyle.lineSpacing = 3;
        //: NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        //: [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        //: [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        //: [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];
        [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];

        //: NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        //: [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];
        [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];


        //: [attrsString setAttributes:@{
        [attrsString setAttributes:@{
            //: NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            //: NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
            NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
        //: } range:[attrsString.string rangeOfString:[ContentLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"]]];
        } range:[attrsString.string rangeOfString:[MatronymicPath colorStreetwise:StringFromWheatManagerData(&dream_offKey)]]];

        //: label.attributedText = attrsString;
        label.attributedText = attrsString;
        //: label.textAlignment = NSTextAlignmentLeft;
        label.textAlignment = NSTextAlignmentLeft;

        //: label.userInteractionEnabled = YES;
        label.userInteractionEnabled = YES;

        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognizer:)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(timeObject:)];
        //: [label addGestureRecognizer:tap];
        [label addGestureRecognizer:tap];
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(DisableMessage *action) {

        //: action.title = [ContentLanguageManager getTextWithKey:@"reject"];
        action.title = [MatronymicPath colorStreetwise:StringFromWheatManagerData(&noti_chapterText)];

        //: action.titleColor = [UIColor darkGrayColor];
        action.titleColor = [UIColor darkGrayColor];

        //: action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: exit(0);
            exit(0);
        //: };
        };
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(DisableMessage *action) {

        //: action.type = LEEActionTypeCancel;
        action.type = LEEActionTypeCancel;

        //: action.title = [ContentLanguageManager getTextWithKey:@"agree"];
        action.title = [MatronymicPath colorStreetwise:StringFromWheatManagerData(&userRefrigeratorCheerFormat)];

        //: action.titleColor = [UIColor whiteColor];
        action.titleColor = [UIColor whiteColor];

        //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"is_swed_firnstall"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:StringFromWheatManagerData(&showMinimizeId)];
            //: [[NSUserDefaults standardUserDefaults] synchronize];
            [[NSUserDefaults standardUserDefaults] synchronize];
        //: };
        };

    //: })
    })
    //: .LeeCornerRadius(15.0f)
    .LeeCornerRadius(15.0f)

    //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
    .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)

    //: .LeeShow();
    .LeeShow();


}


//: - (void)setupSessions {
- (void)byCleanSession {
    //: _recentSessions = [self getRecentSessions];
    _recentSessions = [self forefront];
    //: if (!self.recentSessions.count)
    if (!self.recentSessions.count)
    {
        //: _recentSessions = [NSMutableArray array];
        _recentSessions = [NSMutableArray array];
    }
    //: else
    else
    {
        //: _recentSessions = [self customSortRecents:_recentSessions];
        _recentSessions = [self image:_recentSessions];
    }
}

//: - (NSMutableArray *)getRecentSessions {
- (NSMutableArray *)forefront {
    //: return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
}

//: - (void)refresh{
- (void)index{
    //: if (!self.recentSessions.count) {
    if (!self.recentSessions.count) {
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self customSortRecents:self.recentSessions];
        [self image:self.recentSessions];
    }
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: [self onSelectedRecent:recentSession atIndexPath:indexPath];
    [self inheritance:recentSession title:indexPath];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 70.f;
    return 70.f;
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}



//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.recentSessions.count;
    return self.recentSessions.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: return 10;
    return 10;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}



//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *cellId = @"cellId";
    static NSString *cellId = @"cellId";
    //: ContentSessionListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    ReasonConferenceViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: if (!cell) {
    if (!cell) {
        //: cell = [[ContentSessionListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell = [[ReasonConferenceViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        //: [cell.avatarImageView addTarget:self action:@selector(onTouchAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [cell.avatarImageView addTarget:self action:@selector(spaced:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: cell.nameLabel.text = [self nameForRecentSession:recent];
    cell.nameLabel.text = [self video:recent];
    //: [cell.avatarImageView setAvatarBySession:recent.session];
    [cell.avatarImageView setMark:recent.session];
    //: [cell.nameLabel sizeToFit];
    [cell.nameLabel sizeToFit];

    //: cell.messageLabel.attributedText = [self contentForRecentSession:recent];
    cell.messageLabel.attributedText = [self more:recent];
    //: [cell.messageLabel sizeToFit];
    [cell.messageLabel sizeToFit];
    //: cell.timeLabel.text = [self timestampDescriptionForRecentSession:recent];
    cell.timeLabel.text = [self file:recent];
    //: [cell.timeLabel sizeToFit];
    [cell.timeLabel sizeToFit];

    //: BOOL isTop = [self isTopWithNIMRecentSession:recent];
    BOOL isTop = [self style:recent];
    //: if (isTop){
    if (isTop){
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        cell.backgroundColor = [UIColor recordView:StringFromWheatManagerData(&notiManufacturerUrl)];
    //: } else {
    } else {
        //: cell.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
    }

    //: [cell refresh:recent];
    [cell blueCloseUpgrade:recent];
    //: return cell;
    return cell;
}

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)style:(NIMRecentSession *)recentSession; {
    //: return NO;
    return NO;
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didLoadAllRecentSessionCompletion {
- (void)didLoadAllRecentSessionCompletion {
    //: [self setupSessions];
    [self byCleanSession];
    //: [self refresh];
    [self index];
}

//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: [self.recentSessions addObject:recentSession];
    [self.recentSessions addObject:recentSession];
    //: [self sort];
    [self sign];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: for (NIMRecentSession *recent in self.recentSessions)
    for (NIMRecentSession *recent in self.recentSessions)
    {
        //: if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        {
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: break;
            break;
        }
    }
    //: NSInteger insert = [self findInsertPlace:recentSession];
    NSInteger insert = [self happening:recentSession];
    //: [self.recentSessions insertObject:recentSession atIndex:insert];
    [self.recentSessions insertObject:recentSession atIndex:insert];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount
              totalUnreadCount:(NSInteger)totalUnreadCount
{
    //清理本地数据
    //: [self.recentSessions removeObject:recentSession];
    [self.recentSessions removeObject:recentSession];

    //如果删除本地会话后就不允许漫游当前会话，则需要进行一次删除服务器会话的操作
    //: if (self.autoRemoveRemoteSession)
    if (self.autoRemoveRemoteSession)
    {
        //: [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
        [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
                           //: completion:nil];
                           completion:nil];
    }
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self image:_recentSessions];
    //: [self refresh];
    [self index];
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)image:(NSMutableArray *)recentSessions
{
    //: return self.recentSessions;
    return self.recentSessions;
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [self refresh];
        [self index];
    }
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onSelectedAvatar:(NSString *)userId
- (void)elite:(NSString *)userId
             //: atIndexPath:(NSIndexPath *)indexPath{};
             display:(NSIndexPath *)indexPath{};

//: - (void)onSelectedRecent:(NIMRecentSession *)recentSession atIndexPath:(NSIndexPath *)indexPath{
- (void)inheritance:(NIMRecentSession *)recentSession title:(NSIndexPath *)indexPath{
    //: ContentSessionViewController *vc = [[ContentSessionViewController alloc] initWithSession:recentSession.session];
    NameViewController *vc = [[NameViewController alloc] initWithNameExtra:recentSession.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent {
- (NSString *)video:(NIMRecentSession *)recent {
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: return [ContentKitUtil showNick:recent.session.sessionId inSession:recent.session];
        return [TextWithUtil container:recent.session.sessionId magnitudeernalRepresentation:recent.session];
    //: } else if (recent.session.sessionType == NIMSessionTypeTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        //: return team.teamName;
        return team.teamName;
    //: } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        //: return superTeam.teamName;
        return superTeam.teamName;
    //: } else {
    } else {
        //: NSAssert(NO, @"");
        NSAssert(NO, @"");
        //: return nil;
        return nil;
    }
}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)more:(NIMRecentSession *)recent{
    //: NSString *content = [self messageContent:recent.lastMessage];
    NSString *content = [self shouldMessage:recent.lastMessage];
    //: return [[NSAttributedString alloc] initWithString:content ?: @""];
    return [[NSAttributedString alloc] initWithString:content ?: @""];
}

//: - (NSString *)timestampDescriptionForRecentSession:(NIMRecentSession *)recent{
- (NSString *)file:(NIMRecentSession *)recent{
    //: if (recent.lastMessage) {
    if (recent.lastMessage) {
        //: return [ContentKitUtil showTime:recent.lastMessage.timestamp showDetail:NO];
        return [TextWithUtil table:recent.lastMessage.timestamp max:NO];
    }
    // 服务端时间戳以毫秒为单位,需要转化
    //: NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    //: return [ContentKitUtil showTime:timeSecond showDetail:NO];
    return [TextWithUtil table:timeSecond max:NO];
}

//: #pragma mark - Misc
#pragma mark - Misc

//: - (NSInteger)findInsertPlace:(NIMRecentSession *)recentSession{
- (NSInteger)happening:(NIMRecentSession *)recentSession{
    //: __block NSUInteger matchIdx = 0;
    __block NSUInteger matchIdx = 0;
    //: __block BOOL find = NO;
    __block BOOL find = NO;
    //: [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NIMRecentSession *item = obj;
        NIMRecentSession *item = obj;
        //: if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
        if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
            //: *stop = YES;
            *stop = YES;
            //: find = YES;
            find = YES;
            //: matchIdx = idx;
            matchIdx = idx;
        }
    //: }];
    }];
    //: if (find) {
    if (find) {
        //: return matchIdx;
        return matchIdx;
    //: }else{
    }else{
        //: return self.recentSessions.count;
        return self.recentSessions.count;
    }
}

//: - (void)sort{
- (void)sign{
    //: [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
    [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        //: NIMRecentSession *item1 = obj1;
        NIMRecentSession *item1 = obj1;
        //: NIMRecentSession *item2 = obj2;
        NIMRecentSession *item2 = obj2;
        //: if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
        //: if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        }
        //: return NSOrderedSame;
        return NSOrderedSame;
    //: }];
    }];
}

//: - (void)onTouchAvatar:(id)sender{
- (void)spaced:(id)sender{
    //: UIView *view = [sender superview];
    UIView *view = [sender superview];
    //: while (![view isKindOfClass:[UITableViewCell class]]) {
    while (![view isKindOfClass:[UITableViewCell class]]) {
        //: view = view.superview;
        view = view.superview;
    }
    //: UITableViewCell *cell = (UITableViewCell *)view;
    UITableViewCell *cell = (UITableViewCell *)view;
    //: NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: [self onSelectedAvatar:recent atIndexPath:indexPath];
    [self elite:recent display:indexPath];
}



//: #pragma mark - Private
#pragma mark - Private
//: - (NSString *)messageContent:(NIMMessage*)lastMessage{
- (NSString *)shouldMessage:(NIMMessage*)lastMessage{
    //: NSString *text = [ContentMessageUtil messageContent:lastMessage];
    NSString *text = [AlongTeam pinMessage:lastMessage];
    //: if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    {
        //: return text;
        return text;
    }
    //: else
    else
    {

        //: NIMMessage *msg = [self lastMessageWithNoNotificationMessage:lastMessage];
        NIMMessage *msg = [self ting:lastMessage];
        //: text = [ContentMessageUtil messageContent:msg];
        text = [AlongTeam pinMessage:msg];

        //: NSString *from = msg.from;
        NSString *from = msg.from;
        //: NSString *nickName = [ContentKitUtil showNick:from inSession:msg.session];
        NSString *nickName = [TextWithUtil container:from magnitudeernalRepresentation:msg.session];
        //: return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
    }
}

//: - (NIMMessage *)lastMessageWithNoNotificationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)ting:(NIMMessage *)recentMsg {

    //: if (recentMsg.messageType != NIMMessageTypeNotification){
    if (recentMsg.messageType != NIMMessageTypeNotification){
        //: return recentMsg;
        return recentMsg;
    }

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeNotification){
        if (msg.messageType == NIMMessageTypeNotification){
            //: NIMNotificationObject *object = msg.messageObject;
            NIMNotificationObject *object = msg.messageObject;
             //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             {
                 //: return [self lastMessageWithNoNotificationMessage:msg];
                 return [self ting:msg];
             }
        }
    }
    //: return msg;
    return msg;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)toolWith:(NSNotification *)notification{
    //: [self refresh];
    [self index];
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)topologicalSpace:(NSNotification *)notification{
    //: [self refresh];
    [self index];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification{
- (void)recentsing:(NSNotification *)notification{
    //: [self refresh];
    [self index];
}



//: @end
@end

Byte *WheatManagerDataToByte(WheatManagerData *data) {
    if (data->verticalAluminum < 114) return data->defend;
    for (int i = 0; i < data->legislationLeading; i++) {
        data->defend[i] ^= data->infoAnything;
    }
    data->defend[data->legislationLeading] = 0;
    data->verticalAluminum = 3;
	if (data->legislationLeading >= 1) {
		data->zoneCoach = data->defend[0];
	}
    return data->defend;
}

NSString *StringFromWheatManagerData(WheatManagerData *data) {
    return [NSString stringWithUTF8String:(char *)WheatManagerDataToByte(data)];
}
