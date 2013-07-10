//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/CachingAssets.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/util/HashMap.h"
#import "java/util/Map.h"
#import "playn/core/Assets.h"
#import "playn/core/CachingAssets.h"
#import "playn/core/Image.h"
#import "playn/core/Sound.h"
#import "playn/core/util/Callback.h"

@implementation PlaynCoreCachingAssets

@synthesize delegate = delegate_;
@synthesize cache = cache_;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate {
  if ((self = [super init])) {
    cache_ = [[JavaUtilHashMap alloc] init];
    self.delegate = delegate;
  }
  return self;
}

- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getImageSyncWithNSString:path];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getImageWithNSString:path];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:url]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getRemoteImageWithNSString:url];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:url withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:url]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getRemoteImageWithNSString:url withFloat:width withFloat:height];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:url withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getSoundWithNSString:path];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreSound>) object;
}

- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) NIL_CHK(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getMusicWithNSString:path];
    (void) [((id<JavaUtilMap>) NIL_CHK(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreSound>) object;
}

- (NSString *)getTextSyncWithNSString:(NSString *)path {
  return [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getTextSyncWithNSString:path];
}

- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getTextWithNSString:path withPlaynCoreUtilCallback:callback];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreCachingAssets *typedCopy = (PlaynCoreCachingAssets *) copy;
  typedCopy.delegate = delegate_;
  typedCopy.cache = cache_;
}

@end
