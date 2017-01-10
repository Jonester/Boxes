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
@property (nonatomic) NSString *name;

- (instancetype)initBoxWithLength: (float) length withWidth: (float) width Height: (float) height andName: (NSString *)name;
- (float)calculateVolume;
- (NSString *)boxFit:(Box *)otherBox;

@end
