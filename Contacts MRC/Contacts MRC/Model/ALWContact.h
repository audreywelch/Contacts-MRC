//
//  Contact.h
//  Contacts MRC
//
//  Created by Audrey Welch on 3/13/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWContact : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *phoneNumber;
@property (nonatomic, retain) NSString *email;

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
