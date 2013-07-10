//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/ImageLayer.java
//
//  Created by Thomas on 7/10/13.
//

@protocol PlaynCoreImage;

#import "JreEmulation.h"
#import "playn/core/Layer.h"

@protocol PlaynCoreImageLayer < PlaynCoreLayer_HasSize, NSObject >
- (id<PlaynCoreImage>)image;
- (id<PlaynCoreImageLayer>)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (void)setSizeWithFloat:(float)width
               withFloat:(float)height;
- (void)setWidthWithFloat:(float)width;
- (void)setHeightWithFloat:(float)height;
- (void)clearWidth;
- (void)clearHeight;
@end