//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractDimension.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDAbstractDimension_RESTRICT
#define PythagorasDAbstractDimension_INCLUDE_ALL 1
#endif
#undef PythagorasDAbstractDimension_RESTRICT

#if !defined (_PythagorasDAbstractDimension_) && (PythagorasDAbstractDimension_INCLUDE_ALL || PythagorasDAbstractDimension_INCLUDE)
#define _PythagorasDAbstractDimension_

@class PythagorasDDimension;

#define PythagorasDIDimension_RESTRICT 1
#define PythagorasDIDimension_INCLUDE 1
#include "pythagoras/d/IDimension.h"

@interface PythagorasDAbstractDimension : NSObject < PythagorasDIDimension > {
}

- (PythagorasDDimension *)clone;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)obj;
- (NSString *)description;
- (double)height;
- (double)width;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end
#endif
