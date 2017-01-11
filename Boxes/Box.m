//
//  Box.m
//  Boxes
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initBoxWithLength: (float) length withWidth: (float) width Height: (float) height andName: (NSString *)name
{
    self = [super init];
    if (self) {
        _length = length;
        _width = width;
        _height = height;
        _name = name;
    }
    return self;
}

-(float)calculateVolume {
    return self.length * self.width * self.height;
}

- (float)boxFit:(Box *)otherBox {
    return [self calculateVolume] / [otherBox calculateVolume];
}

@end
