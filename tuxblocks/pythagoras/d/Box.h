//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Box.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSObjectArray;
@class PythagorasDVector3;
@protocol PythagorasDIMatrix4;
@protocol PythagorasDIRay3;
@protocol PythagorasDIVector3;

#import "JreEmulation.h"
#import "IBox.h"
#import "java/io/Serializable.h"

@interface PythagorasDBox : NSObject < PythagorasDIBox, JavaIoSerializable > {
 @public
  PythagorasDVector3 *_minExtent_;
  PythagorasDVector3 *_maxExtent_;
}

@property (nonatomic, retain) PythagorasDVector3 *_minExtent;
@property (nonatomic, retain) PythagorasDVector3 *_maxExtent;

+ (PythagorasDBox *)UNIT;
+ (PythagorasDBox *)ZERO;
+ (PythagorasDBox *)EMPTY;
+ (PythagorasDBox *)MAX_VALUE;
- (id)initWithPythagorasDIVector3:(id<PythagorasDIVector3>)minExtent
          withPythagorasDIVector3:(id<PythagorasDIVector3>)maxExtent;
- (id)initWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (id)init;
- (PythagorasDBox *)setToEmpty;
- (PythagorasDBox *)setWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)setWithPythagorasDIVector3:(id<PythagorasDIVector3>)minExtent
                       withPythagorasDIVector3:(id<PythagorasDIVector3>)maxExtent;
- (PythagorasDBox *)fromPointsWithPythagorasDIVector3Array:(IOSObjectArray *)points;
- (PythagorasDBox *)addLocalWithPythagorasDIVector3:(id<PythagorasDIVector3>)point;
- (PythagorasDBox *)addLocalWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)intersectLocalWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (PythagorasDBox *)projectLocalWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix;
- (PythagorasDBox *)expandLocalWithDouble:(double)x
                               withDouble:(double)y
                               withDouble:(double)z;
- (id<PythagorasDIVector3>)minimumExtent;
- (id<PythagorasDIVector3>)maximumExtent;
- (PythagorasDVector3 *)center;
- (PythagorasDVector3 *)centerWithPythagorasDVector3:(PythagorasDVector3 *)result;
- (double)diagonalLength;
- (double)longestEdge;
- (BOOL)isEmpty;
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
- (PythagorasDVector3 *)vertexWithInt:(int)code
               withPythagorasDVector3:(PythagorasDVector3 *)result;
- (BOOL)containsWithPythagorasDIVector3:(id<PythagorasDIVector3>)point;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)z;
- (double)extentDistanceWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (BOOL)containsWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (BOOL)intersectsWithPythagorasDIBox:(id<PythagorasDIBox>)other;
- (BOOL)intersectsWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray;
- (BOOL)intersectionWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                  withPythagorasDVector3:(PythagorasDVector3 *)result;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
- (BOOL)intersectsXWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)x;
- (BOOL)intersectsYWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)y;
- (BOOL)intersectsZWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)z;
- (double)intersectionXWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)x;
- (double)intersectionYWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)y;
- (double)intersectionZWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)z;
@end
