#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
    for (int i = 0; i < 7; i++)
    {
        UInt8 bitValue = n & (0x1 << i);
        if (bitValue) {
            result |= 1;
        }
        result <<= 1;
    }
    return result;
}
