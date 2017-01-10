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
        
        int i = 1;
        for (Box *eachBox in boxesArray) {
                NSLog(@"The volume of box %d is %.2f", i, [eachBox calculateVolume]);
            i++;
        }
        NSLog(@"\n%@ \n%@ \n%@", [box1 boxFit:box2], [box1 boxFit:box3], [box2 boxFit:box3]);
    }
    return 0;
}
