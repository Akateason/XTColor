//
//  XTColor.h
//  XTColor
//
//  Created by teason23 on 2018/2/26.
//  Copyright © 2018年 teason23. All rights reserved.
//

#ifndef XTColor_h
#define XTColor_h

#import "UIColor+AllColors.h"
#import "XTColorFetcher.h"
#import "UIColor+HexString.h"


#undef  UIColorRGBA(r, g, b, a)
#define UIColorRGBA(r, g, b, a)         [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#undef  UIColorRGB(r, g, b)
#define UIColorRGB(r, g, b)             UIColorRGBA(r, g, b, 1.0)

#undef  UIColorHex(X)
#define UIColorHex(X)                   [UIColor colorWithHexString:X]

#undef  UIColorHexA(X,a)
#define UIColorHexA(X,a)                [UIColor colorWithHexString:X alpha:a]


#endif /* XTColor_h */
