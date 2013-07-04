//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Arc.java
//
//  Created by Thomas on 7/1/13.
//

@protocol PythagorasDIArc;
@protocol PythagorasDIDimension;
@protocol PythagorasDIPoint;
@protocol PythagorasDIRectangle;

#import "JreEmulation.h"
#import "AbstractArc.h"
#import "java/io/Serializable.h"

@interface PythagorasDArc : PythagorasDAbstractArc < JavaIoSerializable > {
 @public
  double x__;
  double y__;
  double width__;
  double height__;
  double start_;
  double extent_;
  int type_;
}

@property (nonatomic, assign) double x_;
@property (nonatomic, assign) double y_;
@property (nonatomic, assign) double width_;
@property (nonatomic, assign) double height_;
@property (nonatomic, assign) double start;
@property (nonatomic, assign) double extent;
@property (nonatomic, assign) int type;

- (id)init;
- (id)initWithInt:(int)type;
- (id)initWithDouble:(double)x
          withDouble:(double)y
          withDouble:(double)width
          withDouble:(double)height
          withDouble:(double)start
          withDouble:(double)extent
             withInt:(int)type;
- (id)initWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)bounds
                         withDouble:(double)start
                         withDouble:(double)extent
                            withInt:(int)type;
- (int)arcType;
- (double)x;
- (double)y;
- (double)width;
- (double)height;
- (double)angleStart;
- (double)angleExtent;
- (void)setArcTypeWithInt:(int)type;
- (void)setAngleStartWithDouble:(double)start;
- (void)setAngleExtentWithDouble:(double)extent;
- (void)setArcWithDouble:(double)x
              withDouble:(double)y
              withDouble:(double)width
              withDouble:(double)height
              withDouble:(double)start
              withDouble:(double)extent
                 withInt:(int)type;
- (void)setArcWithPythagorasDIPoint:(id<PythagorasDIPoint>)point
          withPythagorasDIDimension:(id<PythagorasDIDimension>)size
                         withDouble:(double)start
                         withDouble:(double)extent
                            withInt:(int)type;
- (void)setArcWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)rect
                             withDouble:(double)start
                             withDouble:(double)extent
                                withInt:(int)type;
- (void)setArcWithPythagorasDIArc:(id<PythagorasDIArc>)arc;
- (void)setArcByCenterWithDouble:(double)x
                      withDouble:(double)y
                      withDouble:(double)radius
                      withDouble:(double)start
                      withDouble:(double)extent
                         withInt:(int)type;
- (void)setArcByTangentWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                       withPythagorasDIPoint:(id<PythagorasDIPoint>)p2
                       withPythagorasDIPoint:(id<PythagorasDIPoint>)p3
                                  withDouble:(double)radius;
- (void)setAngleStartWithPythagorasDIPoint:(id<PythagorasDIPoint>)point;
- (void)setAnglesWithDouble:(double)x1
                 withDouble:(double)y1
                 withDouble:(double)x2
                 withDouble:(double)y2;
- (void)setAnglesWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                 withPythagorasDIPoint:(id<PythagorasDIPoint>)p2;
- (void)setFrameWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)width
                withDouble:(double)height;
@end
