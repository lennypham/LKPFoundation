//
//  UIView+NibLoading.m
//  
//
//  Created by Matthew Hupman on 5/16/12.
//  Copyright (c) 2012 Citrrus. All rights reserved.
//

#import "UIView+NibLoading.h"

@implementation UIView (NibLoading)

+ (UIView *)loadInstanceFromNib
{
    UIView *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];

    for (id anObject in elements)
    {
        if ([anObject isKindOfClass:[self class]])
        {
            result = anObject;
            break;
        }
    }
    
    return result;
}

+ (UIView *)loadInstanceFromNibWithName:(NSString *)nibName
{
    UIView *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
    
    for (id anObject in elements)
    {
        if ([anObject isKindOfClass:[self class]])
        {
            result = anObject;
            break;
        }
    }
    
    return result;
}

+ (UIView *)loadInstanceFromNibWithName:(NSString *)nibName andOwner:(id)anOwner
{
    UIView *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed:nibName owner:anOwner options: nil];
    
    for (id anObject in elements)
    {
        if ([anObject isKindOfClass:[self class]])
        {
            result = anObject;
            break;
        }
    }
    
    return result;
}

@end
