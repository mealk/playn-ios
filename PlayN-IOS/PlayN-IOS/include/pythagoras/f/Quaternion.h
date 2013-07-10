//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Quaternion.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class JavaUtilRandom;
@class PythagorasFVector3;
@protocol PythagorasFIVector3;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "pythagoras/f/IQuaternion.h"

@interface PythagorasFQuaternion : NSObject < PythagorasFIQuaternion, JavaIoSerializable > {
 @public
  float x__, y__, z__, w__;
}

@property (nonatomic, assign) float x_;
@property (nonatomic, assign) float y_;
@property (nonatomic, assign) float z_;
@property (nonatomic, assign) float w_;

+ (id<PythagorasFIQuaternion>)IDENTITY;
- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)z
          withFloat:(float)w;
- (id)initWithJavaLangFloatArray:(IOSFloatArray *)values;
- (id)initWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other;
- (id)init;
- (PythagorasFQuaternion *)setWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other;
- (PythagorasFQuaternion *)setWithJavaLangFloatArray:(IOSFloatArray *)values;
- (PythagorasFQuaternion *)setWithFloat:(float)x
                              withFloat:(float)y
                              withFloat:(float)z
                              withFloat:(float)w;
- (PythagorasFQuaternion *)fromVectorsWithPythagorasFIVector3:(id<PythagorasFIVector3>)from
                                      withPythagorasFIVector3:(id<PythagorasFIVector3>)to;
- (PythagorasFQuaternion *)fromVectorFromNegativeZWithPythagorasFIVector3:(id<PythagorasFIVector3>)to;
- (PythagorasFQuaternion *)fromVectorFromNegativeZWithFloat:(float)tx
                                                  withFloat:(float)ty
                                                  withFloat:(float)tz;
- (PythagorasFQuaternion *)fromAxesWithPythagorasFIVector3:(id<PythagorasFIVector3>)nx
                                   withPythagorasFIVector3:(id<PythagorasFIVector3>)ny
                                   withPythagorasFIVector3:(id<PythagorasFIVector3>)nz;
- (PythagorasFQuaternion *)fromAngleAxisWithFloat:(float)angle
                          withPythagorasFIVector3:(id<PythagorasFIVector3>)axis;
- (PythagorasFQuaternion *)fromAngleAxisWithFloat:(float)angle
                                        withFloat:(float)x
                                        withFloat:(float)y
                                        withFloat:(float)z;
- (PythagorasFQuaternion *)randomizeWithJavaUtilRandom:(JavaUtilRandom *)rand;
- (PythagorasFQuaternion *)fromAnglesXZWithFloat:(float)x
                                       withFloat:(float)z;
- (PythagorasFQuaternion *)fromAnglesXYWithFloat:(float)x
                                       withFloat:(float)y;
- (PythagorasFQuaternion *)fromAnglesWithPythagorasFVector3:(PythagorasFVector3 *)angles;
- (PythagorasFQuaternion *)fromAnglesWithFloat:(float)x
                                     withFloat:(float)y
                                     withFloat:(float)z;
- (PythagorasFQuaternion *)normalizeLocal;
- (PythagorasFQuaternion *)invertLocal;
- (PythagorasFQuaternion *)multLocalWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other;
- (PythagorasFQuaternion *)slerpLocalWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                      withFloat:(float)t;
- (PythagorasFVector3 *)transformLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector;
- (PythagorasFQuaternion *)integrateLocalWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                       withFloat:(float)t;
- (float)x;
- (float)y;
- (float)z;
- (float)w;
- (void)getWithJavaLangFloatArray:(IOSFloatArray *)values;
- (BOOL)hasNaN;
- (PythagorasFVector3 *)toAnglesWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)toAngles;
- (PythagorasFQuaternion *)normalize;
- (PythagorasFQuaternion *)normalizeWithPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFQuaternion *)invert;
- (PythagorasFQuaternion *)invertWithPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFQuaternion *)multWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other;
- (PythagorasFQuaternion *)multWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                withPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFQuaternion *)slerpWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                 withFloat:(float)t;
- (PythagorasFQuaternion *)slerpWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                 withFloat:(float)t
                                 withPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                  withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformUnitXWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformUnitYWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformUnitZWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformAndAddWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                       withPythagorasFIVector3:(id<PythagorasFIVector3>)add
                                        withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformScaleAndAddWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                                          withFloat:(float)scale_
                                            withPythagorasFIVector3:(id<PythagorasFIVector3>)add
                                             withPythagorasFVector3:(PythagorasFVector3 *)result;
- (float)transformZWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (float)getRotationZ;
- (PythagorasFQuaternion *)integrateWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                  withFloat:(float)t;
- (PythagorasFQuaternion *)integrateWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                  withFloat:(float)t
                                  withPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
@end