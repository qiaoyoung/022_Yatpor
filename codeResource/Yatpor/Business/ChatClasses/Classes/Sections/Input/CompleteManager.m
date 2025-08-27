
#import <Foundation/Foundation.h>

typedef struct {
    Byte liter;
    Byte *redDetective;
    unsigned int imageTitleConcert;
	int estimateAnimal;
	int midway;
	int benefaction;
} StructDebateAllowData;

@interface DebateAllowData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DebateAllowData

+ (instancetype)sharedInstance {
    static DebateAllowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DebateAllowDataToByte:(StructDebateAllowData *)data {
    for (int i = 0; i < data->imageTitleConcert; i++) {
        data->redDetective[i] ^= data->liter;
    }
    data->redDetective[data->imageTitleConcert] = 0;
	if (data->imageTitleConcert >= 3) {
		data->estimateAnimal = data->redDetective[0];
		data->midway = data->redDetective[1];
		data->benefaction = data->redDetective[2];
	}
    return data->redDetective;
}

- (NSString *)StringFromDebateAllowData:(StructDebateAllowData *)data {
    return [NSString stringWithUTF8String:(char *)[self DebateAllowDataToByte:data]];
}

//: info
- (NSString *)main_tingMessage {
    /* static */ NSString *main_tingMessage = nil;
    if (!main_tingMessage) {
        StructDebateAllowData value = (StructDebateAllowData){125, (Byte []){20, 19, 27, 18, 100}, 4, 222, 206, 118};
        main_tingMessage = [self StringFromDebateAllowData:&value];
    }
    return main_tingMessage;
}

//: pressed
- (NSString *)appToilMsg {
    /* static */ NSString *appToilMsg = nil;
    if (!appToilMsg) {
        StructDebateAllowData value = (StructDebateAllowData){16, (Byte []){96, 98, 117, 99, 99, 117, 116, 54}, 7, 151, 169, 35};
        appToilMsg = [self StringFromDebateAllowData:&value];
    }
    return appToilMsg;
}

//: unicode
- (NSString *)notiDataAllowContent {
    /* static */ NSString *notiDataAllowContent = nil;
    if (!notiDataAllowContent) {
        StructDebateAllowData value = (StructDebateAllowData){70, (Byte []){51, 40, 47, 37, 41, 34, 35, 121}, 7, 220, 194, 183};
        notiDataAllowContent = [self StringFromDebateAllowData:&value];
    }
    return notiDataAllowContent;
}

//: data
- (NSString *)dreamFlexibleId {
    /* static */ NSString *dreamFlexibleId = nil;
    if (!dreamFlexibleId) {
        StructDebateAllowData value = (StructDebateAllowData){196, (Byte []){160, 165, 176, 165, 85}, 4, 139, 40, 216};
        dreamFlexibleId = [self StringFromDebateAllowData:&value];
    }
    return dreamFlexibleId;
}

//: title
- (NSString *)dream_morroId {
    /* static */ NSString *dream_morroId = nil;
    if (!dream_morroId) {
        StructDebateAllowData value = (StructDebateAllowData){241, (Byte []){133, 152, 133, 157, 148, 180}, 5, 116, 229, 46};
        dream_morroId = [self StringFromDebateAllowData:&value];
    }
    return dream_morroId;
}

//: file
- (NSString *)mSufficientMsg {
    /* static */ NSString *mSufficientMsg = nil;
    if (!mSufficientMsg) {
        StructDebateAllowData value = (StructDebateAllowData){219, (Byte []){189, 178, 183, 190, 176}, 4, 187, 4, 52};
        mSufficientMsg = [self StringFromDebateAllowData:&value];
    }
    return mSufficientMsg;
}

//: gif
- (NSString *)notiGlobalIllIdent {
    /* static */ NSString *notiGlobalIllIdent = nil;
    if (!notiGlobalIllIdent) {
        StructDebateAllowData value = (StructDebateAllowData){124, (Byte []){27, 21, 26, 32}, 3, 151, 95, 186};
        notiGlobalIllIdent = [self StringFromDebateAllowData:&value];
    }
    return notiGlobalIllIdent;
}

//: normal
- (NSString *)notiCheerIdent {
    /* static */ NSString *notiCheerIdent = nil;
    if (!notiCheerIdent) {
        StructDebateAllowData value = (StructDebateAllowData){245, (Byte []){155, 154, 135, 152, 148, 153, 138}, 6, 221, 113, 156};
        notiCheerIdent = [self StringFromDebateAllowData:&value];
    }
    return notiCheerIdent;
}

//: tag
- (NSString *)appBurdenIdent {
    /* static */ NSString *appBurdenIdent = nil;
    if (!appBurdenIdent) {
        StructDebateAllowData value = (StructDebateAllowData){235, (Byte []){159, 138, 140, 142}, 3, 65, 197, 42};
        appBurdenIdent = [self StringFromDebateAllowData:&value];
    }
    return appBurdenIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentInputEmoticonManager.h"
#import "CompleteManager.h"
 
//: #import "NSString+MyUserKit.h"
#import "NSString+UserKit.h"
//: #import "MyUserKit.h"
#import "UserKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+UserKit.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+UserKit.h"

//: @implementation NIMInputEmoticon
@implementation BackgroundBar

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation SpecialSessionView
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation PutOptionLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initContainer:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initVisible:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface ContentInputEmoticonManager ()
@interface CompleteManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation ContentInputEmoticonManager
@implementation CompleteManager

//: + (instancetype)sharedManager
+ (instancetype)index
{
    //: static ContentInputEmoticonManager *instance = nil;
    static CompleteManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ContentInputEmoticonManager alloc]init];
        instance = [[CompleteManager alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self parsePlist];
        [self mainEvent];
        //: [self preloadEmoticonResource];
        [self emoticonIn];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)off {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (SpecialSessionView *)show:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (SpecialSessionView *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (BackgroundBar *)labelMessage:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    BackgroundBar *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SpecialSessionView *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (BackgroundBar *)user:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    BackgroundBar *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SpecialSessionView *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (BackgroundBar *)tag:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           value:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    BackgroundBar *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SpecialSessionView *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)mainEvent
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle toStart];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[DebateAllowData sharedInstance] main_tingMessage]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[DebateAllowData sharedInstance] dreamFlexibleId]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            SpecialSessionView *catalog = [self green:info
                                                     //: emoticons:emoticons];
                                                     tight:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle messageFile];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[DebateAllowData sharedInstance] main_tingMessage]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[DebateAllowData sharedInstance] dreamFlexibleId]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            SpecialSessionView *catalog = [self green:info
                                                     //: emoticons:emoticons];
                                                     tight:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (SpecialSessionView *)green:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             tight:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    SpecialSessionView *catalog = [[SpecialSessionView alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[[[DebateAllowData sharedInstance] dream_morroId]];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[[[DebateAllowData sharedInstance] notiCheerIdent]];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[[DebateAllowData sharedInstance] appToilMsg]];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        BackgroundBar *emoticon = [[BackgroundBar alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[[DebateAllowData sharedInstance] appBurdenIdent]];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[[DebateAllowData sharedInstance] notiDataAllowContent]];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[[DebateAllowData sharedInstance] mSufficientMsg]];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[[DebateAllowData sharedInstance] notiGlobalIllIdent]];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (void)preloadEmoticonResource {
- (void)emoticonIn {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (SpecialSessionView *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(BackgroundBar *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage secretRandom:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end
