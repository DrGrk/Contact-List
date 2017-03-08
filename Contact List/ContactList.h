//
//  ContactList.h
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *listOfContacts;

-(void)addContact:(Contact *)newContact;

-(void)outputNames;

-(void)showNameAtIndex:(NSString *)indexString;

-(void)filterForName:(NSString *)findMe;

-(BOOL)doubleEntryBlocker:(NSString *)emailEntered;

@end
