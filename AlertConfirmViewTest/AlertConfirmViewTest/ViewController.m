//
//  ViewController.m
//  AlertConfirmViewTest
//
//  Created by Kodam Shindo on 12/05/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AlertConfirmView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showDialogAction
{
	AlertConfirmView *view = [[AlertConfirmView alloc] initWithText:@"Are you ready?"
														   delegate:self
														   okAction:^{
															   NSLog(@"OK Action");
														   }cancelAction:^{
															   NSLog(@"Cancel Action");
														   }];
	[view show];
	[view autorelease];
}

@end
