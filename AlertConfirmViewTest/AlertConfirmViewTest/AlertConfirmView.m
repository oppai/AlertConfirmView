//
//  AlertConfirmView.m
//  AlertConfirmViewTest
//
//  Created by Kodam Shindo on 12/05/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AlertConfirmView.h"

@implementation AlertConfirmView

- (id)initWithText:(NSString*)text delegate:(id)_delegate
		  okAction:(void (^)(void))ok cancelAction:(void (^)(void))cancel
{
    self = [super initWithTitle:@"確認"
						message:text
					   delegate:_delegate
			  cancelButtonTitle:@"Cancel"
			  otherButtonTitles:@"OK",nil];
	
    if (self) {
        // Initialization code
		self.delegate = self;
		ok_action = ok;
		cancel_action = cancel;
    }
    return self;
}

- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	switch (buttonIndex) {
		case 0:
			cancel_action();
			break;
		case 1:
			ok_action();
			break;
	}
}
@end
