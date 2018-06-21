//
//  LSLiveListTableView.h
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLiveListTableView : UITableView

@property (nonatomic, strong) NSMutableArray *liveArray;//存放tableview要显示的数据
- (instancetype)initWithModelArr:(NSMutableArray *)modelArr withControllerView:(UIViewController *)vc;

@end
