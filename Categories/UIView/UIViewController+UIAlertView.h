//
//  UIViewController+UIAlertView.h
//  TheFamilyApp
//
//  Created by Leonard Pham on 4/22/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIAlertView)

- (void)showErrorAlertMessageWithTitle:(NSString *)aTitle
                               message:(NSString *)anErrorMessage
                           andDelegate:(id)delegate;

@end
