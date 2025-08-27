
#import <Foundation/Foundation.h>
typedef struct {
    Byte lineEnable;
    Byte *containerSearchContent;
    unsigned int bigImage;
    Byte singleRemote;
	int rivetLine;
	int rangeTable;
} CommunicationData;

NSString *StringFromCommunicationData(CommunicationData *data);


//: 来一个摇滚表演
CommunicationData kDotPath = (CommunicationData){229, (Byte []){3, 120, 64, 1, 93, 101, 1, 93, 79, 3, 116, 98, 3, 94, 127, 13, 68, 77, 3, 89, 113, 65}, 21, 253, 63, 42};

//: login_logo
CommunicationData dreamEndStr = (CommunicationData){130, (Byte []){238, 237, 229, 235, 236, 221, 238, 237, 229, 237, 133}, 10, 248, 101, 225};

//: #5D5F66
CommunicationData app_contentData = (CommunicationData){239, (Byte []){204, 218, 171, 218, 169, 217, 217, 29}, 7, 203, 34, 219};

//: login_bg
CommunicationData mByMsg = (CommunicationData){198, (Byte []){170, 169, 161, 175, 168, 153, 164, 161, 205}, 8, 193, 100, 118};

//: #333333
CommunicationData showViewTouchTitle = (CommunicationData){222, (Byte []){253, 237, 237, 237, 237, 237, 237, 86}, 7, 228, 212, 15};

//: 中东小王子
CommunicationData mainWindowStr = (CommunicationData){23, (Byte []){243, 175, 186, 243, 175, 139, 242, 167, 152, 240, 153, 156, 242, 186, 135, 224}, 15, 158, 14, 39};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "ModeView.h"
//: #import "UIView+NTES.h"
#import "UIView+StyleTool.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation ModeView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self dateUp];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)dateUp
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:StringFromCommunicationData(&mByMsg)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor recordView:StringFromCommunicationData(&showViewTouchTitle)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromCommunicationData(&kDotPath);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromCommunicationData(&dreamEndStr)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor recordView:StringFromCommunicationData(&app_contentData)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromCommunicationData(&mainWindowStr);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte *CommunicationDataToByte(CommunicationData *data) {
    if (data->singleRemote < 136) return data->containerSearchContent;
    for (int i = 0; i < data->bigImage; i++) {
        data->containerSearchContent[i] ^= data->lineEnable;
    }
    data->containerSearchContent[data->bigImage] = 0;
    data->singleRemote = 45;
	if (data->bigImage >= 2) {
		data->rivetLine = data->containerSearchContent[0];
		data->rangeTable = data->containerSearchContent[1];
	}
    return data->containerSearchContent;
}

NSString *StringFromCommunicationData(CommunicationData *data) {
    return [NSString stringWithUTF8String:(char *)CommunicationDataToByte(data)];
}
