//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/EntityResolver2.java
//
//  Created by tball on 6/22/13.
//

@class OrgXmlSaxInputSource;

#import "JreEmulation.h"
#import "org/xml/sax/EntityResolver.h"

@protocol OrgXmlSaxExtEntityResolver2 < OrgXmlSaxEntityResolver, NSObject >
- (OrgXmlSaxInputSource *)getExternalSubsetWithNSString:(NSString *)name
                                           withNSString:(NSString *)baseURI;
- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)name
                                       withNSString:(NSString *)publicId
                                       withNSString:(NSString *)baseURI
                                       withNSString:(NSString *)systemId;
@end
