
#import "UIColor+Utilities.h"

@implementation UIColor (Utilities)
+ (UIColor*)colorWith255Red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:alpha/255];
}

+ (UIColor*)pokopanBackgroundColor{
    return [UIColor colorWith255Red:253 green:241 blue:237 alpha:255];
}

@end
