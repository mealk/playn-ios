//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonParserException.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Exception.h"
#include "playn/core/json/JsonParserException.h"

@implementation PlaynCoreJsonJsonParserException

@synthesize linePos = linePos_;
@synthesize charPos = charPos_;
@synthesize charOffset = charOffset_;

- (id)initWithJavaLangException:(JavaLangException *)e
                   withNSString:(NSString *)message
                        withInt:(int)linePos
                        withInt:(int)charPos
                        withInt:(int)charOffset {
  if ((self = [super initWithNSString:message withJavaLangThrowable:e])) {
    self.linePos = linePos;
    self.charPos = charPos;
    self.charOffset = charOffset;
  }
  return self;
}

- (int)getLinePosition {
  return linePos_;
}

- (int)getCharPosition {
  return charPos_;
}

- (int)getCharOffset {
  return charOffset_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreJsonJsonParserException *typedCopy = (PlaynCoreJsonJsonParserException *) copy;
  typedCopy.linePos = linePos_;
  typedCopy.charPos = charPos_;
  typedCopy.charOffset = charOffset_;
}

@end
