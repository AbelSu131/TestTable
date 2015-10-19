//
//  ViewController.h
//  TestTable
//
//  Created by abel on 15/10/19.
//  Copyright © 2015年 abel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
{
    BOOL isSearchOn;
    BOOL canSelectRow;
}
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)UISearchBar *searchBar;

@property(nonatomic,strong)NSDictionary *list;
@property(nonatomic,strong)NSArray *ff;

@property(nonatomic,strong)NSMutableArray *listOfMovies;
@property(nonatomic,strong)NSMutableArray *searchResult;






@end

