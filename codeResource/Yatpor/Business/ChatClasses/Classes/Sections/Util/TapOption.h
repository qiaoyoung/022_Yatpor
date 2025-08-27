// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// UserKit
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class WithSessionNameView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat showNameFormat;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat appManagerName;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const appShowText;


//: @interface FFFKitQuickCommentUtil : NSObject
@interface TapOption : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)session;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)requireView:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)max:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)independentComment:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)elevationComments:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)black:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)corner:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      shouldStep:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  asTable:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (WithSessionNameView *)textLabel;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)onKey:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END