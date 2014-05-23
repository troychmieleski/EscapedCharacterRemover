//
//  EscapedCharacterRemoverViewController.h
//  EscapedCharacterRemover
//
//  Created by Troy Chmieleski on 5/22/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface EscapedCharacterRemoverViewController : NSViewController

@property (nonatomic, strong) IBOutlet NSTextView *inputTextView;
@property (nonatomic, strong) IBOutlet NSTextView *outputTextView;
@property (nonatomic, strong) IBOutlet NSButton *removeEscapedCharactersButton;

- (IBAction)removeEscapedCharacterButtonClicked:(id)sender;

@end
