//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/BaseBlock.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "java/util/ArrayList.h"
#import "java/util/List.h"
#import "playn/core/CanvasImage.h"
#import "playn/core/Connection.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Pointer.h"
#import "pythagoras/f/Point.h"
#import "tripleplay/util/Colors.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#import "tuxkids/tuxblocks/core/solve/blocks/Block.h"
#import "tuxkids/tuxblocks/core/solve/blocks/ModifierBlock.h"
#import "tuxkids/tuxblocks/core/solve/blocks/NumberBlock.h"
#import "tuxkids/tuxblocks/core/solve/expression/Expression.h"
#import "tuxkids/tuxblocks/core/solve/expression/ModificationOperation.h"
#import "tuxkids/tuxblocks/core/solve/expression/NonevaluatableException.h"
#import "tuxkids/tuxblocks/core/utils/CanvasUtils.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksBaseBlock

@synthesize groupLayer = groupLayer_;
@synthesize modifiers = modifiers_;
@synthesize baseExpression = baseExpression_;
@synthesize previewBlock = previewBlock_;
@synthesize simplifyCircle = simplifyCircle_;
@synthesize simplifyListener = simplifyListener_;
@synthesize nextBlockPos = nextBlockPos_;

- (BOOL)isShowingPreview {
  return previewBlock_ != nil;
}

- (void)setSimplifyListenerWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock_OnSimplifyListener:(id<TuxkidsTuxblocksCoreSolveBlocksBaseBlock_OnSimplifyListener>)simplifyListener {
  self.simplifyListener = simplifyListener;
}

- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)lastModifier {
  if ([((id<JavaUtilList>) NIL_CHK(modifiers_)) isEmpty]) return nil;
  return ((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(modifiers_)) getWithInt:[((id<JavaUtilList>) NIL_CHK(modifiers_)) size] - 1]);
}

- (TuxkidsTuxblocksCoreSolveExpressionExpression *)topLevelExpression {
  if ([((id<JavaUtilList>) NIL_CHK(modifiers_)) isEmpty]) return baseExpression_;
  return [[self lastModifier] getModifier];
}

- (BOOL)hasModifier {
  return ![((id<JavaUtilList>) NIL_CHK(modifiers_)) isEmpty];
}

- (float)groupWidth {
  TuxkidsTuxblocksCoreSolveBlocksBlock *lastModifier = [self lastModifier];
  if (lastModifier == nil) return [self width];
  return [((TuxkidsTuxblocksCoreSolveBlocksBlock *) NIL_CHK(lastModifier)) width] + [((id<PlaynCoreImageLayer>) NIL_CHK(lastModifier.layer_)) tx];
}

- (float)groupHeight {
  TuxkidsTuxblocksCoreSolveBlocksBlock *lastModifier = [self lastModifier];
  if (lastModifier == nil) return [self height];
  return -[((id<PlaynCoreImageLayer>) NIL_CHK(lastModifier.layer_)) ty];
}

- (id<PlaynCoreGroupLayer>)layer {
  return groupLayer_;
}

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)baseExpression {
  if ((self = [super init])) {
    modifiers_ = [[JavaUtilArrayList alloc] init];
    nextBlockPos_ = [[PythagorasFPoint alloc] init];
    self.baseExpression = baseExpression;
    groupLayer_ = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createGroupLayer];
    int rad = TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE / 4, padding = TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE / 4;
    id<PlaynCoreCanvasImage> simplifyImage = [TuxkidsTuxblocksCoreUtilsCanvasUtils createCircleWithFloat:rad withInt:[self getColor] withFloat:1 withInt:[TripleplayUtilColors DARK_GRAY]];
    simplifyCircle_ = [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) createImageLayerWithPlaynCoreImage:simplifyImage];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setOriginWithFloat:[((id<PlaynCoreCanvasImage>) NIL_CHK(simplifyImage)) width] / 2 withFloat:[((id<PlaynCoreCanvasImage>) NIL_CHK(simplifyImage)) height] / 2];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setDepthWithFloat:5];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setTintWithInt:[self getColor]];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setAlphaWithFloat:0.8f];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) addListenerWithPlaynCorePointer_Listener:[[TuxkidsTuxblocksCoreSolveBlocksBaseBlock_SimplifyListener alloc] initWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:self]];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setHitTesterWithPlaynCoreLayer_HitTester:[[TuxkidsTuxblocksCoreSolveBlocksBaseBlock_$1 alloc] init]];
    [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) addWithPlaynCoreLayer:simplifyCircle_];
    [self updateSimplify];
  }
  return self;
}

- (BOOL)canSimplify {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)getText {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)destroy {
  [super destroy];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) destroy];
}

- (void)updateSimplify {
  if (![self canSimplify] || [((id<JavaUtilList>) NIL_CHK(modifiers_)) isEmpty]) {
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setVisibleWithBOOL:NO];
  }
  else {
    TuxkidsTuxblocksCoreSolveBlocksModifierBlock *block = ((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(modifiers_)) getWithInt:0]);
    if ([[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(block)) getModifier] getPrecedence] == TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_ADD) {
      (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setTranslationWithFloat:[self width] withFloat:-[self height] / 2];
    }
    else {
      (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setTranslationWithFloat:[self width] / 2 withFloat:-[self height]];
    }
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(simplifyCircle_)) setVisibleWithBOOL:YES];
  }
}

- (id<PlaynCoreImageLayer>)generateSpriteWithInt:(int)width
                                         withInt:(int)height
                                    withNSString:(NSString *)text
                                         withInt:(int)color {
  id<PlaynCoreImageLayer> l = [super generateSpriteWithInt:width withInt:height withNSString:text withInt:color];
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(l)) setTyWithFloat:-[((id<PlaynCoreImageLayer>) NIL_CHK(l)) height]];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) addWithPlaynCoreLayer:l];
  return l;
}

- (void)addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:(TuxkidsTuxblocksCoreSolveExpressionModificationOperation *)mod {
  [self addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:mod withBOOL:NO];
}

- (void)addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:(TuxkidsTuxblocksCoreSolveExpressionModificationOperation *)mod
                                                                       withBOOL:(BOOL)isPreview {
  TuxkidsTuxblocksCoreSolveBlocksModifierBlock *modBlock;
  if ([((TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) NIL_CHK(mod)) getPrecedence] == TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_ADD) {
    modBlock = [[TuxkidsTuxblocksCoreSolveBlocksModifierBlock alloc] initWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:mod withInt:TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE withInt:(int) [self groupHeight]];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(modBlock.layer_)) setTxWithFloat:[self groupWidth]];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(modBlock.layer_)) setTyWithFloat:-[self groupHeight]];
    [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) addWithPlaynCoreLayer:((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(modBlock)).layer_];
  }
  else {
    modBlock = [[TuxkidsTuxblocksCoreSolveBlocksModifierBlock alloc] initWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:mod withInt:(int) [self groupWidth] withInt:TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(modBlock.layer_)) setTyWithFloat:-[self groupHeight] - [((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(modBlock)) height]];
  }
  [((TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) NIL_CHK(mod)) setOperandWithTuxkidsTuxblocksCoreSolveExpressionExpression:[self topLevelExpression]];
  if (isPreview) {
    if (previewBlock_ != nil) {
      [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) removeWithPlaynCoreLayer:[previewBlock_ layer]];
    }
    previewBlock_ = modBlock;
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(previewBlock_.layer_)) setAlphaWithFloat:0.5f];
  }
  else {
    [((id<JavaUtilList>) NIL_CHK(modifiers_)) addWithId:modBlock];
  }
  [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) addWithPlaynCoreLayer:((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(modBlock)).layer_];
  [self updateSimplify];
}

- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)pop {
  if ([((id<JavaUtilList>) NIL_CHK(modifiers_)) size] == 0) return nil;
  TuxkidsTuxblocksCoreSolveBlocksModifierBlock *modBlock = ((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(modifiers_)) removeWithInt:[((id<JavaUtilList>) NIL_CHK(modifiers_)) size] - 1]);
  [[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(modBlock)) getModifier] setOperandWithTuxkidsTuxblocksCoreSolveExpressionExpression:nil];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) removeWithPlaynCoreLayer:((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(modBlock)).layer_];
  [self updateSimplify];
  return modBlock;
}

- (PythagorasFPoint *)getNextBlockPosWithInt:(int)precidence {
  if (precidence == TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_ADD) {
    return [((PythagorasFPoint *) NIL_CHK(nextBlockPos_)) setWithFloat:[((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) tx] + [self groupWidth] + TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE / 2 withFloat:[((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) ty] - [self groupHeight] / 2];
  }
  else {
    return [((PythagorasFPoint *) NIL_CHK(nextBlockPos_)) setWithFloat:[((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) tx] + [self groupWidth] / 2 withFloat:[((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) ty] - [self groupHeight] - TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE / 2];
  }
}

- (void)updateShowPreviewWithFloat:(float)cx
                         withFloat:(float)cy
withTuxkidsTuxblocksCoreSolveExpressionModificationOperation:(TuxkidsTuxblocksCoreSolveExpressionModificationOperation *)mod {
  PythagorasFPoint *nextPos = [self getNextBlockPosWithInt:[((TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) NIL_CHK(mod)) getPrecedence]];
  BOOL showPreview = [((PythagorasFPoint *) NIL_CHK(nextPos)) distanceWithFloat:cx withFloat:cy] < TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE * 2;
  if (!showPreview) {
    [self stopShowingPreview];
  }
  else if (previewBlock_ == nil || [((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(previewBlock_)) getModifier] != mod) {
    [self addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:mod withBOOL:YES];
  }
}

- (void)stopShowingPreview {
  if (previewBlock_ != nil) [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) removeWithPlaynCoreLayer:[previewBlock_ layer]];
  previewBlock_ = nil;
}

- (NSString *)description {
  return [((id<JavaUtilList>) NIL_CHK(modifiers_)) description];
}

- (id)toMathString {
  return [[self topLevelExpression] toMathString];
}

- (void)simplfyWithInt:(int)to {
  TuxkidsTuxblocksCoreSolveBlocksModifierBlock *remove = ((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(modifiers_)) removeWithInt:0]);
  if (![((id<JavaUtilList>) NIL_CHK(modifiers_)) isEmpty]) {
    [[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(modifiers_)) getWithInt:0]) getModifier] setOperandWithTuxkidsTuxblocksCoreSolveExpressionExpression:baseExpression_];
  }
  float width = [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) width], height = [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) height];
  if ([[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(remove)) getModifier] getPrecedence] == TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_ADD) {
    width += TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE;
  }
  else {
    height += TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE;
  }
  [((TuxkidsTuxblocksCoreSolveBlocksNumberBlock *) self) setValueWithInt:to];
  [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) destroy];
  [((id<PlaynCoreImageLayer>) [((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) NIL_CHK(remove)) layer]) destroy];
  layer__ = [self generateSpriteWithInt:(int) width withInt:(int) height withNSString:[self getText] withInt:[self getColor]];
  [self updateSimplify];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksBaseBlock *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) copy;
  typedCopy.groupLayer = groupLayer_;
  typedCopy.modifiers = modifiers_;
  typedCopy.baseExpression = baseExpression_;
  typedCopy.previewBlock = previewBlock_;
  typedCopy.simplifyCircle = simplifyCircle_;
  typedCopy.simplifyListener = simplifyListener_;
  typedCopy.nextBlockPos = nextBlockPos_;
}

@end
@implementation TuxkidsTuxblocksCoreSolveBlocksBaseBlock_SimplifyListener

@synthesize this$0 = this$0_;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  float dx = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) width] / 2 - [((id<PlaynCorePointer_Event>) NIL_CHK(event)) localX];
  float dy = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) height] / 2 - [((id<PlaynCorePointer_Event>) NIL_CHK(event)) localY];
  float rad = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) width] / 2;
  if (dx * dx + dy * dy > rad * rad) {
  }
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  float dx = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) width] / 2 - [((id<PlaynCorePointer_Event>) NIL_CHK(event)) localX];
  float dy = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) height] / 2 - [((id<PlaynCorePointer_Event>) NIL_CHK(event)) localY];
  float rad = [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.simplifyCircle)) width] * 2;
  if (dx * dx + dy * dy < rad * rad) {
    if (this$0_.simplifyListener != nil && ![((id<JavaUtilList>) NIL_CHK(this$0_.modifiers)) isEmpty]) {
      NSString *exp = [[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(this$0_.modifiers)) getWithInt:0]) getModifier] toMathString];
      int answer = 0;
      int start = 0;
      @try {
        answer = [[((TuxkidsTuxblocksCoreSolveBlocksModifierBlock *) [((id<JavaUtilList>) NIL_CHK(this$0_.modifiers)) getWithInt:0]) getModifier] evaluate];
        start = [((TuxkidsTuxblocksCoreSolveExpressionExpression *) NIL_CHK(this$0_.baseExpression)) evaluate];
      }
      @catch (TuxkidsTuxblocksCoreSolveExpressionNonevaluatableException *e) {
        [((TuxkidsTuxblocksCoreSolveExpressionNonevaluatableException *) NIL_CHK(e)) printStackTrace];
      }
      [((id<TuxkidsTuxblocksCoreSolveBlocksBaseBlock_OnSimplifyListener>) NIL_CHK(this$0_.simplifyListener)) onSimplifyWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:this$0_ withNSString:[NSString stringWithFormat:@"%@ = %%", exp] withInt:answer withInt:start];
    }
  }
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
}

- (id)initWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksBaseBlock_SimplifyListener *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksBaseBlock_SimplifyListener *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TuxkidsTuxblocksCoreSolveBlocksBaseBlock_$1

- (id<PlaynCoreLayer>)hitTestWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                           withPythagorasFPoint:(PythagorasFPoint *)p {
  float r = 12;
  r += 12;
  float dx = ((PythagorasFPoint *) NIL_CHK(p)).x_ - 12;
  float dy = ((PythagorasFPoint *) NIL_CHK(p)).y_ - 12;
  if (dx * dx + dy * dy < r * r) {
    return layer;
  }
  return nil;
}

- (id)init {
  return [super init];
}

@end
