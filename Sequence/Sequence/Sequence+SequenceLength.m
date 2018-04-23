//
//  Sequence+SequenceLength.m
//  Sequence
//
//  Created by Алексей on 23.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "Sequence+SequenceLength.h"

@implementation Sequence(SequenceLength)

-(NSUInteger)sequenceLength {
    
    NSArray *sortedArray = [_array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    NSUInteger length = 1;
    
    // The temporary value of the maximum length of the sequence
    NSUInteger maxLength = 1;
    
    for (int i = 0; i < (sortedArray.count - 1); i++) {
        NSInteger item = [[sortedArray objectAtIndex:i] integerValue];
        NSInteger nextItem = [[sortedArray objectAtIndex:i + 1] integerValue];
        
        if (item == nextItem - 1) {
            maxLength++;
        } else if (item == nextItem) {
            continue;
        } else {
            maxLength = 1;
        }
        
        if (maxLength > length) {
            length = maxLength;
        }
    }
    
    return length;
}

@end
