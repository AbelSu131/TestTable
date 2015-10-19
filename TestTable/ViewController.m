//
//  ViewController.m
//  TestTable
//
//  Created by abel on 15/10/19.
//  Copyright © 2015年 abel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *_dataSource;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"列表";
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],UITextAttributeTextColor,nil]];
    
    [self initViews];
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initViews{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height - 44) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];

    
    
    
    
    self.searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    [self.searchBar setTintColor:[UIColor clearColor]];
    [self.searchBar sizeToFit];
    self.searchBar.placeholder=@"请输入要查询关键字";
    self.searchBar.autocorrectionType=UITextAutocapitalizationTypeNone;//自动对输入文本对象进行纠错
    self.searchBar.delegate=self;//设置代理
    [self.tableView addSubview:self.searchBar];
    
}

#pragma mark - TableView DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = @"Hello,I'm Mark.";
    cell.detailTextLabel.text = @"And I'm now a student.";
    cell.detailTextLabel.textColor = [UIColor grayColor];
    //cell.imageView.image = [UIImage imageNamed:@"github.png"];
    
    cell.selectionStyle = UITableViewCellEditingStyleNone;//选中一行表格的状态
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//设置cell右边小箭头
    return cell;
}


@end
