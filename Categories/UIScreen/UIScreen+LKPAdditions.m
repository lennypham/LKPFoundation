//
//  UIScreen+LKPAdditions.m
//  LKPFoundation
//
//  Created by Leonard Pham on 3/7/13.
//  Copyright (c) 2013 Leonard Pham. All rights reserved.
//

#import "UIScreen+LKPAdditions.h"

@implementation UIScreen (LKPAdditions)

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR PORTRAIT ORENTATION IN POINTS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenHeightInPointsPortrait
{
    return [[UIScreen mainScreen] bounds].size.height;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR PORTRAIT ORENTATION IN POINTS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenHeightInPointsLandscape
{
    return [[UIScreen mainScreen] bounds].size.width;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR PORTRAIT ORENTATION IN POINTS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenWidthInPointsPortrait
{
    return [[UIScreen mainScreen] bounds].size.width;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE WIDTH OF THE DEVICE FOR LANDSCAPE ORENTATION IN POINTS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenWidthInPointsLandscape
{
    return [[UIScreen mainScreen] bounds].size.height;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR PORTRAIT ORENTATION IN POINTS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenHeightInPixelsPortrait
{
    return [[UIScreen mainScreen] bounds].size.height * [UIScreen mainScreen].scale;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR LANDSCAPE ORENTATION IN PIXELS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenHeightInPixelsLandscape
{
    return [[UIScreen mainScreen] bounds].size.width * [UIScreen mainScreen].scale;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE HEIGHT OF THE DEVICE FOR PORTRAIT ORENTATION IN PIXELS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenWidthInPixelsPortrait
{
    return [[UIScreen mainScreen] bounds].size.width * [UIScreen mainScreen].scale;
}

////////////////////////////////////////////////////////////////////////////////
// RETURNS THE WIDTH OF THE DEVICE FOR LANDSCAPE ORENTATION IN PIXELS
////////////////////////////////////////////////////////////////////////////////
+(CGFloat) screenWidthInPixelsLandscape
{
    return [[UIScreen mainScreen] bounds].size.height * [UIScreen mainScreen].scale;
}

/**
 * @return YES if the device/screen has a retina display.
 */
+ (BOOL)iSRetina
{
    BOOL isRetina = NO;
    
    if ([UIScreen instancesRespondToSelector:@selector(scale)])
    {
        CGFloat scale = [[UIScreen mainScreen] scale];
        
        if (scale > 1.0)
        {
            isRetina = YES;
        }
    }
    
    return isRetina;    
}

@end
