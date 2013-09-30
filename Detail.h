//
//  Detail.h
//  Address Book
//
//  Created by Jhaybie on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "EditViewController.h"

@protocol DetailViewDelegate <NSObject>
- (void) editPerson: (Person *)person atIndex: (int)index;

@end


@interface Detail : UIViewController
@property (strong, nonatomic) Person *person;
@property (strong, nonatomic) id <DetailViewDelegate> delegate;
@property (nonatomic) int index;
@end
