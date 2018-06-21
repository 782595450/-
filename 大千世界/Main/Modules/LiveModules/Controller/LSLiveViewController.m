//
//  LSLiveViewController.m
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import "LSLiveViewController.h"
#import "LSLiveListTableView.h"

@interface LSLiveViewController ()

@property (nonatomic, strong) LSLiveListTableView *liveListTableView;

@end

@implementation LSLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"直播";
    // https://codeload.github.com/782595450/live_source/zip/master
    
    [self initData];
    [self liveListTableView];
    
}


- (void)initData{
    
}





- (LSLiveListTableView *)liveListTableView{
    if (!_liveListTableView) {
        _liveListTableView = [[LSLiveListTableView alloc] initWithModelArr:nil withControllerView:self];
        [self.view addSubview:_liveListTableView];
        [_liveListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
    }
    return _liveListTableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
