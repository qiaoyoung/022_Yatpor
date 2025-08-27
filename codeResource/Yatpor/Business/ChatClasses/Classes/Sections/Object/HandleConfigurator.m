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
//: #import "FFFSessionConfigurator.h"
#import "HandleConfigurator.h"
//: #import "FFFSessionMsgDatasource.h"
#import "DismissScaleDatasource.h"
//: #import "FFFSessionInteractorImpl.h"
#import "ToolReplacement.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "PossibilityMessageStyle.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "ToolReplacement.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "TitlePathBar.h"
//: #import "FFFSessionLayoutImpl.h"
#import "ColorImpl.h"
//: #import "FFFSessionTableAdapter.h"
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

//: @interface FFFSessionConfigurator()
@interface HandleConfigurator()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) ToolReplacement *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) ReasonSizeEmpty *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation HandleConfigurator

//: - (void)setup:(FFFSessionViewController *)vc
- (void)colorSetup:(NameViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<SaloonConfig> sessionConfig = vc.someFormat;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    InputView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    TitlePathBar *datasource = [[TitlePathBar alloc] initWithHead:session shank:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    ColorImpl *layout = [[ColorImpl alloc] initWithShared:session showSkullSessionText:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[ToolReplacement alloc] initWithStep:session draftConfig:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setShow:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
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