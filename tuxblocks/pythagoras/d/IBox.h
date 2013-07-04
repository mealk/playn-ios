//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IBox.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasDBox;
@class PythagorasDVector3;
@protocol PythagorasDIMatrix4;
@protocol PythagorasDIRay3;
@protocol PythagorasDIVector3;

#import "JreEmulation.h"

@protocol PythagorasDIBox < NSObject >
- (id<PythagorasDIVector3>)minimumExtent;
- (id<PythagorasDIVector3>)maximumExtent;
- (PythagorasDVector3 *)center;
- (PythagorasDVector3 *)centerWithPythagorasDVector3:(PythagorasDVector3 *)result;
- (double)diagonalLength;
- (double)longestEdge;
- (BOOL)isEmpty;
- (PythagorasDVector3 *)vertexWithInt:(int)code
               withPythagorasDVector3:(PythagorasDVector3 *)result;
- (BOOL)containsWithPythagorasDIVector3:(id<PythagorasDIVector3>)point;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)z;
- (double)extentDistanceWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (BOOL)containsWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (BOOL)intersectsWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)addWithPythagorasDIVector3:(id<PythagorasDIVector3>)point;
- (PythagorasDBox *)addWithPythagorasDIVector3:(id<PythagorasDIVector3>)point
                            withPythagorasDBox:(PythagorasDBox *)result;
- (PythagorasDBox *)addWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)addWithPythagorasDIBox:(id<PythagorasDIBox>)other
                        withPythagorasDBox:(PythagorasDBox *)result;
- (PythagorasDBox *)intersectWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)intersectWithPythagorasDIBox:(id<PythagorasDIBox>)other
                              withPythagorasDBox:(PythagorasDBox *)result;
- (PythagorasDBox *)projectWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix;
- (PythagorasDBox *)projectWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix
                                withPythagorasDBox:(PythagorasDBox *)result;
- (PythagorasDBox *)expandWithDouble:(double)x
                          withDouble:(double)y
                          withDouble:(double)z;
- (PythagorasDBox *)expandWithDouble:(double)x
                          withDouble:(double)y
                          withDouble:(double)z
                  withPythagorasDBox:(PythagorasDBox *)result;
- (BOOL)intersectsWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray;
- (BOOL)intersectionWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                  withPythagorasDVector3:(PythagorasDVector3 *)result;
@end
