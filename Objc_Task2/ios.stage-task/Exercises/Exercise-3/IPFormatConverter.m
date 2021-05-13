#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    for (NSNumber *number in numbersArray) {
        int intValue = number.intValue;
        if (intValue > 0xFF) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if (intValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    int fourth = 0;
    int third = 0;
    int second = 0;
    int first = 0;
    switch (numbersArray.count) {
        case 4:
            fourth = [(NSNumber*)[numbersArray objectAtIndex:3] intValue];
        case 3:
            third = [(NSNumber*)[numbersArray objectAtIndex:2] intValue];
        case 2:
            second = [(NSNumber*)[numbersArray objectAtIndex:1] intValue];
        case 1:
            first = [(NSNumber*)[numbersArray objectAtIndex:0] intValue];
            break;
        default:
            return @"";;
    }
    NSString* string = [NSString stringWithFormat:@"%d.%d.%d.%d", first, second, third, fourth];
    return string;
}

@end
