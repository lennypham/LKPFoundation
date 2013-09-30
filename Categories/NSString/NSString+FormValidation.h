//
//  NSString+FormValidation.h
//  Yaank
//
//  Created by Leonard Pham on 9/13/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FormValidation)

+ (BOOL)isValidEmailAddressString:(NSString *)candidate;
+ (BOOL)isValidPhoneNumberString:(NSString *)candidate;
@end
