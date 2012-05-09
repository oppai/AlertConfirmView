AlertConfirmView
================

AlertConfirmView is alert view for confirm without delegation method.

###How to use
	AlertConfirmView *view = [[AlertConfirmView alloc]
							  initWithText:@"Are you ready?"
							  delegate:self
							  okAction:^{ NSLog(@"OK Action"); }
							  cancelAction:^{ NSLog(@"Cancel Action"); }
							  ];
	[view show];