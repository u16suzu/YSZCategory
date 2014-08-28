
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

    NSDateComponents *otherDay = [[NSCalendar currentCalendar] components:NSEraCalendarUnit|NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit fromDate:aDate];
    
    
    NSDateComponents *selfDate = [[NSCalendar currentCalendar] components:NSEraCalendarUnit|NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit fromDate:self];
    
    if([selfDate day] == [otherDay day] &&
       [selfDate month] == [otherDay month]){
        return YES;
    }

    return NO;
}

- (NSString*)stringDateGMT9{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comps = [calendar components:(NSYearCalendarUnit    | NSMonthCalendarUnit | NSDayCalendarUnit |
                                                    NSWeekdayCalendarUnit |  NSHourCalendarUnit | NSMinuteCalendarUnit |
                                                    NSSecondCalendarUnit  )
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
    
    return [NSString stringWithFormat:@"%d/%d/%@ %d:%d:%d",
            month, day, weekdayString, h, m, s];
}

@end
