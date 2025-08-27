
#import <Foundation/Foundation.h>

@interface GatorData : NSObject

@end

@implementation GatorData

+ (NSData *)GatorDataToData:(NSString *)value {
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

+ (Byte *)GatorDataToCache:(Byte *)data {
    int rhetoricRemote = data[0];
    Byte rash = data[1];
    int attend = data[2];
    for (int i = attend; i < attend + rhetoricRemote; i++) {
        int value = data[i] + rash;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[attend + rhetoricRemote] = 0;
    return data + attend;
}

+ (NSString *)StringFromGatorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GatorDataToCache:data]];
}

//: collectionCell
+ (NSString *)kMushroomTitle {
    /* static */ NSString *kMushroomTitle = nil;
    if (!kMushroomTitle) {
		NSString *origin = @"0e250d187b3ec73d0e5083cb8c3e4a4747403e4f444a491e404747e2";
		NSData *data = [GatorData GatorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMushroomTitle = [self StringFromGatorData:value];
    }
    return kMushroomTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongView.m
// UserKit
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//
//: #pragma mark - NIMMemebrGroupData
#pragma mark - InheritanceName

// __M_A_C_R_O__
//: #import "ContentMemberGroupView.h"
#import "AlongView.h"
//: #import "ContentCardHeaderCell.h"
#import "ModeOriginView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentCardOperationItem.h"
#import "ColorViewItem.h"
//: #import "ContentTeamCardMemberItem.h"
#import "BarImageEmpty.h"

//: @implementation NIMMemebrGroupData
@implementation InheritanceName

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _opera = CardHeaderOpeatorNone;
        _opera = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end

//: #pragma mark - ContentMemberGroupView
#pragma mark - AlongView

//: @interface ContentMemberGroupView()<UICollectionViewDataSource,UICollectionViewDelegate,ContentCardHeaderCellDelegate>
@interface AlongView()<UICollectionViewDataSource,UICollectionViewDelegate,TingViewA>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) NSMutableDictionary *operatorTitle;
@property (nonatomic,strong) NSMutableDictionary *operatorTitle;

//: @end
@end

//: @implementation ContentMemberGroupView
@implementation AlongView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionView.delegate = self;
        self.collectionView.delegate = self;
        //: self.collectionView.dataSource = self;
        self.collectionView.dataSource = self;
        //: [self addSubview:self.collectionView];
        [self addSubview:self.collectionView];
    }
    //: return self;
    return self;
}

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas
- (void)step:(NSArray <InheritanceName *> *)datas
           //: operators:(NIMKitCardHeaderOpeator)operators{
           touch:(NIMKitCardHeaderOpeator)operators{
    //: _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    //: _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;
    _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;

    //normal item
    //: self.data = [[NSMutableArray alloc] initWithArray:datas];
    self.data = [[NSMutableArray alloc] initWithArray:datas];

    //add item
    //: if (self.showAddOperator) {
    if (self.showAddOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        InheritanceName *groupData = [[InheritanceName alloc] init];
        //: groupData.opera = CardHeaderOpeatorAdd;
        groupData.opera = CardHeaderOpeatorAdd;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }

    //remove item
    //: if (self.showRemoveOperator) {
    if (self.showRemoveOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        InheritanceName *groupData = [[InheritanceName alloc] init];
        //: groupData.opera = CardHeaderOpeatorRemove;
        groupData.opera = CardHeaderOpeatorRemove;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera{
- (void)recent:(NSString *)title insertKeyOperator:(NIMKitCardHeaderOpeator)opera{
    //: if (!self.operatorTitle) {
    if (!self.operatorTitle) {
        //: self.operatorTitle = [[NSMutableDictionary alloc] init];
        self.operatorTitle = [[NSMutableDictionary alloc] init];
    }
    //: self.operatorTitle[@(opera)] = title;
    self.operatorTitle[@(opera)] = title;
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat width = size.width;
    CGFloat width = size.width;
    //: NSInteger sectionNumber = [self numberOfSections:width];
    NSInteger sectionNumber = [self want:width];
    //: CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.collectionView.contentInset = self.sectionInsets;
    self.collectionView.contentInset = self.up;
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //: NSInteger lastTotal = self.collectionItemNumber * section;
    NSInteger lastTotal = self.green * section;
    //: NSInteger remain = self.data.count - lastTotal;
    NSInteger remain = self.data.count - lastTotal;
    //: return remain < self.collectionItemNumber ? remain:self.collectionItemNumber;
    return remain < self.green ? remain:self.green;
}

//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    //: NSInteger sections = self.data.count / self.collectionItemNumber;
    NSInteger sections = self.data.count / self.green;
    //: return self.data.count % self.collectionItemNumber ? sections + 1 : sections;
    return self.data.count % self.green ? sections + 1 : sections;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //: ContentCardHeaderCell *cell;
    ModeOriginView *cell;
    //: NIMMemebrGroupData *data = [self dataAtIndexPath:indexPath];
    InheritanceName *data = [self resolution:indexPath];
    //: if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
    if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
        //: cell = [self buildOperatorCell:data.opera indexPath:indexPath];
        cell = [self text:data.opera account:indexPath];
    //: }else{
    }else{
        //: cell = [self buildUserCell:data indexPath:indexPath];
        cell = [self should:data select:indexPath];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: return cell;
    return cell;
}

//: - (NIMMemebrGroupData *)dataAtIndexPath:(NSIndexPath*)indexpath{
- (InheritanceName *)resolution:(NSIndexPath*)indexpath{
    //: NSInteger index = indexpath.section * self.collectionItemNumber;
    NSInteger index = indexpath.section * self.green;
    //: index += indexpath.row;
    index += indexpath.row;
    //: return self.data[index];
    return self.data[index];
}

//: #pragma mark - ContentCardHeaderCellDelegate
#pragma mark - TingViewA
//: - (void)cellDidSelected:(ContentCardHeaderCell *)cell{
- (void)infoComplete:(ModeOriginView *)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    InheritanceName *groupData = [self resolution:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(cullOut:)]) {
        //: [self.delegate didSelectMemberId:groupData.userId];
        [self.delegate cullOut:groupData.userId];
    //: }else if ([self.delegate respondsToSelector:@selector(didSelectOperator:)]){
    }else if ([self.delegate respondsToSelector:@selector(months:)]){
        //: [self.delegate didSelectOperator:groupData.opera];
        [self.delegate months:groupData.opera];
    }
}

//: - (void)cellShouldBeRemoved:(ContentCardHeaderCell*)cell{
- (void)utmosted:(ModeOriginView*)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    InheritanceName *groupData = [self resolution:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectRemoveButtonWithMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(caning:)]) {
        //: [self.delegate didSelectRemoveButtonWithMemberId:groupData.userId];
        [self.delegate caning:groupData.userId];
    }
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout
//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
- (CGSize)elite:(UICollectionView *)collectionView item:(UICollectionViewLayout*)collectionViewLayout arcanum:(NSIndexPath *)indexPath{
    //: return CGSizeMake(58, 80);
    return CGSizeMake(58, 80);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)prosecutionWithoutQuantitativeRelation:(UICollectionView *)collectionView ratio:(UICollectionViewLayout*)collectionViewLayout leadIndex:(NSInteger)section{
    //: if (section == 0) {
    if (section == 0) {
        //: return UIEdgeInsetsMake(25, 0, 0, 0);
        return UIEdgeInsetsMake(25, 0, 0, 0);
    }
    //: return UIEdgeInsetsMake(15, 0, 0, 0);
    return UIEdgeInsetsMake(15, 0, 0, 0);
}

//: #pragma mark - Getter & Setter
#pragma mark - Getter & Setter
//: - (UICollectionView *)collectionView{
- (UICollectionView *)collectionView{
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.minimumInteritemSpacing = self.collectionEdgeInsetLeftRight;
        layout.minimumInteritemSpacing = self.array;
        //: _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        //: _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        //: _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: [_collectionView registerClass:[ContentCardHeaderCell class] forCellWithReuseIdentifier:@"collectionCell"];
        [_collectionView registerClass:[ModeOriginView class] forCellWithReuseIdentifier:[GatorData kMushroomTitle]];
    }
    //: return _collectionView;
    return _collectionView;
}

//: - (CGFloat)collectionEdgeInsetLeftRight{
- (CGFloat)array{
    //: return 20;
    return 20;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (ContentCardHeaderCell *)buildUserCell:(NIMMemebrGroupData *)data indexPath:(NSIndexPath *)indexPath{
- (ModeOriginView *)should:(InheritanceName *)data select:(NSIndexPath *)indexPath{
    //: ContentCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    ModeOriginView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:[GatorData kMushroomTitle] forIndexPath:indexPath];
    //: NIMCardMemberItem *item = [[NIMCardMemberItem alloc] init];
    QuickItem *item = [[QuickItem alloc] init];
    //: item.userId = data.userId;
    item.userId = data.userId;

    //: [cell refreshData:item];
    [cell tag:item];
    //: cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    //: return cell;
    return cell;
}

//: - (ContentCardHeaderCell *)buildOperatorCell:(NIMKitCardHeaderOpeator)operator indexPath:(NSIndexPath *)indexPath{
- (ModeOriginView *)text:(NIMKitCardHeaderOpeator)operator account:(NSIndexPath *)indexPath{
    //: ContentCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    ModeOriginView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:[GatorData kMushroomTitle] forIndexPath:indexPath];
    //: ContentCardOperationItem *item = [[ContentCardOperationItem alloc] initWithOperation:operator];
    ColorViewItem *item = [[ColorViewItem alloc] initWithDescription:operator];
    //: if (self.operatorTitle[@(operator)]) {
    if (self.operatorTitle[@(operator)]) {
        //: item.title = self.operatorTitle[@(operator)];
        item.title = self.operatorTitle[@(operator)];
    }
    //: [cell refreshData:item];
    [cell tag:item];
    //: cell.removeBtn.hidden = YES;
    cell.removeBtn.hidden = YES;
    //: return cell;
    return cell;
}

//: - (UIEdgeInsets)sectionInsets {
- (UIEdgeInsets)up {
    //: CGFloat left = (self.collectionView.nim_width - ((58 + self.collectionEdgeInsetLeftRight)) * self.collectionItemNumber - self.collectionEdgeInsetLeftRight) * 0.5;
    CGFloat left = (self.collectionView.nim_width - ((58 + self.array)) * self.green - self.array) * 0.5;
    //: left = left > 20 ? left : 20;
    left = left > 20 ? left : 20;
    //: return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
    return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
}

//: - (NSInteger)collectionItemNumber{
- (NSInteger)green{
    //: return [self collectionItemNumber:self.collectionView.nim_width];
    return [self magnitudeernalRepresentation:self.collectionView.nim_width];
}

//: - (NSInteger)collectionItemNumber:(CGFloat)width{
- (NSInteger)magnitudeernalRepresentation:(CGFloat)width{
    //: CGFloat minSpace = 20; 
    CGFloat minSpace = 20; //防止计算到最后出现左右贴边的情况
    //: return (int)((width - minSpace)/ (58 + self.collectionEdgeInsetLeftRight));
    return (int)((width - minSpace)/ (58 + self.array));
}

//: - (NSInteger)numberOfSections:(CGFloat)width{
- (NSInteger)want:(CGFloat)width{
    //: NSInteger collectionNumber = [self collectionItemNumber:width];
    NSInteger collectionNumber = [self magnitudeernalRepresentation:width];
    //: NSInteger sections = self.data.count / collectionNumber;
    NSInteger sections = self.data.count / collectionNumber;
    //: return self.data.count % collectionNumber ? sections + 1 : sections;
    return self.data.count % collectionNumber ? sections + 1 : sections;
}

//: @end
@end
