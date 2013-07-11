//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/Block.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/Canvas.h"
#import "playn/core/CanvasImage.h"
#import "playn/core/Color.h"
#import "playn/core/Font.h"
#import "playn/core/Graphics.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/TextFormat.h"
#import "playn/core/TextLayout.h"
#import "tuxkids/tuxblocks/core/Constant.h"
#import "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#import "tuxkids/tuxblocks/core/solve/blocks/Block.h"
#import "tuxkids/tuxblocks/core/solve/blocks/NumberBlock.h"
#import "tuxkids/tuxblocks/core/solve/blocks/VariableBlock.h"
#import "tuxkids/tuxblocks/core/solve/expression/Expression.h"
#import "tuxkids/tuxblocks/core/solve/expression/ModificationOperation.h"
#import "tuxkids/tuxblocks/core/solve/expression/Number.h"
#import "tuxkids/tuxblocks/core/solve/expression/Variable.h"

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
  return [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) width];
}

- (float)height {
  return [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) height];
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
    TuxkidsTuxblocksCoreSolveBlocksBaseBlock *base = [TuxkidsTuxblocksCoreSolveBlocksBlock createBlockWithTuxkidsTuxblocksCoreSolveExpressionExpression:[((TuxkidsTuxblocksCoreSolveExpressionModificationOperation *) NIL_CHK(modOp)) getOperand]];
    [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) NIL_CHK(base)) addModifierWithTuxkidsTuxblocksCoreSolveExpressionModificationOperation:modOp];
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
    id<PlaynCoreFont> font = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createFontWithNSString:[TuxkidsTuxblocksCoreConstant FONT_NAME] withPlaynCoreFont_StyleEnum:[PlaynCoreFont_StyleEnum PLAIN] withFloat:20];
    TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_ = [((PlaynCoreTextFormat *) [[PlaynCoreTextFormat alloc] init]) withFontWithPlaynCoreFont:font];
  }
  id<PlaynCoreCanvasImage> image = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageWithFloat:width withFloat:height];
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) setFillColorWithInt:color];
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) fillRectWithFloat:0 withFloat:0 withFloat:width withFloat:height];
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) setStrokeColorWithInt:[PlaynCoreColor rgbWithInt:0 withInt:0 withInt:0]];
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) strokeRectWithFloat:0 withFloat:0 withFloat:width - 1 withFloat:height - 1];
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) setFillColorWithInt:[PlaynCoreColor rgbWithInt:0 withInt:0 withInt:0]];
  id<PlaynCoreTextLayout> layout = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) layoutTextWithNSString:text withPlaynCoreTextFormat:TuxkidsTuxblocksCoreSolveBlocksBlock_textFormat_];
  float textX = ([((id<PlaynCoreCanvasImage>) NIL_CHK(image)) width] - [((id<PlaynCoreTextLayout>) NIL_CHK(layout)) width]) / 2;
  float textY = ([((id<PlaynCoreCanvasImage>) NIL_CHK(image)) height] - [((id<PlaynCoreTextLayout>) NIL_CHK(layout)) height]) / 2;
  (void) [((id<PlaynCoreCanvas>) [((id<PlaynCoreCanvasImage>) NIL_CHK(image)) canvas]) fillTextWithPlaynCoreTextLayout:layout withFloat:textX withFloat:textY];
  return [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageLayerWithPlaynCoreImage:image];
}

- (void)destroy {
  [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) destroy];
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
