//
//  NSDate+LKPAdditions.m
//  LKPFoundation
//
//  Created by Leonard Pham on 4/4/13.
//  Copyright (c) 2013 Leonard Pham. All rights reserved.
//

#import "NSDate+LKPAdditions.h"

@implementation NSDate (LKPAdditions)

+(NSString *)timeSinceNowShort:(NSDate *)date
{
    // Get the system calendar
    NSCalendar *sysCalendar = [NSCalendar currentCalendar];
    
    // Get conversion to months, days, hours, minutes
    unsigned int unitFlags = NSSecondCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSDayCalendarUnit | NSMonthCalendarUnit;
    
    NSDateComponents *breakdownInfo = [sysCalendar components:unitFlags fromDate:date  toDate:[NSDate date]  options:0];
    
    NSInteger seconds = [breakdownInfo second];
    NSInteger minutes = [breakdownInfo minute];
    NSInteger hours   = [breakdownInfo hour];
    NSInteger days    = [breakdownInfo day];
    NSInteger months  = [breakdownInfo month];
    
    NSString *timeSinceText;
    
    if ( months == 1)
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i m", months];
    }
    else if ( months > 1)
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i m", months];
    }
    else if (days == 1)
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i d", days];
    }
    else if ( days > 1 )
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i d", days];
    }
    else if ( hours == 1 )
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i h", hours];
    }
    else if ( hours > 1 )
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i h", hours];
    }
    else if ( minutes == 1 )
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i min", minutes];
    }
    else if ( minutes > 1 )
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i min", minutes];
    }
    else if (seconds > 1)
    {
        timeSinceText = [[NSString alloc] initWithFormat:@"%i s", seconds];
    }
    else
    {
        timeSinceText = @"now";
    }
    
    return timeSinceText;
}

@end
