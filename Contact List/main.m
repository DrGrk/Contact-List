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
        
            NSString *introResponse = [InputCollector inputForPrompt:(@"What would you like to do next?\n new - create a new contact list \n list - list all contacts \n quit - exit application \n show - show contact at index \n find - find all mathches")];
// Quit Application
            if ([introResponse isEqualToString:@"quit"]){
                NSLog(@"This is where we say goodbye");
                runApp = NO;
            }
// Add New Contact
            
            if ([introResponse isEqualToString:@"new"]){
                Contact *newContact = [[Contact alloc] init];
                newContact.named = [InputCollector inputForPrompt:(@"Please enter name")];
                newContact.email = [InputCollector inputForPrompt:(@"Please enter email address")];
                NSString *newNumberIfOrIfNot = [InputCollector inputForPrompt:(@"Would you like to enter a phone number? \n yes or no \n")];
                [newContact decideToEnterNewNumber:newNumberIfOrIfNot];
                
                
                
// Prevent Double Entries && Finish Adding Contact
                if ([myList doubleEntryBlocker:newContact.email] == NO) {
                    [myList addContact:newContact];
                } else {
                    NSLog(@"That contact already exists and cannot be added");
                }
            }
                
// List All Contacts
            if ([introResponse isEqualToString:@"list"]){
                [myList outputNames];
            }
// Show Contact At Index
            if ([introResponse isEqualToString:@"show"]){
                NSString *indexSelected = [InputCollector inputForPrompt:(@"Select the index of the contact you would like to see")];
                [myList showNameAtIndex:indexSelected];
            }
// Find All Matching Substrings
            if ([introResponse isEqualToString:@"find"]){
                NSString *nameToFind = [InputCollector inputForPrompt:(@"Enter the name you would like to find")];
                [myList filterForName:nameToFind];
            }

        
        }
        
    }
    
    return 0;
}
