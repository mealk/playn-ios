//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/InternalTransform.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreInternalTransform_RESTRICT
#define PlaynCoreInternalTransform_INCLUDE_ALL 1
#endif
#undef PlaynCoreInternalTransform_RESTRICT

#if !defined (_PlaynCoreInternalTransform_) && (PlaynCoreInternalTransform_INCLUDE_ALL || PlaynCoreInternalTransform_INCLUDE)
#define _PlaynCoreInternalTransform_

#define PythagorasFTransform_RESTRICT 1
#define PythagorasFTransform_INCLUDE 1
#include "pythagoras/f/Transform.h"

@protocol PlaynCoreInternalTransform < PythagorasFTransform, NSObject, JavaObject >
- (float)m00;
- (float)m01;
- (float)m10;
- (float)m11;
- (id<PlaynCoreInternalTransform>)setWithPythagorasFTransform:(id<PythagorasFTransform>)other;
- (id<PlaynCoreInternalTransform>)concatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other
                                                            withFloat:(float)originX
                                                            withFloat:(float)originY;
- (id<PlaynCoreInternalTransform>)concatenateWithFloat:(float)m00
                                             withFloat:(float)m01
                                             withFloat:(float)m10
                                             withFloat:(float)m11
                                             withFloat:(float)tx
                                             withFloat:(float)ty
                                             withFloat:(float)originX
                                             withFloat:(float)originY;
- (id<PlaynCoreInternalTransform>)preConcatenateWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)other;
- (id<PlaynCoreInternalTransform>)copy__ OBJC_METHOD_FAMILY_NONE;
@end
#endif
