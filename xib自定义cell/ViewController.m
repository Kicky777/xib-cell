//
//  ViewController.m
//  xib自定义cell
//
//  Created by qianfeng on 15-2-28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"
#import "MyCitys.h"
#import "MyCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)NSArray *citys;

@end

@implementation ViewController

- (NSArray *)citys {
    if (_citys == nil) {
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"citysMessage" ofType:@"plist"];
        _citys = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *arr = [NSMutableArray array];
        
        for (NSDictionary *dic in _citys) {
            MyCitys *city = [MyCitys cityWithDic:dic];
            [arr addObject:city];
        }
        _citys = arr;
    }
    return _citys;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    
    [self.view addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    //注册一个cell类
    UINib *nib = [UINib nibWithNibName:@"MyCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:@"cell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.citys.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    MyCitys *city = self.citys[indexPath.row];
    cell.myCity = city;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
