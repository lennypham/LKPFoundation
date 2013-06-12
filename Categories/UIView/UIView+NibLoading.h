//
//  UIView+NibLoading.h
//  
//
//  Created by Matthew Hupman on 5/16/12.
//  Copyright (c) 2012 Citrrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NibLoading)

+ (UIView *) loadInstanceFromNib;

+ (UIView *) loadInstanceFromNibWithName:(NSString *)nibName;

+ (UIView *) loadInstanceFromNibWithName:(NSString *)nibName andOwner:(id)anOwner;

@end
