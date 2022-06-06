#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
//    __block int count = 0;
//    [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *number1,
//                                                          NSNumber *number2) {
//        if (abs([number1 intValue] - [number2 intValue]) == [number intValue]) {
//            count++;
//        }
//        return [number1 compare:number1];
//    }];
    
    
    NSUInteger arrayCount = array.count;
    int count = 0;
    for (int i = 0; i < arrayCount; i++){
        for (int j = i; j < arrayCount; j++){
            if (abs([array[i] intValue] - [array[j] intValue]) == [number intValue]){
                count++;
            }
        }
    }
    
    return count;
}

@end
