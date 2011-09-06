//
//  CINumberField.m
//
//  Created by Michael Robinson on 06/09/11
//  Copyright 2011 Code of Interest. All rights reserved.
//

#import "CINumberField.h"

@implementation CINumberField

-(void) textDidEndEditing:(NSNotification *)aNotification {
	[self setIntValue:[self intValue]];
	[[self delegate] controlTextDidChange:[NSNotification notificationWithName:@"controlTextDidEndEditing" object:self]];
}

@end
