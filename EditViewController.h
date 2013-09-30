//
//  EditViewController.h
//  Address Book
//
//  Created by Jhaybie on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "Detail.h"

@protocol EditViewDelegate <NSObject>

@end


@interface EditViewController : UIViewController
@property (strong, nonatomic) Person *person;
@property (strong, nonatomic) id <EditViewDelegate> delegate;
@property (nonatomic) int index;
@end
