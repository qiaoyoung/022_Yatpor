
#import <Foundation/Foundation.h>

@interface FateRefreshData : NSObject

+ (instancetype)sharedInstance;

//: #EFFDDE
@property (nonatomic, copy) NSString *show_capIdent;

//: onTapMenuItemCopy:
@property (nonatomic, copy) NSString *mConcertValue;

//: menu_copy
@property (nonatomic, copy) NSString *user_labMsg;

@end

@implementation FateRefreshData

+ (instancetype)sharedInstance {
    static FateRefreshData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FateRefreshDataToData:(NSString *)value {
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

- (Byte *)FateRefreshDataToCache:(Byte *)data {
    int eyelid = data[0];
    Byte giftedTitle = data[1];
    int commissionedMilitarySwitchicer = data[2];
    for (int i = commissionedMilitarySwitchicer; i < commissionedMilitarySwitchicer + eyelid; i++) {
        int value = data[i] + giftedTitle;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[commissionedMilitarySwitchicer + eyelid] = 0;
    return data + commissionedMilitarySwitchicer;
}

- (NSString *)StringFromFateRefreshData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FateRefreshDataToCache:data]];
}

//: menu_copy
- (NSString *)user_labMsg {
    if (!_user_labMsg) {
		NSString *origin = @"093205BBC93B333C432D313D3E47EF";
		NSData *data = [FateRefreshData FateRefreshDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_labMsg = [self StringFromFateRefreshData:value];
    }
    return _user_labMsg;
}

//: #EFFDDE
- (NSString *)show_capIdent {
    if (!_show_capIdent) {
		NSString *origin = @"075C0DAFF0077072696FBCED30C7E9EAEAE8E8E942";
		NSData *data = [FateRefreshData FateRefreshDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_capIdent = [self StringFromFateRefreshData:value];
    }
    return _show_capIdent;
}

//: onTapMenuItemCopy:
- (NSString *)mConcertValue {
    if (!_mConcertValue) {
		NSString *origin = @"12590B4F0E646A369983E41615FB0817F40C151CF01B0C14EA161720E163";
		NSData *data = [FateRefreshData FateRefreshDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mConcertValue = [self StringFromFateRefreshData:value];
    }
    return _mConcertValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayScrollView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentTextView.h"
#import "ArrayScrollView.h"
//: #import "ContentBubbleMenuView.h"
#import "InscriptionView.h"
//: #import "ContentBubbleButtonModel.h"
#import "ColorModel.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "ContentMediaItem.h"
#import "LanguageItem.h"

//: @interface ContentTextView()<UITextViewDelegate, UITextInputDelegate>
@interface ArrayScrollView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation ContentTextView
@implementation ArrayScrollView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.tintColor = RGB_COLOR_String(@"#EFFDDE");
        //: self.font = [UIFont systemFontOfSize:15];
        self.font = [UIFont systemFontOfSize:15];
        //: self.layer.cornerRadius = 5;
        self.layer.cornerRadius = 5;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
        //: self.editable = YES;
        self.editable = YES;
        //: self.delegate = self;
        self.delegate = self;
        //: self.inputDelegate = self;
        self.inputDelegate = self;
        //: self.selectable = NO;
        self.selectable = NO;

        //: if (@available(iOS 17.0, *)) {
        if (@available(iOS 17.0, *)) {
            //: [self setTintColor:[UIColor colorWithHexString:@"#EFFDDE"]];
            [self setTintColor:[UIColor recordView:[FateRefreshData sharedInstance].show_capIdent]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(doCount)]];
    }
    //: return self;
    return self;
}

//: - (void)onLongPress {
- (void)doCount {
//    [self performSelector:@selector(selectAll:) withObject:nil afterDelay:0.0];

    //: CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    //: CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];
    CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];

    //: CGRect resultRect = CGRectZero;
    CGRect resultRect = CGRectZero;
    //: if (startRect.origin.y == endRect.origin.y) {
    if (startRect.origin.y == endRect.origin.y) {
        //: resultRect.origin.x = startRect.origin.x;
        resultRect.origin.x = startRect.origin.x;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        //: resultRect.size.height = startRect.size.height;
        resultRect.size.height = startRect.size.height;
    //: } else {
    } else {
        //: resultRect.origin.x = 0;
        resultRect.origin.x = 0;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = self.frame.size.width;
        resultRect.size.width = self.frame.size.width;
        //: resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
    }

    //: CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    //: CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];

    //: [[ContentBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(ContentMediaItem *item) {
    [[InscriptionView after] exceptView:self.selectedAllRangeButtons mentalRepresentation:cursorStartRectToWindow assemblage:tempRect range:^(LanguageItem *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self searchion];
        //: [ContentBubbleMenuView.shareMenuView removeFromSuperview];
        [InscriptionView.after removeFromSuperview];

    //: } praiseBlock:^(NSInteger tag) {
    } text:^(NSInteger tag) {
        //: !_praiseSelectBlock ? : _praiseSelectBlock(tag);
        !_praiseSelectBlock ? : _praiseSelectBlock(tag);

        //: [self hideTextSelection];
        [self searchion];
        //: [ContentBubbleMenuView.shareMenuView removeFromSuperview];
        [InscriptionView.after removeFromSuperview];
    //: }];
    }];

}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //: return NO;
    return NO;
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self hideTextSelection];
    [self searchion];
    //: [ContentBubbleMenuView.shareMenuView removeFromSuperview];
    [InscriptionView.after removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

//: - (void)hideTextSelection {
- (void)searchion {
    //: [self setSelectedRange:NSMakeRange(0, 0)];
    [self setSelectedRange:NSMakeRange(0, 0)];//去掉选择的效果。
}

//: #pragma mark delegate
#pragma mark delegate
//: -(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"]) {
    if ([text isEqualToString:@"\n"]) {
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
//        [self.view endEditing:true];
        //: return NO;
        return NO;
    }

    //: return true;
    return true;
}

//: - (void)selectionWillChange:(id<UITextInput>)textInput {
- (void)selectionWillChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _start_ 变化。。。隐藏");
}

//: - (void)selectionDidChange:(id<UITextInput>)textInput {
- (void)selectionDidChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _end_ 变化。。。显示");
}

//: - (void)textWillChange:(nullable id <UITextInput>)textInput {
- (void)textWillChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textDidChange:(nullable id <UITextInput>)textInput {
- (void)textDidChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textViewDidChangeSelection:(UITextView *)textView {
- (void)textViewDidChangeSelection:(UITextView *)textView {
    //: NSLog(@"光标位置%ld——%ld",textView.selectedRange.location,textView.selectedRange.length);

//    if (textView.selectedRange.length <= 0) {
//        //隐藏
//        [[InscriptionView shareMenuView] removeFromSuperview];
//        return;
//    }
//    
//    CGRect startRect = [textView caretRectForPosition:[textView selectedTextRange].start];
//    CGRect endRect = [textView caretRectForPosition:[textView selectedTextRange].end];
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",startRect.origin.x, startRect.origin.y, startRect.size.width, startRect.size.height);
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",endRect.origin.x, endRect.origin.y, endRect.size.width, endRect.size.height);
//    
//    CGRect resultRect = CGRectZero;
//    if (startRect.origin.y == endRect.origin.y) {
//        resultRect.origin.x = startRect.origin.x;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
//        resultRect.size.height = startRect.size.height;
//    } else {
//        resultRect.origin.x = 0;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = textView.frame.size.width;
//        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
//    }
//    
////    _selectedTopView.frame = resultRect;
//    
//    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//        
//    if (textView.selectedRange.length > 0) {
//        //全部选中的时候内容显示的不一样。
//        if (textView.selectedRange.length == textView.text.length) {
//            
//            [[InscriptionView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(LanguageItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [InscriptionView.shareMenuView removeFromSuperview];
//
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [InscriptionView.shareMenuView removeFromSuperview];
//            }];
//        } else {
//            
//            [[InscriptionView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(LanguageItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [InscriptionView.shareMenuView removeFromSuperview];
//                
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [InscriptionView.shareMenuView removeFromSuperview];
//            }];
//        }
//    }
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    //: return YES;
    return YES;
}

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message {
- (void)curMessage:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[UserKit totalSend].config supervise:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(outdoorsing:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config outdoorsing:message];
    }
    //: [items enumerateObjectsUsingBlock:^(ContentMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(LanguageItem *item, NSUInteger idx, BOOL *stop) {

        //: ContentBubbleButtonModel *model = [[ContentBubbleButtonModel alloc] init];
        ColorModel *model = [[ColorModel alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(onTapMenuItemCopy:)) {
            //: [selectedPartRangeButtons addObject:model];
            [selectedPartRangeButtons addObject:model];
        }
    //: }];
    }];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: - (void)new_genMediaButton {
- (void)content {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: ContentMediaItem *copy = [ContentMediaItem item:@"onTapMenuItemCopy:"
    LanguageItem *copy = [LanguageItem valueColor:[FateRefreshData sharedInstance].mConcertValue
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                sleepingPill:[UIImage imageNamed:[FateRefreshData sharedInstance].user_labMsg]
                              //: selectedImage:nil
                              itemTo:nil
                                      //: title:[ContentLanguageManager getTextWithKey:@"复制"]];
                                      domain:[MatronymicPath colorStreetwise:@"复制"]];


    //: ContentBubbleButtonModel *model = [[ContentBubbleButtonModel alloc] init];
    ColorModel *model = [[ColorModel alloc] init];
    //: model.normalImage = copy.normalImage;
    model.normalImage = copy.normalImage;
    //: model.name = copy.title;
    model.name = copy.title;
    //: model.item = copy;
    model.item = copy;

    //: [selectedAllRangeButtons addObject:model];
    [selectedAllRangeButtons addObject:model];
    //: [selectedPartRangeButtons addObject:model];
    [selectedPartRangeButtons addObject:model];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: @end
@end
