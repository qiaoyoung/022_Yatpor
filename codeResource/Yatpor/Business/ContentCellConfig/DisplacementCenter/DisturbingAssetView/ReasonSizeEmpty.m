
#import <Foundation/Foundation.h>
typedef struct {
    Byte bagEnable;
    Byte *quantityIgnore;
    unsigned int frameBurden;
    Byte stopElementary;
	int aluminum;
} ActValueData;

NSString *StringFromActValueData(ActValueData *data);


//: defaultCellID
ActValueData dreamHospitalAnimalBeginId = (ActValueData){142, (Byte []){234, 235, 232, 239, 251, 226, 250, 205, 235, 226, 226, 199, 202, 219}, 13, 188, 137};

//: UnsupportedCell
ActValueData kProvisionValue = (ActValueData){56, (Byte []){109, 86, 75, 77, 72, 72, 87, 74, 76, 93, 92, 123, 93, 84, 84, 214}, 15, 198, 178};

//: Unsupported Model
ActValueData show_paneName = (ActValueData){90, (Byte []){15, 52, 41, 47, 42, 42, 53, 40, 46, 63, 62, 122, 23, 53, 62, 63, 54, 142}, 17, 242, 87};

//: not support model
ActValueData dream_shallowText = (ActValueData){21, (Byte []){123, 122, 97, 53, 102, 96, 101, 101, 122, 103, 97, 53, 120, 122, 113, 112, 121, 254}, 17, 174, 33};

//: NTESMessageTranslate
ActValueData notiGooUrl = (ActValueData){28, (Byte []){82, 72, 89, 79, 81, 121, 111, 111, 125, 123, 121, 72, 110, 125, 114, 111, 112, 125, 104, 121, 9}, 20, 241, 206};

//: Unsupported model type: %@
ActValueData mInstallationUreaUrl = (ActValueData){136, (Byte []){221, 230, 251, 253, 248, 248, 231, 250, 252, 237, 236, 168, 229, 231, 236, 237, 228, 168, 252, 241, 248, 237, 178, 168, 173, 200, 230}, 26, 164, 172};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionTableAdapter.h"
#import "ReasonSizeEmpty.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "ContentMessageCellFactory.h"
#import "DefenseReplacement.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "WithSessionNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"

//: @interface ContentSessionTableAdapter()
@interface ReasonSizeEmpty()

//: @property (nonatomic,strong) ContentMessageCellFactory *cellFactory;
@property (nonatomic,strong) DefenseReplacement *cellFactory;

//: @end
@end

//: @implementation ContentSessionTableAdapter
@implementation ReasonSizeEmpty

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[ContentMessageCellFactory alloc] init];
        _cellFactory = [[DefenseReplacement alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor representation].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor representation] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[ContentMessageModel class]]) {
    if ([model isKindOfClass:[PossibilityMessageStyle class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory can:tableView
                                   //: forMessageMode:model];
                                   input:model];
        //: [(ContentMessageCell *)cell setDelegate:self.delegate];
        [(ContentImageView *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor velleityFilter:model];
        //: [(ContentMessageCell *)cell refreshData:model];
        [(ContentImageView *)cell backData:model];
    }
    //: else if ([model isKindOfClass:[ContentTimestampModel class]])
    else if ([model isKindOfClass:[AlongBar class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory time:tableView
                                     //: forTimeModel:model];
                                     searchTap:model];
    }
    //: else
    else
    {
        // Release 模式下兜底处理
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UnsupportedCell"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromActValueData(&kProvisionValue)];
        //: cell.textLabel.text = @"Unsupported Model";
        cell.textLabel.text = StringFromActValueData(&show_paneName);

        //: NSAssert(0, @"Unsupported model type: %@", [model class]);
        NSAssert(0, StringFromActValueData(&mInstallationUreaUrl), [model class]);

    }
    // 最终检查，确保不会返回 nil
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCellID"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromActValueData(&dreamHospitalAnimalBeginId)];
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(mutual:subFile:name:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate mutual:tableView subFile:cell name:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor representation] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[ContentMessageModel class]])
    if ([modelInArray isKindOfClass:[PossibilityMessageStyle class]])
    {
        //: ContentMessageModel *model = (ContentMessageModel *)modelInArray;
        PossibilityMessageStyle *model = (PossibilityMessageStyle *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }
//        if (model.message.messageType == NIMMessageTypeCustom) {
//            return 0.f;
//        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model onSize:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model range]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model path:tableView.width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height+20 +
            cellHeight += replySize.height+20 +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:StringFromActValueData(&notiGooUrl)])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:StringFromActValueData(&notiGooUrl)];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            WithSessionNameView *labtran = [[WithSessionNameView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran maturity:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model version])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model clean] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[ContentTimestampModel class]])
    else if ([modelInArray isKindOfClass:[AlongBar class]])
    {
        //: cellHeight = [(ContentTimestampModel *)modelInArray height];
        cellHeight = [(AlongBar *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromActValueData(&dream_shallowText));
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor max];
    }
}

//: @end
@end

Byte *ActValueDataToByte(ActValueData *data) {
    if (data->stopElementary < 143) return data->quantityIgnore;
    for (int i = 0; i < data->frameBurden; i++) {
        data->quantityIgnore[i] ^= data->bagEnable;
    }
    data->quantityIgnore[data->frameBurden] = 0;
    data->stopElementary = 61;
	if (data->frameBurden >= 1) {
		data->aluminum = data->quantityIgnore[0];
	}
    return data->quantityIgnore;
}

NSString *StringFromActValueData(ActValueData *data) {
    return [NSString stringWithUTF8String:(char *)ActValueDataToByte(data)];
}
