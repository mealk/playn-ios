//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractQuadCurve.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class PythagorasFPoint;
@class PythagorasFQuadCurve;
@class PythagorasFRectangle;
@protocol PythagorasFIPoint;
@protocol PythagorasFIRectangle;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "pythagoras/f/IQuadCurve.h"
#import "pythagoras/f/PathIterator.h"

@interface PythagorasFAbstractQuadCurve : NSObject < PythagorasFIQuadCurve > {
}

- (PythagorasFPoint *)p1;
- (PythagorasFPoint *)ctrlP;
- (PythagorasFPoint *)p2;
- (float)flatnessSq;
- (float)flatness;
- (void)subdivideWithPythagorasFQuadCurve:(PythagorasFQuadCurve *)left
                 withPythagorasFQuadCurve:(PythagorasFQuadCurve *)right;
- (PythagorasFQuadCurve *)clone;
- (BOOL)isEmpty;
- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py;
- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh;
- (BOOL)containsWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (BOOL)containsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r;
- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh;
- (BOOL)intersectsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r;
- (PythagorasFRectangle *)bounds;
- (PythagorasFRectangle *)boundsWithPythagorasFRectangle:(PythagorasFRectangle *)target;
- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)t;
- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)t
                                                          withFloat:(float)flatness;
- (float)ctrlX;
- (float)ctrlY;
- (float)x1;
- (float)x2;
- (float)y1;
- (float)y2;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasFAbstractQuadCurve_Iterator : NSObject < PythagorasFPathIterator > {
 @public
  id<PythagorasFIQuadCurve> c_;
  id<PythagorasFTransform> t_;
  int index_;
}

@property (nonatomic, strong) id<PythagorasFIQuadCurve> c;
@property (nonatomic, strong) id<PythagorasFTransform> t;
@property (nonatomic, assign) int index;

- (id)initWithPythagorasFIQuadCurve:(id<PythagorasFIQuadCurve>)q
           withPythagorasFTransform:(id<PythagorasFTransform>)t;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangFloatArray:(IOSFloatArray *)coords;
@end
