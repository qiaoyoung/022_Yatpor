// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @protocol NIMTeamAnnouncementListVCDelegate <NSObject>
@protocol EnableTap <NSObject>

//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)enable:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion;
                   key:(void (^)(NSError *error))completion;

//: @end
@end

//: @interface NIMTeamAnnouncementListOption : NSObject
@interface ArrayAsset : NSObject

//: @property (nonatomic, assign) BOOL canCreateAnnouncement;
@property (nonatomic, assign) BOOL canCreateAnnouncement;

//: @property (nonatomic, copy) NSString *announcement;
@property (nonatomic, copy) NSString *announcement;

//: @property (nonatomic, copy) NSString *nick;
@property (nonatomic, copy) NSString *nick;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @end
@end

//: @interface ContentTeamAnnouncementListViewController : UIViewController
@interface AnnouncementViewController : UIViewController

//: @property (nonatomic, weak) id <NIMTeamAnnouncementListVCDelegate> delegate;
@property (nonatomic, weak) id <EnableTap> delegate;

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option;
- (instancetype)initWithDisplayCenter:(ArrayAsset *)option;

//: @end
@end
