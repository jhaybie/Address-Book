//
//  DBViewController.m
//  Address Book
//
//  Created by Deb Bostjancic on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
@property (weak, nonatomic) IBOutlet UITableView *addressBookTableView;

@end

@implementation DBViewController
@synthesize addressBookTableView;

int indexNumber;
Person *tempPerson;
NSMutableArray *people;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [people count];
}


-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
    NSString *arrayIdentifier = @"xxx";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: arrayIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:arrayIdentifier];
    }
    Person *tempPerson = [[Person alloc] init];
    tempPerson = people[indexPath.row];
    indexNumber = indexPath.row;
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", tempPerson.firstName, tempPerson.lastName];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    tempPerson = people[indexPath.row];
    Detail *detailView = [[Detail alloc] init];
    detailView.delegate = self;
    [tableView reloadData];
    [self performSegueWithIdentifier: @"Detail" sender: self];
}

- (void)prepareForSegue: (UIStoryboardSegue *)segue sender: (id)sender
{
    Detail *detail = segue.destinationViewController;
    detail.person = tempPerson;
    detail.index = indexNumber;
}


- (void) editPerson: (Person *)person atIndex: (int)index
{
    people[index] = person;
    [addressBookTableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder: aDecoder];
    if (self)
    {
    people = [[NSMutableArray alloc] init];
    Person *tempPerson1 = [[Person alloc] init];
    tempPerson1.firstName = @"John";
    tempPerson1.lastName = @"Doe";
    tempPerson1.emailAddress = @"JDoe@yahoo.com";
    tempPerson1.phoneNumber = @"555-5555";
    [people addObject:tempPerson1];
        
    Person *tempPerson2 = [[Person alloc] init];
    tempPerson2.firstName = @"Jack";
    tempPerson2.lastName = @"Miner";
    tempPerson2.emailAddress = @"JMiner@yahoo.com";
    tempPerson2.phoneNumber = @"666-5555";
    [people addObject:tempPerson2];
    
    Person *tempPerson3 = [[Person alloc] init];
    tempPerson3.firstName = @"Ralph";
    tempPerson3.lastName = @"Done";
    tempPerson3.emailAddress = @"RDone@yahoo.com";
    tempPerson3.phoneNumber = @"555-6666";
    [people addObject:tempPerson3];
    
    Person *tempPerson4 = [[Person alloc] init];
    tempPerson4.firstName = @"Marge";
    tempPerson4.lastName = @"Dont";
    tempPerson4.emailAddress = @"MDont@yahoo.com";
    tempPerson4.phoneNumber = @"666-6666";
    [people addObject: tempPerson4];
    }
    return self;
}

@end
