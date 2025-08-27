
#import <Foundation/Foundation.h>

@interface VisualImageData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation VisualImageData

+ (instancetype)sharedInstance {
    static VisualImageData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VisualImageDataToData:(NSString *)value {
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

- (Byte *)VisualImageDataToCache:(Byte *)data {
    int fate = data[0];
    Byte expanse = data[1];
    int libraryUp = data[2];
    for (int i = libraryUp; i < libraryUp + fate; i++) {
        int value = data[i] - expanse;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[libraryUp + fate] = 0;
    return data + libraryUp;
}

- (NSString *)StringFromVisualImageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VisualImageDataToCache:data]];
}

//: string
- (NSString *)mainIgnoreKey {
    /* static */ NSString *mainIgnoreKey = nil;
    if (!mainIgnoreKey) {
		NSString *origin = @"06080B12AAB1F55A9D8CD17B7C7A71766F24";
		NSData *data = [VisualImageData VisualImageDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainIgnoreKey = [self StringFromVisualImageData:value];
    }
    return mainIgnoreKey;
}

//: en_US
- (NSString *)kPitaValue {
    /* static */ NSString *kPitaValue = nil;
    if (!kPitaValue) {
		NSString *origin = @"05460910DBF62B2A97ABB4A59B9993";
		NSData *data = [VisualImageData VisualImageDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kPitaValue = [self StringFromVisualImageData:value];
    }
    return kPitaValue;
}

//: name
- (NSString *)appQuarterbackPath {
    /* static */ NSString *appQuarterbackPath = nil;
    if (!appQuarterbackPath) {
		NSString *origin = @"043F0506DEADA0ACA4CE";
		NSData *data = [VisualImageData VisualImageDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appQuarterbackPath = [self StringFromVisualImageData:value];
    }
    return appQuarterbackPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeritageManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "HeritageManager.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface HeritageManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation HeritageManager

//: static NTESLanguageManager *shareInstance = nil;
static HeritageManager *show_viewFrameText = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (HeritageManager *)viewWill{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            show_viewFrameText = [[HeritageManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return show_viewFrameText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)queryed:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [HeritageManager shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setRange:(NSString *)langType{
    //: NSString *resourceType = @"strings";
    NSString *resourceType = @"strings";
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"strings_en";
        resourceType = @"strings_en";
    }
    //: NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    //: xmlParser.delegate = self;
    xmlParser.delegate = self;
    //: [xmlParser parse];
    [xmlParser parse];
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)videoDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)beId:(NSXMLParser *)parser should:(NSString *)elementName doingFor:(NSString *)namespaceURI getDown:(NSString *)qName pageShadow:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[[VisualImageData sharedInstance] mainIgnoreKey]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[[VisualImageData sharedInstance] appQuarterbackPath]];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)duringDate:(NSXMLParser *)parser edge:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)teamText:(NSXMLParser *)parser bringHome:(NSString *)elementName addPull:(NSString *)namespaceURI screen:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)clearHolder:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)change{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return [[VisualImageData sharedInstance] kPitaValue];
    }
    //: return locale;
    return locale;
}


//: @end
@end