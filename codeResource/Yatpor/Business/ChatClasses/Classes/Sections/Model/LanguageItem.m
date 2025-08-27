// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageItem.m
// UserKit
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "LanguageItem.h"

//: @implementation FFFMediaItem
@implementation LanguageItem

//: + (FFFMediaItem *)item:(NSString *)selector
+ (LanguageItem *)valueColor:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           sleepingPill:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         itemTo:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 domain:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    LanguageItem *item = [[LanguageItem alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end