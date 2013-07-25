//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Arc.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFArc_RESTRICT
#define PythagorasFArc_INCLUDE_ALL 1
#endif
#undef PythagorasFArc_RESTRICT

#if !defined (_PythagorasFArc_) && (PythagorasFArc_INCLUDE_ALL || PythagorasFArc_INCLUDE)
#define _PythagorasFArc_

@protocol PythagorasFIArc;
@protocol PythagorasFIDimension;
@protocol PythagorasFIPoint;
@protocol PythagorasFIRectangle;

#define PythagorasFAbstractArc_RESTRICT 1
#define PythagorasFAbstractArc_INCLUDE 1
#include "pythagoras/f/AbstractArc.h"

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"

@interface PythagorasFArc : PythagorasFAbstractArc < JavaIoSerializable > {
 @public
  float x__;
  float y__;
  float width__;
  float height__;
  float start_;
  float extent_;
  int type_;
}

@property (nonatomic, assign) float x_;
@property (nonatomic, assign) float y_;
@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;
@property (nonatomic, assign) float start;
@property (nonatomic, assign) float extent;
@property (nonatomic, assign) int type;

- (id)init;
- (id)initWithInt:(int)type;
- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)width
          withFloat:(float)height
          withFloat:(float)start
          withFloat:(float)extent
            withInt:(int)type;
- (id)initWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)bounds
                          withFloat:(float)start
                          withFloat:(float)extent
                            withInt:(int)type;
- (int)arcType;
- (float)x;
- (float)y;
- (float)width;
- (float)height;
- (float)angleStart;
- (float)angleExtent;
- (void)setArcTypeWithInt:(int)type;
- (void)setAngleStartWithFloat:(float)start;
- (void)setAngleExtentWithFloat:(float)extent;
- (void)setArcWithFloat:(float)x
              withFloat:(float)y
              withFloat:(float)width
              withFloat:(float)height
              withFloat:(float)start
              withFloat:(float)extent
                withInt:(int)type;
- (void)setArcWithPythagorasFIPoint:(id<PythagorasFIPoint>)point
          withPythagorasFIDimension:(id<PythagorasFIDimension>)size
                          withFloat:(float)start
                          withFloat:(float)extent
                            withInt:(int)type;
- (void)setArcWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)rect
                              withFloat:(float)start
                              withFloat:(float)extent
                                withInt:(int)type;
- (void)setArcWithPythagorasFIArc:(id<PythagorasFIArc>)arc;
- (void)setArcByCenterWithFloat:(float)x
                      withFloat:(float)y
                      withFloat:(float)radius
                      withFloat:(float)start
                      withFloat:(float)extent
                        withInt:(int)type;
- (void)setArcByTangentWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
                       withPythagorasFIPoint:(id<PythagorasFIPoint>)p2
                       withPythagorasFIPoint:(id<PythagorasFIPoint>)p3
                                   withFloat:(float)radius;
- (void)setAngleStartWithPythagorasFIPoint:(id<PythagorasFIPoint>)point;
- (void)setAnglesWithFloat:(float)x1
                 withFloat:(float)y1
                 withFloat:(float)x2
                 withFloat:(float)y2;
- (void)setAnglesWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
                 withPythagorasFIPoint:(id<PythagorasFIPoint>)p2;
- (void)setFrameWithFloat:(float)x
                withFloat:(float)y
                withFloat:(float)width
                withFloat:(float)height;
@end
#endif
