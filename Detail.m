//
//  Detail.m
//  Address Book
//
//  Created by Jhaybie on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "Detail.h"

@interface Detail ()
{
    __weak IBOutlet UILabel *firstNameLabel;
    __weak IBOutlet UILabel *lastNameLabel;
    __weak IBOutlet UILabel *emailAddressLabel;
    __weak IBOutlet UILabel *phoneNumberLabel;
}
@end


@implementation Detail
@synthesize delegate, person;

- (IBAction)editButtonPressed:(id)sender
{
    EditViewController *edit = [[EditViewController alloc] init];
    edit.delegate = self;
    [self performSegueWithIdentifier: @"Edit" sender: self];
}

- (IBAction)doneButtonPressed:(id)sender
{
    person.firstName = [NSString stringWithFormat: @"%@", firstNameLabel.text];
    person.lastName = [NSString stringWithFormat: @"%@", firstNameLabel.text];
    person.emailAddress = [NSString stringWithFormat: @"%@", emailAddressLabel.text];
    person.phoneNumber = [NSString stringWithFormat: @"%@", phoneNumberLabel.text];

    [delegate editPerson: person atIndex: index];
}

- (void)prepareForSegue: (UIStoryboardSegue *)segue sender: (id)sender
{
    EditViewController *edit = segue.destinationViewController;
    edit.person = person;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    firstNameLabel.text = person.firstName;
    lastNameLabel.text = person.lastName;
    emailAddressLabel.text = person.emailAddress;
    phoneNumberLabel.text = person.phoneNumber;
}




@end
