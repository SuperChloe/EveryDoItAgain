//
//  AddNewViewController.m
//  Every Do It Again
//
//  Created by Chloe on 2016-02-03.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "AddNewViewController.h"

@interface AddNewViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *descrField;
@property (weak, nonatomic) IBOutlet UITextField *priorityField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end

@implementation AddNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *topColor = [UIColor colorWithRed:0.0/255.0 green:128.0/255.0 blue:255.0/255.0 alpha:1.0];
    UIColor *bottomColor = [UIColor colorWithRed:0.0/255.0 green:64.0/255.0 blue:128.0/255.0 alpha:1.0];
    CAGradientLayer *viewGradient = [CAGradientLayer layer];
    viewGradient.colors = [NSArray arrayWithObjects: (id)topColor.CGColor, (id)bottomColor.CGColor, nil];
    viewGradient.frame = self.view.bounds;
    [self.view.layer insertSublayer:viewGradient atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    NSString *title = self.titleField.text;
    NSString *descr = self.descrField.text;
    int priority = [self.priorityField.text intValue];

    [self.delegate addNewTitle:title description:descr andPriority:priority];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
