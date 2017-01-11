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
        
        Box *box1 = [[Box alloc]initBoxWithLength:10.0 withWidth:15.5 Height:11.3 andName:@"1"];
        Box *box2 = [[Box alloc]initBoxWithLength:50.0 withWidth:17 Height:17.7 andName:@"2"];
        Box *box3 = [[Box alloc]initBoxWithLength:15.2 withWidth:5 Height:9.8 andName:@"3"];
        
        NSArray *boxesArray = @[box1, box2, box3];
        
        for (Box *eachBox in boxesArray) {
                NSLog(@"The volume of box %@ is %.2f", eachBox.name, [eachBox calculateVolume]);
        }
        for (Box *eachBox in boxesArray) {
        if ([box1 boxFit:eachBox] > 1) {
                NSLog(@"You can fit %.2f box %@'s inside box %@", [box1 boxFit:eachBox], eachBox.name, box1.name);
            }
            if ([box2 boxFit:eachBox] > 1) {
                NSLog(@"You can fit %.2f box %@'s inside box %@", [box2 boxFit:eachBox], eachBox.name, box2.name);
            }
            if ([box3 boxFit:eachBox] > 1) {
                NSLog(@"You can fit %.2f box %@'s inside box %@", [box3 boxFit:eachBox], eachBox.name, box3.name);
            }
        }
    }
    return 0;
}
