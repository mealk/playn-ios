//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/AbsoluteLayout.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/Iterator.h"
#include "playn/core/Asserts.h"
#include "pythagoras/f/Dimension.h"
#include "pythagoras/f/IDimension.h"
#include "pythagoras/f/IPoint.h"
#include "pythagoras/f/Point.h"
#include "pythagoras/f/Rectangle.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Elements.h"
#include "tripleplay/ui/Layout.h"
#include "tripleplay/ui/Style.h"
#include "tripleplay/ui/layout/AbsoluteLayout.h"

@implementation TripleplayUiLayoutAbsoluteLayout

static PythagorasFDimension * TripleplayUiLayoutAbsoluteLayout_ZERO_;

+ (PythagorasFDimension *)ZERO {
  return TripleplayUiLayoutAbsoluteLayout_ZERO_;
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y]];
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_];
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height]];
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  (void) [((TripleplayUiElement *) nil_chk(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:size withTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum LEFT] withTripleplayUiStyle_VAlignEnum:[TripleplayUiStyle_VAlignEnum TOP]]];
  return elem;
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign];
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign];
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height] withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign];
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  (void) [((TripleplayUiElement *) nil_chk(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:size withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign]];
  return elem;
}

+ (id)centerAtWithId:(TripleplayUiElement *)elem
           withFloat:(float)x
           withFloat:(float)y {
  return [TripleplayUiLayoutAbsoluteLayout centerAtWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y]];
}

+ (id)centerAtWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position {
  (void) [((TripleplayUiElement *) nil_chk(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum CENTER] withTripleplayUiStyle_VAlignEnum:[TripleplayUiStyle_VAlignEnum CENTER]]];
  return elem;
}

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  PythagorasFRectangle *bounds = [[PythagorasFRectangle alloc] init];
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      TripleplayUiLayoutAbsoluteLayout_Constraint *c = [TripleplayUiLayoutAbsoluteLayout constraintWithTripleplayUiElement:elem];
      id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) nil_chk(c)) psizeWithTripleplayUiLayoutAbsoluteLayout:self withTripleplayUiElement:elem];
      [((PythagorasFRectangle *) nil_chk(bounds)) addWithPythagorasFIRectangle:[[PythagorasFRectangle alloc] initWithPythagorasFIPoint:[((TripleplayUiLayoutAbsoluteLayout_Constraint *) nil_chk(c)) posWithPythagorasFIDimension:psize] withPythagorasFIDimension:psize]];
    }
  }
  return [[PythagorasFDimension alloc] initWithFloat:((PythagorasFRectangle *) nil_chk(bounds)).width_ withFloat:((PythagorasFRectangle *) nil_chk(bounds)).height_];
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      TripleplayUiLayoutAbsoluteLayout_Constraint *c = [TripleplayUiLayoutAbsoluteLayout constraintWithTripleplayUiElement:elem];
      id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) nil_chk(c)) psizeWithTripleplayUiLayoutAbsoluteLayout:self withTripleplayUiElement:elem];
      id<PythagorasFIPoint> pos = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) nil_chk(c)) posWithPythagorasFIDimension:psize];
      [self setBoundsWithTripleplayUiElement:elem withFloat:left + [((id<PythagorasFIPoint>) nil_chk(pos)) x] withFloat:top + [((id<PythagorasFIPoint>) nil_chk(pos)) y] withFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) width] withFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) height]];
    }
  }
}

+ (TripleplayUiLayoutAbsoluteLayout_Constraint *)constraintWithTripleplayUiElement:(TripleplayUiElement *)elem {
  return (TripleplayUiLayoutAbsoluteLayout_Constraint *) [PlaynCoreAsserts checkNotNullWithId:[((TripleplayUiElement *) nil_chk(elem)) constraint] withId:@"Elements in AbsoluteLayout must have a constraint."];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayUiLayoutAbsoluteLayout class]) {
    TripleplayUiLayoutAbsoluteLayout_ZERO_ = [[PythagorasFDimension alloc] initWithFloat:0 withFloat:0];
  }
}

@end
@implementation TripleplayUiLayoutAbsoluteLayout_Constraint

@synthesize position = position_;
@synthesize size = size_;
@synthesize halign = halign_;
@synthesize valign = valign_;

- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)position
      withPythagorasFIDimension:(id<PythagorasFIDimension>)size
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  if ((self = [super init])) {
    self.position = position;
    self.size = size;
    self.halign = halign;
    self.valign = valign;
  }
  return self;
}

- (id<PythagorasFIDimension>)psizeWithTripleplayUiLayoutAbsoluteLayout:(TripleplayUiLayoutAbsoluteLayout *)layout
                                               withTripleplayUiElement:(TripleplayUiElement *)elem {
  float fwidth = [((id<PythagorasFIDimension>) nil_chk(size_)) width], fheight = [((id<PythagorasFIDimension>) nil_chk(size_)) height];
  if (fwidth > 0 && fheight > 0) return size_;
  id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout *) nil_chk(layout)) preferredSizeWithTripleplayUiElement:elem withFloat:fwidth withFloat:fheight];
  if (fwidth > 0) return [[PythagorasFDimension alloc] initWithFloat:fwidth withFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) height]];
  else if (fheight > 0) return [[PythagorasFDimension alloc] initWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) width] withFloat:fheight];
  else return psize;
}

- (id<PythagorasFIPoint>)posWithPythagorasFIDimension:(id<PythagorasFIDimension>)psize {
  return [[PythagorasFPoint alloc] initWithFloat:[((id<PythagorasFIPoint>) nil_chk(position_)) x] + [((TripleplayUiStyle_HAlignEnum *) nil_chk(halign_)) offsetWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) width] withFloat:0] withFloat:[((id<PythagorasFIPoint>) nil_chk(position_)) y] + [((TripleplayUiStyle_VAlignEnum *) nil_chk(valign_)) offsetWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) height] withFloat:0]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutAbsoluteLayout_Constraint *typedCopy = (TripleplayUiLayoutAbsoluteLayout_Constraint *) copy;
  typedCopy.position = position_;
  typedCopy.size = size_;
  typedCopy.halign = halign_;
  typedCopy.valign = valign_;
}

@end
