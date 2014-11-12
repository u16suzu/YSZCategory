
#import "NSDate+Utilities.h"

@implementation NSDate (Utilities)

+ (NSDate*)createDateWithMonthAndDay:(NSString*)monthDayString{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[NSDate date]];

    NSInteger year = [components year];

    NSString*dateStr = [NSString stringWithFormat:@"%ld_%@", (long)year, monthDayString];

    NSDateFormatter *df = [NSDateFormatter new];
    df.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ja_JP"];
    df.timeZone = [NSTimeZone timeZoneWithName:@"JST"];
    df.dateFormat = @"yyyy_M_d";

    return [df dateFromString:dateStr];
}

- (BOOL)isSameDateWith:(NSDate*)aDate{

    NSDateComponents *otherDay =
    [[NSCalendar currentCalendar] components: NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                                    fromDate:aDate];


    NSDateComponents *selfDate =
    [[NSCalendar currentCalendar] components: NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                                    fromDate:self];

    if([selfDate day] == [otherDay day] &&
       [selfDate month] == [otherDay month]){
        return YES;
    }

    return NO;
}

- (NSString*)stringDateGMT9{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comps =
    [calendar components:(NSCalendarUnitYear   |
                          NSCalendarUnitMonth  |
                          NSCalendarUnitDay    |
                          NSCalendarUnitWeekday|
                          NSCalendarUnitHour   |
                          NSCalendarUnitMinute |
                          NSCalendarUnitSecond  )
                fromDate:self];

    NSInteger month = [comps month];
    NSInteger day = [comps day];
    NSInteger weekday = [comps weekday];
    NSInteger h = [comps hour];
    NSInteger m = [comps minute];
    NSInteger s = [comps second];

    NSDateFormatter *df = [NSDateFormatter new];
    df.locale =[[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"];
    NSString *weekdaySymbol = [[df shortWeekdaySymbols] objectAtIndex:weekday - 1];
    NSString *weekdayString = [NSString stringWithFormat:@"(%@)", weekdaySymbol];

    return [NSString stringWithFormat:@"%ld/%ld/%@ %ld:%ld:%ld",
            (long)month, (long)day, weekdayString, (long)h, (long)m, (long)s];
}

@end
