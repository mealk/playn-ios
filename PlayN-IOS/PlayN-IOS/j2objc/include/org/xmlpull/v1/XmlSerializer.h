//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/XmlSerializer.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;
@class JavaIoOutputStream;
@class JavaIoWriter;
@class JavaLangBoolean;

#import "JreEmulation.h"

@protocol OrgXmlpullV1XmlSerializer < NSObject >
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)state;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (id)getPropertyWithNSString:(NSString *)name;
- (void)setOutputWithJavaIoOutputStream:(JavaIoOutputStream *)os
                           withNSString:(NSString *)encoding;
- (void)setOutputWithJavaIoWriter:(JavaIoWriter *)writer;
- (void)startDocumentWithNSString:(NSString *)encoding
              withJavaLangBoolean:(JavaLangBoolean *)standalone;
- (void)endDocument;
- (void)setPrefixWithNSString:(NSString *)prefix
                 withNSString:(NSString *)namespace_;
- (NSString *)getPrefixWithNSString:(NSString *)namespace_
                           withBOOL:(BOOL)generatePrefix;
- (int)getDepth;
- (NSString *)getNamespace;
- (NSString *)getName;
- (id<OrgXmlpullV1XmlSerializer>)startTagWithNSString:(NSString *)namespace_
                                         withNSString:(NSString *)name;
- (id<OrgXmlpullV1XmlSerializer>)attributeWithNSString:(NSString *)namespace_
                                          withNSString:(NSString *)name
                                          withNSString:(NSString *)value;
- (id<OrgXmlpullV1XmlSerializer>)endTagWithNSString:(NSString *)namespace_
                                       withNSString:(NSString *)name;
- (id<OrgXmlpullV1XmlSerializer>)textWithNSString:(NSString *)text;
- (id<OrgXmlpullV1XmlSerializer>)textWithJavaLangCharacterArray:(IOSCharArray *)buf
                                                        withInt:(int)start
                                                        withInt:(int)len;
- (void)cdsectWithNSString:(NSString *)text;
- (void)entityRefWithNSString:(NSString *)text;
- (void)processingInstructionWithNSString:(NSString *)text;
- (void)commentWithNSString:(NSString *)text;
- (void)docdeclWithNSString:(NSString *)text;
- (void)ignorableWhitespaceWithNSString:(NSString *)text;
- (void)flush;
@end
