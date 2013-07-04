//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AbstractTextLayout.java
//
//  Created by Thomas on 7/1/13.
//

@class PlaynCoreTextFormat;
@class PythagorasFRectangle;
@protocol PlaynCoreGraphics;

#import "JreEmulation.h"
#import "TextLayout.h"

@interface PlaynCoreAbstractTextLayout : NSObject < PlaynCoreTextLayout > {
 @public
  PlaynCoreTextFormat *format__;
  float pad_;
  float width__, height__;
}

@property (nonatomic, retain) PlaynCoreTextFormat *format_;
@property (nonatomic, assign) float pad;
@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;

- (float)width;
- (float)height;
- (PlaynCoreTextFormat *)format;
- (id)initWithPlaynCoreGraphics:(id<PlaynCoreGraphics>)gfx
                   withNSString:(NSString *)text
        withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format;
- (float)ascent;
- (float)descent;
- (float)leading;
- (PythagorasFRectangle *)lineBoundsWithInt:(int)param0;
- (int)lineCount;
@end
