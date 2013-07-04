//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Rectangles.java
//
//  Created by Thomas on 7/1/13.
//

#import "FloatMath.h"
#import "IPoint.h"
#import "IRectangle.h"
#import "MathUtil.h"
#import "Point.h"
#import "Points.h"
#import "Rectangle.h"
#import "java/lang/Math.h"
#import "Rectangles.h"

@implementation PythagorasFRectangles

+ (void)intersectWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)src1
                 withPythagorasFIRectangle:(id<PythagorasFIRectangle>)src2
                  withPythagorasFRectangle:(PythagorasFRectangle *)dst {
  float x1 = [JavaLangMath maxWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) minX] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) minX]];
  float y1 = [JavaLangMath maxWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) minY] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) minY]];
  float x2 = [JavaLangMath minWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) maxX] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) maxX]];
  float y2 = [JavaLangMath minWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) maxY] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) maxY]];
  [((PythagorasFRectangle *) NIL_CHK(dst)) setBoundsWithFloat:x1 withFloat:y1 withFloat:x2 - x1 withFloat:y2 - y1];
}

+ (void)union__WithPythagorasFIRectangle:(id<PythagorasFIRectangle>)src1
               withPythagorasFIRectangle:(id<PythagorasFIRectangle>)src2
                withPythagorasFRectangle:(PythagorasFRectangle *)dst {
  float x1 = [JavaLangMath minWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) minX] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) minX]];
  float y1 = [JavaLangMath minWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) minY] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) minY]];
  float x2 = [JavaLangMath maxWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) maxX] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) maxX]];
  float y2 = [JavaLangMath maxWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src1)) maxY] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(src2)) maxY]];
  [((PythagorasFRectangle *) NIL_CHK(dst)) setBoundsWithFloat:x1 withFloat:y1 withFloat:x2 - x1 withFloat:y2 - y1];
}

+ (PythagorasFPoint *)closestInteriorPointWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r
                                              withPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                               withPythagorasFPoint:(PythagorasFPoint *)outArg {
  (void) [((PythagorasFPoint *) NIL_CHK(outArg)) setWithFloat:[PythagorasFMathUtil clampWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) minX] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) maxX]] withFloat:[PythagorasFMathUtil clampWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) minY] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) maxY]]];
  return outArg;
}

+ (PythagorasFPoint *)closestInteriorPointWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r
                                              withPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFRectangles closestInteriorPointWithPythagorasFIRectangle:r withPythagorasFIPoint:p withPythagorasFPoint:[[[PythagorasFPoint alloc] init] autorelease]];
}

+ (float)pointRectDistanceSqWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  PythagorasFPoint *p2 = [PythagorasFRectangles closestInteriorPointWithPythagorasFIRectangle:r withPythagorasFIPoint:p];
  return [PythagorasFPoints distanceSqWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y] withFloat:((PythagorasFPoint *) NIL_CHK(p2)).x_ withFloat:((PythagorasFPoint *) NIL_CHK(p2)).y_];
}

+ (float)pointRectDistanceWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r
                              withPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFFloatMath sqrtWithFloat:[PythagorasFRectangles pointRectDistanceSqWithPythagorasFIRectangle:r withPythagorasFIPoint:p]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
