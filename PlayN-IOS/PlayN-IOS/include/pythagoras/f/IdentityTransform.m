//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IdentityTransform.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "IOSObjectArray.h"
#import "java/lang/UnsupportedOperationException.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/IVector.h"
#import "pythagoras/f/IdentityTransform.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Transform.h"
#import "pythagoras/f/Vector.h"

@implementation PythagorasFIdentityTransform

+ (int)GENERALITY {
  return PythagorasFIdentityTransform_GENERALITY;
}

- (float)uniformScale {
  return 1;
}

- (float)scaleX {
  return 1;
}

- (float)scaleY {
  return 1;
}

- (float)rotation {
  return 0;
}

- (float)tx {
  return 0;
}

- (float)ty {
  return 0;
}

- (void)getWithJavaLangFloatArray:(IOSFloatArray *)matrix {
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:0 withFloat:1];
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:1 withFloat:0];
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:2 withFloat:0];
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:3 withFloat:1];
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:4 withFloat:0];
  [((IOSFloatArray *) NIL_CHK(matrix)) replaceFloatAtIndex:5 withFloat:0];
}

- (id<PythagorasFTransform>)invert {
  return self;
}

- (id<PythagorasFTransform>)concatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other {
  return other;
}

- (id<PythagorasFTransform>)preConcatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other {
  return other;
}

- (id<PythagorasFTransform>)lerpWithPythagorasFTransform:(id<PythagorasFTransform>)other
                                               withFloat:(float)t {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (PythagorasFPoint *)transformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                withPythagorasFPoint:(PythagorasFPoint *)into {
  return [((PythagorasFPoint *) NIL_CHK(into)) setWithPythagorasFIPoint:p];
}

- (void)transformWithPythagorasFIPointArray:(IOSObjectArray *)src
                                    withInt:(int)srcOff
                  withPythagorasFPointArray:(IOSObjectArray *)dst
                                    withInt:(int)dstOff
                                    withInt:(int)count {
  for (int ii = 0; ii < count; ii++) {
    (void) [self transformWithPythagorasFIPoint:((id<PythagorasFIPoint>) [((IOSObjectArray *) NIL_CHK(src)) objectAtIndex:srcOff++]) withPythagorasFPoint:((PythagorasFPoint *) [((IOSObjectArray *) NIL_CHK(dst)) objectAtIndex:dstOff++])];
  }
}

- (void)transformWithJavaLangFloatArray:(IOSFloatArray *)src
                                withInt:(int)srcOff
                 withJavaLangFloatArray:(IOSFloatArray *)dst
                                withInt:(int)dstOff
                                withInt:(int)count {
  for (int ii = 0; ii < count; ii++) {
    [((IOSFloatArray *) NIL_CHK(dst)) replaceFloatAtIndex:dstOff++ withFloat:[((IOSFloatArray *) NIL_CHK(src)) floatAtIndex:srcOff++]];
  }
}

- (PythagorasFPoint *)inverseTransformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                       withPythagorasFPoint:(PythagorasFPoint *)into {
  return [((PythagorasFPoint *) NIL_CHK(into)) setWithPythagorasFIPoint:p];
}

- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                      withPythagorasFVector:(PythagorasFVector *)into {
  return [((PythagorasFVector *) NIL_CHK(into)) setWithPythagorasFIVector:v];
}

- (PythagorasFVector *)transformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                 withPythagorasFVector:(PythagorasFVector *)into {
  return [((PythagorasFVector *) NIL_CHK(into)) setWithPythagorasFIVector:v];
}

- (PythagorasFVector *)inverseTransformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                        withPythagorasFVector:(PythagorasFVector *)into {
  return [((PythagorasFVector *) NIL_CHK(into)) setWithPythagorasFIVector:v];
}

- (id<PythagorasFTransform>)copy__ OBJC_METHOD_FAMILY_NONE {
  return self;
}

- (int)generality {
  return PythagorasFIdentityTransform_GENERALITY;
}

- (NSString *)description {
  return @"ident";
}

- (id)init {
  return [super init];
}

@end
