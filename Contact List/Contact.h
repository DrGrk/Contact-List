//
//  Contact.h
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *named;
@property NSString *email;
@property NSMutableArray *phoneNumbers;

-(void)decideToEnterNewNumber:(NSString *)decision;


@end
