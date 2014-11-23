//
//  Drawable.h
//  BoardPeer
//
//  Created by Jorge Maroto García on 20/11/14.
//  Copyright (c) 2014 http://maroto.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Drawable : NSObject

- (void)clearScreen;
- (void)drawPoint:(CGPoint)point state:(UIGestureRecognizerState)state;

@end
