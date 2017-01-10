//
//  Box.h
//  Boxes
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float length;
@property (nonatomic) float width;

- (instancetype)initBoxWithLength: (float) length withWidth: (float) width andHeight: (float) height;
- (float)calculateVolume;
- (float)biggerBox:(Box *)otherBox;

@end
