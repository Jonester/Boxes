//
//  Box.m
//  Boxes
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initBoxWithLength: (float) length withWidth: (float) width andHeight: (float) height
{
    self = [super init];
    if (self) {
        _length = length;
        _width = width;
        _height = height;
    }
    return self;
}

-(float)calculateVolume {
    return self.length * self.width * self.height;
}

- (float)biggerBox:(Box *)otherBox {
    if ([self calculateVolume] > [otherBox calculateVolume ]) {
    return ([self calculateVolume] / [otherBox calculateVolume]);
    } else {
        return ([otherBox calculateVolume] / [self calculateVolume]);
    }
}

@end
