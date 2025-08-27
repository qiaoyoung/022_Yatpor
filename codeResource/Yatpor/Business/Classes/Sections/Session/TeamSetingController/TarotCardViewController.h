// __DEBUG__
// __CLOSE_PRINT__
//
//  TarotCardViewController.h
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "VacantViewController.h"

//: @interface FFFAdvancedTeamCardViewController : FFFTeamCardOperationViewController
@interface TarotCardViewController : VacantViewController



//: - (void)enterMemberCard;
- (void)tingDate;//查看群成员
//: - (void)didSelectAddOpeartor;
- (void)sendName;//添加新成员

//: - (void)updateTeamName;
- (void)isBottom;
//: - (void)updateTeamNick;
- (void)disableOrigin;
//: - (void)updateTeamIntro;
- (void)childModel;
//: - (void)updateTeamAnnouncement;
- (void)styleColor;
//: - (void)enterMuteList;
- (void)viewTable;//禁言列表
//: - (void)quitTeam;
- (void)confirmationTeam;
//: - (void)dismissTeam;
- (void)queryedContainer;
//: @end
@end