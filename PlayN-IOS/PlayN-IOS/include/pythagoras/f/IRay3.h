//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IRay3.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFIRay3_RESTRICT
#define PythagorasFIRay3_INCLUDE_ALL 1
#endif
#undef PythagorasFIRay3_RESTRICT

#if !defined (_PythagorasFIRay3_) && (PythagorasFIRay3_INCLUDE_ALL || PythagorasFIRay3_INCLUDE)
#define _PythagorasFIRay3_

@protocol PythagorasFIVector3;

@protocol PythagorasFIRay3 < NSObject, JavaObject >
- (id<PythagorasFIVector3>)origin;
- (id<PythagorasFIVector3>)direction;
@end
#endif
