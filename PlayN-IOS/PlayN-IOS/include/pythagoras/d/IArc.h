//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IArc.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIArc_RESTRICT
#define PythagorasDIArc_INCLUDE_ALL 1
#endif
#undef PythagorasDIArc_RESTRICT

#if !defined (_PythagorasDIArc_) && (PythagorasDIArc_INCLUDE_ALL || PythagorasDIArc_INCLUDE)
#define _PythagorasDIArc_

@class PythagorasDArc;
@class PythagorasDPoint;

#define PythagorasDIRectangularShape_RESTRICT 1
#define PythagorasDIRectangularShape_INCLUDE 1
#include "pythagoras/d/IRectangularShape.h"

#define PythagorasDIArc_CHORD 1
#define PythagorasDIArc_OPEN 0
#define PythagorasDIArc_PIE 2

@protocol PythagorasDIArc < PythagorasDIRectangularShape, NSCopying, NSObject, JavaObject >
- (int)arcType;
- (double)angleStart;
- (double)angleExtent;
- (PythagorasDPoint *)startPoint;
- (PythagorasDPoint *)startPointWithPythagorasDPoint:(PythagorasDPoint *)target;
- (PythagorasDPoint *)endPoint;
- (PythagorasDPoint *)endPointWithPythagorasDPoint:(PythagorasDPoint *)target;
- (BOOL)containsAngleWithDouble:(double)angle;
- (PythagorasDArc *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasDIArc : NSObject {
}
+ (int)OPEN;
+ (int)CHORD;
+ (int)PIE;
@end
#endif
