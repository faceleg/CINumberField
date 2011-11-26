//
//  CINumberField.m
//
//  Created by Michael Robinson on 06/09/11
//  Copyright 2011 Code of Interest. All rights reserved.
//

#import "CINumberField.h"

@implementation CINumberField

@synthesize type;

- (id)init
{
    self = [super init];
    if (self) {
        [self setValue:IntegerCINumberFieldType forKeyPath:CINumberFieldTypeKeyPath];
    }
    
    return self;
}


-(void) textDidEndEditing:(NSNotification *)aNotification {
    
    // Integer fields
    if ([[self type] isEqualToString:IntegerCINumberFieldType]) {
        [self setIntValue:[self intValue]];
    } 
    // Double fields
    else if ([[self type] isEqualToString:DoubleCINumberFieldType]) {
        [self setDoubleValue:[self doubleValue]];
    } 
    // Money fields
    else if ([[self type] isEqualToString:MoneyCINumberFieldType]) {
        [self setStringValue:[NSString stringWithFormat:@"$%.02f", 
                             [[[self stringValue] stringByReplacingOccurrencesOfString:@"$" withString:@""] floatValue] ]];
    } 
	[(NSObject *)[self delegate] controlTextDidEndEditing:[NSNotification notificationWithName:@"controlTextDidEndEditing" 
                                                                        object:self]];
}

- (void) setValue:(id)value forKeyPath:(NSString *)keyPath {
    if ([keyPath isEqualToString:CINumberFieldTypeKeyPath]) [self setType:value];
    else [self setValue:value forUndefinedKey:keyPath];
}

@end
