// __DEBUG__
// __CLOSE_PRINT__
//
//  CuttingEdgeView.h
// UserKit
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFGrowingTextView;
@class CuttingEdgeView;

//: @protocol FFFGrowingTextViewDelegate <NSObject>
@protocol CropDelegate <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)keyDropPenQuadruplicate:(NSRange)range edge:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)on:(NSURL *)URL titleGreenRange:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)visiblePin:(NSTextAttachment *)textAttachment scene:(NSRange)range;

//: - (void)textViewDidBeginEditing:(FFFGrowingTextView *)growingTextView;
- (void)adds:(CuttingEdgeView *)growingTextView;

//: - (void)textViewDidChangeSelection:(FFFGrowingTextView *)growingTextView;
- (void)franked:(CuttingEdgeView *)growingTextView;

//: - (void)textViewDidEndEditing:(FFFGrowingTextView *)growingTextView;
- (void)openWindow:(CuttingEdgeView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)shadinessEditing:(CuttingEdgeView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)terminated:(CuttingEdgeView *)growingTextView;

//: - (void)textViewDidChange:(FFFGrowingTextView *)growingTextView;
- (void)spaced:(CuttingEdgeView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)willTool:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)circumferences:(CGFloat)height;

//: @end
@end

//: @interface FFFGrowingTextView : UIScrollView
@interface CuttingEdgeView : UIScrollView

//: @property (nonatomic,weak) id<FFFGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<CropDelegate> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface FFFGrowingTextView(TextView)
@interface CuttingEdgeView(TextView)

//: @property (nonatomic,copy) NSAttributedString *placeholderAttributedText;
@property (nonatomic,copy) NSAttributedString *placeholderAttributedText;

//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;

//: @property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIFont *font;

//: @property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *textColor;

//: @property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) NSTextAlignment textAlignment;

//: @property (nonatomic,assign) NSRange selectedRange;
@property (nonatomic,assign) NSRange selectedRange;

//: @property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;

//: @property (nonatomic,assign) BOOL editable;
@property (nonatomic,assign) BOOL editable;

//: @property (nonatomic,assign) BOOL selectable;
@property (nonatomic,assign) BOOL selectable;

//: @property (nonatomic,assign) BOOL allowsEditingTextAttributes;
@property (nonatomic,assign) BOOL allowsEditingTextAttributes;

//: @property (nonatomic,copy) NSAttributedString *attributedText;
@property (nonatomic,copy) NSAttributedString *attributedText;

//: @property (nonatomic,strong) UIView *textViewInputAccessoryView;
@property (nonatomic,strong) UIView *textViewInputAccessoryView;

//: @property (nonatomic,assign) BOOL clearsOnInsertion;
@property (nonatomic,assign) BOOL clearsOnInsertion;

//: @property (nonatomic,readonly) NSTextContainer *textContainer;
@property (nonatomic,readonly) NSTextContainer *textContainer;

//: @property (nonatomic,assign) UIEdgeInsets textContainerInset;
@property (nonatomic,assign) UIEdgeInsets textContainerInset;

//: @property (nonatomic,readonly) NSLayoutManager *layoutManger;
@property (nonatomic,readonly) NSLayoutManager *layoutManger;

//: @property (nonatomic,readonly) NSTextStorage *textStorage;
@property (nonatomic,readonly) NSTextStorage *textStorage;

//: @property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;

//: @property (nonatomic,assign) UIReturnKeyType returnKeyType;
@property (nonatomic,assign) UIReturnKeyType returnKeyType;

//: - (void)scrollRangeToVisible:(NSRange)range;
- (void)frame:(NSRange)range;

//: @end
@end