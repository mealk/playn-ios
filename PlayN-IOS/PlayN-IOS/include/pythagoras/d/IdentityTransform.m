//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IdentityTransform.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSDoubleArray.h"
#include "IOSObjectArray.h"
#include "java/lang/UnsupportedOperationException.h"
#include "pythagoras/d/IPoint.h"
#include "pythagoras/d/IVector.h"
#include "pythagoras/d/IdentityTransform.h"
#include "pythagoras/d/Point.h"
#include "pythagoras/d/Transform.h"
#include "pythagoras/d/Vector.h"

@implementation PythagorasDIdentityTransform

+ (int)GENERALITY {
  return PythagorasDIdentityTransform_GENERALITY;
}

- (double)uniformScale {
  return 1;
}

- (double)scaleX {
  return 1;
}

- (double)scaleY {
  return 1;
}

- (double)rotation {
  return 0;
}

- (double)tx {
  return 0;
}

- (double)ty {
  return 0;
}

- (void)getWithDoubleArray:(IOSDoubleArray *)matrix {
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:0]) = 1;
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:1]) = 0;
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:2]) = 0;
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:3]) = 1;
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:4]) = 0;
  (*[((IOSDoubleArray *) nil_chk(matrix)) doubleRefAtIndex:5]) = 0;
}

- (id<PythagorasDTransform>)invert {
  return self;
}

- (id<PythagorasDTransform>)concatenateWithPythagorasDTransform:(id<PythagorasDTransform>)other {
  return other;
}

- (id<PythagorasDTransform>)preConcatenateWithPythagorasDTransform:(id<PythagorasDTransform>)other {
  return other;
}

- (id<PythagorasDTransform>)lerpWithPythagorasDTransform:(id<PythagorasDTransform>)other
                                              withDouble:(double)t {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (PythagorasDPoint *)transformWithPythagorasDIPoint:(id<PythagorasDIPoint>)p
                                withPythagorasDPoint:(PythagorasDPoint *)into {
  return [((PythagorasDPoint *) nil_chk(into)) setWithPythagorasDIPoint:p];
}

- (void)transformWithPythagorasDIPointArray:(IOSObjectArray *)src
                                    withInt:(int)srcOff
                  withPythagorasDPointArray:(IOSObjectArray *)dst
                                    withInt:(int)dstOff
                                    withInt:(int)count {
  for (int ii = 0; ii < count; ii++) {
    (void) [self transformWithPythagorasDIPoint:[((IOSObjectArray *) nil_chk(src)) objectAtIndex:srcOff++] withPythagorasDPoint:[((IOSObjectArray *) nil_chk(dst)) objectAtIndex:dstOff++]];
  }
}

- (void)transformWithDoubleArray:(IOSDoubleArray *)src
                         withInt:(int)srcOff
                 withDoubleArray:(IOSDoubleArray *)dst
                         withInt:(int)dstOff
                         withInt:(int)count {
  for (int ii = 0; ii < count; ii++) {
    (*[((IOSDoubleArray *) nil_chk(dst)) doubleRefAtIndex:dstOff++]) = [((IOSDoubleArray *) nil_chk(src)) doubleAtIndex:srcOff++];
  }
}

- (PythagorasDPoint *)inverseTransformWithPythagorasDIPoint:(id<PythagorasDIPoint>)p
                                       withPythagorasDPoint:(PythagorasDPoint *)into {
  return [((PythagorasDPoint *) nil_chk(into)) setWithPythagorasDIPoint:p];
}

- (PythagorasDVector *)transformPointWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                      withPythagorasDVector:(PythagorasDVector *)into {
  return [((PythagorasDVector *) nil_chk(into)) setWithPythagorasDIVector:v];
}

- (PythagorasDVector *)transformWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                 withPythagorasDVector:(PythagorasDVector *)into {
  return [((PythagorasDVector *) nil_chk(into)) setWithPythagorasDIVector:v];
}

- (PythagorasDVector *)inverseTransformWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                        withPythagorasDVector:(PythagorasDVector *)into {
  return [((PythagorasDVector *) nil_chk(into)) setWithPythagorasDIVector:v];
}

- (id<PythagorasDTransform>)copy__ OBJC_METHOD_FAMILY_NONE {
  return self;
}

- (int)generality {
  return PythagorasDIdentityTransform_GENERALITY;
}

- (NSString *)description {
  return @"ident";
}

- (id)init {
  return [super init];
}

@end
