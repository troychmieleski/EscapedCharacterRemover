//
//  PrettyPrinter.m
//  EscapedCharacterRemover
//
//  Created by Troy Chmieleski on 5/23/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "PrettyPrinter.h"
#import "GDataXMLNode.h"

@implementation PrettyPrinter

+ (NSString *)prettyPrintXML:(NSString *)rawXML {
	NSError *error;
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:rawXML options:0 error:&error];
    return error ? rawXML : doc.rootElement.XMLString;
}

@end
