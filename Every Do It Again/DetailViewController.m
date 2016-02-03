//
//  DetailViewController.m
//  Every Do It Again
//
//  Created by Chloe on 2016-02-03.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)configureView {
    // Update the user interface for the detail item.
        self.detailDescriptionLabel.text = self.detailItem.descr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *topColor = [UIColor colorWithRed:0.0/255.0 green:128.0/255.0 blue:255.0/255.0 alpha:1.0];
    UIColor *bottomColor = [UIColor colorWithRed:0.0/255.0 green:64.0/255.0 blue:128.0/255.0 alpha:1.0];
    CAGradientLayer *viewGradient = [CAGradientLayer layer];
    viewGradient.colors = [NSArray arrayWithObjects: (id)topColor.CGColor, (id)bottomColor.CGColor, nil];
    viewGradient.frame = self.view.bounds;
    [self.view.layer insertSublayer:viewGradient atIndex:0];
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
