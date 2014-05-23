//
//  AppDelegate.h
//  EscapedCharacterRemover
//
//  Created by Troy Chmieleski on 5/22/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "EscapedCharacterRemoverViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, strong) IBOutlet EscapedCharacterRemoverViewController *escapedCharacterRemoverViewController;

@end
