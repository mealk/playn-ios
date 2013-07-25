//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/Scale.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlScale_RESTRICT
#define PlaynCoreGlScale_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlScale_RESTRICT

#if !defined (_PlaynCoreGlScale_) && (PlaynCoreGlScale_INCLUDE_ALL || PlaynCoreGlScale_INCLUDE)
#define _PlaynCoreGlScale_

@protocol JavaUtilList;

@interface PlaynCoreGlScale : NSObject {
 @public
  float factor_;
}

@property (nonatomic, assign) float factor;

+ (PlaynCoreGlScale *)ONE;
- (id)initWithFloat:(float)factor;
- (float)scaledWithFloat:(float)length;
- (int)scaledCeilWithFloat:(float)length;
- (int)scaledFloorWithFloat:(float)length;
- (float)invScaledWithFloat:(float)length;
- (id<JavaUtilList>)getScaledResourcesWithNSString:(NSString *)path;
- (NSString *)description;
- (NSString *)computePathWithNSString:(NSString *)path
                            withFloat:(float)scale_;
@end
#endif

#if !defined (_PlaynCoreGlScale_ScaledResource_) && (PlaynCoreGlScale_INCLUDE_ALL || PlaynCoreGlScale_ScaledResource_INCLUDE)
#define _PlaynCoreGlScale_ScaledResource_

@class PlaynCoreGlScale;

@interface PlaynCoreGlScale_ScaledResource : NSObject {
 @public
  PlaynCoreGlScale *scale__;
  NSString *path_;
}

@property (nonatomic, strong) PlaynCoreGlScale *scale_;
@property (nonatomic, copy) NSString *path;

- (id)initWithPlaynCoreGlScale:(PlaynCoreGlScale *)scale_
                  withNSString:(NSString *)path;
@end
#endif
