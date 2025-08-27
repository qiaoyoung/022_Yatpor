// __DEBUG__
// __CLOSE_PRINT__
//
//  Remains.m
//
//  blog : http://blog.csdn.net/biggercoffee
//  github : https://github.com/biggercoffee/Remains
//
//  Created by Mango on 2017/3/31.
//  Copyright © 2017年 coffee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZXPUnicode.h"
#import "Remains.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static inline void zxp_swizzleSelector(Class class, SEL originalSelector, SEL swizzledSelector) {
static inline void infoModel(Class class, SEL originalSelector, SEL swizzledSelector) {
    //: Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    //: Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    //: if (class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))) {
    if (class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))) {
        //: class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    //: } else {
    } else {
        //: method_exchangeImplementations(originalMethod, swizzledMethod);
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

//: @implementation NSString (ZXPUnicode)
@implementation NSString (Remains)

//: - (NSString *)stringByReplaceUnicode {
- (NSString *)ting {
    //: NSMutableString *convertedString = [self mutableCopy];
    NSMutableString *convertedString = [self mutableCopy];
    //: [convertedString replaceOccurrencesOfString:@"\\U"
    [convertedString replaceOccurrencesOfString:@"\\U"
                                     //: withString:@"\\u"
                                     withString:@"\\u"
                                        //: options:0
                                        options:0
                                          //: range:NSMakeRange(0, convertedString.length)];
                                          range:NSMakeRange(0, convertedString.length)];

    //: CFStringRef transform = CFSTR("Any-Hex/Java");
    CFStringRef transform = CFSTR("Any-Hex/Java");
    //: CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    //: return convertedString;
    return convertedString;
}

//: @end
@end

//: @implementation NSArray (ZXPUnicode)
@implementation NSArray (Remains)

//: + (void)load {
+ (void)load {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class class = [self class];
        Class class = [self class];
        //: zxp_swizzleSelector(class, @selector(description), @selector(zxp_description));
        infoModel(class, @selector(description), @selector(recordKey));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(zxp_descriptionWithLocale:));
        infoModel(class, @selector(descriptionWithLocale:), @selector(fullDress:));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(zxp_descriptionWithLocale:indent:));
        infoModel(class, @selector(descriptionWithLocale:indent:), @selector(asPicture:net:));
    //: });
    });
}

/**
 *  我觉得 
 *  可以把以下的方法放到一个NSObject的category中
 *  然后在需要的类中进行swizzle
 *  但是又觉得这样太粗暴了。。。。
 */

//: - (NSString *)zxp_description {
- (NSString *)recordKey {
    //: return [[self zxp_description] stringByReplaceUnicode];
    return [[self recordKey] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale {
- (NSString *)fullDress:(nullable id)locale {
    //: return [[self zxp_descriptionWithLocale:locale] stringByReplaceUnicode];
    return [[self fullDress:locale] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
- (NSString *)asPicture:(nullable id)locale net:(NSUInteger)level {
    //: return [[self zxp_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
    return [[self asPicture:locale net:level] ting];
}

//: @end
@end

//: @implementation NSDictionary (ZXPUnicode)
@implementation NSDictionary (Remains)

//: + (void)load {
+ (void)load {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class class = [self class];
        Class class = [self class];
        //: zxp_swizzleSelector(class, @selector(description), @selector(zxp_description));
        infoModel(class, @selector(description), @selector(recordKey));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(zxp_descriptionWithLocale:));
        infoModel(class, @selector(descriptionWithLocale:), @selector(fullDress:));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(zxp_descriptionWithLocale:indent:));
        infoModel(class, @selector(descriptionWithLocale:indent:), @selector(asPicture:net:));
    //: });
    });
}

//: - (NSString *)zxp_description {
- (NSString *)recordKey {
    //: return [[self zxp_description] stringByReplaceUnicode];
    return [[self recordKey] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale {
- (NSString *)fullDress:(nullable id)locale {
    //: return [[self zxp_descriptionWithLocale:locale] stringByReplaceUnicode];
    return [[self fullDress:locale] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
- (NSString *)asPicture:(nullable id)locale net:(NSUInteger)level {
    //: return [[self zxp_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
    return [[self asPicture:locale net:level] ting];
}

//: @end
@end

//: @implementation NSSet (ZXPUnicode)
@implementation NSSet (Remains)

//: + (void)load {
+ (void)load {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class class = [self class];
        Class class = [self class];
        //: zxp_swizzleSelector(class, @selector(description), @selector(zxp_description));
        infoModel(class, @selector(description), @selector(recordKey));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(zxp_descriptionWithLocale:));
        infoModel(class, @selector(descriptionWithLocale:), @selector(fullDress:));
        //: zxp_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(zxp_descriptionWithLocale:indent:));
        infoModel(class, @selector(descriptionWithLocale:indent:), @selector(asPicture:net:));
    //: });
    });
}

//: - (NSString *)zxp_description {
- (NSString *)recordKey {
    //: return [[self zxp_description] stringByReplaceUnicode];
    return [[self recordKey] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale {
- (NSString *)fullDress:(nullable id)locale {
    //: return [[self zxp_descriptionWithLocale:locale] stringByReplaceUnicode];
    return [[self fullDress:locale] ting];
}

//: - (NSString *)zxp_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
- (NSString *)asPicture:(nullable id)locale net:(NSUInteger)level {
    //: return [[self zxp_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
    return [[self asPicture:locale net:level] ting];
}

//: @end
@end