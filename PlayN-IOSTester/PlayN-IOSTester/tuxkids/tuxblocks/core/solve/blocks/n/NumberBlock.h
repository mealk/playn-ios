//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/n/NumberBlock.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksNNumberBlock_H_
#define _TuxkidsTuxblocksCoreSolveBlocksNNumberBlock_H_

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/n/BaseBlock.h"

@interface TuxkidsTuxblocksCoreSolveBlocksNNumberBlock : TuxkidsTuxblocksCoreSolveBlocksNBaseBlock {
 @public
  int value_;
}

@property (nonatomic, assign) int value;

- (id)initWithInt:(int)value;
- (BOOL)isNumber;
- (NSString *)toMathString;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksNNumberBlock_H_
