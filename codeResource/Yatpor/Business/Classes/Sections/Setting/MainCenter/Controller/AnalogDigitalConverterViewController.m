
#import <Foundation/Foundation.h>

@interface ContainerData : NSObject

@end

@implementation ContainerData

+ (NSData *)ContainerDataToData:(NSString *)value {
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

+ (Byte *)ContainerDataToCache:(Byte *)data {
    int number = data[0];
    Byte nameMessage = data[1];
    int nameRange = data[2];
    for (int i = nameRange; i < nameRange + number; i++) {
        int value = data[i] + nameMessage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[nameRange + number] = 0;
    return data + nameRange;
}

+ (NSString *)StringFromContainerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ContainerDataToCache:data]];
}

//: group_info_activity_without
+ (NSString *)notiSelectButtonMessage {
    /* static */ NSString *notiSelectButtonMessage = nil;
    if (!notiSelectButtonMessage) {
		NSString *origin = @"1B1A0560FF4D58555B56454F544C554547495A4F5C4F5A5F455D4F5A4E555B5AC9";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiSelectButtonMessage = [self StringFromContainerData:value];
    }
    return notiSelectButtonMessage;
}

//: 日志项目 %ld
+ (NSString *)mLabRedData {
    /* static */ NSString *mLabRedData = nil;
    if (!mLabRedData) {
		NSString *origin = @"102B0D57A41BEF6FC0CE88FE1ABB6C7ABA946CBE768EBC7083F5FA4139DF";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mLabRedData = [self StringFromContainerData:value];
    }
    return mLabRedData;
}

//: my_log
+ (NSString *)main_contentStr {
    /* static */ NSString *main_contentStr = nil;
    if (!main_contentStr) {
		NSString *origin = @"061B0C3E9AF2FF34EABAF63D525E4451544C29";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_contentStr = [self StringFromContainerData:value];
    }
    return main_contentStr;
}

//: #000000
+ (NSString *)main_backgroundMsg {
    /* static */ NSString *main_backgroundMsg = nil;
    if (!main_backgroundMsg) {
		NSString *origin = @"073A04C4E9F6F6F6F6F6F6FD";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_backgroundMsg = [self StringFromContainerData:value];
    }
    return main_backgroundMsg;
}

//: back_arrow_bl
+ (NSString *)kBeginUrl {
    /* static */ NSString *kBeginUrl = nil;
    if (!kBeginUrl) {
		NSString *origin = @"0D350B9E61A1F10582DB3B2D2C2E362A2C3D3D3A422A2D3709";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kBeginUrl = [self StringFromContainerData:value];
    }
    return kBeginUrl;
}

//: #999999
+ (NSString *)dreamNumberValue {
    /* static */ NSString *dreamNumberValue = nil;
    if (!dreamNumberValue) {
		NSString *origin = @"073B0A3E42379DCAD8EFE8FEFEFEFEFEFE5D";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamNumberValue = [self StringFromContainerData:value];
    }
    return dreamNumberValue;
}

//: #F6F7FA
+ (NSString *)app_titleKey {
    /* static */ NSString *app_titleKey = nil;
    if (!app_titleKey) {
		NSString *origin = @"07300DFE8468DAE22F03CC688FF3160616071611F9";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_titleKey = [self StringFromContainerData:value];
    }
    return app_titleKey;
}

//: ic_none_LogList
+ (NSString *)main_modelShowFormat {
    /* static */ NSString *main_modelShowFormat = nil;
    if (!main_modelShowFormat) {
		NSString *origin = @"0F2009E7A6157A3CC949433F4E4F4E453F2C4F472C49535407";
		NSData *data = [ContainerData ContainerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_modelShowFormat = [self StringFromContainerData:value];
    }
    return main_modelShowFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnalogDigitalConverterViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "AnalogDigitalConverterViewController.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>
@interface AnalogDigitalConverterViewController ()<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation AnalogDigitalConverterViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}
//: - (void)backAction{
- (void)sinceBar{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor recordView:[ContainerData app_titleKey]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice bearDown]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ContainerData kBeginUrl]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(sinceBar) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice bearDown]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor recordView:[ContainerData main_backgroundMsg]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [MatronymicPath colorStreetwise:[ContainerData main_contentStr]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice bearDown])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice bearDown])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self loadData];
    [self signal];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)loadData {
- (void)signal {
    // 这里可以加载其他类型的数据，或者显示空状态
    //: if (self.data.count == 0) {
    if (self.data.count == 0) {
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: } else {
    } else {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 60;
    return 60;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: static NSString *cellIdentifier = @"LogCell";
    static NSString *cellIdentifier = @"LogCell";
    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        //: cell.backgroundColor = [UIColor whiteColor];
        cell.backgroundColor = [UIColor whiteColor];
        //: cell.layer.cornerRadius = 8;
        cell.layer.cornerRadius = 8;
        //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    // 配置cell内容
    //: cell.textLabel.text = [NSString stringWithFormat:@"日志项目 %ld", (long)indexPath.section + 1];
    cell.textLabel.text = [NSString stringWithFormat:[ContainerData mLabRedData], (long)indexPath.section + 1];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 处理点击事件
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice bearDown])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[ContainerData main_modelShowFormat]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor recordView:[ContainerData dreamNumberValue]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MatronymicPath colorStreetwise:[ContainerData notiSelectButtonMessage]];
    }
    //: return _defView;
    return _defView;
}

//: @end
@end