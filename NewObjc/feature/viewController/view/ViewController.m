//
//  ViewController.m
//  NewObjc
//
//  Created by Song on 28/04/20.
//  Copyright © 2020 Adriano Song. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"
#import "NewViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self sayHello];

    [_myButton setTitle:@"My Button" forState:(normal)];
    _myButton.backgroundColor = UIColor.cyanColor;
    _myButton.layer.cornerRadius = 10.0;
}

- (void)sayHello {
    _viewModel = [[ViewModel alloc] init];
    _myLabel.textColor = UIColor.blueColor;

    _myLabel.text = [_viewModel sayHello];
}

- (IBAction)didButtomTap:(id)sender {

    [self performSegueWithIdentifier:@"newScreen" sender:self];
}

@end
