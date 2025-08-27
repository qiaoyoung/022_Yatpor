// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.h
// UserKit
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class ContentMessageModel;
@class PossibilityMessageStyle;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ContentQuickCommentCell : UICollectionViewCell
@interface SignalingView : UICollectionViewCell

//: - (void)refreshWithData:(NSArray *)comment model:(ContentMessageModel *)data;
- (void)shouldModel:(NSArray *)comment completeForModel:(PossibilityMessageStyle *)data;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
