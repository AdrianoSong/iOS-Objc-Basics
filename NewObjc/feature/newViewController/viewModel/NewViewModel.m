//
//  NewViewModel.m
//  NewObjc
//
//  Created by Song on 29/04/20.
//  Copyright © 2020 Adriano Song. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewViewModel.h"

@interface NewViewModel()

@end

@implementation NewViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cellTypeArray = [NSArray arrayWithObjects:
                          [NSNumber numberWithInt: Type1],
                          [NSNumber numberWithInt: Type2],
                          [NSNumber numberWithInt: Type1],
                          [NSNumber numberWithInt: Type2],
                          [NSNumber numberWithInt: Type1],
                          [NSNumber numberWithInt: Type2],
                          [NSNumber numberWithInt: Type2],
                          [NSNumber numberWithInt: Type2],
                          nil];
    }
    return self;
}

- (NSUInteger) tableCount {
    return _cellTypeArray.count;
}

- (NSString*) getCellIndentifier:(NSUInteger)byIndex {

    switch ([[_cellTypeArray objectAtIndex: byIndex] intValue]) {
        case Type1:
            return @"cell1";

        case Type2:
            return @"cell2";

        default:
            return @"";
    }
}

@end
