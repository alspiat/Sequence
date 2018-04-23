//
//  Sequence.h
//  Sequence
//
//  Created by Алексей on 23.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sequence : NSObject
{
    NSArray *_array;
}

-(instancetype)initWithArray: (NSArray*) array;
-(NSNumber*) summ;

@end
