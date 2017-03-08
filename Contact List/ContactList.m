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
        NSLog(@"%ld:<%@>()", i, c.named);
    }
}

-(void)showNameAtIndex:(NSString *)indexString{
    int index = [indexString intValue];
    if (index <= (self.listOfContacts.count - 1)){
        NSString *outputName = [self.listOfContacts[index] named];
        NSString *outputEmail = [self.listOfContacts[index] email];
        NSLog(@"\n %@ \n %@ \n",outputName,outputEmail);
    }
    else {
        NSLog(@"That contact does not exist");
    }
}
    
-(void)filterForName:(NSString *)findMe{
    for (Contact *c in self.listOfContacts){
        if ([c.named isEqualToString:findMe] || [c.email isEqualToString:findMe]) {
            NSLog(@"\n %@ \n %@ \n", c.named, c.email);
        }
    }
}
    
-(BOOL)doubleEntryBlocker:(NSString *)emailEntered{
    for (Contact *c in self.listOfContacts) {
        if ([c.email isEqualToString:emailEntered]){
            return YES;
        }
    }
    return NO;
}



@end
