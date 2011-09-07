//
//  CINumberField.h
//
//  Created by Michael Robinson on 06/09/11
//  Copyright 2011 Code of Interest. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// Our number field types
#define CINumberFieldTypeKeyPath    @"type"
#define IntegerCINumberFieldType    @"integer"
#define DoubleCINumberFieldType     @"double"
#define MoneyCINumberFieldType      @"money"

@interface CINumberField : NSTextField {
    NSString *type;
}

-(void) textDidEndEditing:(NSNotification *)aNotification;

@property (retain) NSString *type;

@end
