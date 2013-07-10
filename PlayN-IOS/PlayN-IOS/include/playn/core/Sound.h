//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Sound.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangException;
@protocol PlaynCoreUtilCallback;

#import "JreEmulation.h"

@protocol PlaynCoreSound < NSObject >
- (BOOL)prepare;
- (BOOL)play;
- (void)stop;
- (void)setLoopingWithBOOL:(BOOL)looping;
- (float)volume;
- (void)setVolumeWithFloat:(float)volume;
- (BOOL)isPlaying;
- (void)release__;
- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end

@interface PlaynCoreSound_Silence : NSObject < PlaynCoreSound > {
}

- (BOOL)prepare;
- (BOOL)play;
- (void)stop;
- (void)setLoopingWithBOOL:(BOOL)looping;
- (float)volume;
- (void)setVolumeWithFloat:(float)volume;
- (BOOL)isPlaying;
- (void)release__;
- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (id)init;
@end

@interface PlaynCoreSound_Error : PlaynCoreSound_Silence {
 @public
  JavaLangException *error_;
}

@property (nonatomic, strong) JavaLangException *error;

- (id)initWithJavaLangException:(JavaLangException *)error;
- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end
