//
//  EditViewController.m
//  Address Book
//
//  Created by Jhaybie on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()
{
    __weak IBOutlet UITextField *firstNameTextField;
    __weak IBOutlet UITextField *lastNameTextField;
    __weak IBOutlet UITextField *emailAddressTextField;
    __weak IBOutlet UITextField *phoneNumberTextField;
}
- (IBAction)doneButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end

@implementation EditViewController
@synthesize person;

Person *tempPerson;

- (void)viewDidLoad
{
    [super viewDidLoad];
    firstNameTextField.text = person.firstName;
    lastNameTextField.text = person.lastName;
    emailAddressTextField.text = person.emailAddress;
    phoneNumberTextField.text = person.phoneNumber;
}





- (IBAction)doneButtonPressed:(id)sender {
}

- (IBAction)cancelButtonPressed:(id)sender {
}
@end
