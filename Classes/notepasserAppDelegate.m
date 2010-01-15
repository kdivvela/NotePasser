//
//  notepasserAppDelegate.m
//  notepasser
//
//  Created by Kiran Divvela on 12/28/09.
//  Copyright MIT Sloan School of Management 2009. All rights reserved.
//

@class MyViewController;
#import "notepasserAppDelegate.h"

@implementation notepasserAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	MyViewController *myViewController;
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
