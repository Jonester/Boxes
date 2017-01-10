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

- (NSString *)boxFit:(Box *)otherBox {
    if ([self calculateVolume] > [otherBox calculateVolume ]) {
    return [NSString stringWithFormat:@"You can fit %.2f box %@'s inside box %@.", [self calculateVolume] / [otherBox calculateVolume], otherBox.name, self.name];
    } else {
        return [NSString stringWithFormat:@"You can fit %.2f box %@'s inside box %@.", [otherBox calculateVolume] / [self calculateVolume], self.name, otherBox.name];
    }
}

@end
