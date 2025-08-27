
#import <Foundation/Foundation.h>

@interface InscriptionData : NSObject

+ (instancetype)sharedInstance;

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
@property (nonatomic, copy) NSString *userTouchValue;

//: select * from notifications where status != ? order by timetag desc limit ?
@property (nonatomic, copy) NSString *dreamLineText;

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
@property (nonatomic, copy) NSString *m_resourceKey;

//: content
@property (nonatomic, copy) NSString *show_viewValueId;

//: update notifications set status  = ? where status = ?
@property (nonatomic, copy) NSString *dream_contentTitle;

//: update notifications set status  = ? where status < ? or status > ?
@property (nonatomic, copy) NSString *userSizeIdent;

//: select count(serial) from notifications where status = ?
@property (nonatomic, copy) NSString *user_titleUrl;

//: serial
@property (nonatomic, copy) NSString *showImageFormat;

//: sender
@property (nonatomic, copy) NSString *dreamDateKey;

//: update notifications set status  = ? where serial = ?
@property (nonatomic, copy) NSString *show_backStr;

//: notification.db
@property (nonatomic, copy) NSString *mainViewUrl;

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
@property (nonatomic, copy) NSString *app_searchContentId;

//: timetag
@property (nonatomic, copy) NSString *userLabKey;

//: create index if not exists readindex on notifications(status)
@property (nonatomic, copy) NSString *main_dismissData;

//: receiver
@property (nonatomic, copy) NSString *user_contentRedUrl;

//: create index if not exists timetagindex on notifications(timetag)
@property (nonatomic, copy) NSString *appSelectText;

@end

@implementation InscriptionData

+ (instancetype)sharedInstance {
    static InscriptionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InscriptionDataToCache:(Byte *)data {
    int saucer = data[0];
    Byte scoff = data[1];
    int byAccountText = data[2];
    for (int i = byAccountText; i < byAccountText + saucer; i++) {
        int value = data[i] + scoff;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[byAccountText + saucer] = 0;
    return data + byAccountText;
}

- (NSString *)StringFromInscriptionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InscriptionDataToCache:data]];
}

//: select count(serial) from notifications where status = ?
- (NSString *)user_titleUrl {
    if (!_user_titleUrl) {
        Byte value[] = {56, 96, 12, 82, 245, 178, 156, 255, 82, 11, 237, 25, 19, 5, 12, 5, 3, 20, 192, 3, 15, 21, 14, 20, 200, 19, 5, 18, 9, 1, 12, 201, 192, 6, 18, 15, 13, 192, 14, 15, 20, 9, 6, 9, 3, 1, 20, 9, 15, 14, 19, 192, 23, 8, 5, 18, 5, 192, 19, 20, 1, 20, 21, 19, 192, 221, 192, 223, 37};
        _user_titleUrl = [self StringFromInscriptionData:value];
    }
    return _user_titleUrl;
}

//: notification.db
- (NSString *)mainViewUrl {
    if (!_mainViewUrl) {
        Byte value[] = {15, 77, 3, 33, 34, 39, 28, 25, 28, 22, 20, 39, 28, 34, 33, 225, 23, 21, 122};
        _mainViewUrl = [self StringFromInscriptionData:value];
    }
    return _mainViewUrl;
}

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
- (NSString *)userTouchValue {
    if (!_userTouchValue) {
        Byte value[] = {92, 3, 9, 230, 65, 84, 160, 2, 44, 112, 98, 105, 98, 96, 113, 29, 39, 29, 99, 111, 108, 106, 29, 107, 108, 113, 102, 99, 102, 96, 94, 113, 102, 108, 107, 112, 29, 116, 101, 98, 111, 98, 29, 113, 102, 106, 98, 113, 94, 100, 29, 57, 29, 34, 99, 29, 94, 107, 97, 29, 112, 113, 94, 113, 114, 112, 29, 30, 58, 29, 60, 29, 108, 111, 97, 98, 111, 29, 95, 118, 29, 113, 102, 106, 98, 113, 94, 100, 29, 97, 98, 112, 96, 29, 105, 102, 106, 102, 113, 29, 60, 112};
        _userTouchValue = [self StringFromInscriptionData:value];
    }
    return _userTouchValue;
}

//: serial
- (NSString *)showImageFormat {
    if (!_showImageFormat) {
        Byte value[] = {6, 31, 7, 58, 157, 9, 17, 84, 70, 83, 74, 66, 77, 25};
        _showImageFormat = [self StringFromInscriptionData:value];
    }
    return _showImageFormat;
}

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
- (NSString *)app_searchContentId {
    if (!_app_searchContentId) {
        Byte value[] = {165, 53, 11, 100, 246, 15, 76, 101, 204, 254, 50, 46, 61, 48, 44, 63, 48, 235, 63, 44, 45, 55, 48, 235, 52, 49, 235, 57, 58, 63, 235, 48, 67, 52, 62, 63, 62, 235, 57, 58, 63, 52, 49, 52, 46, 44, 63, 52, 58, 57, 62, 243, 62, 48, 61, 52, 44, 55, 235, 52, 57, 63, 48, 50, 48, 61, 235, 59, 61, 52, 56, 44, 61, 68, 235, 54, 48, 68, 247, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 235, 63, 52, 56, 48, 63, 44, 50, 235, 52, 57, 63, 48, 50, 48, 61, 247, 62, 48, 57, 47, 48, 61, 235, 63, 48, 67, 63, 247, 61, 48, 46, 48, 52, 65, 48, 61, 235, 63, 48, 67, 63, 247, 46, 58, 57, 63, 48, 57, 63, 235, 63, 48, 67, 63, 247, 62, 63, 44, 63, 64, 62, 235, 52, 57, 63, 48, 50, 48, 61, 244, 1};
        _app_searchContentId = [self StringFromInscriptionData:value];
    }
    return _app_searchContentId;
}

//: receiver
- (NSString *)user_contentRedUrl {
    if (!_user_contentRedUrl) {
        Byte value[] = {8, 86, 10, 247, 49, 152, 142, 236, 169, 184, 28, 15, 13, 15, 19, 32, 15, 28, 117};
        _user_contentRedUrl = [self StringFromInscriptionData:value];
    }
    return _user_contentRedUrl;
}

//: update notifications set status  = ? where serial = ?
- (NSString *)show_backStr {
    if (!_show_backStr) {
        Byte value[] = {53, 20, 4, 113, 97, 92, 80, 77, 96, 81, 12, 90, 91, 96, 85, 82, 85, 79, 77, 96, 85, 91, 90, 95, 12, 95, 81, 96, 12, 95, 96, 77, 96, 97, 95, 12, 12, 41, 12, 43, 12, 99, 84, 81, 94, 81, 12, 95, 81, 94, 85, 77, 88, 12, 41, 12, 43, 227};
        _show_backStr = [self StringFromInscriptionData:value];
    }
    return _show_backStr;
}

//: sender
- (NSString *)dreamDateKey {
    if (!_dreamDateKey) {
        Byte value[] = {6, 3, 12, 160, 120, 206, 80, 216, 64, 50, 182, 187, 112, 98, 107, 97, 98, 111, 50};
        _dreamDateKey = [self StringFromInscriptionData:value];
    }
    return _dreamDateKey;
}

//: select * from notifications where status != ? order by timetag desc limit ?
- (NSString *)dreamLineText {
    if (!_dreamLineText) {
        Byte value[] = {75, 97, 8, 159, 141, 122, 185, 130, 18, 4, 11, 4, 2, 19, 191, 201, 191, 5, 17, 14, 12, 191, 13, 14, 19, 8, 5, 8, 2, 0, 19, 8, 14, 13, 18, 191, 22, 7, 4, 17, 4, 191, 18, 19, 0, 19, 20, 18, 191, 192, 220, 191, 222, 191, 14, 17, 3, 4, 17, 191, 1, 24, 191, 19, 8, 12, 4, 19, 0, 6, 191, 3, 4, 18, 2, 191, 11, 8, 12, 8, 19, 191, 222, 132};
        _dreamLineText = [self StringFromInscriptionData:value];
    }
    return _dreamLineText;
}

//: timetag
- (NSString *)userLabKey {
    if (!_userLabKey) {
        Byte value[] = {7, 10, 3, 106, 95, 99, 91, 106, 87, 93, 61};
        _userLabKey = [self StringFromInscriptionData:value];
    }
    return _userLabKey;
}

//: create index if not exists readindex on notifications(status)
- (NSString *)main_dismissData {
    if (!_main_dismissData) {
        Byte value[] = {61, 93, 8, 249, 3, 223, 148, 215, 6, 21, 8, 4, 23, 8, 195, 12, 17, 7, 8, 27, 195, 12, 9, 195, 17, 18, 23, 195, 8, 27, 12, 22, 23, 22, 195, 21, 8, 4, 7, 12, 17, 7, 8, 27, 195, 18, 17, 195, 17, 18, 23, 12, 9, 12, 6, 4, 23, 12, 18, 17, 22, 203, 22, 23, 4, 23, 24, 22, 204, 98};
        _main_dismissData = [self StringFromInscriptionData:value];
    }
    return _main_dismissData;
}

//: create index if not exists timetagindex on notifications(timetag)
- (NSString *)appSelectText {
    if (!_appSelectText) {
        Byte value[] = {65, 90, 13, 139, 44, 120, 82, 247, 151, 1, 54, 126, 237, 9, 24, 11, 7, 26, 11, 198, 15, 20, 10, 11, 30, 198, 15, 12, 198, 20, 21, 26, 198, 11, 30, 15, 25, 26, 25, 198, 26, 15, 19, 11, 26, 7, 13, 15, 20, 10, 11, 30, 198, 21, 20, 198, 20, 21, 26, 15, 12, 15, 9, 7, 26, 15, 21, 20, 25, 206, 26, 15, 19, 11, 26, 7, 13, 207, 188};
        _appSelectText = [self StringFromInscriptionData:value];
    }
    return _appSelectText;
}

//: update notifications set status  = ? where status < ? or status > ?
- (NSString *)userSizeIdent {
    if (!_userSizeIdent) {
        Byte value[] = {67, 13, 4, 10, 104, 99, 87, 84, 103, 88, 19, 97, 98, 103, 92, 89, 92, 86, 84, 103, 92, 98, 97, 102, 19, 102, 88, 103, 19, 102, 103, 84, 103, 104, 102, 19, 19, 48, 19, 50, 19, 106, 91, 88, 101, 88, 19, 102, 103, 84, 103, 104, 102, 19, 47, 19, 50, 19, 98, 101, 19, 102, 103, 84, 103, 104, 102, 19, 49, 19, 50, 255};
        _userSizeIdent = [self StringFromInscriptionData:value];
    }
    return _userSizeIdent;
}

//: update notifications set status  = ? where status = ?
- (NSString *)dream_contentTitle {
    if (!_dream_contentTitle) {
        Byte value[] = {53, 25, 7, 237, 141, 212, 108, 92, 87, 75, 72, 91, 76, 7, 85, 86, 91, 80, 77, 80, 74, 72, 91, 80, 86, 85, 90, 7, 90, 76, 91, 7, 90, 91, 72, 91, 92, 90, 7, 7, 36, 7, 38, 7, 94, 79, 76, 89, 76, 7, 90, 91, 72, 91, 92, 90, 7, 36, 7, 38, 91};
        _dream_contentTitle = [self StringFromInscriptionData:value];
    }
    return _dream_contentTitle;
}

//: content
- (NSString *)show_viewValueId {
    if (!_show_viewValueId) {
        Byte value[] = {7, 66, 7, 92, 116, 36, 22, 33, 45, 44, 50, 35, 44, 50, 144};
        _show_viewValueId = [self StringFromInscriptionData:value];
    }
    return _show_viewValueId;
}

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
- (NSString *)m_resourceKey {
    if (!_m_resourceKey) {
        Byte value[] = {96, 94, 3, 11, 16, 21, 7, 20, 22, 194, 11, 16, 22, 17, 194, 16, 17, 22, 11, 8, 11, 5, 3, 22, 11, 17, 16, 21, 202, 22, 11, 15, 7, 22, 3, 9, 206, 21, 7, 16, 6, 7, 20, 206, 20, 7, 5, 7, 11, 24, 7, 20, 206, 5, 17, 16, 22, 7, 16, 22, 206, 21, 22, 3, 22, 23, 21, 203, 194, 194, 194, 194, 194, 194, 194, 194, 194, 194, 194, 194, 194, 194, 24, 3, 14, 23, 7, 21, 202, 225, 206, 225, 206, 225, 206, 225, 206, 225, 203, 96};
        _m_resourceKey = [self StringFromInscriptionData:value];
    }
    return _m_resourceKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "TextDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "BottomObjectHelper.h"
//: #import "NTESCustomNotificationObject.h"
#import "EnableOrigin.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface TextDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation TextDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)valuePress { static TextDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[TextDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self stepDatabase];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    bubbleRight(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)fetch:(EnableOrigin *)notification
                          //: limit:(NSInteger)limit{
                          nearTitle:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:[InscriptionData sharedInstance].userTouchValue,
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = [InscriptionData sharedInstance].dreamLineText;
    }
    //: io_sync_safe(^{
    bubbleRight(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            EnableOrigin *notification = [[EnableOrigin alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:[InscriptionData sharedInstance].showImageFormat];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:[InscriptionData sharedInstance].userLabKey];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:[InscriptionData sharedInstance].dreamDateKey];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:[InscriptionData sharedInstance].user_contentRedUrl];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:[InscriptionData sharedInstance].show_viewValueId];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)menuIn:(EnableOrigin *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    bubbleRight(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = [InscriptionData sharedInstance].m_resourceKey;

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)foreword:(EnableOrigin *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = [InscriptionData sharedInstance].show_backStr;
    //: io_async(^{
    showItem(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self enfold];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)need{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = [InscriptionData sharedInstance].userSizeIdent;
    //: io_async(^{
    showItem(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self enfold];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)inputPressed{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = [InscriptionData sharedInstance].dream_contentTitle;
    //: io_sync_safe(^{
    bubbleRight(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self enfold];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)enfold{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = [InscriptionData sharedInstance].user_titleUrl;
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)stepDatabase
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[BottomObjectHelper tableGame] stringByAppendingString:[InscriptionData sharedInstance].mainViewUrl];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[[InscriptionData sharedInstance].app_searchContentId,

                          //: @"create index if not exists readindex on notifications(status)",
                          [InscriptionData sharedInstance].main_dismissData,
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          [InscriptionData sharedInstance].appSelectText];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self enfold];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const userStateKey = &userStateKey;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t frameMake()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, userStateKey, (void *)userStateKey, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void bubbleRight(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(userStateKey))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(frameMake(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void showItem(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(frameMake(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end