//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/n/BlockGroup.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksNBlockGroup_H_
#define _TuxkidsTuxblocksCoreSolveBlocksNBlockGroup_H_

@class JavaUtilArrayList;
@class TuxkidsTuxblocksCoreSolveBlocksNModifierBlock;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/n/Block.h"

@interface TuxkidsTuxblocksCoreSolveBlocksNBlockGroup : TuxkidsTuxblocksCoreSolveBlocksNBlock {
 @public
  JavaUtilArrayList *blocks_;
  TuxkidsTuxblocksCoreSolveBlocksNBlockGroup *modifiers_;
  TuxkidsTuxblocksCoreSolveBlocksNBlockGroup *parent_;
}

@property (nonatomic, strong) JavaUtilArrayList *blocks;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksNBlockGroup *modifiers;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksNBlockGroup *parent;

- (TuxkidsTuxblocksCoreSolveBlocksNBlockGroup *)createModifiers;
- (BOOL)canAddWithTuxkidsTuxblocksCoreSolveBlocksNModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksNModifierBlock *)block;
- (BOOL)modifiesNumber;
- (BOOL)isModifiedHorizontally;
- (BOOL)isModifiedVertically;
- (void)addVerticalModifiersWithJavaUtilList:(id<JavaUtilList>)mods;
- (void)addModifierWithTuxkidsTuxblocksCoreSolveBlocksNModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksNModifierBlock *)block;
- (BOOL)canReleaseWithBOOL:(BOOL)openBlock;
- (NSString *)toMathStringWithNSString:(NSString *)base;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksNBlockGroup_H_
