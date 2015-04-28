//
//  NSString+NSString_JKNSDate.m
//  
//
//  Created by Jacky on 15-4-28.
//
//

#import "NSString+JKNSDate.h"

@implementation NSString (NSString_JKNSDate)
- (NSString *)dateStringFromFormat:(NSString *)format toFormat:(NSString *)targetFormat
{
    NSDateFormatter* dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:format];
    NSDate *date = [dateFormatter dateFromString:self];
    
    NSDateFormatter *targetFormatter = [NSDateFormatter alloc] init];
    [formatter setDateFormat:targetFormat];
    return [formatter stringFromDate:date];
}

- (NSDate *)dateFromStringWithFormat:(NSString *)format
{
    NSDateFormatter* dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:format];
    return [dateFormatter dateFromString:self];
}

- (NSDate *)rssDateValue
{
    return [self dateFromStringWithFormat:@"EEE', 'dd' 'MMM' 'yyyy' 'HH':'mm':'ss' 'zzz"];
}

- (NSDate *)atomDateValue
{
    NSDate* date = [self dateFromStringWithFormat:@"yyyy-MM-dd HH:mm:ss"];
    if (date == nil)
    {
        date = [self dateFromStringWithFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
        if (date == nil)
        {
            date = [self dateFromStringWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
        }
    }
    
    return date;
}

- (NSDate *)xmlrpcDateValue
{
    NSDate* date = [self dateFromStringWithFormat:@"yyyyMMdd HH:mm:ss"];
    if (date == nil)
    {
        date = [self dateFromStringWithFormat:@"yyyyMMdd'T'HH:mm:ss'Z'"];
    }
    
    return date;
}
@end
