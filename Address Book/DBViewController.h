//
//  DBViewController.h
//  Address Book
//
//  Created by Deb Bostjancic on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "Detail.h"
#import "EditViewController.h"

@interface DBViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, DetailViewDelegate>
- (void) editPerson: (Person *)person atIndex: (int)index;
@end
