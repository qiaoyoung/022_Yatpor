//
//  MyLogViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "MyLogViewController.h"

@interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic,strong) UIView *defView;

@end

@implementation MyLogViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT+4, SCREEN_WIDTH, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = TextColor_0;
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"my_log");
    [self.view addSubview:labtitle];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-15) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    self.data = [NSMutableArray array];
    [self loadData];
    
    [self.view addSubview:self.defView];
}

- (void)loadData {
    // 这里可以加载其他类型的数据，或者显示空状态
    if (self.data.count == 0) {
        self.defView.hidden = NO;
        self.tableView.hidden = YES;
    } else {
        self.defView.hidden = YES;
        self.tableView.hidden = NO;
        [self.tableView reloadData];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"LogCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.backgroundColor = [UIColor whiteColor];
        cell.layer.cornerRadius = 8;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    // 配置cell内容
    cell.textLabel.text = [NSString stringWithFormat:@"日志项目 %ld", (long)indexPath.section + 1];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 处理点击事件
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+50, SCREEN_WIDTH, 200)];
        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-213)/2, 150, 213, 148)];
        defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        [_defView addSubview:defImg];
        
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, SCREEN_WIDTH, 20)];
        emptyTipLabel.textColor = TextColor_3;
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        [_defView addSubview:emptyTipLabel];
        emptyTipLabel.text = LangKey(@"group_info_activity_without");
    }
    return _defView;
}

@end
