//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AbstractFont.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreFont_StyleEnum;

#import "JreEmulation.h"
#import "playn/core/Font.h"

@interface PlaynCoreAbstractFont : NSObject < PlaynCoreFont > {
 @public
  NSString *name__;
  PlaynCoreFont_StyleEnum *style__;
  float size__;
}

@property (nonatomic, copy) NSString *name_;
@property (nonatomic, strong) PlaynCoreFont_StyleEnum *style_;
@property (nonatomic, assign) float size_;

- (NSString *)name;
- (PlaynCoreFont_StyleEnum *)style;
- (float)size;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
- (NSString *)description;
- (id)initWithNSString:(NSString *)name
withPlaynCoreFont_StyleEnum:(PlaynCoreFont_StyleEnum *)style
             withFloat:(float)size;
@end
