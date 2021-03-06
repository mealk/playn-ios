//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/canvas/GroupLayerCanvas.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "playn/core/AbstractLayer.h"
#include "playn/core/Asserts.h"
#include "playn/core/Canvas.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/GroupLayerImpl.h"
#include "playn/core/InternalTransform.h"
#include "playn/core/Layer.h"
#include "playn/core/canvas/GroupLayerCanvas.h"
#include "playn/core/canvas/LayerCanvas.h"
#include "pythagoras/f/Point.h"

@implementation PlaynCoreCanvasGroupLayerCanvas

@synthesize impl = impl_;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform {
  if ((self = [super initWithPlaynCoreInternalTransform:xform])) {
    impl_ = [[PlaynCoreGroupLayerImpl alloc] init];
  }
  return self;
}

- (id<PlaynCoreLayer>)getWithInt:(int)index {
  return [((id<JavaUtilList>) nil_chk(((PlaynCoreGroupLayerImpl *) nil_chk(impl_)).children)) getWithInt:index];
}

- (void)addWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) addWithPlaynCoreGroupLayer:self withId:(PlaynCoreCanvasLayerCanvas *) layer];
}

- (void)addAtWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                      withFloat:(float)tx
                      withFloat:(float)ty {
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) addAtWithPlaynCoreGroupLayer:self withPlaynCoreLayer:layer withFloat:tx withFloat:ty];
}

- (void)removeWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) removeWithPlaynCoreGroupLayer:self withId:(PlaynCoreCanvasLayerCanvas *) layer];
}

- (void)clear {
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) clearWithPlaynCoreGroupLayer:self];
}

- (int)size {
  return [((id<JavaUtilList>) nil_chk(((PlaynCoreGroupLayerImpl *) nil_chk(impl_)).children)) size];
}

- (void)destroy {
  [super destroy];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) destroyWithPlaynCoreGroupLayer:self];
}

- (void)onAdd {
  [super onAdd];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) onAddWithPlaynCoreGroupLayer:self];
}

- (void)onRemove {
  [super onRemove];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) onRemoveWithPlaynCoreGroupLayer:self];
}

- (id<PlaynCoreLayer>)hitTestDefaultWithPythagorasFPoint:(PythagorasFPoint *)p {
  return [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) hitTestWithPlaynCoreGroupLayer:self withPythagorasFPoint:p];
}

- (void)depthChangedWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                             withFloat:(float)oldDepth {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) nil_chk(impl_)) depthChangedWithPlaynCoreGroupLayer:self withPlaynCoreLayer:layer withFloat:oldDepth];
}

- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                       withFloat:(float)parentAlpha {
  if (![self visible]) return;
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) save];
  [self transformWithPlaynCoreCanvas:canvas];
  [self paintChildrenWithPlaynCoreCanvas:canvas withFloat:parentAlpha * [self alpha]];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) restore];
}

- (void)paintChildrenWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                               withFloat:(float)alpha {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(((PlaynCoreGroupLayerImpl *) nil_chk(impl_)).children)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      PlaynCoreCanvasLayerCanvas *child = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      [((PlaynCoreCanvasLayerCanvas *) nil_chk(child)) paintWithPlaynCoreCanvas:canvas withFloat:alpha];
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreCanvasGroupLayerCanvas *typedCopy = (PlaynCoreCanvasGroupLayerCanvas *) copy;
  typedCopy.impl = impl_;
}

@end
@implementation PlaynCoreCanvasGroupLayerCanvas_Clipped

@synthesize width_ = width__;
@synthesize height_ = height__;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                               withFloat:(float)width
                               withFloat:(float)height {
  if ((self = [super initWithPlaynCoreInternalTransform:xform])) {
    self.width_ = width;
    self.height_ = height;
  }
  return self;
}

- (void)setSizeWithFloat:(float)width
               withFloat:(float)height {
  self.width_ = width;
  self.height_ = height;
}

- (void)setWidthWithFloat:(float)width {
  self.width_ = width;
}

- (void)setHeightWithFloat:(float)height {
  self.height_ = height;
}

- (float)width {
  return self.width_;
}

- (float)height {
  return self.height_;
}

- (float)scaledWidth {
  return [self scaleX] * [self width];
}

- (float)scaledHeight {
  return [self scaleY] * [self height];
}

- (void)paintChildrenWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                               withFloat:(float)alpha {
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) clipRectWithFloat:0 withFloat:0 withFloat:width__ withFloat:height__];
  [super paintChildrenWithPlaynCoreCanvas:canvas withFloat:alpha];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreCanvasGroupLayerCanvas_Clipped *typedCopy = (PlaynCoreCanvasGroupLayerCanvas_Clipped *) copy;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
}

@end
