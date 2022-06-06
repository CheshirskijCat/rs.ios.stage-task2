#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if(numbersArray == nil || numbersArray.count == 0) return @"";
        
    NSArray *sorted = [numbersArray sortedArrayUsingSelector:@selector(compare:)];
    
    if ([sorted[0] intValue] < 0) return @"Negative numbers are not valid for input.";;
    if ([sorted[sorted.count-1] intValue] > 255) return @"The numbers in the input array can be in the range from 0 to 255.";
        
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@0, @0, @0, @0]];
    
    NSUInteger count = array.count;
    if (numbersArray.count < count){ count = numbersArray.count; }
    for (int i = 0 ; i < count ; i++){
        [array replaceObjectAtIndex:i withObject:@([numbersArray[i] intValue])];
    }
    return [array componentsJoinedByString:@"."];
}

@end
