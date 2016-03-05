//
//  main.m
//  homework16-3-4
//
//  Created by Uno on 16/3/4.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject {
    int age;
    NSString *name;
}

-(int)age;
-(void)setAge:(int)a;
-(NSString *)name;
-(void)setName : (NSString *)n ;
-(void)print;
@end

@implementation person

-(int)age {
    return age;
}
-(void)setAge : (int) a {
    age = a;
}

-(NSString *)name {
    return name;
}
-(void)setName : (NSString *)n {
    name = n;
}

-(void)print {
    NSLog(@"Age : %i, name : %@.",age,name);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        person *p = [[person alloc] init];
        [p setAge: 17];
        [p setName:@"Xiaoming"];
        [p print];
        
    }
    return 0;
}
