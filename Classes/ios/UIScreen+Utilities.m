
#import "UIScreen+Utilities.h"

@implementation UIScreen (Utilities)

+(CGRect)size{
    return [[UIScreen mainScreen] bounds];
}

+(CGRect)sizeWithoutStatusBar{
    return [[UIScreen mainScreen] applicationFrame];
}

+(float)height{
    return [UIScreen size].size.height;
}

+(float)width{
    return [UIScreen size].size.width;
}

+(BOOL)is4inch{
    CGSize screenSize = [[self mainScreen] bounds].size;
    return screenSize.width == 320.0 && screenSize.height == 568.0;
}

@end
