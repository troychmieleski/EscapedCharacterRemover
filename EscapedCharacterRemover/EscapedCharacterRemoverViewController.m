//
//  EscapedCharacterRemoverViewController.m
//  EscapedCharacterRemover
//
//  Created by Troy Chmieleski on 5/22/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "EscapedCharacterRemoverViewController.h"
#import "NSTextView+JSDExtensions.h"

@interface EscapedCharacterRemoverViewController () <NSTextViewDelegate>

@end

@implementation EscapedCharacterRemoverViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	
    if (self) {

    }
	
    return self;
}

- (void)loadView {
	[super loadView];
	
	NSFont *textViewFont = [NSFont fontWithName:@"Menlo" size:13.0f];
	
	[_inputTextView setFont:textViewFont];
	[_outputTextView setFont:textViewFont];
	
	NSColor *textColor = [NSColor colorWithRed:181.0f/255.0f green:189.0f/255.0f blue:104.0f/255.0f alpha:1.0f];
	
	[_inputTextView setTextColor:textColor];
	[_outputTextView setTextColor:textColor];
	
	NSColor *insertionPointColor = textColor;
	[_inputTextView setInsertionPointColor:insertionPointColor];
	[_outputTextView setInsertionPointColor:insertionPointColor];
	
	NSColor *textViewBackgroundColor = [NSColor colorWithWhite:0.1f alpha:1.0];
	
	[_inputTextView setBackgroundColor:textViewBackgroundColor];
	[_outputTextView setBackgroundColor:textViewBackgroundColor];
	
	[_inputTextView.enclosingScrollView setBorderType:NSBezelBorder];
	[_outputTextView.enclosingScrollView setBorderType:NSBezelBorder];
	
	[_inputTextView setShowsLineNumbers:YES];
	[_outputTextView setShowsLineNumbers:YES];
}

- (void)removeEscapedCharacterButtonClicked:(id)sender {
	NSString *inputText = _inputTextView.textStorage.string;
	NSString *outputText = [inputText stringByReplacingOccurrencesOfString:@"\\" withString:@""];
	[_outputTextView setString:outputText];	
}



@end
