//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/n/OverBlock.java
//
//  Created by Thomas on 7/25/13.
//

#include "tuxkids/tuxblocks/core/solve/blocks/n/ModifierBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/n/OverBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/n/TimesBlock.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksNOverBlock

- (id)initWithInt:(int)value {
  return [super initWithInt:value];
}

- (BOOL)isInverseOperationWithTuxkidsTuxblocksCoreSolveBlocksNModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksNModifierBlock *)block {
  return [block isKindOfClass:[TuxkidsTuxblocksCoreSolveBlocksNTimesBlock class]];
}

- (NSString *)toMathStringWithNSString:(NSString *)base {
  return [NSString stringWithFormat:@"(%@) / %d", base, value__];
}

@end
