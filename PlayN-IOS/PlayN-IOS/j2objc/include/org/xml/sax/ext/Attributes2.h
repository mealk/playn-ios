//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/Attributes2.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"
#import "org/xml/sax/Attributes.h"

@protocol OrgXmlSaxExtAttributes2 < OrgXmlSaxAttributes, NSObject >
- (BOOL)isDeclaredWithInt:(int)index;
- (BOOL)isDeclaredWithNSString:(NSString *)qName;
- (BOOL)isDeclaredWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName;
- (BOOL)isSpecifiedWithInt:(int)index;
- (BOOL)isSpecifiedWithNSString:(NSString *)uri
                   withNSString:(NSString *)localName;
- (BOOL)isSpecifiedWithNSString:(NSString *)qName;
@end