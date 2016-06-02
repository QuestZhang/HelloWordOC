//
//  main.m
//  HelloWordOC
//
//  Created by zhangwenqiang on 16/5/31.
//  Copyright © 2016年 zhangwenqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "MyMain.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        id<MainDeletage> deletage;
        deletage = [[MyMain alloc] init];
        
        /*NSNumber实例*/
        if (deletage != nil && [deletage respondsToSelector:@selector(nsNumber)]) {
            [deletage nsNumber];
        }
        
        /*读取文件*/
        if (deletage != nil && [deletage respondsToSelector:@selector(findFiles)]) {
            //[deletage findFiles];
        }
        
        /*日期处理*/
        if (deletage != nil && [deletage respondsToSelector:@selector(nsDate)]) {
            [deletage nsDate];
        }
        
    }
    return 0;
}
