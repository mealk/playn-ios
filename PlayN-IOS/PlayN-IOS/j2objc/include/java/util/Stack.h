//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Stack.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilStack_H_
#define _JavaUtilStack_H_

#import "JreEmulation.h"
#include "java/util/Vector.h"

#define JavaUtilStack_serialVersionUID 1224463164541339165

@interface JavaUtilStack : JavaUtilVector {
}

- (id)init;
- (BOOL)empty;
- (id)peek;
- (id)pop;
- (id)pushWithId:(id)object;
- (int)searchWithId:(id)o;
@end

#endif // _JavaUtilStack_H_
