//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IPlane.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIPlane_RESTRICT
#define PythagorasDIPlane_INCLUDE_ALL 1
#endif
#undef PythagorasDIPlane_RESTRICT

#if !defined (_PythagorasDIPlane_) && (PythagorasDIPlane_INCLUDE_ALL || PythagorasDIPlane_INCLUDE)
#define _PythagorasDIPlane_

@class JavaNioDoubleBuffer;
@class PythagorasDPlane;
@class PythagorasDVector3;
@protocol PythagorasDIRay3;
@protocol PythagorasDIVector3;

@protocol PythagorasDIPlane < NSObject, JavaObject >
- (double)constant;
- (id<PythagorasDIVector3>)normal;
- (JavaNioDoubleBuffer *)getWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (double)distanceWithPythagorasDIVector3:(id<PythagorasDIVector3>)pt;
- (PythagorasDPlane *)negate;
- (PythagorasDPlane *)negateWithPythagorasDPlane:(PythagorasDPlane *)result;
- (BOOL)intersectionWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                  withPythagorasDVector3:(PythagorasDVector3 *)result;
- (double)distanceWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray;
@end
#endif
