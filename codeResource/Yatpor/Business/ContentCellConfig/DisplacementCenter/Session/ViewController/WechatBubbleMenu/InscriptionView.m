
#import <Foundation/Foundation.h>

@interface HuntData : NSObject

@end

@implementation HuntData

+ (NSData *)HuntDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)HuntDataToCache:(Byte *)data {
    int faceResign = data[0];
    Byte wifeQuad = data[1];
    int checkRemote = data[2];
    for (int i = checkRemote; i < checkRemote + faceResign; i++) {
        int value = data[i] + wifeQuad;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[checkRemote + faceResign] = 0;
    return data + checkRemote;
}

+ (NSString *)StringFromHuntData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HuntDataToCache:data]];
}

//: #333333
+ (NSString *)main_dingPath {
    /* static */ NSString *main_dingPath = nil;
    if (!main_dingPath) {
		NSString *origin = @"070c0ccfc453977921c5227d17272727272727a8";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_dingPath = [self StringFromHuntData:value];
    }
    return main_dingPath;
}

//: arrowDown
+ (NSString *)noti_mechanicFormat {
    /* static */ NSString *noti_mechanicFormat = nil;
    if (!noti_mechanicFormat) {
		NSString *origin = @"09140c9020a84ade404b41db4d5e5e5b63305b635ae0";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_mechanicFormat = [self StringFromHuntData:value];
    }
    return noti_mechanicFormat;
}

//: friend_circle_adapter_like
+ (NSString *)userRocMsg {
    /* static */ NSString *userRocMsg = nil;
    if (!userRocMsg) {
		NSString *origin = @"1a2f0a10f87637b5812037433a363f3530343a43343d363032353241453643303d3a3c36c8";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRocMsg = [self StringFromHuntData:value];
    }
    return userRocMsg;
}

//: ic_fold
+ (NSString *)showStopText {
    /* static */ NSString *showStopText = nil;
    if (!showStopText) {
		NSString *origin = @"075e0c6733d18d65faff169c0b050108110e06fd";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showStopText = [self StringFromHuntData:value];
    }
    return showStopText;
}

//: ic_praise%d
+ (NSString *)k_layerIdent {
    /* static */ NSString *k_layerIdent = nil;
    if (!k_layerIdent) {
		NSString *origin = @"0b4c08b3df0e37681d17132426151d2719d9184e";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_layerIdent = [self StringFromHuntData:value];
    }
    return k_layerIdent;
}

//: arrowUp
+ (NSString *)dream_teamText {
    /* static */ NSString *dream_teamText = nil;
    if (!dream_teamText) {
		NSString *origin = @"07550ab95fca02be42690c1d1d1a22001b57";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_teamText = [self StringFromHuntData:value];
    }
    return dream_teamText;
}

//: ContentCF7
+ (NSString *)mainCustomerContentData {
    /* static */ NSString *mainCustomerContentData = nil;
    if (!mainCustomerContentData) {
		NSString *origin = @"06540998de52a0e8c3f2f2f2eff2e309";
		NSData *data = [HuntData HuntDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainCustomerContentData = [self StringFromHuntData:value];
    }
    return mainCustomerContentData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  JYBubbleMenuView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentBubbleMenuView.h"
#import "InscriptionView.h"
//: #import "ContentBubbleButtonModel.h"
#import "ColorModel.h"

//: typedef NS_OPTIONS(NSUInteger, ContentBubbleMenuViewDirectionPriorityType) {
typedef NS_OPTIONS(NSUInteger, ContentBubbleMenuViewDirectionPriorityType) {
    //: ContentBubbleMenuViewDirectionPriorityType_Up,
    ContentBubbleMenuViewDirectionPriorityType_Up,
    //: ContentBubbleMenuViewDirectionPriorityType_Down
    ContentBubbleMenuViewDirectionPriorityType_Down
//: };
};

//: @interface ContentBubbleMenuView()
@interface InscriptionView()

//: @property (nonatomic, assign)NSInteger buttonCount;
@property (nonatomic, assign)NSInteger buttonCount;// 总按钮数量
//: @property (nonatomic, assign)CGFloat bubbleWidth;
@property (nonatomic, assign)CGFloat bubbleWidth;
//: @property (nonatomic, assign)CGFloat bubbleHeight;
@property (nonatomic, assign)CGFloat bubbleHeight;
//: @property (nonatomic, assign)CGFloat bubbleLeftMargin;
@property (nonatomic, assign)CGFloat bubbleLeftMargin;// 气泡距离屏幕左右两边的最小距离
//: @property (nonatomic, assign)CGFloat bubbleContentMargin;
@property (nonatomic, assign)CGFloat bubbleContentMargin;// 气泡距离内容的最小距离
//: @property (nonatomic, assign)CGFloat bubbleBottomMargin;
@property (nonatomic, assign)CGFloat bubbleBottomMargin;// 气泡距离屏幕上下两边的最小距离

//存放button的背景视图
//: @property (nonatomic, strong)UIView *buttonsBgView;
@property (nonatomic, strong)UIView *buttonsBgView;

//指向内容的箭头宽度
//: @property (nonatomic, assign)CGFloat arrowWidth;
@property (nonatomic, assign)CGFloat arrowWidth;
//: @property (nonatomic, assign)CGFloat arrowHeight;
@property (nonatomic, assign)CGFloat arrowHeight;

//: @property (nonatomic, strong)UIImageView *arrowView;
@property (nonatomic, strong)UIImageView *arrowView;// 气泡的箭头的高度，该高度包含在bubbleHeight里面。

//: @property (nonatomic, strong)UIButton *foldbtn;
@property (nonatomic, strong)UIButton *foldbtn;//折叠表情按钮
//: @property (nonatomic, assign)BOOL isfold;
@property (nonatomic, assign)BOOL isfold;
//存放点赞表情的视图
//: @property (nonatomic, assign)CGFloat praiseWidth;
@property (nonatomic, assign)CGFloat praiseWidth;
//: @property (nonatomic, strong)UIView *praiseView;
@property (nonatomic, strong)UIView *praiseView;

//选中文本在window坐标系中的坐标。
//: @property (nonatomic, assign)CGRect selectionTextRectInWindow;
@property (nonatomic, assign)CGRect selectionTextRectInWindow;

//: @property (nonatomic, assign)ContentBubbleMenuViewDirectionPriorityType directionPriority;
@property (nonatomic, assign)ContentBubbleMenuViewDirectionPriorityType directionPriority;

//: @property (nonatomic, strong)NSMutableArray *oldContentArray;
@property (nonatomic, strong)NSMutableArray *oldContentArray;
//: @property (nonatomic, strong)NSArray *myNewContentArray;
@property (nonatomic, strong)NSArray *myNewContentArray;

//: @property (nonatomic, copy)void (^selectBlock)(id data);
@property (nonatomic, copy)void (^selectBlock)(id data);

//: @property (nonatomic, copy)void (^praiseBlock)(NSInteger index);
@property (nonatomic, copy)void (^praiseBlock)(NSInteger index);

//: @end
@end

//: @implementation ContentBubbleMenuView
@implementation InscriptionView

//: + (instancetype)shareMenuView {
+ (instancetype)after {
    //: static ContentBubbleMenuView *menu = nil;
    static InscriptionView *menu = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (menu == nil) {
        if (menu == nil) {
            //: menu = [[ContentBubbleMenuView alloc] init];
            menu = [[InscriptionView alloc] init];
        }
    //: });
    });
  //: return menu;
  return menu;
}

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //初始化默认数据
        //: self.backgroundColor = UIColor.clearColor;
        self.backgroundColor = UIColor.clearColor;
        //: _isfold = YES;
        _isfold = YES;
         //: _buttonCount = 40;
         _buttonCount = 40;
        //: _praiseWidth = 314;
        _praiseWidth = 314;
        //: _arrowHeight = 20;
        _arrowHeight = 20;
        //: _bubbleLeftMargin = 20;
        _bubbleLeftMargin = 20;
        //: _bubbleContentMargin = 15;
        _bubbleContentMargin = 15;
        //: _bubbleBottomMargin = 20;
        _bubbleBottomMargin = 20;
        //: _directionPriority = ContentBubbleMenuViewDirectionPriorityType_Up;
        _directionPriority = ContentBubbleMenuViewDirectionPriorityType_Up;

        //: UITapGestureRecognizer *singleTapbox1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickView)];
        UITapGestureRecognizer *singleTapbox1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(alongParent)];
        //: [self addGestureRecognizer:singleTapbox1];
        [self addGestureRecognizer:singleTapbox1];


        //: _buttonsBgView = [[UIView alloc] init];
        _buttonsBgView = [[UIView alloc] init];
        //: _buttonsBgView.backgroundColor = [UIColor whiteColor];
        _buttonsBgView.backgroundColor = [UIColor whiteColor];
        //: _buttonsBgView.layer.cornerRadius = 8;
        _buttonsBgView.layer.cornerRadius = 8;
        //: _buttonsBgView.clipsToBounds = true;
        _buttonsBgView.clipsToBounds = true;
        //: [self addSubview:_buttonsBgView];
        [self addSubview:_buttonsBgView];

//        _arrowWidth = 11;
//        _arrowHeight = 5;
//        _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, _arrowWidth, _arrowHeight)];
////        _arrowView.backgroundColor = UIColor.greenColor;
//        [self addSubview:_arrowView];

        //: _praiseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _praiseWidth, 48)];
        _praiseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _praiseWidth, 48)];
        //: _praiseView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        _praiseView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        //: _praiseView.layer.borderWidth = 1;
        _praiseView.layer.borderWidth = 1;
        //: _praiseView.layer.borderColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2].CGColor;
        _praiseView.layer.borderColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2].CGColor;
        //: _praiseView.layer.cornerRadius = 12;
        _praiseView.layer.cornerRadius = 12;
        //: [self addSubview:_praiseView];
        [self addSubview:_praiseView];
        //: _praiseView.hidden = YES;
        _praiseView.hidden = YES;
        //: [self drawPraiseButtons];
        [self praise];

        //: _oldContentArray = [[NSMutableArray alloc] init];
        _oldContentArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)clickView{
- (void)alongParent{
    //: self.praiseView.hidden = YES;
    self.praiseView.hidden = YES;
    //: self.buttonsBgView.hidden = NO;
    self.buttonsBgView.hidden = NO;
    //: [self removeFromSuperview];
    [self removeFromSuperview];
}

//: - (void)drawPraiseButtons{
- (void)praise{

    //: NSArray *viewsArray = _praiseView.subviews;
    NSArray *viewsArray = _praiseView.subviews;
    //: for (int i = 0; i < viewsArray.count; i ++) {
    for (int i = 0; i < viewsArray.count; i ++) {
        //: UIView *subview = viewsArray[i];
        UIView *subview = viewsArray[i];
        //: [subview removeFromSuperview];
        [subview removeFromSuperview];
    }


    //: CGFloat topMargin = 10;
    CGFloat topMargin = 10;//button距离上、下面的间距
    //: CGFloat rightMargin = 10;
    CGFloat rightMargin = 10;//button距离左、右面的间距
    //: CGFloat buttonWidth = 28;
    CGFloat buttonWidth = 28;
    //: CGFloat buttonHeight = 28;
    CGFloat buttonHeight = 28;

    //: NSInteger countInOneLine = 8;
    NSInteger countInOneLine = 8;
    //: NSInteger lines = (_buttonCount <= countInOneLine) ? 1:(_buttonCount / countInOneLine);
    NSInteger lines = (_buttonCount <= countInOneLine) ? 1:(_buttonCount / countInOneLine);

    //: CGFloat width = rightMargin*(countInOneLine+1) + buttonWidth*countInOneLine;
    CGFloat width = rightMargin*(countInOneLine+1) + buttonWidth*countInOneLine;

    //: if(_isfold){
    if(_isfold){
        //: _praiseView.frame = CGRectMake(0, 0, width, 48);
        _praiseView.frame = CGRectMake(0, 0, width, 48);
    //: }else{
    }else{
        //: _praiseView.frame = CGRectMake(0, 0, width, 48*lines);
        _praiseView.frame = CGRectMake(0, 0, width, 48*lines);
    }

    //布局所有的按钮
    //: for (int i = 0; i < _buttonCount; i ++) {
    for (int i = 0; i < _buttonCount; i ++) {

        //: CGFloat x = rightMargin + (i%countInOneLine)*(buttonWidth+rightMargin);
        CGFloat x = rightMargin + (i%countInOneLine)*(buttonWidth+rightMargin);
        //: CGFloat y = topMargin + i/countInOneLine * (buttonHeight + topMargin * 2);
        CGFloat y = topMargin + i/countInOneLine * (buttonHeight + topMargin * 2);

        //: if(_isfold && i==7){
        if(_isfold && i==7){
            //: _foldbtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
            _foldbtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
            //: [_foldbtn addTarget:self action:@selector(onButtonFoldClick:) forControlEvents:UIControlEventTouchUpInside];
            [_foldbtn addTarget:self action:@selector(beggarMyNeighbourPolicy:) forControlEvents:UIControlEventTouchUpInside];
            //: [_foldbtn setImage:[UIImage imageNamed:@"ic_fold"] forState:UIControlStateNormal];
            [_foldbtn setImage:[UIImage imageNamed:[HuntData showStopText]] forState:UIControlStateNormal];
            //: [_praiseView addSubview:_foldbtn];
            [_praiseView addSubview:_foldbtn];

            //: return;
            return;
        }

        //: UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        //: button.tag = 1 + i;
        button.tag = 1 + i;
        //: [button addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(maxOf:) forControlEvents:UIControlEventTouchUpInside];
        //: [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%d",i+1]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:[HuntData k_layerIdent],i+1]] forState:UIControlStateNormal];
        //        button.backgroundColor = RGB_COLOR_String(@"#4355B5");
        //: [_praiseView addSubview:button];
        [_praiseView addSubview:button];


    }


}

//: - (void)showViewWithButtonModels:(NSArray *)array
- (void)exceptView:(NSArray *)array
                 //: cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(ContentMediaItem *item))block praiseBlock:(void(^)(NSInteger tag))praiseblock {
                 mentalRepresentation:(CGRect)cursorStartRect assemblage:(CGRect)rect range:(void(^)(LanguageItem *item))block text:(void(^)(NSInteger tag))praiseblock {

    //: _selectBlock = block;
    _selectBlock = block;
    //: _praiseBlock = praiseblock;
    _praiseBlock = praiseblock;

    //    ([UIApplication sharedApplication].delegate).window.backgroundColor = UIColor.redColor;
    //: if (self.superview == nil) {
    if (self.superview == nil) {
        //: [([UIApplication sharedApplication].delegate).window addSubview:self];
        [([UIApplication sharedApplication].delegate).window addSubview:self];
    }
    //: _selectionTextRectInWindow = rect;
    _selectionTextRectInWindow = rect;

    //: UIView *buttonsBgView = [self drawButtonsWithArray:array];
    UIView *buttonsBgView = [self at:array];

    //: _bubbleWidth = buttonsBgView.frame.size.width;
    _bubbleWidth = buttonsBgView.frame.size.width;
    //: _bubbleHeight = buttonsBgView.frame.size.height + 5;
    _bubbleHeight = buttonsBgView.frame.size.height + 5;

    //: CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    //: CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;

    //: CGRect selfRect = CGRectZero;
    CGRect selfRect = CGRectZero;

    //: CGFloat praiseheight = 0;
    CGFloat praiseheight = 0;
    //: if(_isfold){
    if(_isfold){
        //: praiseheight = 48;
        praiseheight = 48;
    //: }else{
    }else{
        //: praiseheight = 48*5;
        praiseheight = 48*5;
    }

    //默认的方向是优先方向
    //: ContentBubbleMenuViewDirectionPriorityType direction = _directionPriority;
    ContentBubbleMenuViewDirectionPriorityType direction = _directionPriority;
//
//    if (_directionPriority == EtiqAuBubbleMenuViewDirectionPriorityType_Down) {
//        //Y轴处理，bubble在下面。
//        if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin > _bubbleHeight) {
//            selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin;
//            direction = EtiqAuBubbleMenuViewDirectionPriorityType_Down;
//
//            //bubble在上面
//        } else if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin > _bubbleHeight) {
//            selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight;
//            direction = EtiqAuBubbleMenuViewDirectionPriorityType_Up;
//        }
//    } else {
//        //优先级Up的话，先判断在上面的情况。

        //在上面的情况。
        //: if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
        if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            //: selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight - praiseheight + 15;
            selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight - praiseheight + 15;
            //: direction = ContentBubbleMenuViewDirectionPriorityType_Up;
            direction = ContentBubbleMenuViewDirectionPriorityType_Up;

            //在下面的情况。
        //: } else if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
        } else if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            //: selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin -15;
            selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin -15;
            //: direction = ContentBubbleMenuViewDirectionPriorityType_Down;
            direction = ContentBubbleMenuViewDirectionPriorityType_Down;

            //上下空间太小，只能压着内容显示该bubbleMenu
        //: } else {
        } else {
            //: selfRect.origin.y = screenHeight - _bubbleBottomMargin - _bubbleHeight - praiseheight -15;
            selfRect.origin.y = screenHeight - _bubbleBottomMargin - _bubbleHeight - praiseheight -15;
            //: direction = ContentBubbleMenuViewDirectionPriorityType_Down;
            direction = ContentBubbleMenuViewDirectionPriorityType_Down;
        }
//    }

    //将所有按钮页面添加到self上面。
    //: CGRect bgViewRect = buttonsBgView.frame;
    CGRect bgViewRect = buttonsBgView.frame;
    //: bgViewRect.origin.y = direction == ContentBubbleMenuViewDirectionPriorityType_Down ? _arrowHeight : praiseheight;
    bgViewRect.origin.y = direction == ContentBubbleMenuViewDirectionPriorityType_Down ? _arrowHeight : praiseheight;
    //: buttonsBgView.frame = bgViewRect;
    buttonsBgView.frame = bgViewRect;
    //: [self addSubview:buttonsBgView];
    [self addSubview:buttonsBgView];
//    buttonsBgView.centerX = _praiseWidth/2;


    //X轴处理
//    if (direction == EtiqAuBubbleMenuViewDirectionPriorityType_Down) {
//        selfRect.origin.x = rect.size.width / 2.0 + rect.origin.x - _bubbleWidth / 2.0;
//    } else {
//        //        if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {//同一行
//        //            selfRect.origin.x = rect.size.width / 2.0 + rect.origin.x - _bubbleWidth / 2.0;
//        //        } else {
//        //不在同一行
//        //            selfRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _bubbleWidth / 2.0;
//        selfRect.origin.x = screenWidth - _praiseWidth;
//        //        }
//    }
    //: if (selfRect.origin.x < _bubbleLeftMargin) {
    if (selfRect.origin.x < _bubbleLeftMargin) {
        //: selfRect.origin.x = _bubbleLeftMargin;
        selfRect.origin.x = _bubbleLeftMargin;
    //: } else if (selfRect.origin.x + _bubbleWidth + _bubbleLeftMargin > screenWidth) {
    } else if (selfRect.origin.x + _bubbleWidth + _bubbleLeftMargin > screenWidth) {
        //        selfRect.origin.x = screenWidth - _bubbleWidth - _bubbleLeftMargin;
        //: selfRect.origin.x = screenWidth - _praiseWidth;
        selfRect.origin.x = screenWidth - _praiseWidth;
    //: }else{
    }else{
        //: selfRect.origin.x = screenWidth - _praiseWidth;
        selfRect.origin.x = screenWidth - _praiseWidth;
    }

    //: selfRect.size.width = _praiseWidth;
    selfRect.size.width = _praiseWidth;
    //    selfRect.size.width = _bubbleWidth;
    //: selfRect.size.height = _bubbleHeight+praiseheight;
    selfRect.size.height = _bubbleHeight+praiseheight;
    //: self.frame = selfRect;
    self.frame = selfRect;

    // 布局arrow的位置。
    //: CGRect arrowRect = _arrowView.frame;
    CGRect arrowRect = _arrowView.frame;
    //    CGRect praiseRect = _praiseView.frame;

    //: if (direction == ContentBubbleMenuViewDirectionPriorityType_Up) {
    if (direction == ContentBubbleMenuViewDirectionPriorityType_Up) {
        //: arrowRect.origin.y = selfRect.size.height - arrowRect.size.height;
        arrowRect.origin.y = selfRect.size.height - arrowRect.size.height;
        //: if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {
        if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {
            //: arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
            arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        //: } else {
        } else {
            // 如果不是在同一行，需要按照光标位置计算箭头位置。
            //: arrowRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _arrowWidth / 2.0 - selfRect.origin.x;
            arrowRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _arrowWidth / 2.0 - selfRect.origin.x;
        }
        //判断如果超出menuView的最右边，让其等于最右边。5是cornerRadius
        //: if (arrowRect.origin.x > selfRect.size.width - 5 - _arrowWidth) {
        if (arrowRect.origin.x > selfRect.size.width - 5 - _arrowWidth) {
            //: arrowRect.origin.x = selfRect.size.width - 5 - _arrowWidth;
            arrowRect.origin.x = selfRect.size.width - 5 - _arrowWidth;
        }
        //: _arrowView.image = [UIImage imageNamed:@"arrowDown"];
        _arrowView.image = [UIImage imageNamed:[HuntData noti_mechanicFormat]];

        //: _praiseView.bottom = _buttonsBgView.top;
        _praiseView.bottom = _buttonsBgView.top;
        //: _praiseView.left = 0;
        _praiseView.left = 0;
        //        _praiseView.left = rect.size.width/2.0 + rect.origin.x - _praiseView.width/2.0;
    //: } else {
    } else {
        //: arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        //: arrowRect.origin.y = 0;
        arrowRect.origin.y = 0;
        //: _arrowView.image = [UIImage imageNamed:@"arrowUp"];
        _arrowView.image = [UIImage imageNamed:[HuntData dream_teamText]];

        //: _praiseView.top = _buttonsBgView.bottom;
        _praiseView.top = _buttonsBgView.bottom;
        //: _praiseView.left = 0;
        _praiseView.left = 0;
    }


    //: _arrowView.frame = arrowRect;
    _arrowView.frame = arrowRect;


    //: buttonsBgView.left = arrowRect.origin.x-50;
    buttonsBgView.left = arrowRect.origin.x-50;

}

//返回整个buttons所占的view的宽高。返回之后，需加上箭头的高度，就是这个self的宽高。
//: - (UIView *)drawButtonsWithArray:(NSArray *)array {
- (UIView *)at:(NSArray *)array {

    //如果数据发生了变化,将所有buttons都删掉，重新画，如果没有变化，不需要重新画，直接返回。
    //    if ([self ifButtonsInfoChanged:array]) {
    //: NSArray *viewsArray = _buttonsBgView.subviews;
    NSArray *viewsArray = _buttonsBgView.subviews;
    //: for (int i = 0; i < viewsArray.count; i ++) {
    for (int i = 0; i < viewsArray.count; i ++) {
        //: UIView *subview = viewsArray[i];
        UIView *subview = viewsArray[i];
        //: [subview removeFromSuperview];
        [subview removeFromSuperview];
    }
    //    } else {
    //        return _buttonsBgView;
    //    }
    //: _myNewContentArray = array;
    _myNewContentArray = array;

    //: CGFloat topMargin = 12;
    CGFloat topMargin = 12;//button距离上、下面的间距
    //: CGFloat rightMargin = 13;
    CGFloat rightMargin = 13;//button距离左、右面的间距
    //: CGFloat buttonWidth = 85;
    CGFloat buttonWidth = 85;
    //: CGFloat buttonHeight = 30;
    CGFloat buttonHeight = 30;

    //: NSInteger countInOneLine = 5;
    NSInteger countInOneLine = 5;

    //    NSInteger lines = (array.count <= countInOneLine) ? 1:(array.count / countInOneLine + 1);

    //确定按钮背景的视图尺寸。
    //    CGFloat width = rightMargin * 2 + ((array.count > countInOneLine)? countInOneLine : array.count) * buttonWidth;
    //    CGFloat height = lines * (2 * topMargin + buttonHeight);
    //: CGFloat width = rightMargin * 2 + buttonWidth;
    CGFloat width = rightMargin * 2 + buttonWidth;
    //: CGFloat height = topMargin * 2 + array.count * buttonHeight;
    CGFloat height = topMargin * 2 + array.count * buttonHeight;
    //: _buttonsBgView.frame = CGRectMake(0, 0, width, height);
    _buttonsBgView.frame = CGRectMake(0, 0, width, height);

    //布局所有的按钮
    //: for (int i = 0; i < array.count; i ++) {
    for (int i = 0; i < array.count; i ++) {
        //        CGFloat x = rightMargin + i % countInOneLine * buttonWidth;
        //        CGFloat y = topMargin + i / countInOneLine * (buttonHeight + topMargin * 2);
        //: CGFloat x = rightMargin;
        CGFloat x = rightMargin;
        //: CGFloat y = topMargin + i*buttonHeight;
        CGFloat y = topMargin + i*buttonHeight;
        //: UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        //: button.tag = 100 + i;
        button.tag = 100 + i;
        //: [button addTarget:self action:@selector(onButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(centering:) forControlEvents:UIControlEventTouchUpInside];

        //: ContentBubbleButtonModel *model = array[i];
        ColorModel *model = array[i];

        //: UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 7, 16, 16)];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 7, 16, 16)];
        //: if (model.normalImage) {
        if (model.normalImage) {
            //: imageView.image = model.normalImage;
            imageView.image = model.normalImage;
        //: } else {
        } else {
            //: imageView.image = [UIImage imageNamed:model.imageName];
            imageView.image = [UIImage imageNamed:model.imageName];
        }
        //: imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        //: [button addSubview:imageView];
        [button addSubview:imageView];

        //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, buttonWidth-25, 30)];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, buttonWidth-25, 30)];
        //: label.font = [UIFont systemFontOfSize:13];
        label.font = [UIFont systemFontOfSize:13];
        //        label.textAlignment = NSTextAlignmentCenter;
        //: label.textColor = [UIColor colorWithHexString:@"#333333"];
        label.textColor = [UIColor recordView:[HuntData main_dingPath]];
        //: label.text = model.name;
        label.text = model.name;
        //: [button addSubview:label];
        [button addSubview:label];

        //        button.backgroundColor = i % 2 == 0 ? UIColor.redColor : UIColor.greenColor;
        //: [_buttonsBgView addSubview:button];
        [_buttonsBgView addSubview:button];
    }

    //: _buttonsBgView.backgroundColor = [UIColor colorWithHexString:@"ContentCF7"];
    _buttonsBgView.backgroundColor = [UIColor recordView:[HuntData mainCustomerContentData]];

    //: return _buttonsBgView;
    return _buttonsBgView;
}

//: - (void)onButtonTouched:(UIButton *)button {
- (void)centering:(UIButton *)button {
    //: if (_myNewContentArray.count > button.tag - 100) {
    if (_myNewContentArray.count > button.tag - 100) {
        //: ContentBubbleButtonModel *model = (ContentBubbleButtonModel *)_myNewContentArray[button.tag - 100];
        ColorModel *model = (ColorModel *)_myNewContentArray[button.tag - 100];
        //: NSLog(@"点击了%@",model.name);

        //: if([model.name isEqual:[ContentLanguageManager getTextWithKey:@"friend_circle_adapter_like"]]){
        if([model.name isEqual:[MatronymicPath colorStreetwise:[HuntData userRocMsg]]]){
            //: self.praiseView.hidden = NO;
            self.praiseView.hidden = NO;
        //: }else{
        }else{
            //: self.praiseView.hidden = YES;
            self.praiseView.hidden = YES;

            //: if (self.selectBlock != nil) {
            if (self.selectBlock != nil) {
                //: self.selectBlock(model.item);
                self.selectBlock(model.item);
            }
        }
    }
}

//: - (void)onButtonClick:(UIButton *)button {
- (void)maxOf:(UIButton *)button {
    //: NSLog(@"%ld",(long)button.tag);
    //: self.praiseView.hidden = YES;
    self.praiseView.hidden = YES;
    //: self.buttonsBgView.hidden = NO;
    self.buttonsBgView.hidden = NO;

    //: if (self.praiseBlock != nil) {
    if (self.praiseBlock != nil) {
        //: self.praiseBlock(button.tag);
        self.praiseBlock(button.tag);
    }

}

//: - (void)onButtonFoldClick:(UIButton *)button {
- (void)beggarMyNeighbourPolicy:(UIButton *)button {
    //: _isfold = NO;
    _isfold = NO;
    //: self.buttonsBgView.hidden = YES;
    self.buttonsBgView.hidden = YES;
    //: [self drawPraiseButtons];
    [self praise];
}

//判断button的信息内容是不是修改了，true：改动了，   false：内容没有变
//: - (BOOL)ifButtonsInfoChanged:(NSArray *)newArray {
- (BOOL)can:(NSArray *)newArray {
    //: if (_oldContentArray.count != newArray.count) {
    if (_oldContentArray.count != newArray.count) {
        //: _oldContentArray = [NSMutableArray arrayWithArray:newArray];
        _oldContentArray = [NSMutableArray arrayWithArray:newArray];
        //: return true;
        return true;
    }

    //: for (int i = 0; i < newArray.count; i ++) {
    for (int i = 0; i < newArray.count; i ++) {
        //: BOOL finded = false;
        BOOL finded = false;
        //: NSInteger newId = ((ContentBubbleButtonModel *)_oldContentArray[i]).buttonId;
        NSInteger newId = ((ColorModel *)_oldContentArray[i]).buttonId;
        //: for (int j = 0; j < _oldContentArray.count; j ++) {
        for (int j = 0; j < _oldContentArray.count; j ++) {
            //: NSInteger oldId = ((ContentBubbleButtonModel *)_oldContentArray[j]).buttonId;
            NSInteger oldId = ((ColorModel *)_oldContentArray[j]).buttonId;
            //: if (newId == oldId) {
            if (newId == oldId) {
                //: finded = true;
                finded = true;
                //: continue;
                continue;
            }
        }
        // 如果没有找到
        //: if (finded != true) {
        if (finded != true) {
            //: _oldContentArray = [NSMutableArray arrayWithArray:newArray];
            _oldContentArray = [NSMutableArray arrayWithArray:newArray];
            //: return true;
            return true;
        }
    }
    //: return false;
    return false;
}

//: @end
@end
