//
//  ViewController.h
//  tuxblocks
//
//  Created by Thomas on 7/1/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
@class IOSPlatform;

typedef struct {
    CGPoint geometryVertex;
    CGPoint textureVertex;
} TexturedVertex;

typedef struct {
    TexturedVertex bl;
    TexturedVertex br;
    TexturedVertex tl;
    TexturedVertex tr;
} TexturedQuad;

@interface IOSViewController : GLKViewController {
    IOSPlatform* platform;
    GLKTextureInfo* info;
    TexturedQuad quad;
}

@end