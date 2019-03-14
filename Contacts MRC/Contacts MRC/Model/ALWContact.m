//
//  Contact.m
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import "ALWContact.h"

@implementation ALWContact

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _phoneNumber = phoneNumber;
        _email = email;
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_phoneNumber release];
    [_email release];
    [super dealloc];
}

@end
