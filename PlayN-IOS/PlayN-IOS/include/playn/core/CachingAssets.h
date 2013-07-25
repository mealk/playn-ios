//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/CachingAssets.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreCachingAssets_RESTRICT
#define PlaynCoreCachingAssets_INCLUDE_ALL 1
#endif
#undef PlaynCoreCachingAssets_RESTRICT

#if !defined (_PlaynCoreCachingAssets_) && (PlaynCoreCachingAssets_INCLUDE_ALL || PlaynCoreCachingAssets_INCLUDE)
#define _PlaynCoreCachingAssets_

@protocol JavaUtilMap;
@protocol PlaynCoreImage;
@protocol PlaynCoreSound;
@protocol PlaynCoreUtilCallback;

#define PlaynCoreAssets_RESTRICT 1
#define PlaynCoreAssets_INCLUDE 1
#include "playn/core/Assets.h"

@interface PlaynCoreCachingAssets : NSObject < PlaynCoreAssets > {
 @public
  id<PlaynCoreAssets> delegate_;
  id<JavaUtilMap> cache_;
}

@property (nonatomic, strong) id<PlaynCoreAssets> delegate;
@property (nonatomic, strong) id<JavaUtilMap> cache;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate;
- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path;
- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path;
- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url;
- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height;
- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path;
- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path;
- (NSString *)getTextSyncWithNSString:(NSString *)path;
- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end
#endif
