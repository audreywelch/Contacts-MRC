//
//  ALWcontactController.h
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ALWContact;

@interface ALWContactController : NSObject

@property (nonatomic, readonly) NSArray *contacts;

- (ALWContact *)createContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

- (void)updateContact:(ALWContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

- (void)deleteContact:(ALWContact *)contact;

- (void)addContact:(ALWContact *)contact;

@end

NS_ASSUME_NONNULL_END
