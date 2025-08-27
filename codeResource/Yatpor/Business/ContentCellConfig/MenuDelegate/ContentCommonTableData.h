// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentCommonTableData.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//
//section key
//row key
//common key

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface NIMCommonTableSection : NSObject
@interface DisturbingSection : NSObject

//: @property (nonatomic,copy) NSString *headerTitle;
@property (nonatomic,copy) NSString *headerTitle;

//: @property (nonatomic,copy) NSArray *rows;
@property (nonatomic,copy) NSArray *rows;

//: @property (nonatomic,copy) NSString *footerTitle;
@property (nonatomic,copy) NSString *footerTitle;

//: @property (nonatomic,assign) CGFloat uiHeaderHeight;
@property (nonatomic,assign) CGFloat uiHeaderHeight;

//: @property (nonatomic,assign) CGFloat uiFooterHeight;
@property (nonatomic,assign) CGFloat uiFooterHeight;

//: - (instancetype) initWithDict:(NSDictionary *)dict;
- (instancetype) initWithDict:(NSDictionary *)dict;

//: + (NSArray *)sectionsWithData:(NSArray *)data;
+ (NSArray *)needLocation:(NSArray *)data;

//: @end
@end




//: @interface NIMCommonTableRow : NSObject
@interface LanguageSizeView : NSObject

//: @property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *title;

//: @property (nonatomic,copy ) NSString *detailTitle;
@property (nonatomic,copy ) NSString *detailTitle;

//: @property (nonatomic,copy ) NSString *cellClassName;
@property (nonatomic,copy ) NSString *cellClassName;

//: @property (nonatomic,copy ) NSString *cellActionName;
@property (nonatomic,copy ) NSString *cellActionName;

//: @property (nonatomic,assign) CGFloat uiRowHeight;
@property (nonatomic,assign) CGFloat uiRowHeight;

//: @property (nonatomic,assign) CGFloat sepLeftEdge;
@property (nonatomic,assign) CGFloat sepLeftEdge;

//: @property (nonatomic,assign) BOOL showAccessory;
@property (nonatomic,assign) BOOL showAccessory;

//: @property (nonatomic,assign) BOOL forbidSelect;
@property (nonatomic,assign) BOOL forbidSelect;

//: @property (nonatomic,assign) BOOL userInteractionDisable;
@property (nonatomic,assign) BOOL userInteractionDisable;

//: @property (nonatomic,strong) id extraInfo;
@property (nonatomic,strong) id extraInfo;

//: @property (nonatomic,strong) NSString *language;
@property (nonatomic,strong) NSString *language;

//: - (instancetype)initWithDict:(NSDictionary *)dict;
- (instancetype)initWithColor:(NSDictionary *)dict;

//: + (NSArray *)rowsWithData:(NSArray *)data;
+ (NSArray *)underside:(NSArray *)data;

//: @end
@end
