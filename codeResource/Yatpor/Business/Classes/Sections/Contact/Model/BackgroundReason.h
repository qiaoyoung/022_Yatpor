// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundReason.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol TextTeam <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)statusContent;
//: - (NSString *)memberId;
- (NSString *)target;
//: - (id)sortKey;
- (id)borderlineKey;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface BackgroundReason : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)close:(id<TextTeam>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)recording:(id<TextTeam>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)item:(NSString *)title title:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)fullPhaseOfTheMoonWith:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)showTo:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<TextTeam>)be:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<TextTeam>)from:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)origin;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)bulgeOut:(NSInteger)groupIndex;

//: @end
@end
