//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/XMLReaderFactory.java
//
//  Created by tball on 7/9/13.
//

#ifndef _OrgXmlSaxHelpersXMLReaderFactory_H_
#define _OrgXmlSaxHelpersXMLReaderFactory_H_

@protocol OrgXmlSaxXMLReader;

#import "JreEmulation.h"

@interface OrgXmlSaxHelpersXMLReaderFactory : NSObject {
}

+ (NSString *)property;
- (id)init;
+ (id<OrgXmlSaxXMLReader>)createXMLReader;
+ (id<OrgXmlSaxXMLReader>)createXMLReaderWithNSString:(NSString *)className_;
+ (id<OrgXmlSaxXMLReader>)loadClassWithNSString:(NSString *)className_;
@end

#endif // _OrgXmlSaxHelpersXMLReaderFactory_H_
