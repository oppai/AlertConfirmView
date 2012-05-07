//
//  AlertConfirmView.h
//  AlertConfirmViewTest
//
//  Created by Kodam Shindo on 12/05/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertConfirmView : UIAlertView <UIAlertViewDelegate>
{
	void (^ok_action)(void);
	void (^cancel_action)(void);
}
- (id)initWithText:(NSString*)text delegate:(id)_delegate
		  okAction:(void (^)(void))ok cancelAction:(void (^)(void))cancel;
@end
