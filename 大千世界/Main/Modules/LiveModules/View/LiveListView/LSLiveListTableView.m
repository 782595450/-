
//
//  LSLiveListTableView.m
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import "LSLiveListTableView.h"
#import "LSLiveSoureModel.h"

@interface LSLiveListTableView()<UITableViewDelegate ,UITableViewDataSource>

@end


@implementation LSLiveListTableView
- (instancetype)initWithModelArr:(NSMutableArray *)modelArr withControllerView:(UIViewController *)vc{
    if (self = [super init]) {
        [self commnInit];
    }
    return self;
}


- (NSMutableArray *)liveArray{
    if (!_liveArray) {
        _liveArray = [NSMutableArray new];
    }
    return _liveArray;
}

- (void) commnInit{
    self.delegate = self;
    self.dataSource = self;
    self.showsVerticalScrollIndicator = NO;
    self.scrollEnabled = YES;
    self.tableFooterView = [[UIView alloc] init];
    if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
        [self setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
    
}


#pragma mark - 数据源

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.liveArray.count;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //设置cell的上下行线的位置
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]){
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * showUserInfoCellIdentifier = @"liveListCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
    if (cell == nil){
        // Create a cell to display an ingredient.
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:showUserInfoCellIdentifier];
    }else{
        //删除cell的所有子视图
        while ([cell.contentView.subviews lastObject] != nil)
        {
            [(UIView*)[cell.contentView.subviews lastObject] removeFromSuperview];
        }
    }
    LSLiveSoureModel *model = self.liveArray[indexPath.row];
    cell.textLabel.text = model.liveName;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //    [PPAlertView remind:self.vc remindMessage:PPLanguage(@"PPLtradingsystemupgrade")];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
