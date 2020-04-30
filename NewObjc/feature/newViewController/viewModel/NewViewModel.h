//
//  NewViewModel.h
//  NewObjc
//
//  Created by Song on 29/04/20.
//  Copyright © 2020 Adriano Song. All rights reserved.
//

#import <Foundation/Foundation.h>

enum NewCellType {Type1, Type2};

@interface NewViewModel : NSObject

@property (nonatomic, copy) NSArray *cellTypeArray;

- (NSUInteger) tableCount;
- (NSString*) getCellIndentifier:(NSUInteger)byIndex;

@end
