//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/OutputStreamWriter.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;
@class JavaIoOutputStream;

#import "JreEmulation.h"
#import "java/io/Writer.h"

@interface JavaIoOutputStreamWriter : JavaIoWriter {
 @public
  JavaIoOutputStream *out_;
  int encoding_;
}

@property (nonatomic, retain) JavaIoOutputStream *out;
@property (nonatomic, assign) int encoding;

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                    withNSString:(NSString *)enc;
- (void)close;
- (void)flush;
- (NSString *)getEncoding;
- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)buf
                                withInt:(int)offset
                                withInt:(int)count;
- (void)convertWithJavaLangCharacterArray:(IOSCharArray *)buf
                                  withInt:(int)offset
                                  withInt:(int)count;
- (void)writeWithInt:(int)oneChar;
- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count;
- (void)checkStatus;
- (BOOL)checkError;
@end
