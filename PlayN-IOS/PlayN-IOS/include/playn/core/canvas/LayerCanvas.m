//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/canvas/LayerCanvas.java
//
//  Created by Thomas on 7/25/13.
//

#include "playn/core/AbstractLayer.h"
#include "playn/core/Canvas.h"
#include "playn/core/InternalTransform.h"
#include "playn/core/canvas/LayerCanvas.h"
#include "pythagoras/f/Transform.h"

@implementation PlaynCoreCanvasLayerCanvas

- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                       withFloat:(float)parentAlpha {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform {
  return [super initWithPlaynCoreInternalTransform:xform];
}

- (void)transformWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas {
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) translateWithFloat:originX__ withFloat:originY__];
  id<PlaynCoreInternalTransform> transform = (id<PlaynCoreInternalTransform>) [self transform];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) transformWithFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) m00] withFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) m01] withFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) m10] withFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) m11] withFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) tx] - originX__ withFloat:[((id<PlaynCoreInternalTransform>) nil_chk(transform)) ty] - originY__];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) translateWithFloat:-originX__ withFloat:-originY__];
}

@end
