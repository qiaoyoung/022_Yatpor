// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol EmptyDelegate ;

//: @interface HMDataPicker : UIView{
@interface AggregationView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithInput:(id<EmptyDelegate>)delegate title:(NSDictionary *)dataDict should:(NSDictionary *)selectedDict media:(NSString *)jsonNode;

//: - (void)show;
- (void)streetwise;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol EmptyDelegate <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)build:(AggregationView *)dataPicker message:(NSDictionary *)selectedDict;

//: @end
@end