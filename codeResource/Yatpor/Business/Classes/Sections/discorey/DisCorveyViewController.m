//
//  DisCorveyViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "DisCorveyViewController.h"

@interface DisCorveyViewController()
 
@property (nonatomic,strong) UIView *defView;
 
@end

@implementation DisCorveyViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 375)];
    bg.image = [UIImage imageNamed:@"chat_top_bg"];
    [self.view addSubview:bg];
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
    [self.view addSubview:topview];
    
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    labtitle.textColor = [UIColor whiteColor];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.text = LangKey(@"discovery");
    [topview addSubview:labtitle];
 
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT)];
    contentView.backgroundColor = RGB_COLOR_String(@"#ffffff");
    contentView.layer.cornerRadius = 34;
    [self.view addSubview:contentView];
 
    [self.view addSubview:self.defView];
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+50, SCREEN_WIDTH, 200)];
//        _defView.hidden = YES;
        
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
