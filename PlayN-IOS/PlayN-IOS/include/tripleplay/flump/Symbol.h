//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/flump/Symbol.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayFlumpSymbol_RESTRICT
#define TripleplayFlumpSymbol_INCLUDE_ALL 1
#endif
#undef TripleplayFlumpSymbol_RESTRICT

#if !defined (_TripleplayFlumpSymbol_) && (TripleplayFlumpSymbol_INCLUDE_ALL || TripleplayFlumpSymbol_INCLUDE)
#define _TripleplayFlumpSymbol_

@protocol TripleplayFlumpInstance;

@protocol TripleplayFlumpSymbol < NSObject, JavaObject >
- (NSString *)name;
- (id<TripleplayFlumpInstance>)createInstance;
@end
#endif
