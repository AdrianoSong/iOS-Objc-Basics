//
//  MyTableViewCell.h
//  NewObjc
//
//  Created by Song on 29/04/20.
//  Copyright © 2020 Adriano Song. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *myTitle;
@property (weak, nonatomic) IBOutlet UILabel *myDescription;

@end
