//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Dimensions.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDDimensions_RESTRICT
#define PythagorasDDimensions_INCLUDE_ALL 1
#endif
#undef PythagorasDDimensions_RESTRICT

#if !defined (_PythagorasDDimensions_) && (PythagorasDDimensions_INCLUDE_ALL || PythagorasDDimensions_INCLUDE)
#define _PythagorasDDimensions_

@protocol PythagorasDIDimension;

@interface PythagorasDDimensions : NSObject {
}

+ (id<PythagorasDIDimension>)ZERO;
+ (NSString *)dimenToStringWithDouble:(double)width
                           withDouble:(double)height;
- (id)init;
@end
#endif
