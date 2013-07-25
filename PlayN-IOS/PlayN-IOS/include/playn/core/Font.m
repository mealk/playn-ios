//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Font.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/IllegalArgumentException.h"
#include "playn/core/Font.h"


static PlaynCoreFont_StyleEnum *PlaynCoreFont_StyleEnum_PLAIN;
static PlaynCoreFont_StyleEnum *PlaynCoreFont_StyleEnum_BOLD;
static PlaynCoreFont_StyleEnum *PlaynCoreFont_StyleEnum_ITALIC;
static PlaynCoreFont_StyleEnum *PlaynCoreFont_StyleEnum_BOLD_ITALIC;
IOSObjectArray *PlaynCoreFont_StyleEnum_values;

@implementation PlaynCoreFont_StyleEnum

+ (PlaynCoreFont_StyleEnum *)PLAIN {
  return PlaynCoreFont_StyleEnum_PLAIN;
}
+ (PlaynCoreFont_StyleEnum *)BOLD {
  return PlaynCoreFont_StyleEnum_BOLD;
}
+ (PlaynCoreFont_StyleEnum *)ITALIC {
  return PlaynCoreFont_StyleEnum_ITALIC;
}
+ (PlaynCoreFont_StyleEnum *)BOLD_ITALIC {
  return PlaynCoreFont_StyleEnum_BOLD_ITALIC;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PlaynCoreFont_StyleEnum class]) {
    PlaynCoreFont_StyleEnum_PLAIN = [[PlaynCoreFont_StyleEnum alloc] initWithNSString:@"PLAIN" withInt:0];
    PlaynCoreFont_StyleEnum_BOLD = [[PlaynCoreFont_StyleEnum alloc] initWithNSString:@"BOLD" withInt:1];
    PlaynCoreFont_StyleEnum_ITALIC = [[PlaynCoreFont_StyleEnum alloc] initWithNSString:@"ITALIC" withInt:2];
    PlaynCoreFont_StyleEnum_BOLD_ITALIC = [[PlaynCoreFont_StyleEnum alloc] initWithNSString:@"BOLD_ITALIC" withInt:3];
    PlaynCoreFont_StyleEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreFont_StyleEnum_PLAIN, PlaynCoreFont_StyleEnum_BOLD, PlaynCoreFont_StyleEnum_ITALIC, PlaynCoreFont_StyleEnum_BOLD_ITALIC, nil } count:4 type:[IOSClass classWithClass:[PlaynCoreFont_StyleEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreFont_StyleEnum_values];
}

+ (PlaynCoreFont_StyleEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreFont_StyleEnum_values count]; i++) {
    PlaynCoreFont_StyleEnum *e = [PlaynCoreFont_StyleEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
