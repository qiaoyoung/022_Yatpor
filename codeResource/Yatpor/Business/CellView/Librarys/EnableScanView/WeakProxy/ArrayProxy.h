// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayProxy.h
//  SGQRCodeExample
//
//  Created by kingsic on 2022/7/2.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SGWeakProxy : NSProxy
@interface ArrayProxy : NSProxy
/// 类方法创建 ArrayProxy
//: + (instancetype)weakProxyWithTarget:(id)aTarget;
+ (instancetype)key:(id)aTarget;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END