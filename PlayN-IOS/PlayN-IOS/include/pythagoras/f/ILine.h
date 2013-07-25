//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/ILine.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFILine_RESTRICT
#define PythagorasFILine_INCLUDE_ALL 1
#endif
#undef PythagorasFILine_RESTRICT

#if !defined (_PythagorasFILine_) && (PythagorasFILine_INCLUDE_ALL || PythagorasFILine_INCLUDE)
#define _PythagorasFILine_

@class PythagorasFLine;
@class PythagorasFPoint;
@protocol PythagorasFIPoint;

#define PythagorasFIShape_RESTRICT 1
#define PythagorasFIShape_INCLUDE 1
#include "pythagoras/f/IShape.h"

@protocol PythagorasFILine < PythagorasFIShape, NSCopying, NSObject, JavaObject >
- (float)x1;
- (float)y1;
- (float)x2;
- (float)y2;
- (PythagorasFPoint *)p1;
- (PythagorasFPoint *)p1WithPythagorasFPoint:(PythagorasFPoint *)target;
- (PythagorasFPoint *)p2;
- (PythagorasFPoint *)p2WithPythagorasFPoint:(PythagorasFPoint *)target;
- (float)pointLineDistSqWithFloat:(float)px
                        withFloat:(float)py;
- (float)pointLineDistSqWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (float)pointLineDistWithFloat:(float)px
                      withFloat:(float)py;
- (float)pointLineDistWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (float)pointSegDistSqWithFloat:(float)px
                       withFloat:(float)py;
- (float)pointSegDistSqWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (float)pointSegDistWithFloat:(float)px
                     withFloat:(float)py;
- (float)pointSegDistWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (int)relativeCCWWithFloat:(float)px
                  withFloat:(float)py;
- (int)relativeCCWWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (PythagorasFLine *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end
#endif
