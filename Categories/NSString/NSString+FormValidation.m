//
//  NSString+FormValidation.m
//  Yaank
//
//  Created by Leonard Pham on 9/13/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "NSString+FormValidation.h"

@implementation NSString (FormValidation)

+ (BOOL)isValidEmailAddressString:(NSString *)candidate
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:candidate];
}

+ (BOOL)isValidPhoneNumberString:(NSString *)candidate
{
    NSError *error = NULL;
    
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber
                                                               error:&error];
    
    NSRange inputRange = NSMakeRange(0, [candidate length]);
    
    NSArray *matches = [detector matchesInString:candidate
                                         options:0
                                           range:inputRange];
    
    // no match at all
    if ([matches count] == 0)
    {
        return NO;
    }
    
    // found match but we need to check if it matched the whole string
    NSTextCheckingResult *result = (NSTextCheckingResult *)[matches objectAtIndex:0];
    
    if ([result resultType] == NSTextCheckingTypePhoneNumber &&
        result.range.location == inputRange.location &&
        result.range.length == inputRange.length)
    {
        // it matched the whole string
        return YES;
    }
    else
    {
        // it only matched partial string
        return NO;
    }
}

@end

