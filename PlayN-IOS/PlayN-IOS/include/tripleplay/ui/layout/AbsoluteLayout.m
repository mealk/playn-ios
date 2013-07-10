//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/AbsoluteLayout.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/util/Iterator.h"
#import "playn/core/Asserts.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/IDimension.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Rectangle.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Elements.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/Style.h"
#import "tripleplay/ui/layout/AbsoluteLayout.h"

@implementation TripleplayUiLayoutAbsoluteLayout

static PythagorasFDimension * TripleplayUiLayoutAbsoluteLayout_ZERO_;

+ (PythagorasFDimension *)ZERO {
  return TripleplayUiLayoutAbsoluteLayout_ZERO_;
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y]]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height]]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  (void) [((TripleplayUiElement *) NIL_CHK(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:size withTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum LEFT] withTripleplayUiStyle_VAlignEnum:[TripleplayUiStyle_VAlignEnum TOP]]];
  return elem;
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout atWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y] withPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height] withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign]);
}

+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign {
  (void) [((TripleplayUiElement *) NIL_CHK(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:size withTripleplayUiStyle_HAlignEnum:halign withTripleplayUiStyle_VAlignEnum:valign]];
  return elem;
}

+ (id)centerAtWithId:(TripleplayUiElement *)elem
           withFloat:(float)x
           withFloat:(float)y {
  return ((TripleplayUiElement *) [TripleplayUiLayoutAbsoluteLayout centerAtWithId:elem withPythagorasFIPoint:[[PythagorasFPoint alloc] initWithFloat:x withFloat:y]]);
}

+ (id)centerAtWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position {
  (void) [((TripleplayUiElement *) NIL_CHK(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[TripleplayUiLayoutAbsoluteLayout_Constraint alloc] initWithPythagorasFIPoint:position withPythagorasFIDimension:TripleplayUiLayoutAbsoluteLayout_ZERO_ withTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum CENTER] withTripleplayUiStyle_VAlignEnum:[TripleplayUiStyle_VAlignEnum CENTER]]];
  return elem;
}

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  PythagorasFRectangle *bounds = [[PythagorasFRectangle alloc] init];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if (![((TripleplayUiElement *) NIL_CHK(elem)) isVisible]) continue;
      TripleplayUiLayoutAbsoluteLayout_Constraint *c = [TripleplayUiLayoutAbsoluteLayout constraintWithTripleplayUiElement:elem];
      id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) NIL_CHK(c)) psizeWithTripleplayUiLayoutAbsoluteLayout:self withTripleplayUiElement:elem];
      [((PythagorasFRectangle *) NIL_CHK(bounds)) addWithPythagorasFIRectangle:[[PythagorasFRectangle alloc] initWithPythagorasFIPoint:[((TripleplayUiLayoutAbsoluteLayout_Constraint *) NIL_CHK(c)) posWithPythagorasFIDimension:psize] withPythagorasFIDimension:psize]];
    }
  }
  return [[PythagorasFDimension alloc] initWithFloat:((PythagorasFRectangle *) NIL_CHK(bounds)).width_ withFloat:((PythagorasFRectangle *) NIL_CHK(bounds)).height_];
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if (![((TripleplayUiElement *) NIL_CHK(elem)) isVisible]) continue;
      TripleplayUiLayoutAbsoluteLayout_Constraint *c = [TripleplayUiLayoutAbsoluteLayout constraintWithTripleplayUiElement:elem];
      id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) NIL_CHK(c)) psizeWithTripleplayUiLayoutAbsoluteLayout:self withTripleplayUiElement:elem];
      id<PythagorasFIPoint> pos = [((TripleplayUiLayoutAbsoluteLayout_Constraint *) NIL_CHK(c)) posWithPythagorasFIDimension:psize];
      [self setBoundsWithTripleplayUiElement:elem withFloat:left + [((id<PythagorasFIPoint>) NIL_CHK(pos)) x] withFloat:top + [((id<PythagorasFIPoint>) NIL_CHK(pos)) y] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]];
    }
  }
}

+ (TripleplayUiLayoutAbsoluteLayout_Constraint *)constraintWithTripleplayUiElement:(TripleplayUiElement *)elem {
  return (TripleplayUiLayoutAbsoluteLayout_Constraint *) ((TripleplayUiLayout_Constraint *) [PlaynCoreAsserts checkNotNullWithId:[((TripleplayUiElement *) NIL_CHK(elem)) constraint] withId:@"Elements in AbsoluteLayout must have a constraint."]);
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
  float fwidth = [((id<PythagorasFIDimension>) NIL_CHK(size_)) width], fheight = [((id<PythagorasFIDimension>) NIL_CHK(size_)) height];
  if (fwidth > 0 && fheight > 0) return size_;
  id<PythagorasFIDimension> psize = [((TripleplayUiLayoutAbsoluteLayout *) NIL_CHK(layout)) preferredSizeWithTripleplayUiElement:elem withFloat:fwidth withFloat:fheight];
  if (fwidth > 0) return [[PythagorasFDimension alloc] initWithFloat:fwidth withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]];
  else if (fheight > 0) return [[PythagorasFDimension alloc] initWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:fheight];
  else return psize;
}

- (id<PythagorasFIPoint>)posWithPythagorasFIDimension:(id<PythagorasFIDimension>)psize {
  return [[PythagorasFPoint alloc] initWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(position_)) x] + [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign_)) offsetWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:0] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(position_)) y] + [((TripleplayUiStyle_VAlignEnum *) NIL_CHK(valign_)) offsetWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height] withFloat:0]];
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