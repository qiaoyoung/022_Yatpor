// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentExtensionHelper.h
// UserKit
//
//  Created by amao on 4/25/16.
//  Copyright © 2016 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSString (NIMKitExtension)
@interface NSString (Ground)
//: - (NSDictionary *)nimkit_jsonDict;
- (NSDictionary *)alongText;
//: @end
@end


//: @interface NSDictionary (NIMKitExtension)
@interface NSDictionary (Ground)
//: - (NSString *)nimkit_jsonString;
- (NSString *)jsonNameItem;
//: @end
@end
