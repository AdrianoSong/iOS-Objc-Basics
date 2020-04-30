//
//  NewViewController.m
//  NewObjc
//
//  Created by Song on 28/04/20.
//  Copyright © 2020 Adriano Song. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NewViewController.h"
#import "MyTableViewCell.h"

@interface NewViewController()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation NewViewController

@synthesize viewModel = _viewModel;

- (void)viewDidLoad {
    [super viewDidLoad];

    _viewModel = [[NewViewModel alloc] init];

    [self setupTableView];
}

- (void)setupTableView {
    _myTableView.delegate = self;
    _myTableView.dataSource = self;

    [_myTableView registerNib:[UINib nibWithNibName:@"MyTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell1"];
    [_myTableView registerNib:[UINib nibWithNibName:@"MyTableViewCell2" bundle:nil] forCellReuseIdentifier:@"cell2"];

    [_myTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    _myTableView.showsVerticalScrollIndicator = false;
}

- (IBAction)didTapDismiss:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
// MARK: - TableView methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_viewModel tableCount];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 85.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //TableView custom cell
    NSString *cellIdentifier = [_viewModel getCellIndentifier:indexPath.row];

    MyTableViewCell *cell = [_myTableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (cell == nil) {
        return [[UITableViewCell alloc] init];

    } else {
        cell.myTitle.text = [NSString stringWithFormat: @"item type: %@", cellIdentifier];
        cell.myDescription.text = [NSString stringWithFormat: @"description %d", (int)indexPath.row];

        return cell;
    }
}
@end
