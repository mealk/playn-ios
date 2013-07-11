//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/NumberBlock.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/Color.h"
#import "playn/core/ImageLayer.h"
#import "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#import "tuxkids/tuxblocks/core/solve/blocks/Block.h"
#import "tuxkids/tuxblocks/core/solve/blocks/NumberBlock.h"
#import "tuxkids/tuxblocks/core/solve/expression/Number.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksNumberBlock

@synthesize number = number_;

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionNumber:(TuxkidsTuxblocksCoreSolveExpressionNumber *)number {
  if ((self = [super initWithTuxkidsTuxblocksCoreSolveExpressionExpression:number])) {
    self.number = number;
    layer__ = [self generateSpriteWithInt:TuxkidsTuxblocksCoreSolveBlocksBlock_BASE_SIZE withInt:TuxkidsTuxblocksCoreSolveBlocksBlock_BASE_SIZE withNSString:[NSString stringWithFormat:@"%d", [((TuxkidsTuxblocksCoreSolveExpressionNumber *) NIL_CHK(number)) getValue]] withInt:[self getColor]];
  }
  return self;
}

- (BOOL)canSimplify {
  return YES;
}

- (int)getColor {
  return [PlaynCoreColor rgbWithInt:200 withInt:0 withInt:200];
}

- (NSString *)getText {
  return [((TuxkidsTuxblocksCoreSolveExpressionNumber *) NIL_CHK(number_)) toMathString];
}

- (void)setValueWithInt:(int)value {
  [((TuxkidsTuxblocksCoreSolveExpressionNumber *) NIL_CHK(number_)) setValueWithInt:value];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksNumberBlock *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksNumberBlock *) copy;
  typedCopy.number = number_;
}

@end
