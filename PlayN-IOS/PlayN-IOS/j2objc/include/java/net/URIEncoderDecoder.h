//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/net/URIEncoderDecoder.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"

@interface JavaNetURIEncoderDecoder : NSObject {
}

+ (NSString *)digits;
+ (NSString *)encoding;
+ (void)validateWithNSString:(NSString *)s
                withNSString:(NSString *)legal;
+ (void)validateSimpleWithNSString:(NSString *)s
                      withNSString:(NSString *)legal;
+ (NSString *)quoteIllegalWithNSString:(NSString *)s
                          withNSString:(NSString *)legal;
+ (NSString *)encodeOthersWithNSString:(NSString *)s;
+ (NSString *)decodeWithNSString:(NSString *)s;
- (id)init;
@end