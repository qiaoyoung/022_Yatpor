// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleConfigurator.m
// UserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ContentSessionConfigurator.h"
#import "HandleConfigurator.h"
//: #import "ContentSessionMsgDatasource.h"
#import "DismissScaleDatasource.h"
//: #import "ContentSessionInteractorImpl.h"
#import "ToolReplacement.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ContentMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "NSString+UserKit.h"
#import "NSString+UserKit.h"
//: #import "ContentSessionInteractorImpl.h"
#import "ToolReplacement.h"
//: #import "ContentSessionDataSourceImpl.h"
#import "TitlePathBar.h"
//: #import "ContentSessionLayoutImpl.h"
#import "ColorImpl.h"
//: #import "ContentSessionTableAdapter.h"
#import "ReasonSizeEmpty.h"

/*
                                            NameViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [LengthCounteractor] -->  |
             .
             .                                                                                          | ---> [ToolLayout]
             .
             ↓
  [NameViewController]-------> [HandleConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [ReasonSizeEmpty]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface ContentSessionConfigurator()
@interface HandleConfigurator()

//: @property (nonatomic,strong) ContentSessionInteractorImpl *interactor;
@property (nonatomic,strong) ToolReplacement *interactor;

//: @property (nonatomic,strong) ContentSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) ReasonSizeEmpty *tableAdapter;

//: @end
@end

//: @implementation ContentSessionConfigurator
@implementation HandleConfigurator

//: - (void)setup:(ContentSessionViewController *)vc
- (void)colorSetup:(NameViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<ContentSessionConfig> sessionConfig = vc.sessionConfig;
    id<SaloonConfig> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: ContentInputView *inputView = vc.sessionInputView;
    InputView *inputView = vc.sessionInputView;

    //: ContentSessionDataSourceImpl *datasource = [[ContentSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    TitlePathBar *datasource = [[TitlePathBar alloc] initWithHead:session shank:sessionConfig];
    //: ContentSessionLayoutImpl *layout = [[ContentSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    ColorImpl *layout = [[ColorImpl alloc] initWithShared:session showSkullSessionText:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[ContentSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[ToolReplacement alloc] initWithStep:session draftConfig:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[ContentSessionTableAdapter alloc] init];
    _tableAdapter = [[ReasonSizeEmpty alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end
