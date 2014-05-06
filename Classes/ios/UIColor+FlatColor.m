
#import "UIColor+FlatColor.h"
#import "UIColor+Utilities.h"

@implementation UIColor (FlatColor)

+(UIColor*)flatRed{
    return [UIColor colorWithRed:0.74f green:0.21f blue:0.18f alpha:1.00f];
}

+(UIColor*)flatOrange{
    return [UIColor colorWithRed:244.0f/255.0f green:153.0f/255.0f blue:108.0f/255.0f alpha:1.0f];
}

+(UIColor*)flatBlue{
    return [UIColor colorWithRed:0.18f green:0.59f blue:0.71f alpha:1.00f];
}

+(UIColor*)flatGreen{
    return [UIColor colorWithRed:0.32f green:0.64f blue:0.32f alpha:1.00f];
}

+(UIColor*)flatYellow{
    return [UIColor colorWithRed:53/255.0 green:53/255.0 blue:52/255.0 alpha:1];
}

+(UIColor*)flatLightGray{
    return [UIColor colorWithHue:0.0f saturation:0.0f brightness:0.60f alpha:1.0f];
}

+(UIColor*)flatDarkGray{
    return [UIColor colorWithRed:53/255.0 green:53/255.0 blue:52/255.0 alpha:1];
}

+(UIColor*)flatBrightnessDark{
    return [UIColor colorWithHue:0.0f saturation:0.0f brightness:1.0f alpha:1.0f];
}

+(UIColor*)flatPurple{
    return [UIColor colorWith255Red:142 green:26 blue:80 alpha:255];
}

@end
