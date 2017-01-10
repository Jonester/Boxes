//
//  main.m
//  Boxes
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc]initBoxWithLength:10.0 withWidth:15.5 andHeight:22];
        Box *box2 = [[Box alloc]initBoxWithLength:25.0 withWidth:17 andHeight:8.7];
        Box *box3 = [[Box alloc]initBoxWithLength:15.2 withWidth:5 andHeight:9.8];
        
        NSArray *boxesArray = @[box1, box2, box3];
        
        int i = 1;
        for (Box *eachBox in boxesArray) {
                NSLog(@"The volume of box %d is %.2f", i, [eachBox calculateVolume]);
            i++;
            NSLog(@"You can fit %.2f box 2s in box i", [box1 biggerBox:box2]);
            NSLog(@"You can fit %.2f box 3s in box i", [box2 biggerBox:box3]);
        }
        
    }
    return 0;
}
