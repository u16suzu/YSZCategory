
#import <UIKit/UIKit.h>

@interface UIScreen (Utilities)

+(CGRect)size;
+(CGRect)sizeWithoutStatusBar;

+(float)height;
+(float)width;

+ (BOOL)is4inch;
+ (BOOL)is35inch;

@end
