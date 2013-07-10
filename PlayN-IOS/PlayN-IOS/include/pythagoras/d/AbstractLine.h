//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractLine.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class PythagorasDLine;
@class PythagorasDPoint;
@class PythagorasDRectangle;
@protocol PythagorasDIPoint;
@protocol PythagorasDIRectangle;
@protocol PythagorasDTransform;

#import "JreEmulation.h"
#import "pythagoras/d/ILine.h"
#import "pythagoras/d/PathIterator.h"

@interface PythagorasDAbstractLine : NSObject < PythagorasDILine > {
}

- (PythagorasDPoint *)p1;
- (PythagorasDPoint *)p1WithPythagorasDPoint:(PythagorasDPoint *)target;
- (PythagorasDPoint *)p2;
- (PythagorasDPoint *)p2WithPythagorasDPoint:(PythagorasDPoint *)target;
- (double)pointLineDistSqWithDouble:(double)px
                         withDouble:(double)py;
- (double)pointLineDistSqWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (double)pointLineDistWithDouble:(double)px
                       withDouble:(double)py;
- (double)pointLineDistWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (double)pointSegDistSqWithDouble:(double)px
                        withDouble:(double)py;
- (double)pointSegDistSqWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (double)pointSegDistWithDouble:(double)px
                      withDouble:(double)py;
- (double)pointSegDistWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (int)relativeCCWWithDouble:(double)px
                  withDouble:(double)py;
- (int)relativeCCWWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (PythagorasDLine *)clone;
- (BOOL)isEmpty;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y;
- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)point;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)w
                withDouble:(double)h;
- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r;
- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh;
- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r;
- (PythagorasDRectangle *)bounds;
- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at
                                                         withDouble:(double)flatness;
- (double)x1;
- (double)x2;
- (double)y1;
- (double)y2;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasDAbstractLine_Iterator : NSObject < PythagorasDPathIterator > {
 @public
  double x1_, y1_, x2_, y2_;
  id<PythagorasDTransform> t_;
  int index_;
}

@property (nonatomic, assign) double x1;
@property (nonatomic, assign) double y1;
@property (nonatomic, assign) double x2;
@property (nonatomic, assign) double y2;
@property (nonatomic, strong) id<PythagorasDTransform> t;
@property (nonatomic, assign) int index;

- (id)initWithPythagorasDILine:(id<PythagorasDILine>)l
      withPythagorasDTransform:(id<PythagorasDTransform>)at;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords;
@end
