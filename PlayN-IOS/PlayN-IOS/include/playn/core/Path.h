//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Path.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCorePath_RESTRICT
#define PlaynCorePath_INCLUDE_ALL 1
#endif
#undef PlaynCorePath_RESTRICT

#if !defined (_PlaynCorePath_) && (PlaynCorePath_INCLUDE_ALL || PlaynCorePath_INCLUDE)
#define _PlaynCorePath_

@protocol PlaynCorePath < NSObject, JavaObject >
- (void)reset;
- (void)close;
- (void)moveToWithFloat:(float)x
              withFloat:(float)y;
- (void)lineToWithFloat:(float)x
              withFloat:(float)y;
- (void)quadraticCurveToWithFloat:(float)cpx
                        withFloat:(float)cpy
                        withFloat:(float)x
                        withFloat:(float)y;
- (void)bezierToWithFloat:(float)c1x
                withFloat:(float)c1y
                withFloat:(float)c2x
                withFloat:(float)c2y
                withFloat:(float)x
                withFloat:(float)y;
@end
#endif
