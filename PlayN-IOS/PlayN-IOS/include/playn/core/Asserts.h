//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Asserts.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSObjectArray;

#import "JreEmulation.h"

@interface PlaynCoreAsserts : NSObject {
}

+ (BOOL)assertsEnabled;
- (id)init;
+ (void)checkWithBOOL:(BOOL)expression;
+ (void)checkWithBOOL:(BOOL)expression
               withId:(id)errorMessage;
+ (void)checkWithBOOL:(BOOL)expression
         withNSString:(NSString *)errorMessageTemplate
    withNSObjectArray:(IOSObjectArray *)errorMessageArgs;
+ (void)checkArgumentWithBOOL:(BOOL)expression;
+ (void)checkArgumentWithBOOL:(BOOL)expression
                       withId:(id)errorMessage;
+ (void)checkArgumentWithBOOL:(BOOL)expression
                 withNSString:(NSString *)errorMessageTemplate
            withNSObjectArray:(IOSObjectArray *)errorMessageArgs;
+ (void)checkStateWithBOOL:(BOOL)expression;
+ (void)checkStateWithBOOL:(BOOL)expression
                    withId:(id)errorMessage;
+ (void)checkStateWithBOOL:(BOOL)expression
              withNSString:(NSString *)errorMessageTemplate
         withNSObjectArray:(IOSObjectArray *)errorMessageArgs;
+ (id)checkNotNullWithId:(id)reference;
+ (id)checkNotNullWithId:(id)reference
                  withId:(id)errorMessage;
+ (id)checkNotNullWithId:(id)reference
            withNSString:(NSString *)errorMessageTemplate
       withNSObjectArray:(IOSObjectArray *)errorMessageArgs;
+ (int)checkElementIndexWithInt:(int)index
                        withInt:(int)size;
+ (int)checkElementIndexWithInt:(int)index
                        withInt:(int)size
                   withNSString:(NSString *)desc;
+ (NSString *)badElementIndexWithInt:(int)index
                             withInt:(int)size
                        withNSString:(NSString *)desc;
+ (int)checkPositionIndexWithInt:(int)index
                         withInt:(int)size;
+ (int)checkPositionIndexWithInt:(int)index
                         withInt:(int)size
                    withNSString:(NSString *)desc;
+ (NSString *)badPositionIndexWithInt:(int)index
                              withInt:(int)size
                         withNSString:(NSString *)desc;
+ (void)checkPositionIndexesWithInt:(int)start
                            withInt:(int)end
                            withInt:(int)size;
+ (NSString *)badPositionIndexesWithInt:(int)start
                                withInt:(int)end
                                withInt:(int)size;
+ (NSString *)formatWithNSString:(NSString *)template_
               withNSObjectArray:(IOSObjectArray *)args;
@end
