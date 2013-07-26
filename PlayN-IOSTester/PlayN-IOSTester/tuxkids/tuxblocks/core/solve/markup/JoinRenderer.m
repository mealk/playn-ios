//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/JoinRenderer.java
//
//  Created by Thomas on 7/26/13.
//

#include "java/lang/Math.h"
#include "playn/core/Canvas.h"
#include "playn/core/Graphics.h"
#include "playn/core/TextFormat.h"
#include "playn/core/TextLayout.h"
#include "pythagoras/f/Vector.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/solve/markup/ExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/markup/JoinRenderer.h"
#include "tuxkids/tuxblocks/core/solve/markup/ParentExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/markup/Renderer.h"

@implementation TuxkidsTuxblocksCoreSolveMarkupJoinRenderer

@synthesize a = a_;
@synthesize b = b_;
@synthesize symbol = symbol_;

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)a
          withTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)b
                                         withNSString:(NSString *)symbol {
  if ((self = [super init])) {
    self.a = a;
    self.b = b;
    self.symbol = symbol;
  }
  return self;
}

- (int)lines {
  return [JavaLangMath maxWithInt:[((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(a_)) lines] withInt:[((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(b_)) lines]];
}

- (TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *aWriter = [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(a_)) getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *bWriter = [((TuxkidsTuxblocksCoreSolveMarkupRenderer *) nil_chk(b_)) getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  return [[TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_$1 alloc] initWithTuxkidsTuxblocksCoreSolveMarkupJoinRenderer:self withPlaynCoreTextFormat:textFormat withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:aWriter withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:bWriter];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *typedCopy = (TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *) copy;
  typedCopy.a = a_;
  typedCopy.b = b_;
  typedCopy.symbol = symbol_;
}

@end
@implementation TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_$1

@synthesize this$0 = this$0_;
@synthesize layout = layout_;
@synthesize val$aWriter = val$aWriter_;
@synthesize val$bWriter = val$bWriter_;

- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  layout_ = [((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCorePlayNObject graphics])) layoutTextWithNSString:this$0_.symbol withPlaynCoreTextFormat:textFormat];
  return [[PythagorasFVector alloc] initWithFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$aWriter_)) width] + [self spacing] + [((id<PlaynCoreTextLayout>) nil_chk(layout_)) width] + [self spacing] + [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$bWriter_)) width] withFloat:[JavaLangMath maxWithFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$aWriter_)) height] withFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$bWriter_)) height]]];
}

- (void)addChildren {
  [self addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:val$aWriter_ withFloat:0 withFloat:([self height] - [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$aWriter_)) height]) / 2];
  [self addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:val$bWriter_ withFloat:[self width] - [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$bWriter_)) width] withFloat:([self height] - [((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$bWriter_)) height]) / 2];
}

- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas {
  [super drawExpressionWithPlaynCoreCanvas:canvas];
  [self setColorWithPlaynCoreCanvas:canvas withBOOL:NO];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) fillTextWithPlaynCoreTextLayout:layout_ withFloat:[((TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *) nil_chk(val$aWriter_)) width] + [self spacing] withFloat:([self height] - [((id<PlaynCoreTextLayout>) nil_chk(layout_)) height]) / 2];
}

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupJoinRenderer:(TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *)outer$
                                  withPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
      withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$0
withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$1 {
  this$0_ = outer$;
  val$aWriter_ = capture$0;
  val$bWriter_ = capture$1;
  if ((self = [super initWithPlaynCoreTextFormat:arg$0])) {
    
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_$1 *typedCopy = (TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.layout = layout_;
  typedCopy.val$aWriter = val$aWriter_;
  typedCopy.val$bWriter = val$bWriter_;
}

@end