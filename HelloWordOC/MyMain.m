//
//  MyMain.m
//  HelloWordOC
//
//  Created by zhangwenqiang on 16/5/31.
//  Copyright © 2016年 zhangwenqiang. All rights reserved.
//

#import "MyMain.h"

@implementation MyMain

//

#pragma mark -- MainDeletage --

-(void)nsNumber{

    NSArray* salarys = @[@1,@2,@3,@4,@5];
    /*这个张文强实在不会了*/
    //[salarys makeObjectsPerformSelector:@selector(addToSalary)];
    //[salarys makeObjectsPerformSelector:@selector(addToSalary:) withObject:[NSDecimalNumber numberWithInt:20]];
    
    
}

-(void)findFiles{
    
    NSFileManager* manager;
    manager = [NSFileManager defaultManager];
    
    NSString* path;
    path = [@"~/Pictures/ImagesOfSheyuan" stringByExpandingTildeInPath];
    
    NSDirectoryEnumerator* direnum;
    direnum = [manager enumeratorAtPath:path];
    
    NSMutableArray* files;
    files = [NSMutableArray arrayWithCapacity:42];
    
    NSString* filename;
    while (filename = [direnum nextObject]) {
        if ([[filename pathExtension] isEqualTo:@"jpg"]) {
            [files addObject:filename];
        }
    }
    
    NSEnumerator* fileenum;
    fileenum = [files objectEnumerator];
    while (filename = [fileenum nextObject]) {
        NSLog(@"%@",filename);
    }
}

#pragma mark -- self`Method --

-(void)addToSalary:(NSDecimalNumber*)inReisa{
    NSLog(@"%@",inReisa);
}

-(void)addToSalary{
    NSLog(@"inReisa");
}


@end
