//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/canvas/GroupLayerCanvas.java
//
//  Created by Thomas on 7/1/13.
//

#import "AbstractLayer.h"
#import "Asserts.h"
#import "Canvas.h"
#import "GroupLayer.h"
#import "GroupLayerImpl.h"
#import "InternalTransform.h"
#import "Layer.h"
#import "LayerCanvas.h"
#import "Point.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "GroupLayerCanvas.h"

@implementation PlaynCoreCanvasGroupLayerCanvas

- (PlaynCoreGroupLayerImpl *)impl {
  return impl_;
}
- (void)setImpl:(PlaynCoreGroupLayerImpl *)impl {
  JreOperatorRetainedAssign(&impl_, self, impl);
}
@synthesize impl = impl_;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform {
  if ((self = [super initWithPlaynCoreInternalTransform:xform])) {
    JreOperatorRetainedAssign(&impl_, self, [[[PlaynCoreGroupLayerImpl alloc] init] autorelease]);
  }
  return self;
}

- (id<PlaynCoreLayer>)getWithInt:(int)index {
  return ((PlaynCoreCanvasLayerCanvas *) [((id<JavaUtilList>) NIL_CHK(impl_.children)) getWithInt:index]);
}

- (void)addWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) addWithPlaynCoreGroupLayer:self withId:(PlaynCoreCanvasLayerCanvas *) layer];
}

- (void)addAtWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                      withFloat:(float)tx
                      withFloat:(float)ty {
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) addAtWithPlaynCoreGroupLayer:self withPlaynCoreLayer:layer withFloat:tx withFloat:ty];
}

- (void)removeWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) removeWithPlaynCoreGroupLayer:self withId:(PlaynCoreCanvasLayerCanvas *) layer];
}

- (void)clear {
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) clearWithPlaynCoreGroupLayer:self];
}

- (int)size {
  return [((id<JavaUtilList>) NIL_CHK(impl_.children)) size];
}

- (void)destroy {
  [super destroy];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) destroyWithPlaynCoreGroupLayer:self];
}

- (void)onAdd {
  [super onAdd];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) onAddWithPlaynCoreGroupLayer:self];
}

- (void)onRemove {
  [super onRemove];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) onRemoveWithPlaynCoreGroupLayer:self];
}

- (id<PlaynCoreLayer>)hitTestDefaultWithPythagorasFPoint:(PythagorasFPoint *)p {
  return [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) hitTestWithPlaynCoreGroupLayer:self withPythagorasFPoint:p];
}

- (void)depthChangedWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                             withFloat:(float)oldDepth {
  [PlaynCoreAsserts checkArgumentWithBOOL:[(id) layer isKindOfClass:[PlaynCoreCanvasLayerCanvas class]]];
  [((PlaynCoreGroupLayerImpl *) NIL_CHK(impl_)) depthChangedWithPlaynCoreGroupLayer:self withPlaynCoreLayer:layer withFloat:oldDepth];
}

- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                       withFloat:(float)parentAlpha {
  if (![self visible]) return;
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) save];
  [self transformWithPlaynCoreCanvas:canvas];
  [self paintChildrenWithPlaynCoreCanvas:canvas withFloat:parentAlpha * [self alpha]];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) restore];
}

- (void)paintChildrenWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                               withFloat:(float)alpha {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(impl_.children)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      PlaynCoreCanvasLayerCanvas *child = ((PlaynCoreCanvasLayerCanvas *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((PlaynCoreCanvasLayerCanvas *) NIL_CHK(child)) paintWithPlaynCoreCanvas:canvas withFloat:alpha];
    }
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&impl_, self, nil);
  [super dealloc];
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
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) clipRectWithFloat:0 withFloat:0 withFloat:width__ withFloat:height__];
  [super paintChildrenWithPlaynCoreCanvas:canvas withFloat:alpha];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreCanvasGroupLayerCanvas_Clipped *typedCopy = (PlaynCoreCanvasGroupLayerCanvas_Clipped *) copy;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
}

@end
