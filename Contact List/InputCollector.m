//
//  InputCollector.m
//  Contact List
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@",promptString);
    char menuOptions[200];
    fgets(menuOptions, 200, stdin);
    NSString *menuOptionsObjC = [NSString stringWithCString:menuOptions
                                                   encoding:NSASCIIStringEncoding];
    NSCharacterSet *answerTrimmer =[NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString* menuOptionsTrim = [menuOptionsObjC stringByTrimmingCharactersInSet:answerTrimmer];
    return menuOptionsTrim;
}

@end
