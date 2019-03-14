//
//  ContactDetailViewController.h
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ALWContact;
@class ALWContactController;

NS_ASSUME_NONNULL_BEGIN

@interface ALWContactDetailViewController : UIViewController

// Could these be weak ?
@property (weak) ALWContact *contact;
@property ALWContactController *contactController;

@end

NS_ASSUME_NONNULL_END
