//
//  main.m
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *myList = [[ContactList alloc] init];
        BOOL runApp = YES;
        while (runApp == YES) {
        
            NSString *introResponse = [InputCollector inputForPrompt:(@"What would you like to do next?\n new - create a new contact list \n list - list all contacts \n quit - exit application")];
            
            if ([introResponse isEqualToString:@"quit"]){
                NSLog(@"This is where we say goodbye");
                runApp = NO;
            }
            
            if ([introResponse isEqualToString:@"new"]){
                Contact *newContact = [[Contact alloc] init];
                newContact.name = [InputCollector inputForPrompt:(@"Please enter name")];
                newContact.email = [InputCollector inputForPrompt:(@"Please enter email address")];
                [myList addContact:newContact];
            }
            
            if ([introResponse isEqualToString:@"list"]){
                [myList outputNames];
            }
        }
        
    }
    
    return 0;
}
