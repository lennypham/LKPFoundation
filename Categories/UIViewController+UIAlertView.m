//
//  UIViewController+UIAlertView.m
//  TheFamilyApp
//
//  Created by Leonard Pham on 4/22/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "UIViewController+UIAlertView.h"

@implementation UIViewController (UIAlertView)

- (void)showErrorAlertMessageWithTitle:(NSString *)aTitle
                               message:(NSString *)anErrorMessage
                           andDelegate:(id)delegate
{
    if (self.view.window)
    {
        [[[UIAlertView alloc] initWithTitle:aTitle
                                    message:anErrorMessage
                                   delegate:delegate
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
}

@end
