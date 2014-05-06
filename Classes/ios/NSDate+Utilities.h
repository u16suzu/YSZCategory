
#import <Foundation/Foundation.h>

@interface NSDate (Utilities)
+ (NSDate*)createDateWithMonthAndDay:(NSString*)monthDayString;
// Check whether same month and same day. It does not check year.
- (BOOL)isSameDateWith:(NSDate*)date;
@end