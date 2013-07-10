//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonParser.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSCharArray;
@class IOSClass;
@class JavaLangException;
@class JavaLangStringBuilder;
@class PlaynCoreJsonJsonParserException;
@class PlaynCoreJsonJsonParser_JsonParserContext;
@class PlaynCoreJsonJsonParser_TokenEnum;

#import "JreEmulation.h"
#import "java/lang/Enum.h"

@interface PlaynCoreJsonJsonParser : NSObject {
 @public
  int linePos_, rowPos_, charOffset_, utf8adjust_;
  int tokenLinePos_, tokenCharPos_, tokenCharOffset_;
  id value_;
  PlaynCoreJsonJsonParser_TokenEnum *token_;
  JavaLangStringBuilder *reusableBuffer_;
  BOOL eof_;
  int index_;
  NSString *string_;
  int bufferLength_;
}

@property (nonatomic, assign) int linePos;
@property (nonatomic, assign) int rowPos;
@property (nonatomic, assign) int charOffset;
@property (nonatomic, assign) int utf8adjust;
@property (nonatomic, assign) int tokenLinePos;
@property (nonatomic, assign) int tokenCharPos;
@property (nonatomic, assign) int tokenCharOffset;
@property (nonatomic, strong) id value;
@property (nonatomic, strong) PlaynCoreJsonJsonParser_TokenEnum *token;
@property (nonatomic, strong) JavaLangStringBuilder *reusableBuffer;
@property (nonatomic, assign) BOOL eof;
@property (nonatomic, assign) int index;
@property (nonatomic, copy) NSString *string;
@property (nonatomic, assign) int bufferLength;

+ (IOSCharArray *)getTRUE;
+ (IOSCharArray *)getFALSE;
+ (IOSCharArray *)getNULL;
- (id)initWithNSString:(NSString *)s;
+ (PlaynCoreJsonJsonParser_JsonParserContext *)object;
+ (PlaynCoreJsonJsonParser_JsonParserContext *)array;
+ (PlaynCoreJsonJsonParser_JsonParserContext *)any;
- (id)parseWithIOSClass:(IOSClass *)clazz;
- (id)currentValue;
- (PlaynCoreJsonJsonParser_TokenEnum *)advanceToken;
- (void)consumeKeywordWithUnichar:(unichar)first
       withJavaLangCharacterArray:(IOSCharArray *)expected;
- (NSNumber *)consumeTokenNumberWithUnichar:(unichar)c;
- (NSString *)consumeTokenString;
- (unichar)stringChar;
- (int)stringHexChar;
- (BOOL)isDigitCharacterWithInt:(int)c;
- (BOOL)isWhitespaceWithInt:(int)c;
- (BOOL)isAsciiLetterWithInt:(int)c;
- (int)peekChar;
- (int)advanceChar;
- (PlaynCoreJsonJsonParserException *)createHelpfulExceptionWithUnichar:(unichar)first
                                             withJavaLangCharacterArray:(IOSCharArray *)expected
                                                                withInt:(int)failurePosition;
- (PlaynCoreJsonJsonParserException *)createParseExceptionWithJavaLangException:(JavaLangException *)e
                                                                   withNSString:(NSString *)message
                                                                       withBOOL:(BOOL)tokenPos;
@end

typedef enum {
  PlaynCoreJsonJsonParser_Token_EOF = 0,
  PlaynCoreJsonJsonParser_Token_NULL = 1,
  PlaynCoreJsonJsonParser_Token_TRUE = 2,
  PlaynCoreJsonJsonParser_Token_FALSE = 3,
  PlaynCoreJsonJsonParser_Token_STRING = 4,
  PlaynCoreJsonJsonParser_Token_NUMBER = 5,
  PlaynCoreJsonJsonParser_Token_COMMA = 6,
  PlaynCoreJsonJsonParser_Token_COLON = 7,
  PlaynCoreJsonJsonParser_Token_OBJECT_START = 8,
  PlaynCoreJsonJsonParser_Token_OBJECT_END = 9,
  PlaynCoreJsonJsonParser_Token_ARRAY_START = 10,
  PlaynCoreJsonJsonParser_Token_ARRAY_END = 11,
} PlaynCoreJsonJsonParser_Token;

@interface PlaynCoreJsonJsonParser_TokenEnum : JavaLangEnum < NSCopying > {
 @public
  BOOL isValue_;
}
@property (nonatomic, assign) BOOL isValue;

+ (PlaynCoreJsonJsonParser_TokenEnum *)EOF_;
+ (PlaynCoreJsonJsonParser_TokenEnum *)NULL_;
+ (PlaynCoreJsonJsonParser_TokenEnum *)TRUE_;
+ (PlaynCoreJsonJsonParser_TokenEnum *)FALSE_;
+ (PlaynCoreJsonJsonParser_TokenEnum *)STRING;
+ (PlaynCoreJsonJsonParser_TokenEnum *)NUMBER;
+ (PlaynCoreJsonJsonParser_TokenEnum *)COMMA;
+ (PlaynCoreJsonJsonParser_TokenEnum *)COLON;
+ (PlaynCoreJsonJsonParser_TokenEnum *)OBJECT_START;
+ (PlaynCoreJsonJsonParser_TokenEnum *)OBJECT_END;
+ (PlaynCoreJsonJsonParser_TokenEnum *)ARRAY_START;
+ (PlaynCoreJsonJsonParser_TokenEnum *)ARRAY_END;
+ (IOSObjectArray *)values;
+ (PlaynCoreJsonJsonParser_TokenEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithBOOL:(BOOL)isValue
      withNSString:(NSString *)name
           withInt:(int)ordinal;
@end

@interface PlaynCoreJsonJsonParser_JsonParserContext : NSObject {
 @public
  IOSClass *clazz_;
}

@property (nonatomic, strong) IOSClass *clazz;

- (id)initWithIOSClass:(IOSClass *)clazz;
- (id)fromWithNSString:(NSString *)s;
@end
