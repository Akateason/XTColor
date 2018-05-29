//
//  UIColor+XTAddition.m
//  XTColor
//
//  Created by teason23 on 2018/5/29.
//  Copyright © 2018年 teason23. All rights reserved.
//

#import "UIColor+XTAddition.h"

@implementation UIColor (XTAddition)

+ (UIColor *)colorBetweengGradientColor:(UIColor *)startColor
                               andColor:(UIColor *)endColor
                                percent:(CGFloat)percent
{
    double resultRed = startColor.CIColor.red + percent * (endColor.CIColor.red - startColor.CIColor.red);
    double resultGreen = startColor.CIColor.green + percent * (endColor.CIColor.green - startColor.CIColor.green);
    double resultBlue = startColor.CIColor.blue + percent * (endColor.CIColor.blue - startColor.CIColor.blue);
    return [UIColor colorWithRed:(resultRed)/255.0 green:(resultGreen)/255.0 blue:(resultBlue)/255.0 alpha:(1.0)] ;
}

@end



@implementation UIColor (HexString)

+ (UIColor *)colorWithHexString:(NSString *)color {
    return  color ? [self colorWithHexString:color alpha:1.] : nil ;
}

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(float)alpha {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //r
    NSString *rString = [cString substringWithRange:range];
    
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:alpha];
}

@end
