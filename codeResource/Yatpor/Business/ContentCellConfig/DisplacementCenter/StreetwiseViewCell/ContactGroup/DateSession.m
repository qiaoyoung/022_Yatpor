// __DEBUG__
// __CLOSE_PRINT__
//
//  DateSession.m
// UserKit
//
//  Created by emily on 2017/7/26.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UserGroupedData.h"
#import "DateSession.h"

//: @interface NIMKitPair : NSObject
@interface BottomTool : NSObject

//: @property (nonatomic, strong) id first;
@property (nonatomic, strong) id first;
//: @property (nonatomic, strong) id second;
@property (nonatomic, strong) id second;

//: @end
@end

//: @implementation NIMKitPair
@implementation BottomTool

//: - (instancetype)initWithFirst:(id)first second:(id)second {
- (instancetype)initWithDoingUpSecond:(id)first prototypalProgress:(id)second {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: _first = first;
        _first = first;
        //: _second = second;
        _second = second;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface UserGroupedData ()
@interface DateSession ()

//: @property(nonatomic, strong) NSMutableOrderedSet *groupTtiles;
@property(nonatomic, strong) NSMutableOrderedSet *groupTtiles;
//: @property(nonatomic, strong) NSMutableOrderedSet *groups;
@property(nonatomic, strong) NSMutableOrderedSet *groups;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;


//: @end
@end

//: @implementation UserGroupedData
@implementation DateSession

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _members = @[].mutableCopy;
        _members = @[].mutableCopy;
        //: _specialMembers = @[].mutableCopy;
        _specialMembers = @[].mutableCopy;
        //: _groupTtiles = [[NSMutableOrderedSet alloc] init];
        _groupTtiles = [[NSMutableOrderedSet alloc] init];
        //: _groups = [[NSMutableOrderedSet alloc] init];
        _groups = [[NSMutableOrderedSet alloc] init];
        //: _groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
        _groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
            //: return [title1 localizedCompare:title2];
            return [title1 localizedCompare:title2];
        //: };
        };
        //: _groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
        _groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
            //: return [key1 localizedCompare:key2];
            return [key1 localizedCompare:key2];
        //: };
        };
    }
    //: return self;
    return self;
}

//: - (void)setMembers:(NSArray *)members {
- (void)setMembers:(NSArray *)members {
    //: NSMutableDictionary *tmp = [NSMutableDictionary dictionary];
    NSMutableDictionary *tmp = [NSMutableDictionary dictionary];
    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: for (id<NIMGroupMemberProtocol>member in members) {
    for (id<AlterDate>member in members) {
        //: if ([[member memberId] isEqualToString:me]) {
        if ([[member target] isEqualToString:me]) {
            //: continue;
            continue;
        }
        //: NSString *groupTitle = [member groupTitle];
        NSString *groupTitle = [member statusContent];
        //: NSMutableArray *groupedMembers = [tmp objectForKey:groupTitle];
        NSMutableArray *groupedMembers = [tmp objectForKey:groupTitle];
        //: if(!groupedMembers) {
        if(!groupedMembers) {
            //: groupedMembers = [NSMutableArray array];
            groupedMembers = [NSMutableArray array];
        }
        //: [groupedMembers addObject:member];
        [groupedMembers addObject:member];
        //: [tmp setObject:groupedMembers forKey:groupTitle];
        [tmp setObject:groupedMembers forKey:groupTitle];
    }
    //: [_groupTtiles removeAllObjects];
    [_groupTtiles removeAllObjects];
    //: [_groups removeAllObjects];
    [_groups removeAllObjects];

    //: [tmp enumerateKeysAndObjectsUsingBlock:^(NSString *groupTitle, NSMutableArray *groupedMembers, BOOL *stop) {
    [tmp enumerateKeysAndObjectsUsingBlock:^(NSString *groupTitle, NSMutableArray *groupedMembers, BOOL *stop) {
        //: if (groupTitle.length) {
        if (groupTitle.length) {
            //: unichar character = [groupTitle characterAtIndex:0];
            unichar character = [groupTitle characterAtIndex:0];
            //: if (character >= 'A' && character <= 'Z') {
            if (character >= 'A' && character <= 'Z') {
                //: [_groupTtiles addObject:groupTitle];
                [_groupTtiles addObject:groupTitle];
            //: }else{
            }else{
                //: [_groupTtiles addObject:@"#"];
                [_groupTtiles addObject:@"#"];
            }
            //: [_groups addObject:[[NIMKitPair alloc] initWithFirst:groupTitle second:groupedMembers]];
            [_groups addObject:[[BottomTool alloc] initWithDoingUpSecond:groupTitle prototypalProgress:groupedMembers]];
        }
    //: }];
    }];
    //: [self sortGroup];
    [self bySure];
}

//: - (void)setSpecialMembers:(NSArray *)specialMembers {
- (void)setSpecialMembers:(NSArray *)specialMembers {
    //: if (specialMembers.count > 0) {
    if (specialMembers.count > 0) {
        //: _specialMembers = specialMembers;
        _specialMembers = specialMembers;
        //: [_groups insertObject:[[NIMKitPair alloc] initWithFirst:@"$" second:specialMembers] atIndex:0];
        [_groups insertObject:[[BottomTool alloc] initWithDoingUpSecond:@"$" prototypalProgress:specialMembers] atIndex:0];
        //: [self sortGroupMember];
        [self show];
        //: [_groupTtiles insertObject:@"$" atIndex:0];
        [_groupTtiles insertObject:@"$" atIndex:0];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter

//: - (NSArray *)sectionTitles {
- (NSArray *)sectionTitles {
    //: return [_groupTtiles array];
    return [_groupTtiles array];
}

//: - (NSDictionary *)contentDic {
- (NSDictionary *)contentDic {
    //: NSDictionary *dic = @{}.mutableCopy;
    NSDictionary *dic = @{}.mutableCopy;
    //: for (int i = 0; i < _groups.count; ++i) {
    for (int i = 0; i < _groups.count; ++i) {
        //: NSArray *tempArr = [self membersOfGroup:i];
        NSArray *tempArr = [self can:i];
        //: NSString *title = [self titleofGroup:i];
        NSString *title = [self arrayMax:i];
        //: [tempArr enumerateObjectsUsingBlock:^(id<NIMGroupMemberProtocol>member, NSUInteger idx, BOOL * _Nonnull stop) {
        [tempArr enumerateObjectsUsingBlock:^(id<AlterDate>member, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSMutableArray *arr = [dic valueForKey:title];
            NSMutableArray *arr = [dic valueForKey:title];
            //: if (!arr) {
            if (!arr) {
                //: arr = @[].mutableCopy;
                arr = @[].mutableCopy;
                //: [dic setValue:arr forKey:title];
                [dic setValue:arr forKey:title];
            }
            //: [arr addObject:member];
            [arr addObject:member];
        //: }];
        }];
    }
    //: return dic;
    return dic;
}

//: #pragma mark - Private
#pragma mark - Private

//: - (NSString *)titleofGroup:(NSInteger)groupIndex {
- (NSString *)arrayMax:(NSInteger)groupIndex {
    //: if(groupIndex >= 0 && groupIndex < _groupTtiles.count) {
    if(groupIndex >= 0 && groupIndex < _groupTtiles.count) {
        //: return [_groupTtiles objectAtIndex:groupIndex];
        return [_groupTtiles objectAtIndex:groupIndex];
    }
    //: return nil;
    return nil;
}

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex
- (NSArray *)can:(NSInteger)groupIndex
{
    //: if(groupIndex >= 0 && groupIndex < _groups.count) {
    if(groupIndex >= 0 && groupIndex < _groups.count) {
        //: NIMKitPair *pair = [_groups objectAtIndex:groupIndex];
        BottomTool *pair = [_groups objectAtIndex:groupIndex];
        //: return pair.second;
        return pair.second;
    }
    //: return nil;
    return nil;
}

//: - (void)sortGroup
- (void)bySure
{
    //: [self sortGroupTitle];
    [self ting];
    //: [self sortGroupMember];
    [self show];
}

//: - (void)sortGroupTitle
- (void)ting
{
    //: [_groupTtiles sortUsingComparator:_groupTitleComparator];
    [_groupTtiles sortUsingComparator:_groupTitleComparator];
    //: [_groups sortUsingComparator:^NSComparisonResult(NIMKitPair *pair1, NIMKitPair *pair2) {
    [_groups sortUsingComparator:^NSComparisonResult(BottomTool *pair1, BottomTool *pair2) {
        //: return _groupTitleComparator(pair1.first, pair2.first);
        return _groupTitleComparator(pair1.first, pair2.first);
    //: }];
    }];
}

//: - (void)sortGroupMember
- (void)show
{
    //: [_groups enumerateObjectsUsingBlock:^(NIMKitPair *obj, NSUInteger idx, BOOL *stop) {
    [_groups enumerateObjectsUsingBlock:^(BottomTool *obj, NSUInteger idx, BOOL *stop) {
        //: NSMutableArray *groupedMembers = obj.second;
        NSMutableArray *groupedMembers = obj.second;
        //: [groupedMembers sortUsingComparator:^NSComparisonResult(id<NIMGroupMemberProtocol> member1, id<NIMGroupMemberProtocol> member2) {
        [groupedMembers sortUsingComparator:^NSComparisonResult(id<AlterDate> member1, id<AlterDate> member2) {
            //: return _groupMemberComparator([member1 sortKey], [member2 sortKey]);
            return _groupMemberComparator([member1 borderlineKey], [member2 borderlineKey]);
        //: }];
        }];
    //: }];
    }];
}

//: - (void)setGroupTitleComparator:(NSComparator)groupTitleComparator
- (void)setGroupTitleComparator:(NSComparator)groupTitleComparator
{
    //: _groupTitleComparator = groupTitleComparator;
    _groupTitleComparator = groupTitleComparator;
    //: [self sortGroupTitle];
    [self ting];
}

//: - (void)setGroupMemberComparator:(NSComparator)groupMemberComparator
- (void)setGroupMemberComparator:(NSComparator)groupMemberComparator
{
    //: _groupMemberComparator = groupMemberComparator;
    _groupMemberComparator = groupMemberComparator;
    //: [self sortGroupMember];
    [self show];
}

//: @end
@end
