//
//  ContactsTableViewController.m
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import "ALWContactsTableViewController.h"
#import "ALWContactDetailViewController.h"
#import "ALWContactController.h"
#import "ALWContact.h"

@interface ALWContactsTableViewController ()

// Instance of model controler
@property (nonatomic, readonly) ALWContactController *contactController; // = ALWContactController() in SWIFT

@end

@implementation ALWContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[[ALWContactController alloc] init] autorelease];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    // Get the contact to be displayed
    ALWContact *contact = self.contactController.contacts[indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = contact.name;
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Showing/Editing
    if ([segue.identifier isEqualToString:@"showContactSegue"]) {
        
        // Get the new view controller using [segue destinationViewController].
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ALWContactDetailViewController *detailVC = segue.destinationViewController;
        
        // Pass the selected object to the new view controller.
        detailVC.contactController = self.contactController;
        detailVC.contact = self.contactController.contacts[indexPath.row];
    }
    // Creating
    if ([segue.identifier isEqualToString:@"addContactSegue"]) {
        ALWContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
    }
}


@end
