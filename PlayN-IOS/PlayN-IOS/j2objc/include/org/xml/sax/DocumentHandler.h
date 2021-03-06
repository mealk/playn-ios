//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/DocumentHandler.java
//
//  Created by tball on 7/9/13.
//

#ifndef _OrgXmlSaxDocumentHandler_H_
#define _OrgXmlSaxDocumentHandler_H_

@class IOSCharArray;
@protocol OrgXmlSaxAttributeList;
@protocol OrgXmlSaxLocator;

#import "JreEmulation.h"

@protocol OrgXmlSaxDocumentHandler < NSObject, JavaObject >
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (void)startDocument;
- (void)endDocument;
- (void)startElementWithNSString:(NSString *)name
      withOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)atts;
- (void)endElementWithNSString:(NSString *)name;
- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(int)start
                        withInt:(int)length;
- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(int)start
                                 withInt:(int)length;
- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;
@end

#endif // _OrgXmlSaxDocumentHandler_H_
