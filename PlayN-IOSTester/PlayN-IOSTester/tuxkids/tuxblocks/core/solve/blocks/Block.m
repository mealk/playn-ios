//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/Block.java
//
//  Created by Thomas on 7/25/13.
//

#include "playn/core/Canvas.h"
#include "playn/core/CanvasImage.h"
#include "playn/core/Color.h"
#include "playn/core/Font.h"
#include "playn/core/Graphics.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/PlayN.h"
#include "playn/core/TextFormat.h"
#include "playn/core/TextLayout.h"
#include "tuxkids/tuxblocks/core/Constant.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Block.h"
#include "tuxkids/tuxblocks/core/solve/blocks/NumberBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/VariableBlock.h"
#include "tuxkids/tuxblocks/core/solve/expression/Expression.h"
#include "tuxkids/tuxblocks/core/solve/expression/ModificationOperation.h"
#include "tuxkids/tuxblocks/core/solve/expression/Number.h"
#include "tuxkids/tuxblocks/core/solve/expression/Variable.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksBlock

static PlaynCoreTextFormat * TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_;

@synthesize layer_ = layer__;

+ (int)BASE_SIZE {
  return TuxkidsTuxblocksCoreSolveBlocksBlock_BASE_SIZE;
}

+ (int)MOD_SIZE {
  return TuxkidsTuxblocksCoreSolveBlocksBlock_MOD_SIZE;
}

+ (PlaynCoreTextFormat *)textFormat {
  return TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_;
}

+ (void)setTextFormat:(PlaynCoreTextFormat *)textFormat {
  TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_ = textFormat;
}

- (float)width {
  return [((id<PlaynCoreImageLayer>) nil_chk(layer__)) width];
}

- (float)height {
  return [((id<PlaynCoreImageLayer>) nil_chk(layer__)) height];
}

- (id<PlaynCoreLayer>)layer {
  return layer__;
}

- (int)getColor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)createBlockWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)exp {
  if ([exp isKindOfClass:[TuxkidsTuxblocksCoreSolveExpressionModificationOperation class]]) {
    TuxkidsTuxblocksCoreSolveExpressionModificationOperation *modOp = (TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) exp;
    TuxkidsTuxblocksCoreSolveBlocksBaseBlock *base = [TuxkidsTuxblocksCoreSolveBlocksBlock createBlockWithTuxkidsTuxblocksCoreSolveExpressionExpression:[((TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) nil_chk(modOp)) getOperand]];
    [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk(base)) addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:modOp];
    return base;
  }
  else if ([exp isKindOfClass:[TuxkidsTuxblocksCoreSolveExpressionNumber class]]) {
    return [[TuxkidsTuxblocksCoreSolveBlocksNumberBlock alloc] initWithTuxkidsTuxblocksCoreSolveExpressionNumber:((TuxkidsTuxblocksCoreSolveExpressionNumber *) exp)];
  }
  else if ([exp isKindOfClass:[TuxkidsTuxblocksCoreSolveExpressionVariable class]]) {
    return [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithTuxkidsTuxblocksCoreSolveExpressionVariable:((TuxkidsTuxblocksCoreSolveExpressionVariable *) exp)];
  }
  return nil;
}

- (id<PlaynCoreImageLayer>)generateSpriteWithInt:(int)width
                                         withInt:(int)height
                                    withNSString:(NSString *)text
                                         withInt:(int)color {
  if (TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_ == nil) {
    id<PlaynCoreFont> font = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createFontWithNSString:[TuxkidsTuxblocksCoreConstant FONT_NAME] withPlaynCoreFont_StyleEnum:[PlaynCoreFont_StyleEnum PLAIN] withFloat:20];
    TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_ = [((PlaynCoreTextFormat *) [[PlaynCoreTextFormat alloc] init]) withFontWithPlaynCoreFont:font];
  }
  id<PlaynCoreCanvasImage> image = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageWithFloat:width withFloat:height];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setFillColorWithInt:color];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) fillRectWithFloat:0 withFloat:0 withFloat:width withFloat:height];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setStrokeColorWithInt:[PlaynCoreColor rgbWithInt:0 withInt:0 withInt:0]];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) strokeRectWithFloat:0 withFloat:0 withFloat:width - 1 withFloat:height - 1];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setFillColorWithInt:[PlaynCoreColor rgbWithInt:0 withInt:0 withInt:0]];
  id<PlaynCoreTextLayout> layout = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) layoutTextWithNSString:text withPlaynCoreTextFormat:TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_];
  float textX = ([((id<PlaynCoreCanvasImage>) nil_chk(image)) width] - [((id<PlaynCoreTextLayout>) nil_chk(layout)) width]) / 2;
  float textY = ([((id<PlaynCoreCanvasImage>) nil_chk(image)) height] - [((id<PlaynCoreTextLayout>) nil_chk(layout)) height]) / 2;
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) fillTextWithPlaynCoreTextLayout:layout withFloat:textX withFloat:textY];
  return [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageLayerWithPlaynCoreImage:image];
}

- (void)destroy {
  [((id<PlaynCoreImageLayer>) nil_chk(layer__)) destroy];
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveBlocksBlock *typedCopy = (TuxkidsTuxblocksCoreSolveBlocksBlock *) copy;
  typedCopy.layer_ = layer__;
}

@end
