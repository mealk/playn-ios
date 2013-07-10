//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringReader.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;

#import "JreEmulation.h"
#import "java/io/Reader.h"

@interface JavaIoStringReader : JavaIoReader {
 @public
  NSString *str_;
  int markpos_;
  int pos_;
  int count_;
}

@property (nonatomic, copy) NSString *str;
@property (nonatomic, assign) int markpos;
@property (nonatomic, assign) int pos;
@property (nonatomic, assign) int count;

- (id)initWithNSString:(NSString *)str;
- (void)close;
- (BOOL)isClosed;
- (void)markWithInt:(int)readLimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buf
                              withInt:(int)offset
                              withInt:(int)len;
- (BOOL)ready;
- (void)reset;
- (long long int)skipWithLongInt:(long long int)ns;
@end
