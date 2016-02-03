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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    NSString *title = self.titleField.text;
    NSString *descr = self.descrField.text;
    int priority = [self.priorityField.text intValue];
//    AppDelegate *del = [UIApplication sharedApplication].delegate;
//    ToDo *newToDo = [NSEntityDescription insertNewObjectForEntityForName:@"ToDo" inManagedObjectContext:del.managedObjectContext];
    
    
    // If appropriate, configure the new managed object.
    // Normally you should use accessor methods, but using KVC here avoids the need to add a custom class to the template.
//    newToDo.title = self.titleField.text;
  //  newToDo.descr = self.descrField.text;

  //  newToDo.priority = [self.priorityField.text intValue];
    [self.delegate addNewTitle:title description:descr andPriority:priority];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
