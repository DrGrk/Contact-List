//
//  Contact.m
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"

@implementation Contact

-(void)decideToEnterNewNumber:(NSString *)decision{
    if ([decision  isEqualToString: @"y"]) {
        BOOL continueAddingNumbers = YES;
        while (continueAddingNumbers) {
            NSString *newPhoneNumber = [InputCollector inputForPrompt:@"Please enter the phone number"];
            [self.phoneNumbers addObject:newPhoneNumber];
            NSString *newDecision = [InputCollector inputForPrompt:@"Press y to enter another number"];
            if (![newDecision isEqualToString:@"y"]) {
                continueAddingNumbers = NO;
            }
        }
    }
}



@end
