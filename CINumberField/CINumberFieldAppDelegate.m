//
//  CINumberFieldAppDelegate.m
//  CINumberField
//
//  Created by Michael Robinson on 6/09/11.
//  Copyright 2011 ECPod. All rights reserved.
//

#import "CINumberFieldAppDelegate.h"

@implementation CINumberFieldAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification { }

- (void) controlTextDidEndEditing:(NSNotification *)obj {
    NSLog(@"%@ - %@", [[obj object] class], [obj name]);
}

@end
