//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/LexicalHandler.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;

#import "JreEmulation.h"

@protocol OrgXmlSaxExtLexicalHandler < NSObject >
- (void)startDTDWithNSString:(NSString *)name
                withNSString:(NSString *)publicId
                withNSString:(NSString *)systemId;
- (void)endDTD;
- (void)startEntityWithNSString:(NSString *)name;
- (void)endEntityWithNSString:(NSString *)name;
- (void)startCDATA;
- (void)endCDATA;
- (void)commentWithJavaLangCharacterArray:(IOSCharArray *)ch
                                  withInt:(int)start
                                  withInt:(int)length;
@end