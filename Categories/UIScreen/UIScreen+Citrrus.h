//
//  UIScreen+Citrrus.h
//  Alexandria
//
//  Created by Lenny Pham on 2/10/12.
//  Copyright (c) 2012 Citrrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Citrrus)

+(CGFloat) screenHeightInPixelsPortrait;
+(CGFloat) screenHeightInPixelsLandscape;
+(CGFloat) screenWidthInPixelsPortrait;
+(CGFloat) screenWidthInPixelsLandscape;

+(CGFloat) screenHeightInPointsPortrait;
+(CGFloat) screenHeightInPointsLandscape;
+(CGFloat) screenWidthInPointsPortrait;
+(CGFloat) screenWidthInPointsLandscape;

@end
