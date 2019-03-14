//
//  ALWcontactController.m
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import "ALWContactController.h"
#import "ALWContact.h"

@interface ALWContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ALWContactController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _internalContacts = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}

// Define a getter
- (NSArray *)contacts {

    return [self.internalContacts copy];
}

- (ALWContact *)createContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    
    ALWContact *newContact = [[[ALWContact alloc] initWithName:name phoneNumber:phoneNumber email:email] autorelease];
    
    return newContact;
}

- (void)updateContact:(ALWContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    
    contact.name = name;
    contact.phoneNumber = phoneNumber;
    contact.email = email;
    
    // replaceObjectAtIndex.index [with Object:newDocument]
}

- (void)deleteContact:(ALWContact *)contact {
    [self.internalContacts removeObject:contact];
}

- (void)addContact:(ALWContact *)contact {
    [self.internalContacts addObject:contact];
}


@end
