//
//  LSBaseViewController.m
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import "LSBaseViewController.h"

@interface LSBaseViewController ()

@end

@implementation LSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self initBaseNav];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyboardHide:)];
    //设置成NO表示当前控件响应后会传播到其他控件上，默认为YES。
    tapGestureRecognizer.cancelsTouchesInView = NO;
    //将触摸事件添加到当前view
    [self.view addGestureRecognizer:tapGestureRecognizer];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardHide:) name: UIKeyboardWillHideNotification object:nil];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:PPUIColor274057,NSFontAttributeName:[UIFont systemFontOfSize:18]}];
//    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
}

- (void)keyboardHide:(UITapGestureRecognizer*)tap{
    [self.view endEditing:YES];

//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:PPUIColor274057,NSFontAttributeName:[UIFont systemFontOfSize:18]}];
//    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
}

- (void)initBaseNav{
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,28,28)];
    [leftButton setImage:[UIImage imageNamed:@"blackright"]forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    // 返回按钮内容左靠
    leftButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    // 让返回按钮内容继续向左边偏移10
    leftButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
//    [leftButton  setEnlargeEdge:100];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftItem;
    
}

- (void)back{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.navigationController popViewControllerAnimated:YES];
    });
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (UIStatusBarStyle)preferredStatusBarStyle NS_AVAILABLE_IOS(7_0);
//{
//    return UIStatusBarStyleLightContent;
//}

- (void)dealloc{
    
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
