#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *result = [NSMutableArray new];
    if (array == nil) return result;
    
    NSMutableArray *strings = [NSMutableArray new];
    NSMutableArray *numbers = [NSMutableArray new];
    for (int i=0; i<array.count; i++){
        if ([[array objectAtIndex:i] isKindOfClass:[NSArray class]]){
            NSArray *innerArray = [array objectAtIndex:i];
            for (NSObject *grandchild in innerArray){
                if ([grandchild isKindOfClass:[NSNumber class]]){
                    [numbers addObject:grandchild];
                }
                if ([grandchild isKindOfClass:[NSString class]]){
                    [strings addObject:grandchild];
                }
            }
        }
    }
    
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES selector:@selector(compare:)];

    if (numbers.count > 0) { [result addObjectsFromArray:[numbers sortedArrayUsingSelector:@selector(compare:)]]; }
    if (strings.count > 0) { [result addObjectsFromArray:[strings sortedArrayUsingDescriptors:@[sort]]]; }
    return result;
}

@end
