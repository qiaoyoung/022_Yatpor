
#import <Foundation/Foundation.h>

NSString *StringFromInstallationData(Byte *data);        


//: #A148FF
Byte noti_dotTitle[] = {71, 7, 94, 11, 209, 138, 194, 152, 136, 136, 146, 197, 227, 211, 214, 218, 232, 232, 129};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentKitSwitcherCell.h"
#import "BarImageViewCell.h"
//: #import "ContentCommonTableData.h"
#import "ContentCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface ContentKitSwitcherCell ()
@interface BarImageViewCell ()

//: @end
@end

//: @implementation ContentKitSwitcherCell
@implementation BarImageViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor recordView:StringFromInstallationData(noti_dotTitle)];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)tabularArray:(LanguageSizeView *)rowData videoView:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.file action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.file action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * InstallationDataToCache(Byte *data) {
    int disorder = data[0];
    int esthetical = data[1];
    Byte chingRelease = data[2];
    int complainChild = data[3];
    if (!disorder) return data + complainChild;
    for (int i = complainChild; i < complainChild + esthetical; i++) {
        int value = data[i] + chingRelease;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[complainChild + esthetical] = 0;
    return data + complainChild;
}

NSString *StringFromInstallationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InstallationDataToCache(data)];
}
