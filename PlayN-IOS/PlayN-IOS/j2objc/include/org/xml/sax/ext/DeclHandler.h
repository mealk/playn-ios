//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/DeclHandler.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"

@protocol OrgXmlSaxExtDeclHandler < NSObject >
- (void)elementDeclWithNSString:(NSString *)name
                   withNSString:(NSString *)model;
- (void)attributeDeclWithNSString:(NSString *)eName
                     withNSString:(NSString *)aName
                     withNSString:(NSString *)type
                     withNSString:(NSString *)mode
                     withNSString:(NSString *)value;
- (void)internalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)value;
- (void)externalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId;
@end