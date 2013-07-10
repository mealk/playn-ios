//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/InputStreamReader.java
//
//  Created by tball on 6/22/13.
//

@class IOSByteArray;
@class IOSCharArray;
@class JavaIoInputStream;

#import "JreEmulation.h"
#import "java/io/Reader.h"

@interface JavaIoInputStreamReader : JavaIoReader {
 @public
  JavaIoInputStream *in_;
  int encoding_;
  NSString *backingStore_;
  int currentIndex_;
}

@property (nonatomic, retain) JavaIoInputStream *in;
@property (nonatomic, assign) int encoding;
@property (nonatomic, copy) NSString *backingStore;
@property (nonatomic, assign) int currentIndex;

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;
- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                   withNSString:(NSString *)enc;
+ (int)getOSXEncodingWithNSString:(NSString *)enc;
- (void)close;
- (NSString *)getEncoding;
+ (NSString *)nativeEncodingNameWithInt:(int)encoding;
- (int)read;
- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buf
                              withInt:(int)offset
                              withInt:(int)length;
- (NSString *)convertToStringWithJavaLangByteArray:(IOSByteArray *)byteArray;
- (BOOL)isOpen;
- (BOOL)ready;
@end
