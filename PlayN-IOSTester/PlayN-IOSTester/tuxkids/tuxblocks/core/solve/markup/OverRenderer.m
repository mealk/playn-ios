//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/OverRenderer.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSBooleanArray.h"
#include "IOSIntArray.h"
#include "java/lang/Math.h"
#include "playn/core/Canvas.h"
#include "playn/core/Font.h"
#include "playn/core/TextFormat.h"
#include "pythagoras/f/Vector.h"
#include "tuxkids/tuxblocks/core/solve/markup/ExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/markup/FactorGroupRenderer.h"
#include "tuxkids/tuxblocks/core/solve/markup/OverRenderer.h"
#include "tuxkids/tuxblocks/core/solve/markup/ParentExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/markup/Renderer.h"

@implementation TuxkidsTuxblocksCoreSolveMarkupOverRenderer

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)base
                                         withIntArray:(IOSIntArray *)operands {
  return [super initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:base withTuxkidsTuxblocksCoreSolveMarkupRenderer:[[TuxkidsTuxblocksCoreSolveMarkupFactorGroupRenderer alloc] initWithIntArray:operands]];
}

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)base
                                         withIntArray:(IOSIntArray *)operands
                                     withBooleanArray:(IOSBooleanArray *)highlights {
  return [super initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:base withTuxkidsTuxblocksCoreSolveMarkupRenderer:[[TuxkidsTuxblocksCoreSolveMarkupFactorGroupRenderer alloc] initWithIntArray:operands withBooleanArray:highlights]];
}

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)base
          withTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)factor {
  return [super initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:base withTuxkidsTuxblocksCoreSolveMarkupRenderer:factor];
}

- (int)lines {
  return [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(base_)) lines] + [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(modifier_)) lines];
}

- (TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *childWriter = [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(base_)) getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *factorWriter = [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(modifier_)) getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  return [[TuxkidsTuxblocksCoreSolveMarkupOverRenderer_$1 alloc] initWithTuxkidsTuxblocksCoreSolveMarkupOverRenderer:self withPlaynCoreTextFormat:textFormat withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:childWriter withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:factorWriter];
}

@end
@implementation TuxkidsTuxblocksCoreSolveMarkupOverRenderer_$1

@synthesize this$0 = this$0_;
@synthesize val$childWriter = val$childWriter_;
@synthesize val$factorWriter = val$factorWriter_;

- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  return [[PythagorasFVector alloc] initWithFloat:[JavaLangMath maxWithFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$childWriter_)) width] withFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$factorWriter_)) width]] withFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$childWriter_)) height] + [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$factorWriter_)) height] + [self spacing] * 2];
}

- (void)addChildren {
  [self addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:val$childWriter_ withFloat:([self width] - [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$childWriter_)) width]) / 2 withFloat:0];
  [self addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:val$factorWriter_ withFloat:([self width] - [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$factorWriter_)) width]) / 2 withFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$childWriter_)) height] + 2 * [self spacing]];
}

- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas {
  [super drawExpressionWithPlaynCoreCanvas:canvas];
  [self setColorWithPlaynCoreCanvas:canvas withBOOL:[((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(this$0_.modifier)) fullyHighlighted]];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) setStrokeWidthWithFloat:[((id<PlaynCoreFont>) nil_chk(((PlaynCoreTextFormat *) nil_chk(textFormat_)).font)) size] / 10];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) setLineCapWithPlaynCoreCanvas_LineCapEnum:[PlaynCoreCanvas_LineCapEnum ROUND]];
  float y = [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$childWriter_)) height] + [self spacing];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) drawLineWithFloat:0 withFloat:y withFloat:[self width] withFloat:y];
}

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupOverRenderer:(TuxkidsTuxblocksCoreSolveMarkupOverRenderer *)outer$
                                  withPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
      withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$0
withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$1 {
  this$0_ = outer$;
  val$childWriter_ = capture$0;
  val$factorWriter_ = capture$1;
  if ((self = [super initWithPlaynCoreTextFormat:arg$0])) {
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveMarkupOverRenderer_$1 *typedCopy = (TuxkidsTuxblocksCoreSolveMarkupOverRenderer_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$childWriter = val$childWriter_;
  typedCopy.val$factorWriter = val$factorWriter_;
}

@end