
#import <Foundation/Foundation.h>

@interface SeeData : NSObject

+ (instancetype)sharedInstance;

//:  等%zd人
@property (nonatomic, copy) NSString *dream_employerName;

@end

@implementation SeeData

+ (instancetype)sharedInstance {
    static SeeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SeeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SeeDataToCache:(Byte *)data {
    int thyrotropinReleasingHormone = data[0];
    Byte quarterbackEtherValue = data[1];
    int literData = data[2];
    for (int i = literData; i < literData + thyrotropinReleasingHormone; i++) {
        int value = data[i] - quarterbackEtherValue;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[literData + thyrotropinReleasingHormone] = 0;
    return data + literData;
}

- (NSString *)StringFromSeeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SeeDataToCache:data]];
}

//:  等%zd人
- (NSString *)dream_employerName {
    if (!_dream_employerName) {
		NSArray<NSNumber *> *origin = @[@10, @2, @12, @79, @151, @12, @156, @6, @223, @145, @55, @91, @34, @233, @175, @139, @39, @124, @102, @230, @188, @188, @85];
		NSData *data = [SeeData SeeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_employerName = [self StringFromSeeData:value];
    }
    return _dream_employerName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.m
// UserKit
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitQuickCommentUtil.h"
#import "TapOption.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "WithSessionNameView+UserKit.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFInputEmoticonManager.h"
#import "CompleteManager.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"

//: static const CGFloat kHeightPerRow = 25.0;
static const CGFloat mResourceName = 25.0;
//: static NSInteger kMaxWidthPerRow = 0;
static NSInteger mainValueTingPath = 0;
//: const CGFloat NIMKitCommentUtilCellPadding = 2.f;
const CGFloat showNameFormat = 2.f;
//: const CGFloat NIMKitCommentUtilCellContentPadding = 5.f;
const CGFloat appManagerName = 5.f;
//: NSString * const NIMKitQuickCommentFormat = @"emoticon_emoji_%02ld";
NSString * const appShowText = @"emoticon_emoji_%02ld";


//: @implementation FFFKitQuickCommentUtil
@implementation TapOption

//: + (void)initialize
+ (void)initialize
{
    //: kMaxWidthPerRow = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
    mainValueTingPath = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
}

//: + (UIFont *)commentFont
+ (UIFont *)session
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static UIFont *instance = nil;
    static UIFont *instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [UIFont systemFontOfSize:13];
        instance = [UIFont systemFontOfSize:13];
    //: });
    });
    //: return instance;
    return instance;
}

//: + (M80AttributedLabel *)newCommentLabel
+ (WithSessionNameView *)textLabel
{
    //: M80AttributedLabel *textLabel = [[M80AttributedLabel alloc] init];
    WithSessionNameView *textLabel = [[WithSessionNameView alloc] init];
    //: textLabel.backgroundColor = [UIColor clearColor];
    textLabel.backgroundColor = [UIColor clearColor];
    //: textLabel.numberOfLines = 1;
    textLabel.numberOfLines = 1;
    //: textLabel.textAlignment = kCTTextAlignmentLeft;
    textLabel.textAlignment = kCTTextAlignmentLeft;
    //: textLabel.font = [self commentFont];
    textLabel.font = [self session];
    //: textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    //: return textLabel;
    return textLabel;
}

//: + (NSString *)commentContent:(NIMQuickComment *)comment
+ (NSString *)requireView:(NIMQuickComment *)comment
{
    //: NSString *ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, (long)comment.replyType];
    NSString *ID = [NSString stringWithFormat:appShowText, (long)comment.replyType];
    //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
    BackgroundBar *emoticon = [[CompleteManager index] user:ID];
    //: NSString *content = nil;
    NSString *content = nil;
    //: if (emoticon)
    if (emoticon)
    {
        //: if (emoticon.type == NIMEmoticonTypeUnicode) {
        if (emoticon.type == NIMEmoticonTypeUnicode) {
            //: content = emoticon.unicode;
            content = emoticon.unicode;
        //: } else {
        } else {
            //: content = emoticon.tag;
            content = emoticon.tag;
        }
    }
    //: content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]"];
    content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]"];
    //: return content;
    return content;
}

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments
+ (NSString *)max:(NSArray<NIMQuickComment *> *)comments
{
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment *firstComment = comments.firstObject;
    NIMQuickComment *firstComment = comments.firstObject;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([currentAccount isEqualToString:comment.from])
        if ([currentAccount isEqualToString:comment.from])
        {
            //: firstComment = comment;
            firstComment = comment;
            //: break;
            break;
        }
    }

    //: NSMutableString *string = [NSMutableString string];
    NSMutableString *string = [NSMutableString string];
    //: NSString *fristShowName = [self showNameWithCommentFrom:firstComment];
    NSString *fristShowName = [self searchionMessage:firstComment];
    //: [string appendFormat:@"%@  %@", [self commentContent:firstComment], fristShowName];
    [string appendFormat:@"%@  %@", [self requireView:firstComment], fristShowName];
    //: if (comments.count > 1)
    if (comments.count > 1)
    {
        //: [string appendFormat:@" 等%zd人", comments.count];
        [string appendFormat:[SeeData sharedInstance].dream_employerName, comments.count];
    }
    //: return [string copy];
    return [string copy];
}

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment
+ (CGSize)independentComment:(NIMQuickComment *)comment
{
    //: static M80AttributedLabel *label = nil;
    static WithSessionNameView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self textLabel];
    //: });
    });

    //: [label nim_setText:[self commentContent:comment]];
    [label maturity:[self requireView:comment]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(mainValueTingPath, mResourceName)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + appManagerName * 2, mResourceName);
}

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments
+ (CGSize)elevationComments:(NSArray<NIMQuickComment *> *)comments
{
    //: if (comments.count == 0)
    if (comments.count == 0)
    {
        //: return CGSizeZero;
        return CGSizeZero;
    }

    //: static M80AttributedLabel *label = nil;
    static WithSessionNameView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self textLabel];
    //: });
    });

    //: [label nim_setText:[self commentsContent:comments]];
    [label maturity:[self max:comments]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(mainValueTingPath, mResourceName)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + appManagerName * 2, mResourceName);
}

//: + (CGSize)containerSizeWithComments:(NSMapTable *)table
+ (CGSize)black:(NSMapTable *)table
{
    //: NSArray *keys = [self sortedKeys:table];
    NSArray *keys = [self onKey:table];

    //: CGFloat sumWidth = 0;
    CGFloat sumWidth = 0;
    //: CGFloat maxWidth = sumWidth;
    CGFloat maxWidth = sumWidth;
    //: NSInteger row = 1;
    NSInteger row = 1;
    //: for (NSNumber *key in keys)
    for (NSNumber *key in keys)
    {
        //: NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        //: if (!comments)
        if (!comments)
        {
            //: continue;
            continue;
        }

        //: CGSize size = [self itemSizeWithComments:comments];
        CGSize size = [self elevationComments:comments];
        //: if (sumWidth + size.width + NIMKitCommentUtilCellPadding * 2 >= kMaxWidthPerRow)
        if (sumWidth + size.width + showNameFormat * 2 >= mainValueTingPath)
        {
            //: row ++;
            row ++;
            //: sumWidth = NIMKitCommentUtilCellPadding + size.width;
            sumWidth = showNameFormat + size.width;
        }
        //: else
        else
        {
            //: sumWidth += NIMKitCommentUtilCellPadding + size.width;
            sumWidth += showNameFormat + size.width;
        }

        //: if (maxWidth < sumWidth)
        if (maxWidth < sumWidth)
        {
            //: maxWidth = sumWidth;
            maxWidth = sumWidth;
        }
    }

    //: maxWidth += NIMKitCommentUtilCellPadding;
    maxWidth += showNameFormat;

    //: return CGSizeMake(maxWidth, row * kHeightPerRow + (row + 1) * NIMKitCommentUtilCellPadding);
    return CGSizeMake(maxWidth, row * mResourceName + (row + 1) * showNameFormat);
}

//: + (NIMQuickComment *)myCommentFromComments:(NSInteger )indexPath
+ (NIMQuickComment *)corner:(NSInteger )indexPath
                                      //: keys:(NSArray *)keys
                                      shouldStep:(NSArray *)keys
                                  //: comments:(NSMapTable *)map
                                  asTable:(NSMapTable *)map
{
    //: NSNumber *number = [keys objectAtIndex:indexPath];
    NSNumber *number = [keys objectAtIndex:indexPath];
    //: NSArray *comments = [map objectForKey:number];
    NSArray *comments = [map objectForKey:number];
    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment * mine = nil;
    NIMQuickComment * mine = nil;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([comment.from isEqualToString:currentAcount])
        if ([comment.from isEqualToString:currentAcount])
        {
            //: mine = comment;
            mine = comment;
            //: break;
            break;
        }
    }
    //: return mine;
    return mine;
}

//: + (NSString *)showNameWithCommentFrom:(NIMQuickComment *)comment
+ (NSString *)searchionMessage:(NIMQuickComment *)comment
{
    //: FFFKitInfo *info = nil;
    ViewInfo *info = nil;
    //: NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    //: NIMSession *session = basicInfo.session;
    NIMSession *session = basicInfo.session;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    ImageOption *option = [[ImageOption alloc] init];
    //: option.session = session;
    option.session = session;
    //: info = [[MyUserKit sharedKit] infoByUser:comment.from option:option];
    info = [[UserKit totalSend] color:comment.from image:option];

    //: return info.showName;
    return info.showName;
}

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
+ (NSArray *)onKey:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
{
    //: NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
    NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
               //: NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               //: NIMQuickComment *comment1 = [array1 lastObject];
               NIMQuickComment *comment1 = [array1 lastObject];

               //: NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               //: NIMQuickComment *comment2 = [array2 lastObject];
               NIMQuickComment *comment2 = [array2 lastObject];

               //: if (comment1.timestamp > comment2.timestamp)
               if (comment1.timestamp > comment2.timestamp)
               {
                   //: return NSOrderedDescending;
                   return NSOrderedDescending;
               }
               //: else if (comment1.timestamp == comment2.timestamp)
               else if (comment1.timestamp == comment2.timestamp)
               {
                   //: return NSOrderedSame;
                   return NSOrderedSame;
               }
               //: else
               else
               {
                   //: return NSOrderedAscending;
                   return NSOrderedAscending;
               }
           //: }];
           }];
    //: return keys;
    return keys;
}

//: @end
@end