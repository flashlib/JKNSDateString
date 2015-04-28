# NSString-JKNSDate
A NSString Category with NSDate convertion helper.

## API

## How to use
Just #import the UIImageView+WebCache.h header, and call the convertion function.
```
NSString *atom = @"2015-04-08 10:04:00";
NSLog([atom dateStringFromFormat:@"yyyy-MM-dd HH:mm:ss" toFormat:@"EEE', 'dd' 'MMM' 'yyyy' 'HH':'mm':'ss' 'zzz"]);
```
This will output:
```
Wed, 08 Apr 2015 10:04:00 GMT+8
```
