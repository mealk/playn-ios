//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractArc.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class PythagorasDArc;
@class PythagorasDPoint;
@class PythagorasDRectangle;
@protocol PythagorasDTransform;

#import "JreEmulation.h"
#import "pythagoras/d/IArc.h"
#import "pythagoras/d/PathIterator.h"
#import "pythagoras/d/RectangularShape.h"

@interface PythagorasDAbstractArc : PythagorasDRectangularShape < PythagorasDIArc > {
}

- (PythagorasDPoint *)startPoint;
- (PythagorasDPoint *)startPointWithPythagorasDPoint:(PythagorasDPoint *)target;
- (PythagorasDPoint *)endPoint;
- (PythagorasDPoint *)endPointWithPythagorasDPoint:(PythagorasDPoint *)target;
- (BOOL)containsAngleWithDouble:(double)angle;
- (PythagorasDArc *)clone;
- (BOOL)isEmpty;
- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py;
- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh;
- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh;
- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at;
- (double)normAngleWithDouble:(double)angle;
- (double)angleExtent;
- (double)angleStart;
- (int)arcType;
- (double)height;
- (double)width;
- (double)x;
- (double)y;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasDAbstractArc_Iterator : NSObject < PythagorasDPathIterator > {
 @public
  double x_;
  double y_;
  double width_;
  double height_;
  double angle_;
  double extent_;
  int type_;
  id<PythagorasDTransform> t_;
  int index_;
  int arcCount_;
  int lineCount_;
  double step_;
  double cos_;
  double sin_;
  double k_;
  double kx_;
  double ky_;
  double mx_;
  double my_;
}

@property (nonatomic, assign) double x;
@property (nonatomic, assign) double y;
@property (nonatomic, assign) double width;
@property (nonatomic, assign) double height;
@property (nonatomic, assign) double angle;
@property (nonatomic, assign) double extent;
@property (nonatomic, assign) int type;
@property (nonatomic, strong) id<PythagorasDTransform> t;
@property (nonatomic, assign) int index;
@property (nonatomic, assign) int arcCount;
@property (nonatomic, assign) int lineCount;
@property (nonatomic, assign) double step;
@property (nonatomic, assign) double cos;
@property (nonatomic, assign) double sin;
@property (nonatomic, assign) double k;
@property (nonatomic, assign) double kx;
@property (nonatomic, assign) double ky;
@property (nonatomic, assign) double mx;
@property (nonatomic, assign) double my;

- (id)initWithPythagorasDIArc:(id<PythagorasDIArc>)a
     withPythagorasDTransform:(id<PythagorasDTransform>)t;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords;
@end