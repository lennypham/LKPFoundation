//
//  UIScreen+LKPAdditions.h
//  LKPFoundation
//
//  Created by Leonard Pham on 3/7/13.
//  Copyright (c) 2013 Leonard Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (LKPAdditions)

+(CGFloat) screenHeightInPixelsPortrait;
+(CGFloat) screenHeightInPixelsLandscape;
+(CGFloat) screenWidthInPixelsPortrait;
+(CGFloat) screenWidthInPixelsLandscape;

+(CGFloat) screenHeightInPointsPortrait;
+(CGFloat) screenHeightInPointsLandscape;
+(CGFloat) screenWidthInPointsPortrait;
+(CGFloat) screenWidthInPointsLandscape;

@end
