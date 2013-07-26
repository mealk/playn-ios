//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/layer/EmptyBlockLayer.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "playn/core/Canvas.h"
#include "playn/core/CanvasImage.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/ImageLayer.h"
#include "tripleplay/util/Colors.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/solve/blocks/layer/BlockLayer.h"
#include "tuxkids/tuxblocks/core/solve/blocks/layer/EmptyBlockLayer.h"
#include "tuxkids/tuxblocks/core/utils/CanvasUtils.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksLayerEmptyBlockLayer

- (id)initWithFloat:(float)width
          withFloat:(float)height {
  if ((self = [super initWithNSString:@" " withFloat:width withFloat:height])) {
    borderWidth_ = 3;
    [self updateSize];
  }
  return self;
}

- (void)createBorderLayers {
  float length = 14;
  id<PlaynCoreCanvasImage> hBorderImage = [TuxkidsTuxblocksCoreUtilsCanvasUtils createRectWithFloat:length withFloat:1 withInt:[TripleplayUtilColors BLACK]];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(hBorderImage)) canvas])) clearRectWithFloat:0 withFloat:0 withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(hBorderImage)) width] / 2 withFloat:1];
  [((id<PlaynCoreCanvasImage>) nil_chk(hBorderImage)) setRepeatWithBOOL:YES withBOOL:YES];
  id<PlaynCoreCanvasImage> vBorderImage = [TuxkidsTuxblocksCoreUtilsCanvasUtils createRectWithFloat:1 withFloat:length withInt:[TripleplayUtilColors BLACK]];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(vBorderImage)) canvas])) clearRectWithFloat:0 withFloat:0 withFloat:1 withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(vBorderImage)) height] / 2];
  [((id<PlaynCoreCanvasImage>) nil_chk(vBorderImage)) setRepeatWithBOOL:YES withBOOL:YES];
  borderLayers_ = [IOSObjectArray arrayWithLength:4 type:[IOSClass classWithProtocol:@protocol(PlaynCoreImageLayer)]];
  for (int i = 0; i < 4; i++) {
    (void) [((IOSObjectArray *) nil_chk(borderLayers_)) replaceObjectAtIndex:i withObject:[((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCorePlayNObject graphics])) createImageLayerWithPlaynCoreImage:i % 2 == 0 ? hBorderImage : vBorderImage]];
    [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) addWithPlaynCoreLayer:[((IOSObjectArray *) nil_chk(borderLayers_)) objectAtIndex:i]];
  }
}

@end