//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/Equation.java
//
//  Created by Thomas on 7/26/13.
//

#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Equation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Sprite.h"
#include "tuxkids/tuxblocks/core/solve/markup/BaseRenderer.h"
#include "tuxkids/tuxblocks/core/solve/markup/JoinRenderer.h"
#include "tuxkids/tuxblocks/core/solve/markup/Renderer.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksEquation

@synthesize leftSide_ = leftSide__;
@synthesize rightSide_ = rightSide__;
@synthesize renderer_ = renderer__;

- (id<JavaUtilList>)leftSide {
  return leftSide__;
}

- (id<JavaUtilList>)rightSide {
  return rightSide__;
}

- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)renderer {
  if (renderer__ == nil) renderer__ = [self createRenderer];
  return renderer__;
}

- (id)initWithJavaUtilList:(id<JavaUtilList>)leftSide
          withJavaUtilList:(id<JavaUtilList>)rightSide {
  if ((self = [super init])) {
    self.leftSide_ = leftSide;
    self.rightSide_ = rightSide;
  }
  return self;
}

- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)createRenderer {
  TuxkidsTuxblocksCoreSolveMarkupRenderer *lhs = [self getRendererWithJavaUtilList:leftSide__];
  TuxkidsTuxblocksCoreSolveMarkupRenderer *rhs = [self getRendererWithJavaUtilList:rightSide__];
  return [[TuxkidsTuxblocksCoreSolveMarkupJoinRenderer alloc] initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:lhs withTuxkidsTuxblocksCoreSolveMarkupRenderer:rhs withNSString:@"="];
}

- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)getRendererWithJavaUtilList:(id<JavaUtilList>)side {
  TuxkidsTuxblocksCoreSolveMarkupRenderer *renderer = nil;
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(side)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TuxkidsTuxblocksCoreSolveBlocksBaseBlock *base = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      TuxkidsTuxblocksCoreSolveMarkupRenderer *toAdd = [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk(base)) createRenderer];
      if (renderer == nil) renderer = toAdd;
      else {
        renderer = [[TuxkidsTuxblocksCoreSolveMarkupJoinRenderer alloc] initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:renderer withTuxkidsTuxblocksCoreSolveMarkupRenderer:toAdd withNSString:@"+"];
      }
    }
  }
  if (renderer == nil) renderer = [[TuxkidsTuxblocksCoreSolveMarkupBaseRenderer alloc] initWithNSString:@"0"];
  return renderer;
}

- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode {
}

- (TuxkidsTuxblocksCoreSolveBlocksEquation *)copy__ OBJC_METHOD_FAMILY_NONE {
  TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *builder = [[TuxkidsTuxblocksCoreSolveBlocksEquation_Builder alloc] init];
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(leftSide__)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TuxkidsTuxblocksCoreSolveBlocksBaseBlock *block = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      (void) [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk(builder)) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk(block)) copy__]];
    }
  }
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(rightSide__)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TuxkidsTuxblocksCoreSolveBlocksBaseBlock *block = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      (void) [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk(builder)) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk(block)) copy__]];
    }
  }
  return [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk(builder)) createEquation];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksEquation *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksEquation *) copy;
  typedCopy.leftSide_ = leftSide__;
  typedCopy.rightSide_ = rightSide__;
  typedCopy.renderer_ = renderer__;
}

@end
@implementation TuxkidsTuxblocksCoreSolveBlocksEquation_Builder

@synthesize leftSide = leftSide_;
@synthesize rightSide = rightSide_;

- (TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *)addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)block {
  [((id<JavaUtilList>) nil_chk(leftSide_)) addWithId:block];
  return self;
}

- (TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *)addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)block {
  [((id<JavaUtilList>) nil_chk(rightSide_)) addWithId:block];
  return self;
}

- (TuxkidsTuxblocksCoreSolveBlocksEquation *)createEquation {
  return [[TuxkidsTuxblocksCoreSolveBlocksEquation alloc] initWithJavaUtilList:leftSide_ withJavaUtilList:rightSide_];
}

- (id)init {
  if ((self = [super init])) {
    leftSide_ = [[JavaUtilArrayList alloc] init];
    rightSide_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) copy;
  typedCopy.leftSide = leftSide_;
  typedCopy.rightSide = rightSide_;
}

@end