//
//  ViewController.m
//  Cell适配
//
//  Created by 花花一世界 on 17/2/20.
//  Copyright © 2017年 花花一世界. All rights reserved.
//

#import "ViewController.h"
#import "LableTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *MTableView;
@property (nonatomic, strong)NSMutableArray *tableArr;
@property (nonatomic, strong)NSArray *NetWorkArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableArr = [NSMutableArray array];
    self.MTableView.delegate = self;
    self.MTableView.dataSource = self;
    self.MTableView.separatorStyle =  UITableViewCellSeparatorStyleNone;
    //获取数据
    [self getDataFromNet];
    
    
}
- (void)getDataFromNet{
    
    self.NetWorkArr = @[
                        @"北京香格里拉饭店从去年开始就邀请入住酒店的爱心明星们在酒店的吉祥物小熊童童身上签下他们的名字，加入爱心竞拍的队伍中，截止到现在我们一共筹得爱心款项人民币 24776 元。其中最高的一只明星签名小熊拍价高达10000元人民币。 在北京香格里拉饭店27岁生日的今天，我们在媒体朋友们、启喑实验学校老师和学生及客人们的见证、祝福和陪伴中一起度过了一个意义非凡的生日，爱心传递和善款交付仪式圆满成功！今天的仪式只是我们这个慈善项目的一个开始，会有越来越多的明星朋友加入到其中，也会有更多的签名小熊参与竞拍。这是一场爱的接力赛，希望您和您的朋友都能关注北京香格里拉饭店的官方微信和微博，来参与到我们的竞拍活动中来。爱心“童童”的起拍价为人民币1000元，想要为孩子们奉献一份力量，同时收藏自己偶像签名的爱心人士可致电（8610）6841 2211 转 6901，发邮件至chris.ma@shangri-la.com，微博私信“北京香格里拉饭店”或微信留言等多种方式联系酒店参与竞拍。竞拍金额最高的爱心人士不仅能够得到中意的明星签字“童童”，还将被邀请到之后的活动现场，亲自见",
                        @"2014年8月23日  今天上午，金海湖畔加油呐喊声此起彼伏，300名游泳爱好者在湖中奋力畅游。这是平谷区“四季金海湖，健康养生游”嘉年华系列活动之一，共吸引全国各地游泳爱好者齐聚平谷挑战自我。 来源：北晚新视觉网 记者：左颖/文  程宁/摄",
                        @"西城安监局副局长等4人被党内警告 违反中央八项规定",
                        @"6.jpg",
                        @"爱心传递和善款交付仪式圆满成功！今天的仪式只是我们这个慈善项目的一个开始，会有越来越多的明星朋友加入到其中，也会有更多的签名小熊参与竞拍。这是一场爱的接力赛，希望您和您的朋友都能关注北京香格里拉饭店的官方微信和微博，来参与到我们的竞拍活动中来。",
                        @"4"
                        ];
    
    //网络获取的数据添加到本地数组
    [self.tableArr addObjectsFromArray:self.NetWorkArr];
    //刷新tabview
    [self.MTableView reloadData];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.tableArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuse"];
    
    if (cell == nil) {
        cell = [[LableTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuse"];
        [cell getModleWithString:self.tableArr[indexPath.row]];
    }
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGRect rect = [self.tableArr[indexPath.row] boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 0) options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    return rect.size.height + 10;
    
}

@end
