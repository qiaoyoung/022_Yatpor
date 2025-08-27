// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementViewCell.m
//  ProjectK
//
//  Created by beartech on 13-9-25.
//  Copyright (c) 2013年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "ReplacementViewCell.h"

//: @implementation BaseTableViewCell
@implementation ReplacementViewCell
//: @synthesize cellInfomation = _cellInfomation;
@synthesize cellInfomation = _cellInfomation;
//: @synthesize indexPath = _indexPath;
@synthesize indexPath = _indexPath;



//: - (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initCell];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews{
- (void)initCell{

}

//: - (void)reloadWithInformation:(NSDictionary*)information{
- (void)untilTargetInformation:(NSDictionary*)information{
    //: if ([information isKindOfClass:[NSNull class]] || !information || [information isKindOfClass:[NSString class]]) {
    if ([information isKindOfClass:[NSNull class]] || !information || [information isKindOfClass:[NSString class]]) {
        //: return;
        return;
    }
    //: _cellInfomation = [[NSDictionary alloc]initWithDictionary:information];
    _cellInfomation = [[NSDictionary alloc]initWithDictionary:information];


}

//: + (CGFloat)getCellHeight:(NSDictionary*)information{
+ (CGFloat)searchUpwardsOrHeight:(NSDictionary*)information{

    //: return 44.0f;
    return 44.0f;
}



//: @end
@end