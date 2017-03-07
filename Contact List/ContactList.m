//
//  ContactList.m
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _listOfContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.listOfContacts addObject:newContact];
}


-(void)outputNames{
    for (Contact *c in self.listOfContacts) {
        NSInteger i = [self.listOfContacts indexOfObject:c];
        NSLog(@"%ld:<%@>()", i, c.name);
    }
}

@end
