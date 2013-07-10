//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Font.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreFont_StyleEnum;

#import "JreEmulation.h"
#import "java/lang/Enum.h"

@protocol PlaynCoreFont < NSObject >
- (NSString *)name;
- (PlaynCoreFont_StyleEnum *)style;
- (float)size;
@end

typedef enum {
  PlaynCoreFont_Style_PLAIN = 0,
  PlaynCoreFont_Style_BOLD = 1,
  PlaynCoreFont_Style_ITALIC = 2,
  PlaynCoreFont_Style_BOLD_ITALIC = 3,
} PlaynCoreFont_Style;

@interface PlaynCoreFont_StyleEnum : JavaLangEnum < NSCopying > {
}
+ (PlaynCoreFont_StyleEnum *)PLAIN;
+ (PlaynCoreFont_StyleEnum *)BOLD;
+ (PlaynCoreFont_StyleEnum *)ITALIC;
+ (PlaynCoreFont_StyleEnum *)BOLD_ITALIC;
+ (IOSObjectArray *)values;
+ (PlaynCoreFont_StyleEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
