//
//  ContactDetailViewController.m
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import "ALWContactDetailViewController.h"
#import "ALWContactController.h"
#import "ALWContact.h"

@interface ALWContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@property (retain, nonatomic) IBOutlet UIButton *saveOutlet;

@end

@implementation ALWContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.contact) { return; }
    
    self.title = self.contact.name ?: @"Create Contact";
    
    self.nameTextField.text = self.contact.name;
    self.phoneTextField.text = self.contact.phoneNumber;
    self.emailTextField.text = self.contact.email;
}

- (IBAction)saveButtonTapped:(id)sender {
    
    // Are we editing a contact? or creating a new one?
    BOOL isEditingContact = self.contact != nil;
    
    // The contact we're working with is either self.contact if editing
    // or nil, and we would create a new one
    ALWContact *newContact = self.contact;
    newContact.name = self.nameTextField.text;
    newContact.phoneNumber = self.phoneTextField.text;
    newContact.email = self.emailTextField.text;
    
    if (!isEditingContact) {
        [[self contactController] addContact:newContact];
        
        NSLog(@"%@", self.contactController.contacts);
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)done:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [_saveOutlet release];
    [super dealloc];
}
@end
