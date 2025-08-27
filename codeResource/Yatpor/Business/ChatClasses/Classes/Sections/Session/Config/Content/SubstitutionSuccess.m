
#import <Foundation/Foundation.h>

NSString *StringFromClaimPaneData(Byte *data);


//: 未知类型消息
Byte app_chapterStr[] = {31, 18, 10, 208, 159, 130, 231, 254, 237, 101, 175, 129, 230, 136, 182, 230, 139, 158, 229, 187, 177, 231, 165, 159, 231, 170, 156, 230, 209};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubstitutionSuccess.m
// UserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentUnsupportContentConfig.h"
#import "SubstitutionSuccess.h"
//: #import "MyUserKit.h"
#import "UserKit.h"

//: @interface ContentUnsupportContentConfig ()
@interface SubstitutionSuccess ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation ContentUnsupportContentConfig
@implementation SubstitutionSuccess

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = StringFromClaimPaneData(app_chapterStr).resign;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)voice:(CGFloat)cellWidth add:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: ContentKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    ToiletKitSetting *setting = [[UserKit totalSend].config color:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"ContentSessionUnknowContentView";
    return @"DismissTextView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)viewDoing:(NIMMessage *)message
{
    //: ContentKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    SuccessTextReason *settings = message.isOutgoingMsg? [UserKit totalSend].config.rightBubbleSettings : [UserKit totalSend].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end

Byte * ClaimPaneDataToCache(Byte *data) {
    int foodHoe = data[0];
    int ironical = data[1];
    int usGovernment = data[2];
    if (!foodHoe) return data + usGovernment;
    for (int i = 0; i < ironical / 2; i++) {
        int begin = usGovernment + i;
        int end = usGovernment + ironical - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[usGovernment + ironical] = 0;
    return data + usGovernment;
}

NSString *StringFromClaimPaneData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ClaimPaneDataToCache(data)];
}  
