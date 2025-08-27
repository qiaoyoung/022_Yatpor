
#import <Foundation/Foundation.h>

NSString *StringFromGoData(Byte *data);        


//: icon_redpacket_
Byte mainElementaryData[] = {32, 15, 75, 10, 67, 196, 16, 35, 215, 175, 30, 24, 36, 35, 20, 39, 26, 25, 37, 22, 24, 32, 26, 41, 20, 176};

//: redid
Byte app_fellowPath[] = {1, 5, 50, 14, 168, 68, 32, 253, 156, 8, 235, 202, 55, 214, 64, 51, 50, 55, 50, 114};

//: /wallet/isAcceptRed
Byte app_needSingleMessage[] = {7, 19, 13, 14, 3, 107, 202, 91, 5, 30, 105, 217, 52, 41, 34, 106, 84, 95, 95, 88, 103, 34, 92, 102, 52, 86, 86, 88, 99, 103, 69, 88, 87, 109};

//: data
Byte noti_commentComfortableValue[] = {97, 4, 7, 10, 130, 238, 33, 179, 116, 161, 93, 90, 109, 90, 136};

//: pressed
Byte m_modelIdent[] = {74, 7, 95, 12, 137, 72, 189, 218, 201, 172, 132, 83, 17, 19, 6, 20, 20, 6, 5, 202};

//: normal
Byte mUserData[] = {20, 6, 29, 11, 140, 217, 198, 183, 238, 250, 82, 81, 82, 85, 80, 68, 79, 60};

//: 领取红包
Byte userReleaseId[] = {84, 12, 32, 5, 142, 201, 130, 102, 197, 111, 118, 199, 154, 130, 197, 108, 101, 196};

//: from_
Byte noti_touchIdent[] = {85, 5, 49, 6, 156, 4, 53, 65, 62, 60, 46, 171};

//: 查看红包
Byte dreamTextContent[] = {46, 12, 16, 10, 81, 153, 228, 161, 104, 188, 214, 143, 149, 215, 140, 123, 215, 170, 146, 213, 124, 117, 144};

//: isaccept
Byte dream_onId[] = {55, 8, 42, 10, 26, 244, 34, 97, 210, 203, 63, 73, 55, 57, 57, 59, 70, 74, 102};

//: icon_redpacket_custom
Byte mainBudgeId[] = {37, 21, 75, 8, 64, 254, 119, 123, 30, 24, 36, 35, 20, 39, 26, 25, 37, 22, 24, 32, 26, 41, 20, 24, 42, 40, 41, 36, 34, 240};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableQuickControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "DisableQuickControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "BarName.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const show_pathFormat = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface DisableQuickControl()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation NTESSessionRedPacketContentView
@implementation DisableQuickControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initPath{
    //: self = [super initSessionMessageContentView];
    self = [super initPath];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:StringFromGoData(mainBudgeId)];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)recording:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: ContentKitEvent *event = [[ContentKitEvent alloc] init];
        KitEvent *event = [[KitEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = show_pathFormat;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate need:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(ContentMessageModel*)data{
- (void)valueRow:(PossibilityMessageStyle*)data{
    //: [super refresh:data];
    [super valueRow:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    BarName *attachment = (BarName *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? StringFromGoData(dreamTextContent).with : StringFromGoData(userReleaseId).with;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[StringFromGoData(app_fellowPath)] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [TroublingName allowFailed:[NSString stringWithFormat:StringFromGoData(app_needSingleMessage)] table:dict carteDuJour:NO behindValue:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict arrayMust:StringFromGoData(noti_commentComfortableValue)];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict to:StringFromGoData(dream_onId)];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } size:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)ting:(UIControlState)state sharedOutgoing:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? StringFromGoData(mUserData) : StringFromGoData(m_modelIdent);
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = StringFromGoData(mainElementaryData);
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:StringFromGoData(noti_touchIdent)];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end

Byte * GoDataToCache(Byte *data) {
    int inheritance = data[0];
    int toil = data[1];
    Byte nameBubble = data[2];
    int budgeRange = data[3];
    if (!inheritance) return data + budgeRange;
    for (int i = budgeRange; i < budgeRange + toil; i++) {
        int value = data[i] + nameBubble;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[budgeRange + toil] = 0;
    return data + budgeRange;
}

NSString *StringFromGoData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GoDataToCache(data)];
}
