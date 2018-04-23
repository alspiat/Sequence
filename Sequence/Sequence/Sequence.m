//
//  Sequence.m
//  Sequence
//
//  Created by Алексей on 23.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "Sequence.h"

@implementation Sequence

-(NSNumber *)summ {
    return [_array valueForKeyPath:@"@sum.self"];
}

-(instancetype)initWithArray: (NSArray*) array
{
    self = [super init];
    if (self) {
        [array retain];
        _array = array;
    }
    return self;
}

-(void)dealloc {
    [_array release];
    [super dealloc];
}

@end
