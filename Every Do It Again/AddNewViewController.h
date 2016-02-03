//
//  AddNewViewController.h
//  Every Do It Again
//
//  Created by Chloe on 2016-02-03.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol AddNewProtocol <NSObject>

- (void)addNewTitle:(NSString *)title description:(NSString *)descr andPriority:(int)priority;

@end

@interface AddNewViewController : UIViewController

@property (weak, nonatomic) id <AddNewProtocol> delegate;

@end
