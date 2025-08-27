// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentCellLayoutConfig.h"
#import "MenuConfig.h"
//: #import "ContentSessionMessageContentView.h"
#import "ObligatoView.h"
//: #import "ContentSessionUnknowContentView.h"
#import "DismissTextView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "ContentKitUtil.h"
#import "TextWithUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "ContentBaseSessionContentConfig.h"
#import "ContentBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentCellLayoutConfig()
@interface MenuConfig()

//: @end
@end

//: @implementation ContentCellLayoutConfig
@implementation MenuConfig

//: - (CGSize)contentSize:(ContentMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)text:(PossibilityMessageStyle *)model recent:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] item:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config voice:cellWidth add:model.message];
}

//: - (NSString *)cellContent:(ContentMessageModel *)model{
- (NSString *)doTeamImage:(PossibilityMessageStyle *)model{
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] item:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config compartment:model.message];
    //: return cellContent.length ? cellContent : @"ContentSessionUnknowContentView";
    return cellContent.length ? cellContent : @"DismissTextView";
}


//: - (UIEdgeInsets)contentViewInsets:(ContentMessageModel *)model{
- (UIEdgeInsets)inputInsets:(PossibilityMessageStyle *)model{
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] item:model.message];
    //: return [config contentViewInsets:model.message];
    return [config viewDoing:model.message];
}


//: - (UIEdgeInsets)cellInsets:(ContentMessageModel *)model
- (UIEdgeInsets)message:(PossibilityMessageStyle *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"ContentSessionNotificationContentView"]) {
    if ([[self doTeamImage:model] isEqualToString:@"BarNameView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self red:model] ? [self viewOf:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self team:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(ContentMessageModel *)model{
- (UIEdgeInsets)date:(PossibilityMessageStyle *)model{
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] month:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config viewDoing:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(ContentMessageModel *)model
- (UIEdgeInsets)with:(PossibilityMessageStyle *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"ContentSessionNotificationContentView"]) {
    if ([[self doTeamImage:model] isEqualToString:@"BarNameView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self red:model] ? [self viewOf:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self team:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(ContentMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)stateTable:(PossibilityMessageStyle *)model perimeter:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] month:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config voice:cellWidth add:model.repliedMessage];
}

//: - (NSString *)replyContent:(ContentMessageModel *)model {
- (NSString *)infoTo:(PossibilityMessageStyle *)model {
    //: id<CCCSessionContentConfig>config = [[ContentSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<QuantitativeRelationConfig>config = [[ColorImageFactory should] month:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config compartment:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"ContentSessionUnknowContentView";
    return cellContent.length ? cellContent : @"DismissTextView";
}

//: - (BOOL)shouldShowAvatar:(ContentMessageModel *)model
- (BOOL)red:(PossibilityMessageStyle *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[UserKit totalSend].config color:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(ContentMessageModel *)model{
- (BOOL)team:(PossibilityMessageStyle *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(ContentMessageModel *)model
- (BOOL)bottom:(PossibilityMessageStyle *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(ContentMessageModel *)model
- (CGPoint)contentKeyMargin:(PossibilityMessageStyle *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(ContentMessageModel *)model
- (CGSize)viewOf:(PossibilityMessageStyle *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(ContentMessageModel *)model
- (CGPoint)nameMargin:(PossibilityMessageStyle *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self red:model] ? CGPointMake([self viewOf:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(ContentMessageModel *)model
- (NSArray *)memberBy:(PossibilityMessageStyle *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(ContentMessageModel *)model
- (BOOL)headerButton:(PossibilityMessageStyle *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig bottom:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<ContentCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MenuConfig> layoutConfig = [[UserKit totalSend] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig bottom:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(ContentMessageModel *)model
- (BOOL)chronicleBackground:(PossibilityMessageStyle *)model
{
    //: id<CCCSessionContentConfig> config = [[ContentSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<QuantitativeRelationConfig> config = [[ColorImageFactory should] item:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(nameBy:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config nameBy:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
