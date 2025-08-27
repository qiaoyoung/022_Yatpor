// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeTool.h
//  NIM
//  用于拼音全称和简称生成查询读取的类
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMSpellingUnit : NSObject
@interface ALaCarteBar : NSObject
//: @property (nonatomic,strong) NSString *fullSpelling;
@property (nonatomic,strong) NSString *fullSpelling;
//: @property (nonatomic,strong) NSString *shortSpelling;
@property (nonatomic,strong) NSString *shortSpelling;
//: @end
@end

//: @interface ContentSpellingCenter : NSObject
@interface TingReason : NSObject
{
    //: NSMutableDictionary *_spellingCache; 
    NSMutableDictionary *_spellingCache; //全拼，简称cache
    //: NSString *_filepath;
    NSString *_filepath;
}
//: + (ContentSpellingCenter *)sharedCenter;
+ (TingReason *)infoCenter;
//: - (void)saveSpellingCache; 
- (void)equivalenceItem; //写入缓存

//: - (NIMSpellingUnit *)spellingForString: (NSString *)source; 
- (ALaCarteBar *)count: (NSString *)source; //全拼，简拼 (全是小写)
//: - (NSString *)firstLetter: (NSString *)input; 
- (NSString *)earlyLetter: (NSString *)input; //首字母
//: @end
@end
