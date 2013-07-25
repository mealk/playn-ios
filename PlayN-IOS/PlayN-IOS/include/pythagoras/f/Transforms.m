//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Transforms.java
//
//  Created by Thomas on 7/25/13.
//

#include "pythagoras/f/AffineTransform.h"
#include "pythagoras/f/IShape.h"
#include "pythagoras/f/Path.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/Transform.h"
#include "pythagoras/f/Transforms.h"

@implementation PythagorasFTransforms

+ (id<PythagorasFIShape>)createTransformedShapeWithPythagorasFTransform:(id<PythagorasFTransform>)t
                                                  withPythagorasFIShape:(id<PythagorasFIShape>)src {
  if (src == nil) {
    return nil;
  }
  if ([(id) src isKindOfClass:[PythagorasFPath class]]) {
    return [((PythagorasFPath *) src) createTransformedShapeWithPythagorasFTransform:t];
  }
  id<PythagorasFPathIterator> path = [((id<PythagorasFIShape>) nil_chk(src)) pathIteratorWithPythagorasFTransform:t];
  PythagorasFPath *dst = [[PythagorasFPath alloc] initWithInt:[((id<PythagorasFPathIterator>) nil_chk(path)) windingRule]];
  [((PythagorasFPath *) nil_chk(dst)) appendWithPythagorasFPathIterator:path withBOOL:NO];
  return dst;
}

+ (id)multiplyWithPythagorasFAffineTransform:(PythagorasFAffineTransform *)a
              withPythagorasFAffineTransform:(PythagorasFAffineTransform *)b
                                      withId:(id<PythagorasFTransform>)into {
  return [PythagorasFTransforms multiplyWithFloat:((PythagorasFAffineTransform *) nil_chk(a)).m00 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m01 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m10 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m11 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).tx_ withFloat:((PythagorasFAffineTransform *) nil_chk(a)).ty_ withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m00 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m01 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m10 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m11 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).tx_ withFloat:((PythagorasFAffineTransform *) nil_chk(b)).ty_ withId:into];
}

+ (id)multiplyWithPythagorasFAffineTransform:(PythagorasFAffineTransform *)a
                                   withFloat:(float)m00
                                   withFloat:(float)m01
                                   withFloat:(float)m10
                                   withFloat:(float)m11
                                   withFloat:(float)tx
                                   withFloat:(float)ty
                                      withId:(id<PythagorasFTransform>)into {
  return [PythagorasFTransforms multiplyWithFloat:((PythagorasFAffineTransform *) nil_chk(a)).m00 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m01 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m10 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).m11 withFloat:((PythagorasFAffineTransform *) nil_chk(a)).tx_ withFloat:((PythagorasFAffineTransform *) nil_chk(a)).ty_ withFloat:m00 withFloat:m01 withFloat:m10 withFloat:m11 withFloat:tx withFloat:ty withId:into];
}

+ (id)multiplyWithFloat:(float)m00
              withFloat:(float)m01
              withFloat:(float)m10
              withFloat:(float)m11
              withFloat:(float)tx
              withFloat:(float)ty
withPythagorasFAffineTransform:(PythagorasFAffineTransform *)b
                 withId:(id<PythagorasFTransform>)into {
  return [PythagorasFTransforms multiplyWithFloat:m00 withFloat:m01 withFloat:m10 withFloat:m11 withFloat:tx withFloat:ty withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m00 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m01 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m10 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).m11 withFloat:((PythagorasFAffineTransform *) nil_chk(b)).tx_ withFloat:((PythagorasFAffineTransform *) nil_chk(b)).ty_ withId:into];
}

+ (id)multiplyWithFloat:(float)am00
              withFloat:(float)am01
              withFloat:(float)am10
              withFloat:(float)am11
              withFloat:(float)atx
              withFloat:(float)aty
              withFloat:(float)bm00
              withFloat:(float)bm01
              withFloat:(float)bm10
              withFloat:(float)bm11
              withFloat:(float)btx
              withFloat:(float)bty
                 withId:(id<PythagorasFTransform>)into {
  (void) [((id<PythagorasFTransform>) nil_chk(into)) setTransformWithFloat:am00 * bm00 + am10 * bm01 withFloat:am01 * bm00 + am11 * bm01 withFloat:am00 * bm10 + am10 * bm11 withFloat:am01 * bm10 + am11 * bm11 withFloat:am00 * btx + am10 * bty + atx withFloat:am01 * btx + am11 * bty + aty];
  return into;
}

- (id)init {
  return [super init];
}

@end
