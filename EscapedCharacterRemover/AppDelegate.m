//
//  AppDelegate.m
//  EscapedCharacterRemover
//
//  Created by Troy Chmieleski on 5/22/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	self.escapedCharacterRemoverViewController = [[EscapedCharacterRemoverViewController alloc] initWithNibName:@"EscapedCharacterRemoverViewController" bundle:nil];
	
	[self.window setBackgroundColor:[NSColor blackColor]];
	[self.window.contentView addSubview:self.escapedCharacterRemoverViewController.view];
	self.escapedCharacterRemoverViewController.view.frame = ((NSView *)self.window.contentView).bounds;
}

@end
