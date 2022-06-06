#import "ReverseBinary.h"

NSString* printBinary8(UInt8 number){
    NSString *binary = @"";
    for (int i = 1; i <= 8; i++ ){
        binary = [[NSString stringWithFormat:@"%d", number&1] stringByAppendingString:binary];
        number = number >> 1;
    }
    return binary;
}


UInt8 ReverseInteger(UInt8 n) {
    
    uint r = n;
    uint o = 85;
    uint d = 51;
    uint q = 15;
//    uint d = 4;
//    r = (r << d ) | (r >> (8 - d)); // циклический сдвиг
    
    r = ((r & o) << 1 ) | ((r >> 1) & o); // четные нечетные меняются местами
    r = ((r & d) << 2 ) | ((r >> 2) & d); // биты перетасовываются по два
    r = ((r & q) << 4 ) | ((r >> 4) & q); // биты перетасовываются по четыре
    
    NSLog(@"\n ---- %@ :  %@ - %@", @(n), printBinary8(n), printBinary8(r));

    return r;
    
}

