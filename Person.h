//
//  Person.h
//  Address Book
//
//  Created by Deb Bostjancic on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (weak, nonatomic) NSString *firstName;
@property (weak, nonatomic) NSString *lastName;
@property (weak, nonatomic) NSString *emailAddress;
@property (weak, nonatomic) NSString *phoneNumber;

@end
