
#import <Foundation/Foundation.h>

typedef struct {
    Byte selectedTactic;
    Byte *quantityoxicated;
    unsigned int accountKeyTraditional;
	int thematicsSearched;
} StructDistantData;

@interface DistantData : NSObject

@end

@implementation DistantData

+ (NSData *)DistantDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)DistantDataToByte:(StructDistantData *)data {
    for (int i = 0; i < data->accountKeyTraditional; i++) {
        data->quantityoxicated[i] ^= data->selectedTactic;
    }
    data->quantityoxicated[data->accountKeyTraditional] = 0;
	if (data->accountKeyTraditional >= 1) {
		data->thematicsSearched = data->quantityoxicated[0];
	}
    return data->quantityoxicated;
}

+ (NSString *)StringFromDistantData:(StructDistantData *)data {
    return [NSString stringWithUTF8String:(char *)[self DistantDataToByte:data]];
}

//: 确认转发给
+ (NSString *)mNameContent {
    /* static */ NSString *mNameContent = nil;
    if (!mNameContent) {
		NSArray<NSString *> *origin = @[@"173", @"235", @"228", @"162", @"228", @"238", @"162", @"247", @"230", @"175", @"197", @"219", @"173", @"241", @"211", @"115"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){74, (Byte *)data.bytes, 15, 186};
        mNameContent = [self StringFromDistantData:&value];
    }
    return mNameContent;
}

//: contact_fragment_group
+ (NSString *)mainAmbitStr {
    /* static */ NSString *mainAmbitStr = nil;
    if (!mainAmbitStr) {
		NSArray<NSString *> *origin = @[@"178", @"190", @"191", @"165", @"176", @"178", @"165", @"142", @"183", @"163", @"176", @"182", @"188", @"180", @"191", @"165", @"142", @"182", @"163", @"190", @"164", @"161", @"34"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){209, (Byte *)data.bytes, 22, 91};
        mainAmbitStr = [self StringFromDistantData:&value];
    }
    return mainAmbitStr;
}

//: 已发送
+ (NSString *)k_lineStr {
    /* static */ NSString *k_lineStr = nil;
    if (!k_lineStr) {
		NSArray<NSString *> *origin = @[@"205", @"159", @"154", @"205", @"167", @"185", @"193", @"168", @"169", @"160"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){40, (Byte *)data.bytes, 9, 231};
        k_lineStr = [self StringFromDistantData:&value];
    }
    return k_lineStr;
}

//: watch_multiretweet_activity_person
+ (NSString *)dreamYieldPath {
    /* static */ NSString *dreamYieldPath = nil;
    if (!dreamYieldPath) {
		NSArray<NSString *> *origin = @[@"108", @"122", @"111", @"120", @"115", @"68", @"118", @"110", @"119", @"111", @"114", @"105", @"126", @"111", @"108", @"126", @"126", @"111", @"68", @"122", @"120", @"111", @"114", @"109", @"114", @"111", @"98", @"68", @"107", @"126", @"105", @"104", @"116", @"117", @"112"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){27, (Byte *)data.bytes, 34, 205};
        dreamYieldPath = [self StringFromDistantData:&value];
    }
    return dreamYieldPath;
}

//: 选择会话类型
+ (NSString *)kPainfulBornFormat {
    /* static */ NSString *kPainfulBornFormat = nil;
    if (!kPainfulBornFormat) {
		NSArray<NSString *> *origin = @[@"46", @"71", @"78", @"33", @"76", @"110", @"35", @"123", @"93", @"47", @"104", @"90", @"32", @"118", @"124", @"34", @"89", @"76", @"130"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){199, (Byte *)data.bytes, 18, 179};
        kPainfulBornFormat = [self StringFromDistantData:&value];
    }
    return kPainfulBornFormat;
}

//: %@.code:%zd
+ (NSString *)mainGrapeName {
    /* static */ NSString *mainGrapeName = nil;
    if (!mainGrapeName) {
		NSArray<NSString *> *origin = @[@"8", @"109", @"3", @"78", @"66", @"73", @"72", @"23", @"8", @"87", @"73", @"178"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){45, (Byte *)data.bytes, 11, 95};
        mainGrapeName = [self StringFromDistantData:&value];
    }
    return mainGrapeName;
}

//: contact_tag_fragment_cancel
+ (NSString *)m_agreeValue {
    /* static */ NSString *m_agreeValue = nil;
    if (!m_agreeValue) {
		NSArray<NSString *> *origin = @[@"17", @"29", @"28", @"6", @"19", @"17", @"6", @"45", @"6", @"19", @"21", @"45", @"20", @"0", @"19", @"21", @"31", @"23", @"28", @"6", @"45", @"17", @"19", @"28", @"17", @"23", @"30", @"156"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){114, (Byte *)data.bytes, 27, 158};
        m_agreeValue = [self StringFromDistantData:&value];
    }
    return m_agreeValue;
}

//: 确认转发
+ (NSString *)main_directlyUrl {
    /* static */ NSString *main_directlyUrl = nil;
    if (!main_directlyUrl) {
		NSArray<NSString *> *origin = @[@"87", @"17", @"30", @"88", @"30", @"20", @"88", @"13", @"28", @"85", @"63", @"33", @"129"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){176, (Byte *)data.bytes, 12, 84};
        main_directlyUrl = [self StringFromDistantData:&value];
    }
    return main_directlyUrl;
}

//: 转发失败
+ (NSString *)dream_comparableStr {
    /* static */ NSString *dream_comparableStr = nil;
    if (!dream_comparableStr) {
		NSArray<NSString *> *origin = @[@"172", @"249", @"232", @"161", @"203", @"213", @"161", @"224", @"245", @"172", @"240", @"225", @"243"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){68, (Byte *)data.bytes, 12, 234};
        dream_comparableStr = [self StringFromDistantData:&value];
    }
    return dream_comparableStr;
}

//: message_super_team
+ (NSString *)show_traditionalAssValue {
    /* static */ NSString *show_traditionalAssValue = nil;
    if (!show_traditionalAssValue) {
		NSArray<NSString *> *origin = @[@"154", @"146", @"132", @"132", @"150", @"144", @"146", @"168", @"132", @"130", @"135", @"146", @"133", @"168", @"131", @"146", @"150", @"154", @"190"];
		NSData *data = [DistantData DistantDataToData:origin];
        StructDistantData value = (StructDistantData){247, (Byte *)data.bytes, 18, 93};
        show_traditionalAssValue = [self StringFromDistantData:&value];
    }
    return show_traditionalAssValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewColor.m
// UserKit
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentChatUIManager.h"
#import "ViewColor.h"
//: #import "ContentContactSelectConfig.h"
#import "TapName.h"
//: #import "ContentContactSelectViewController.h"
#import "TingViewController.h"
//: #import "ContentKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "UIView+ContentToast.h"
#import "UIView+AllowToast.h"

//: @implementation ContentChatUIManager
@implementation ViewColor

//: + (instancetype)sharedManager
+ (instancetype)system
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static ContentChatUIManager *instance;
    static ViewColor *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)name:(NIMMessage *)message communication:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ContentLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[MatronymicPath colorStreetwise:[DistantData kPainfulBornFormat]] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[DistantData dreamYieldPath]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        BottomBar *config = [[BottomBar alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
        TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self getRollingController:message index:session somewhere:fromVC];
        //: };
        };
        //: [vc show];
        [vc frame];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[DistantData mainAmbitStr]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        ArrayConfig *config = [[ArrayConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
        TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self getRollingController:message index:session somewhere:fromVC];
        //: };
        };
        //: [vc show];
        [vc frame];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[DistantData show_traditionalAssValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        ArrayConfig *config = [[ArrayConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: ContentContactSelectViewController *vc = [[ContentContactSelectViewController alloc] initWithConfig:config];
        TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self getRollingController:message index:session somewhere:fromVC];
        //: };
        };
        //: [vc show];
        [vc frame];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[ContentLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[DistantData m_agreeValue]] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)getRollingController:(NIMMessage *)message index:(NIMSession *)session somewhere:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: ContentKitInfoFetchOption *option = [[ContentKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[UserKit totalSend] color:session.sessionId image:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[UserKit totalSend] search:session.sessionId speedy:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[UserKit totalSend] statusOption:session.sessionId mergeOf:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString([DistantData mNameContent], nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString([DistantData main_directlyUrl], nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:[DistantData mainGrapeName], NSLocalizedString([DistantData dream_comparableStr], nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view tool:errorMessage cell:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view tool:NSLocalizedString([DistantData k_lineStr], nil) cell:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end
