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
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
