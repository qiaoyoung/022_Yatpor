// __DEBUG__
// __CLOSE_PRINT__
//
//  PrixFixeView.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFGrowingTextView.h"
#import "CuttingEdgeView.h"

//: typedef NS_ENUM(NSInteger,NIMInputStatus)
typedef NS_ENUM(NSInteger,NIMInputStatus)
{
    //: NIMInputStatusText,
    NIMInputStatusText,
    //: NIMInputStatusAudio,
    NIMInputStatusAudio,
    //: NIMInputStatusEmoticon,
    NIMInputStatusEmoticon,
    //: NIMInputStatusMore
    NIMInputStatusMore
//: };
};


//: @protocol FFFInputToolBarDelegate <NSObject>
@protocol SignalingTextSpeakeasyDelegate <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)languageMore;

//: - (void)textViewDidEndEditing;
- (void)disableMember;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)keyDropPenQuadruplicate:(NSRange)range edge:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)containerValue;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)shoulded:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)lowed:(CGFloat)height;

//: @end
@end


//: @interface FFFInputToolBar : UIView
@interface PrixFixeView : UIView

//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;
//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;
//@property (nonatomic,strong) UIButton    *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//@property (nonatomic,strong) UIButton    *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,weak) id<FFFInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<SignalingTextSpeakeasyDelegate> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) FFFGrowingTextView *inputTextView;
@property (nonatomic,strong) CuttingEdgeView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)videoPath:(NIMInputStatus)status;

//: @end
@end

//: @interface FFFInputToolBar(InputText)
@interface PrixFixeView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)vertical;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setCommunication:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)recordColor:(NSString *)placeHolder start:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)table:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)viewTitle:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)message:(NSString *)text to:(BOOL)isEmoji;

//: @end
@end