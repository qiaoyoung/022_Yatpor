// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentMessageCellProtocol.h
// UserKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ContentCellConfig.h"
#import "ContentCellConfig.h"

// __M_A_C_R_O__

//: @class ContentMessageModel;
@class PossibilityMessageStyle;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class ContentKitEvent;
@class KitEvent;
//: @class ContentTextView;
@class ArrayScrollView;

//: @protocol ContentMessageCellDelegate <NSObject>
@protocol AllowMessageSuccess <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)mutual:(UITableView *)tableView subFile:(UITableViewCell *)cell name:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)nationalitying:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(ContentKitEvent *)event;
- (BOOL)bringHome:(KitEvent *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)app:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 tapOpen:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)signs:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)nowadays:(NIMMessage *)message someTo:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)forwardsing:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)showing:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)doing:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)backgroundValue:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)shouldTeam:(BOOL)selected mechanicalMan:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)alongs:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)message:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                remarkBottom:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               placeIn:(BOOL)isSelected;

//: @end
@end
