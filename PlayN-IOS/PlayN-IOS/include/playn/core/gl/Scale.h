//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/Scale.java
//
//  Created by Thomas on 7/10/13.
//

@protocol JavaUtilList;

#import "JreEmulation.h"

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
