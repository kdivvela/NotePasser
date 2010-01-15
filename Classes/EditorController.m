//
//  EditorController.m
//  notepasser
//
//  Created by Kiran Divvela on 1/10/10.
//  Copyright 2010 MIT Sloan School of Management. All rights reserved.
//

#import "EditorController.h"

@implementation EditorController
- (id) init {
	self = [super init];
	return self;
}

//TODO:	show keyboard by default when app starts in uitextview: http://stackoverflow.com/questions/259819/how-do-i-show-the-keyboard-by-default-in-uitextview
//TODO: When click on uitextview, text disappears and keyboard shows up

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
	// Any new character added is passed in as the "text" parameter
	if ([text isEqualToString:@"\n"]) {
		// Be sure to test for equality using the "isEqualToString" message
		[textView resignFirstResponder];
		
		// resize text in text view to fill entire screen
		[textView setFont:[UIFont systemFontOfSize:40]];
		
		// Return FALSE so that the final '\n' character doesn't get added
		return FALSE;
	}
	// For any other character return TRUE so that the text gets added to the view
	return TRUE;
}


@end
