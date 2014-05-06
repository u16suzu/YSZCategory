
#import "NSString+Utilities.h"

@implementation NSString (Utilities)

-(BOOL)contains:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    return (range.location != NSNotFound);
}

@end
