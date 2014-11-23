//
//  NSData+DrawData.m
//  BoardPeer
//
//  Created by Jorge Maroto García on 20/11/14.
//  Copyright (c) 2014 http://maroto.me. All rights reserved.
//

#import "NSData+DrawData.h"

@implementation NSData (DrawData)

+ (NSData *)drawDataWithGestureState:(UIGestureRecognizerState)state point:(CGPoint)point
{
    float x = point.x;
    float y = point.y;
    
    NSMutableData *data = [NSMutableData data];
    [data appendBytes:&x length:sizeof(x)];
    [data appendBytes:&y length:sizeof(y)];
    [data appendBytes:&state length:sizeof(state)];
    
    return [data copy];
}
@end