//
//  NSString+Distance.m
//  TheFamilyApp
//
//  Created by Leonard Pham on 11/27/12.
//  Copyright (c) 2012 Citrrus. All rights reserved.
//

#import "NSString+Distance.h"

#define METERS_TO_FEET  3.2808399
#define METERS_TO_MILES 0.000621371192
#define METERS_CUTOFF   1000
#define FEET_CUTOFF     999
#define FEET_IN_MILES   5280

@implementation NSString (Distance)

+ (NSString *)stringWithDistance:(double)distance
{
    BOOL isMetric = [[[NSLocale currentLocale] objectForKey:NSLocaleUsesMetricSystem] boolValue];
    
    NSString *format;
    
    if (isMetric)
    {
        if (distance < METERS_CUTOFF)
        {
            format = @"%@ metres";
        }
        else
        {
            format = @"%@ km";
            distance = distance / 1000;
        }
    }
    else
    { // assume Imperial / U.S.
        distance = distance * METERS_TO_FEET;
    
        if (distance < FEET_CUTOFF)
        {
            distance = round(distance);
            format = @"%@ ft";
        }
        else
        {
            format = @"%@ mi";
            distance = distance / FEET_IN_MILES;
        }
    }
    
    return [NSString stringWithFormat:format, [self stringWithDouble:distance]];
}

// Return a string of the number to one decimal place and with commas & periods based on the locale.
+ (NSString *)stringWithDouble:(double)value
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    [numberFormatter setLocale:[NSLocale currentLocale]];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:1];
    
    return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:value]];
}

@end
