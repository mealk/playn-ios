//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IQuadCurve.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIQuadCurve_RESTRICT
#define PythagorasDIQuadCurve_INCLUDE_ALL 1
#endif
#undef PythagorasDIQuadCurve_RESTRICT

#if !defined (_PythagorasDIQuadCurve_) && (PythagorasDIQuadCurve_INCLUDE_ALL || PythagorasDIQuadCurve_INCLUDE)
#define _PythagorasDIQuadCurve_

@class PythagorasDPoint;
@class PythagorasDQuadCurve;

#define PythagorasDIShape_RESTRICT 1
#define PythagorasDIShape_INCLUDE 1
#include "pythagoras/d/IShape.h"

@protocol PythagorasDIQuadCurve < PythagorasDIShape, NSCopying, NSObject, JavaObject >
- (double)x1;
- (double)y1;
- (double)ctrlX;
- (double)ctrlY;
- (double)x2;
- (double)y2;
- (PythagorasDPoint *)p1;
- (PythagorasDPoint *)ctrlP;
- (PythagorasDPoint *)p2;
- (double)flatnessSq;
- (double)flatness;
- (void)subdivideWithPythagorasDQuadCurve:(PythagorasDQuadCurve *)left
                 withPythagorasDQuadCurve:(PythagorasDQuadCurve *)right;
- (PythagorasDQuadCurve *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end
#endif
