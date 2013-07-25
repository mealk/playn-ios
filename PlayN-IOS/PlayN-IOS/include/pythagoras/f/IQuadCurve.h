//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IQuadCurve.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFIQuadCurve_RESTRICT
#define PythagorasFIQuadCurve_INCLUDE_ALL 1
#endif
#undef PythagorasFIQuadCurve_RESTRICT

#if !defined (_PythagorasFIQuadCurve_) && (PythagorasFIQuadCurve_INCLUDE_ALL || PythagorasFIQuadCurve_INCLUDE)
#define _PythagorasFIQuadCurve_

@class PythagorasFPoint;
@class PythagorasFQuadCurve;

#define PythagorasFIShape_RESTRICT 1
#define PythagorasFIShape_INCLUDE 1
#include "pythagoras/f/IShape.h"

@protocol PythagorasFIQuadCurve < PythagorasFIShape, NSCopying, NSObject, JavaObject >
- (float)x1;
- (float)y1;
- (float)ctrlX;
- (float)ctrlY;
- (float)x2;
- (float)y2;
- (PythagorasFPoint *)p1;
- (PythagorasFPoint *)ctrlP;
- (PythagorasFPoint *)p2;
- (float)flatnessSq;
- (float)flatness;
- (void)subdivideWithPythagorasFQuadCurve:(PythagorasFQuadCurve *)left
                 withPythagorasFQuadCurve:(PythagorasFQuadCurve *)right;
- (PythagorasFQuadCurve *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end
#endif
